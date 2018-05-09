default['cc_policy_aix_sysctl_network']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:aix',
                               "enforced_by" => [{ 
                                                policy: 'policy_aix_sysctl_network',
                                                enabled: true}]
                              }               

                           
                             ]
                          }
default['cc_policy_aix_sysctl_network']['ui_metadata']['policy_aix_sysctl_network'] = {
               policy:"policy_aix_sysctl_network",
						   display_name:"policy_aix_sysctl_network",
                           techspec:'<b>CSD:</b>NA<br><b>-ITCS:</b>NA<br>',
						   attributes:[

						   {key:"syncookies",
						   type:"text",
						   display_name:"clean partial conns",
						   display_type:"text_box",
						   validator:"^(0|1)$",
						   units:"",
						   options:"",
						   hint:"Specifies whether or not SYN (synchronizes the sequence number) attacks are being avoided.",
						   default:"1"},
						   
						   {key:"enablebroadcasts",
						   type:"text",
						   display_name:"Enable directed broadcast",
						   display_type:"text_box",
						   validator:"^(0|1)$",
						   units:"",
						   options:"",
						   hint:"Specifies whether to allow a directed broadcast to a gateway. Setting to 0 helps prevent directed packets from
reaching a remote network.",
						   default:"0"},
						   
						   {key:"ignoreredirects",
						   type:"text",
						   display_name:"Ip Ignore Redirects",
						   display_type:"text_box",
						   validator:"^(0|1)$",
						   units:"",
						   options:"",
						   hint:"Enable/Disable ignoring redirects. It can have two values, 0 or 1. A value of 0 processes redirects as usual. A value of 1 ignores redirects.",
						   default:"1"
						   }
			
							],
                            "validator"=>"",
                            "units"=>"",
                            "hint"=>""
							}


              
