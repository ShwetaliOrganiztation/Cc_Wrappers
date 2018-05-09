default['cc_policy_linux_entire_dir_perms']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:linux',
                               "enforced_by" => [{ 
                                                policy: 'policy_linux_entire_dir_perms',
                                                enabled: true}]
                              }               

                           
                             ]
                          }


# default['policy_linux_entire_dir_perms']['dirlist'] = {
#   '/etc/init.d/*' => { mode: '00755', owner: 'root', group: 'root' },
#   '/etc/sudoers.d/*' => { mode: '00440', owner: 'root', group: 'root' },
#   '/etc/cron.d/*' => { mode: '00755', owner: 'root', group: 'root' },
#   '/etc/rc.d/*' => { mode: '00755', owner: 'root', group: 'root' }
# }

# List of files/folders' to be excluded from permission/ownership
# default['policy_linux_entire_dir_perms']['whitelist'] = []

              
default['cc_policy_linux_entire_dir_perms']['ui_metadata']['policy_linux_entire_dir_perms'] = {
  policy: 'policy_linux_entire_dir_perms',
  display_name: 'policy_linux_entire_dir_perms',
  techspec: '<b>CSD:</b>NA<br><b>-ITCS:</b>NA<br>',
  'attributes' => [{
     key: "dirlist",
     display_name: "Directory List",
     type: "complex_hash",
     display_type: "object_set",
     "attributes" => [{
      display_type: "key_value_pair",
      "attributes" => [{
         display_type: "directory_permission"
      }]
    }],
     validator: "",
     units: "",
     hint: "Mapping of directories with their corresponding permissions, owners and groups.",
     default:"{  \"/etc/init.d/*\" => { mode: \"00755\", owner: \"root\", group: \"root\" },  \"/etc/sudoers.d/*\" => { mode: \"00440\", owner: \"root\", group: \"root\" },  \"/etc/cron.d/*\" => { mode: \"00755\", owner: \"root\", group: \"root\" },  \"/etc/rc.d/*\" => { mode: \"00755\", owner: \"root\", group: \"root\" } }"
    },
    {
     key: "whitelist",
     display_name: "White List",
     type: "CSV",
     display_type: "string_array",
     validator: "",
     units: "",
     hint: "List of directories,files to be excluded from this policy.",
     default: "[]"
    },
    {
     key: "enforce_sticky_bit_for_subdir",
     display_name: "Set Sticky bit for Directories",
     type: "CSV",
     display_type: "string_array",
     validator: "",
     units: "",
     hint: "List of parent directories,to which sticky bit is set for its sub-directories. usage:['/var/log/*']",
     default: "['/var/log/*']"
    },
    {
     key: "exclude_sticky_bit_for_subdir",
     display_name: "Exclude Sticky bit for sub Directories",
     type: "CSV",
     display_type: "string_array",
     validator: "",
     units: "",
     hint: "Exclude sub-directories from setting sticky bit. usage:['/var/log/tmp_dir/']",
     default: "[]"
    }   
  ]
}

