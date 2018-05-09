default['cc_policy_aix_motd']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:aix',
                               "enforced_by" => [{ 
                                                policy: 'policy_aix_motd',
                                                enabled: true}]
                              }               

                           
                             ]
                          }
default['cc_policy_aix_motd']['ui_metadata']['policy_aix_motd'] = {
                           policy:"policy_aix_motd",
						   display_name:"policy_aix_motd_deprecated",
						   attributes:[
						   

						   {key:"message",
						   type:"string_array",
						   display_name:"message",
						   display_type:"string_array",
						   validator:"",
						   units:"",
						   options:"",
						   hint:"Message that the motd should contain",
						   default:["*******************************************************************************\n",
												"*                                                                             *\n",
												"* IBM's internal systems must only be used for conducting                     *\n",
												"* IBM's business or for purposes authorized by IBM Management.                *\n",
												"*                                                                             *\n",
												"* Use is subject to audit at any time by IBM Management.                      *\n",
												"*                                                                             *\n",
												"*                                                                             *\n",
												"*******************************************************************************\n"]}

							
							],
                            "validator"=>"",
                            "units"=>"",
                            "hint"=>""
							}


              
