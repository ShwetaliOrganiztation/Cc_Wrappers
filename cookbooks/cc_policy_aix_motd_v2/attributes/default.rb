default['cc_policy_aix_motd_v2']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:aix',
                               "enforced_by" => [{ 
                                                policy: 'policy_aix_motd_v2',
                                                enabled: false}]
                              }               

                           
                             ]
                          }
default['cc_policy_aix_motd_v2']['ui_metadata']['policy_aix_motd_v2'] = {
                           policy:"policy_aix_motd_v2",
						   display_name:"policy_aix_motd_v2",
               techspec: '<b>CSD:</b>E.2.0.1, E.2.0.2<br><b>-ITCS:</b>Section 2.1.1(3.1)<br>',
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


              
