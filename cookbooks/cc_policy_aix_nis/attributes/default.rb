default['cc_policy_aix_nis']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:aix',
                               "enforced_by" => [{ 
                                                policy: 'policy_aix_nis',
                                                enabled: true}]
                              }               

                           
                             ]
                          }
default['cc_policy_aix_nis']['ui_metadata']['policy_aix_nis'] = {
               policy:"policy_aix_nis",
						   display_name:"policy_aix_nis",
                           techspec: '<b>CSD:</b>E.1.5.13<br><b>-ITCS:</b>Section 2.1.1(8)<br>',
						   attributes:[
						   

						   {key:"disabled_nis_services",
						   type:"string_array",
						   display_name:"disabled_nis_services",
						   display_type:"string_array",
						   validator:"",
						   units:"",
						   options:"",
						   hint:"List of NIS services that should be disabled on this host.",
						   default:['ypserv', 'ypupdated', 'yppasswdd', 'ypbind']
						   }

				
							],
                            "validator"=>"",
                            "units"=>"",
                            "hint"=>""
							}


              
