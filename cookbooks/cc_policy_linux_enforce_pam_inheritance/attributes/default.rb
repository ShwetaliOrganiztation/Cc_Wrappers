default['cc_policy_linux_enforce_pam_inheritance']['policy_map'] = {"components" => [
                              {
                                identified_by: 'value',
                                id: 'os:linux',
                                "enforced_by" => [{ 
                                                policy: 'policy_linux_enforce_pam_inheritance',
                                                enabled: true}]
                              }               
                           
                             ]
                          }

default['cc_policy_linux_enforce_pam_inheritance']['ui_metadata']['policy_linux_enforce_pam_inheritance'] = {
  "policy"=>"policy_linux_enforce_pam_inheritance",
  "display_name"=>"policy_linux_enforce_pam_inheritance",
  "techspec"=>'<b>CSD:</b>NA<br><b>-ITCS:</b>Section 2.1.2(2.1)<br>',
  "attributes"=>[
              {
                "key"=>"enforce_service_list",
                "type"=>"complex_hash",
                "display_name"=>"Enforce service list",
                "display_type"=>"object_set",
                "attributes" =>[{
                                 "display_type"=>"key_value_pair",
                                 "attributes" => [{
                                                      "display_type"=>"service_list"
                                                  }]
                              }],
                "validator"=>"",
                "units"=>"",
                "options"=>"",
                "hint"=>"The default mapping of pam service file list ,if `override: true` will override the existing service file from the template even if file already exists.",
                "default"=>"{  \"login\" => { \"override\": false },  \"sshd\" => { \"override\": false },  \"passwd\" => { \"override\": false },  \"su\" => { \"override\": false } }"
              },
              {
                "key"=>"control",
                "display_name"=>"Directive Control",
                "type"=>"string",
                "display_type"=>"text_box",
                "validator"=>"",
                "units"=>"",
                "hint"=>"Directive control support either include or substack",
                "default"=>"include"
              }],
  validator: "",
  units: "",
  hint: ""
}
