default['cc_policy_linux_pass_min_len']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:linux',
                               "enforced_by" => [{
                                                policy: 'policy_linux_pass_min_len',
                                                enabled: true}]
                              }


                             ]
                          }


  default['cc_policy_linux_pass_min_len']['ui_metadata']['policy_linux_pass_min_len'] = {
           "policy"=>"policy_linux_pass_min_len",
           "display_name"=>"policy_linux_pass_min_len",
           "techspec"=> '<b>CSD:</b>AD.1.1.2<br><b>-ITCS:</b>Section 2.1.2(2.1)<br>',
              "attributes"=>[
                  {"key"=>"minlen",
                   "type"=>"number",
                   "display_type"=>"text_box",
                   "display_name"=>"Password Min Length",
                   "validator"=>"[0-9]*",
                   "units"=>"characters",
                   "options"=>[],
                   "hint"=>"Min password length, provide number of characters"},
              
                  {"key"=>"requireupper",
                   "type"=>"Boolean",
                   "display_type"=>"single_select",
                   "display_name"=>"Whether require upper Characters or not",
                   "validator"=>"",
                   "units"=>"",
                   "options"=>[],
                   "hint"=>"Enforce to require upper Characters in password."},
              
                  {"key"=>"requirelower",
                   "type"=>"Boolean",
                   "display_type"=>"single_select",
                   "display_name"=>"Whether require lower Characters or not",
                   "validator"=>"",
                   "units"=>"",
                   "options"=>[],
                   "hint"=>"Enforce to require lower Characters in password."},
               
                  {"key"=>"requirespecial",
                   "type"=>"Boolean",
                   "display_type"=>"single_select",
                   "display_name"=>"Whether require special Characters or not",
                   "validator"=>"",
                   "units"=>"",
                   "options"=>[],
                   "hint"=>"Enforce to require special Characters in password."},
               
                  {"key"=>"requirenumeric",
                   "type"=>"Boolean",
                   "display_type"=>"single_select",
                   "display_name"=>"Whether require numeric Characters or not",
                   "validator"=>"",
                   "units"=>"",
                   "options"=>[],
                   "hint"=>"Enforce to require numeric Characters in password."}
               ],
             "validator"=>"",
             "units"=>"",
             "hint"=>""}
