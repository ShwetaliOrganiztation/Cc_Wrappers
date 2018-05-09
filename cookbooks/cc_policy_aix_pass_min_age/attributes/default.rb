default['cc_policy_aix_pass_min_age']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:aix',
                               "enforced_by" => [{ 
                                                policy: 'policy_aix_pass_min_age',
                                                enabled: true}]
                              }               

                           
                             ]
                          }
default['cc_policy_aix_pass_min_age']['ui_metadata']['policy_aix_pass_min_age'] = {
                           policy:"policy_aix_pass_min_age",
						   display_name:"policy_aix_pass_min_age",
techspec: '<b>CSD:</b>E.1.1.3.0, E.1.1.3.1<br><b>-ITCS:</b>Section 2.1.1(2.1)<br>',
						   attributes:[
						   

						   {key:"minweeks",
						   type:"text",
						   display_name:"minweeks",
						   display_type:"text_box",
						   validator:"[0-9]*",
                units:"",
						   options:"",
						   hint:"The minimum number of weeks before the password can be changed",
						   default:"1"},
						   

						   {key:"whitelist",
						   type:"string_array",
						   display_name:"whitelist",
						   display_type:"string_array",
						   validator:"",
						   units:"",
						   options:"",
						   hint:"List of users excluded from password minimum age requirements",
						   default:[]},
						   

						   {key:"exempt_accounts_without_shell",
						   type:"boolean",
						   display_name:"exempt_accounts_without_shell",
						   display_type:"single_select",
						   validator:"^(?i)(true|false)$",
						   units:"",
						   options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\": \"false\"}",
						   hint:"Allows user accounts with their shell set to null, /sbin/nologin or /bin/false to be excluded from password minimum age requirements",
						   default:true},
						   

						   {key:"exempt_locked_accounts",
						   type:"boolean",
						   display_name:"exempt_locked_accounts",
						   display_type:"single_select",
						   validator:"^(?i)(true|false)$",
						   units:"",
						   options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\": \"false\"}",
						   hint:"Allows user accounts which are locked to be excluded from password minimum age requirements",
						   default:true
						   }

				
							],
                            "validator"=>"",
                            "units"=>"",
                            "hint"=>""
							}


              
