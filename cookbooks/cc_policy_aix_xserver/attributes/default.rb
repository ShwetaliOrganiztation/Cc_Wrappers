default['cc_policy_aix_xserver']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:aix',
                               "enforced_by" => [{ 
                                                policy: 'policy_aix_xserver',
                                                enabled: true}]
                              }               

                           
                             ]
                          }
default['cc_policy_aix_xserver']['ui_metadata']['policy_aix_xserver'] = {
              policy:"policy_aix_xserver",
						  display_name:"policy_aix_xserver",
                          techspec: '<b>CSD:</b>E.1.5.11<br><b>-ITCS:</b>Section 2.1.1(8)<br>',
						  attributes:[
						  {key:"enforce_xserver_access_control",
						  type:"boolean",
						  display_name:"enforce_xserver_access_control",
						  display_type:"single_select",
						  validator:"^(?i)(true|false)$",
						  units:"",
						  options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\": \"false\"}]",
						  hint:"Ensure that the X server access control is not disabled on systems running the X server.",
						  default:true
						  }
							],
                            "validator"=>"",
                            "units"=>"",
                            "hint"=>""
							}


              
