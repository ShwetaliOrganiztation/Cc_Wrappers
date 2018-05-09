#require 'chef/log' 

module RecipeWrapper
  class RecipeWrapperHandler < Chef::Handler

    def exception
     # cookbooks = run_context.cookbook_collection
     # Chef::Log.info("Cookbooks and versions run: #{cookbooks.keys.map {|x| cookbooks[x].name.to_s + " " + cookbooks[x].version} }")
      puts "!!!!!!!!!!!!My Handler!!!!!!!!!!"
    end
  end
end
