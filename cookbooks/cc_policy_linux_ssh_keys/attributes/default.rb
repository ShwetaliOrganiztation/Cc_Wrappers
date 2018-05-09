default['cc_policy_linux_ssh_keys']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:linux',
                               "enforced_by" => [{
                                                policy: 'policy_linux_ssh_keys',
                                                enabled: false}]
                              }


                             ]
                          }

default['cc_policy_linux_ssh_keys']['ui_metadata']['policy_linux_ssh_keys'] = {
           "policy"=>"policy_linux_ssh_keys",
           "display_name"=>"policy_linux_ssh_keys",
           "techspec"=>'<b>CSD:</b>NA<br><b>-ITCS:</b>NA<br>',
              "attributes"=>[
                  {"key"=>"enforce_linux_ssh_keys",
                   "type"=>"boolean",
                   "display_name"=>"This policy will remove access for all users who, based on their key, should not have access to this system. Are you sure you want to enable it?",
                   "display_type"=>"single_select",
                   "validator"=>"",
                   "units"=>"",
                   "options"=>"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\: \"false\"}]",
                   "hint"=>"Set the value to true to remove ssh keys that are invalid/not in the allowed_countries_list, otherwise set to false to not enforce this feature."
                  },
                  {"key"=>"key_whitelist",
                   "type"=>"csv",
                   "display_name"=> "Exempted ssh keys",
                   "display_type"=> "string_array",
                   "validator"=>"",
                   "units"=>"",
                   "options"=>[],
                   "hint"=>"List of keys exempted from the ssh keys check",
                   "default"=>[]},

                  {"key"=>"user_whitelist",
                   "type"=>"csv",
                   "display_name"=> "Exempted users. 'automate' id (or equivalent) should ALWAYS be in this list",
                   "display_type"=> "string_array",
                   "validator"=>"",
                   "units"=>"",
                   "options"=>[],
                   "hint"=>"List of users exempted from the ssh keys check. 'automate' id (or equivalent) should ALWAYS be in this list or this policy will remove connectivity with CC/SSD.",
                   "default"=>[]},

                  {"key"=>"countries_allowed",
                   "type"=>"csv",
                   "display_name"=> "Allowed countries",
                   "display_type"=> "string_array",
                   "validator"=>"",
                   "units"=>"",
                   "options"=>[],
                   "hint"=>"List of countries allowed in the ssh keys check",
                   "default"=>[]},

                  {"key"=>"ldap_server_name",
                   "type"=>"string",
                   "display_type"=>"text_box",
                   "display_name"=>"LDAP Server name",
                   "validator"=>"",
                   "units"=>"",
                   "options"=>[],
                   "hint"=>"LDAP Server name",
                   "default"=>"bluepages.ibm.com"},

                  {"key"=>"ldap_server_port",
                   "type"=>"number",
                   "display_type"=>"text_box",
                   "display_name"=>"LDAP Server port",
                   "validator"=>"[0-9]*",
                   "units"=>"",
                   "options"=>[],
                   "hint"=>"Port of the LDAP server",
                   "default"=>"636"},
               ],
             "validator"=>"",
             "units"=>"",
             "hint"=>""}
