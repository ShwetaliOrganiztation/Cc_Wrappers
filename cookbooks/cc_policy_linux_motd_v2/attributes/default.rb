default['cc_policy_linux_motd_v2']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:linux',
                               "enforced_by" => [{ 
                                                policy: 'policy_linux_motd_v2',
                                                enabled: false}]
                              }               

                           
                             ]
                          }
default['cc_policy_linux_motd_v2']['ui_metadata']['policy_linux_motd_v2'] = {
                           policy:"policy_linux_motd_v2",
						   display_name:"policy_linux_motd_v2",
               techspec: '<b>CSD:</b>AD.2.0.1<br><b>-ITCS:</b>Section 2.1.2(3.1)<br>',
						   attributes:[
						   

						   {key:"message",
						   type:"string",
						   display_name:"message",
						   display_type:"multiline_box",
						   validator:"",
						   units:"",
						   options:"",
						   hint:"Enter the message that motd file should contain. The way you define your message here, it will be seen in motd file as it is.",
						   default:""}

							
							],
                            "validator"=>"",
                            "units"=>"",
                            "hint"=>""
							}


              
