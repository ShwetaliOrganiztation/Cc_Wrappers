default['cc_policy_aix_pass_max_age']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:aix',
                               "enforced_by" => [{ 
                                                policy: 'policy_aix_pass_max_age',
                                                enabled: true}]
                              }               

                           
                             ]
                          }
default['cc_policy_aix_pass_max_age']['ui_metadata']['policy_aix_pass_max_age'] = {
                           policy:"policy_aix_pass_max_age",
						   display_name:"policy_aix_pass_max_age",
techspec:'<b>CSD:</b>E.1.1.2, E.1.1.10.1, E.1.1.14.0, E.1.1.14.1, E.1.1.15.1, E.1.1.15.2, E.1.1.15.3, E.1.1.16.1, E.1.1.17.0, E.1.1.17.1, E.1.1.18.1, E.1.1.18.2<br><b>-ITCS:</b>Section 2.1.1(2.1), 2.1.1(5.2)<br>',
						   attributes:[
						   
              {key:"maxweeks_by_user_id",
                 type:"complex_hash",
                 display_name:"Max weeks by user name",   
                 display_type:"array_set",
                 validator:"",
                 attributes:[{
                   display_type:"row_objects",
                         options:"userid,maxweeks",
                         display_name:"User Name,Max Weeks"
                 }], 
                 options:[],
                 units:"",
                 hint:"Maximum number of weeks a password will be valid for specified user.It is a mapping of valid user names and maxweeks."    
               },{
                 key:"maxweeks_by_group_id",
                 type:"complex_hash",
                 display_name:"Max weeks by group name",   
                 display_type:"array_set",
                 validator:"",
                 attributes:[{
                   display_type:"row_objects",
                         options:"groupid,maxweeks",
                         display_name:"Group Name,Max Weeks"
                 }], 
                 options:[],
                 units:"",
						   hint:"Maximum number of weeks a password will be valid for users with the specified group ids. It is a mapping of valid group name and maxweeks."},    

						   {key:"maxweeks",
						   type:"text",
						   display_name:"Max Weeks",
						   display_type:"text_box",
						   validator:"^([0-9]|1[0-9]|2[0-9]|3[0-9]|4[0-9]|5[0-2])$",
						   units:"",
						   options:"",
						   hint:"Weeks the password is valid until it needs to be changed",
						   default:"13"},
						   

						   {key:"whitelist",
						   type:"string_array",
						   display_name:"whitelist",
						   display_type:"string_array",
						   validator:"",
						   units:"",
						   options:"",
						   hint:"List of users excluded from password aging requirements",
						   default:[]},
						   

						   {key:"exempt_accounts_without_shell",
						   type:"boolean",
						   display_name:"exempt_accounts_without_shell",
						   display_type:"single_select",
						   validator:"^(?i)(true|false)$",
						   units:"",
						   options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\": \"false\"}",
						   hint:"Allows user accounts with their shell set to null, /sbin/nologin or /bin/false to be excluded from aging requirements",
						   default:true},
						   

						   {key:"exempt_locked_accounts",
						   type:"boolean",
						   display_name:"exempt_locked_accounts",
						   display_type:"single_select",
						   validator:"^(?i)(true|false)$",
						   units:"",
						   options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\": \"false\"}",
						   hint:"Allows user accounts which are locked to be excluded from aging requirements",
						   default:true
						   },
                           {key:"exempt_users_without_password",
						   type:"boolean",
						   display_name:"exempt_users_without_password",
						   display_type:"single_select",
						   validator:"^(?i)(true|false)$",
						   units:"",
						   options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\": \"false\"}",
						   hint:"Allows user accounts which have password set to * in /etc/passwd or /etc/security/passwd to be excluded from aging requirements",
						   default:true
						   }

				
							],
                            "validator"=>"",
                            "units"=>"",
                            "hint"=>""
							}


