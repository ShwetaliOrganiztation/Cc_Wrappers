default['cc_policy_linux_secure_internal_services']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:linux',
                               "enforced_by" => [{
                                                policy: 'policy_linux_secure_internal_services',
                                                enabled: true}]
                              }


                             ]
                          }
default['cc_policy_linux_secure_internal_services']['ui_metadata']['policy_linux_secure_internal_services'] = {
           "policy"=>"policy_linux_secure_internal_services",
           "display_name"=>"policy_linux_secure_internal_services",
           "techspec"=>'<b>CSD:</b>AD.1.5.12.2, AD.1.5.12.3, AD.1.5.12.4<br><b>-ITCS:</b>NA<br>',
              "attributes"=>[
                  {"key"=>"process_names",
                   "type"=>"csv",
                   "display_type"=>"string_array",
                   "display_name"=>"Process Names",
                   "validator"=>"",  
                   "units"=>"",
                   "options"=>[],
                   "hint"=>"List of process names of unsafe services to restrict."},
                  {"key"=>"secure_internal_networks",
                   "type"=>"csv",
                   "display_name"=> "Internal Secure Networks",
                   "display_type"=>"string_array",
                   "validator"=>"",  
                   "units"=>"",
                   "options"=>[],
                   "hint"=>"List of secure networks from which to allow connections to the specified processes."}
               ],
             "validator"=>"",
             "units"=>"",
             "hint"=>""}
