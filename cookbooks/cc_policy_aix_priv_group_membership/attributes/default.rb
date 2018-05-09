default['cc_policy_aix_priv_group_membership']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:aix',
                               "enforced_by" => [{ 
                                                policy: 'policy_aix_priv_group_membership',
                                                enabled: true}]
                              }               

                           
                             ]
                          }
default['cc_policy_aix_priv_group_membership']['ui_metadata']['policy_aix_priv_group_membership'] = {
                           policy:"policy_aix_priv_group_membership",
						   display_name:"policy_aix_priv_group_membership",
                           techspec: '<b>CSD:</b>NA<br><b>-ITCS:</b>NA<br>',
						   attributes:[
						   

						   {key:"allowed_membership",
						   type:"complex_hash",
						   display_name:"allowed_membership",
								display_type: "object_set",
								"attributes" => [{
																		 display_type: "key_value_pair",
																		 "attributes" => [{
																													display_type: "string"
																											}]
																 }],
						   validator:"",
						   units:"",
						   options:"",
						   hint:"List of groups and their allowed users",
						   default:{  'system'   => ['root'],   'bin'      => ['bin'],   'sys'      => ['bin', 'sys'],   'adm'      => ['bin', 'adm'],   'uucp'     => ['uucp'],   'printq'   => ['lp'],   'lp'       => ['lp'],   'invscout' => ['invscout'],   'snapp'    => ['snapp']}},
						   

						   {key:"priv_gid_ranges",
						   type:"string_array",
                display_name:"priv_gid_ranges",
						   display_type:"string_array",
						   validator:"",
						   units:"",
						   options:"",
						   hint:"OS GIDs which should be considered privileged.",
						   default:['0-0', '2-21']},
						   

						   {key:"excludednames",
						   type:"string_array",
						   display_name:"excludednames",
						   display_type:"string_array",
						   validator:"",
						   units:"",
						   options:"",
						   hint:"List of users to be excluded from priv group checking.",
						   default:['root']},
						   

						   {key:"excludedgroups",
						   type:"string_array",
						   display_name:"excludedgroups",
						   display_type:"string_array",
						   validator:"",
						   units:"",
						   options:"",
						   hint:"List of groups to be excluded from priv group checking.",
						   default:[]},
						   

						   {key:"exempt_accounts_without_shell",
						   type:"boolean",
						   display_name:"exempt_accounts_without_shell",
						   display_type:"single_select",
						   validator:"^(?i)(true|false)$",
						   units:"",
						   options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\": \"false\"}]",
						   hint:"Allows user accounts with their shell set to null or /bin/false to be excluded from priv group checking",
						   default:true},
						   

						   {key:"exempt_locked_accounts",
						   type:"boolean",
						   display_name:"exempt_locked_accounts",
						   display_type:"single_select",
						   validator:"^(?i)(true|false)$",
						   units:"",
						   options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\": \"false\"}",
						   hint:"Allows user accounts which are locked to be excluded from priv group checking",
						   default:true
						   }

			
							],
                            "validator"=>"",
                            "units"=>"",
                            "hint"=>""
							}


              
