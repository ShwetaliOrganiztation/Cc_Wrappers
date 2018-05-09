default['cc_policy_aix_root_rlogin']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:aix',
                               "enforced_by" => [{
                                                policy: 'policy_aix_root_rlogin',
                                                enabled: true}]
                              }


                             ]
                          }
default['cc_policy_aix_root_rlogin']['ui_metadata']['policy_aix_root_rlogin'] = {
                           policy:"policy_aix_root_rlogin",
						   display_name:"policy_aix_root_rlogin",
                           techspec: '<b>CSD:</b>E.1.1.10.2<br><b>-ITCS:</b>Section 2.1.1(5.2)<br>',
						   attributes:[
						   
						   {key:"root_rlogin",
						   type:"boolean",
						   display_name:"Root Rlogin",
						   display_type:"single_select",
						   validator:"^(?i)(true|false)$",
						   units:"",
						   options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\": \"false\"}",
						   hint:"Root rlogin value to be set in /etc/security/user",
						   default:"false"
						   }
				
							],
                            "validator"=>"",
                            "units"=>"",
                            "hint"=>""
							}