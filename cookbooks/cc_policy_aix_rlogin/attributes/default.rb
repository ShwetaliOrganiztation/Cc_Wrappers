default['cc_policy_aix_rlogin']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:aix',
                               "enforced_by" => [{ 
                                                policy: 'policy_aix_rlogin',
                                                enabled: true}]
                              }               

                           
                             ]
                          }
default['cc_policy_aix_rlogin']['ui_metadata']['policy_aix_rlogin'] = {
               policy:"policy_aix_rlogin",
						   display_name:"policy_aix_rlogin",
                           techspec: '<b>CSD:</b>NA<br><b>-ITCS:</b>NA<br>',
						   attributes:[
						   

						   {key:"server_whitelist",
						   type:"string_array",
						   display_name:"server_whitelist",
						   display_type:"string_array",
						   validator:"",
						   units:"",
						   options:"",
						   hint:"Servers from which rlogin/rsh/rexec are allowed on this machine",
						   default:[]
						   }

			
							],
                            "validator"=>"",
                            "units"=>"",
                            "hint"=>""
							}


              
