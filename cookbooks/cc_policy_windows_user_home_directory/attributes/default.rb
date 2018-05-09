default['cc_policy_windows_user_home_directory']['policy_map'] = {components: [
                              {
                               identified_by: 'value',
                               id: 'os:windows',
                               enforced_by: [{
                                                policy: 'policy_windows_user_home_directory',
                                                enabled: true}]
                              }               

                           
                             ]
                          }
default['cc_policy_windows_user_home_directory']['ui_metadata']['policy_windows_user_home_directory'] = {
                            policy:"policy_windows_user_home_directory",
							display_name:"policy_windows_user_home_directory",
              techspec: '<b>CSD_Win2008:</b>NA<br><b>-CSD_Win2012:</b>NA<br><b>-CSD_Win2016:</b>NA<br><b>-ITCS_Win2008:</b>Section 3.2<br><b>-ITCS_Win2012:</b>Section 3.2<br>',
							attributes:[
							
							{key:"authorized_users",
							type:"CSV",
							display_name:"authorized users",
							display_type:"string_array",
							validator:"",
							units:"",
							options:"",
							hint:"Users authorized to keep their access control permissions"},
							
							
							{key:"restricted_permissions",
							type:"CSV",
							display_name:"restricted permissions",
							display_type:"string_array",
							validator:"",
							units:"",
							options:"",
							hint:"A comma separated value of permissions in abbreviation."}
                            ],
                            validator:"",
                            units:"",
                            hint:""
                          }

              
