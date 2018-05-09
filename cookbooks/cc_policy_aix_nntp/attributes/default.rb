default['cc_policy_aix_nntp']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:aix',
                               "enforced_by" => [{ 
                                                policy: 'policy_aix_nntp',
                                                enabled: true}]
                              }               

                           
                             ]
                          }
default['cc_policy_aix_nntp']['ui_metadata']['policy_aix_nntp'] = {
                policy:"policy_aix_nntp",
						   display_name:"policy_aix_nntp",
						   attributes:[
						   

						   {key:"disabled_nntp_services",
						   type:"string_array",
						   display_name:"disabled_nntp_services",
						   display_type:"string_array",
						   validator:"",
						   units:"",
						   options:"",
						   hint:"List of NNTP services that should be disabled on this host.",
						   default:['nntpd']
						   }

				
							],
                            "validator"=>"",
                            "units"=>"",
                            "hint"=>""
							}


              
