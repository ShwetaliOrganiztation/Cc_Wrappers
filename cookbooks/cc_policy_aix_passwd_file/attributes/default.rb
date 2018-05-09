default['cc_policy_aix_passwd_file']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:aix',
                               "enforced_by" => [{ 
                                                policy: 'policy_aix_passwd_file',
                                                enabled: true}]
                              }               

                           
                             ]
                          }
						  
						  
# default['policy_aix_passwd_file']['enforce_unique_ids'] = true
# default['policy_aix_passwd_file']['enforce_no_passwds'] = true
# default['policy_aix_passwd_file']['enforce_no_nocheck'] = true
# default['policy_aix_passwd_file']['enforce_no_username_in_passwds'] = true
# default['policy_aix_passwd_file']['enforce_length_strong_encryption_passwds'] = true
# default['policy_aix_passwd_file']['supported_encryption_algorithms'] = '(ssha512|ssha256|ssha1|smd5)'
# default['policy_aix_passwd_file']['white_list'] = []
# white_list is designed to contain list of user name for skipping checking of enforce_unique_ids, enforce_no_passwds and enforce_no_nocheck
						  
						  
						  
default['cc_policy_aix_passwd_file']['ui_metadata']['policy_aix_passwd_file'] = {
               policy:"policy_aix_passwd_file",
						   display_name:"policy_aix_passwd_file",
						   techspec:'<b>CSD:</b>E.1.1.1.0, E.1.1.5.1, E.1.1.6.1, E.1.1.8<br><b>-ITCS:</b>Section 2.1.1(1.1), 2.1.1(2.1), 2.1.1(4)<br>',
						   attributes:[
						   

						   {key:"enforce_unique_ids",
						   type:"boolean",
						   display_name:"enforce_unique_ids",
				       display_type:"single_select",
						   validator:"^(?i)(true|false)$",
						   units:"",
						   options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\": \"false\"}",
						   hint:"Ensure all the UIDs in /etc/passwd are unique",
						   default:true},

						   {key:"enforce_no_passwds",
						   type:"boolean",
						   display_name:"enforce_no_passwds",
						   display_type:"single_select",
						   validator:"^(?i)(true|false)$",
						   units:"",
						   options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\": \"false\"}",
						   hint:"Ensure that the /etc/passwd file does not contain any passwords",
						   default:true},
						   

						   {key:"enforce_no_nocheck",
						   type:"boolean",
						   display_name:"enforce_no_nocheck",
						   display_type:"single_select",
						   validator:"^(?i)(true|false)$",
						   units:"",
						   options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\": \"false\"}",
						   hint:"Ensure that flag NOCHECK is not permitted for users with passwords in the /etc/security/passwd file",
						   default:true},
						   

						   {key:"enforce_no_username_in_passwds",
						   type:"boolean",
						   display_name:"enforce_no_username_in_passwds",
						   display_type:"single_select",
						   validator:"^(?i)(true|false)$",
						   units:"",
						   options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\": \"false\"}",
						   hint:"Ensure that the last line of the /usr/share/dict/words dictionary is $USER",
						   default:true},
						   

						   {key:"enforce_length_strong_encryption_passwds",
						   type:"boolean",
						   display_name:"enforce_length_strong_encryption_passwds",
						   display_type:"single_select",
						   validator:"^(?i)(true|false)$",
						   units:"",
						   options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\": \"false\"}",
						   hint:"Enforce long password length and strong encryption of passwords",
						   default:true},
						   

						   {key:"supported_encryption_algorithms",
						   type:"text",
						   display_name:"supported_encryption_algorithms",
						   display_type:"dsv",
						   validator:"",
						   units:"",
						   options:"",
						   hint:"Supported password encryption algorithms",
						   default:"'(ssha512|ssha256|ssha1|smd5)'"
						   },
						   

						   {key:"white_list",
						   type:"CSV",
						   display_name:"White List",
						   display_type:"string_array",
						   validator:"",
						   units:"",
						   options:"",
						   hint:"list of username being ignored for attributes 'enforce_unique_ids', 'enforce_no_passwds', 'enforce_no_nocheck'",
						   default:""
						   }
			
							],
                            "validator"=>"",
                            "units"=>"",
                            "hint"=>""
							}


              
