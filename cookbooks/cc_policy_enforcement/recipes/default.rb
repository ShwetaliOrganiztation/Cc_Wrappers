
# wrapper_recipe.rb
# Bob Filepp


# NOTE: We will either need to insist that all recipes include the "supports" (platform) parameter in the metadata.rb
#       - Or we need a more complex expression for the recipe selection parameters
#       Currently "indentified_by" doesn't include complex conditions, like (mysql:installed && os:linux)


# since at least some of our chef clients are using back-level ruby, we need to write our own dig

#test start
def is_Array value
  return true if value.class == Chef::Node::ImmutableArray or value.class == Chef::Node::AttrArray
  false
end

def is_number value
  return true if value.class == Fixnum
  false
end

def is_HashMap value
  return true if Chef::Node::ImmutableMash == value.class or Chef::Node::VividMash == value.class or value.class == Hash
  false
end

#address is an array
def get_hash_by_address(hash, address)
  puts "*************************************"
  get_hash_by_address!(hash, address.dup)
end


def get_hash_by_address!(hash, address)
  return hash if address.size == 0
  key = address.shift 
  get_hash_by_address!(hash[key], address)

end

#address is an array
def set_hash_by_address(hash,address,value)
  hash = set_hash_by_address!(hash,address.dup,value)
  hash
end

def set_hash_by_address!(hash, address,value)

  if address.size == 0  
    hash = value
    return hash
  end
  key = address.shift 


  if is_HashMap hash
    hash = hash.to_hash
  elsif is_Array hash
    hash = hash.to_a
  else
    return hash
  end

  hash[key] = set_hash_by_address!(hash[key], address,value)
  hash
end

def cc_merge(cur_node)
  #look for prefix
  cur_node.keys.each do |key|
    if key.start_with?("_")
  
      node.automatic['cc_policy_test'] = {} if node.automatic['cc_policy_test'].nil?
      node.automatic['cc_policy_test'][key[1..-1]] = node['cc_policy_test'][key]
    end
  end
end

#eg, parent=recipe and child=env
def cc_remove_array_from_ancestor(parent, child)
  #only do for cc_ and policy_ prefix
  #saved as an array in this form as the order is important, the keys are the key of the node.autonatic [["a"]=>"a", ["a"]=>"a"]
  que = []
  #do an iterative breath first search
  child.keys.each do |key|
    next unless (key.start_with?("cc_") or key.start_with?("policy_"))
    que.push [key]
  end

  while que.size != 0
    cur = que.shift 
    puts cur
    address = cur
    content = get_hash_by_address(child, address)

    #only do this for hashmap

    if is_Array content
      parent = set_hash_by_address(parent,address,[])
    elsif is_HashMap content
      content.keys.each do |key|
        temp_address = address.dup
        temp_address.push key
        que.push temp_address
      end
    end
  end
  parent
end



node.attributes.default = cc_remove_array_from_ancestor(node.attributes.default, node.attributes.env_default)

node.attributes.env_default = cc_remove_array_from_ancestor(node.attributes.env_default, node.attributes.role_default)

node.attributes.default = cc_remove_array_from_ancestor(node.attributes.default, node.attributes.role_default)
#test end
#node.attributes.reset
#require 'pry'
#binding.pry


def dig_attr (keys, item)  
    
    keys.each do |key|
         if item.key?(key)
            child_item = item[key]
            if child_item.is_a?(Hash)
               #puts "child item is hash #{child_item.inspect}"
               keys.delete_at(0) #remove the leading key
               #puts "keys are now #{keys.to_s}"
               attribute = dig_attr(keys, child_item)
               return attribute
            else               
               return child_item
            end
        else
             puts "key does not exist for #{keys.to_s}"
             return "key does not exist"
         end

    end #end do     
   
end


policy_map = node[cookbook_name]['policy_map']

puts "*** node chef environment is #{node.chef_environment} *** "

puts "***** platform family is #{node['platform_family']} *****"

#######################################################################

# the "identified_by (node/value) indicates whether we should be testing the value of the attribute identified by "id" or just its presence

 puts "***** processing policy map *****" 

 puts "#{policy_map.inspect}"

 puts "******"

 if  policy_map['components']
     policy_map['components'].each do |item|

            handler = item['identified_by']         
            attribute_path_value = item['id']
           
            #the "id" has a "/" delimited list of keys to the attribute value, and may have a colon : followed by a value

            av = attribute_path_value.split(':')
          
            value = nil 
            if av.length == 2
               value = av[1]
            end

            if handler == "value" && av.length < 2
              puts "!!!error!!!: policy map asks to test for a value, but the value is not specified: #{id}"          
              next   
            end 

            syms = av[0].split("/").map(&:to_sym)
            puts "symbols is #{syms.to_s}"
            attribute = dig_attr(syms, node.automatic)
            puts "attribute returned is #{attribute}"
         

           
# we have now recursively walked the node.automatic hash to get either the
# attribute value, or an indication that the attribute doesn't exist

           if attribute == "key does not exist"
              puts "key does not exist #{av} in node.automatic"
              next # go to next policy
           end

           if handler == "node" && attribute.exists?
              item['enforced_by'].each do |policy_item|
                 next if policy_item['enabled'] == false
                 if policy_item['policy']
                    include_recipe "#{policy_item['policy']}"
                    puts "included recipe #{policy_item['policy']}"  
                 else
                     puts "!!!error!!!: component has a policy item that is missing the policy name"
                 end #end if       
               end # end do
           end 
           if handler == "value" && attribute == value
             
                 item['enforced_by'].each do |policy_item|
                 next if policy_item['enabled'] == false
                 if policy_item['policy']  
                    include_recipe "#{policy_item['policy']}" 
                    puts "included recipe #{policy_item['policy']}" 

                 else
                     puts "component has a policy item that is missing the policy name"
                  end #end if     
                 end #end do]
               
           end # if handler == "value
      end
  end

 puts "***** finished processing policy map *****"

puts "wrapper_recipe completed"


