default['cc_policy_aix_nfs']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:aix',
                               "enforced_by" => [{ 
                                                policy: 'policy_aix_nfs',
                                                enabled: true}]
                              }               

                           
                             ]
                          }
default['cc_policy_aix_nfs']['ui_metadata']['policy_aix_nfs'] = {
                           policy:"policy_aix_nfs",
						   display_name:"policy_aix_nfs",
                           techspec: '<b>CSD:</b>E.1.5.4<br><b>-ITCS:</b>Section 2.1.1(8)<br>',
						   attributes:[
						   

						   {key:"ensure_etc_exports_exists",
						   type:"boolean",
						   display_name:"ensure_etc_exports_exists",
						   display_type:"single_select",
						   validator:"^(?i)(true|false)$",
						   units:"",
						   options:"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\": \"false\"}",
						   hint:"Ensure /etc/exports exists (if NFS server is active)",
						   default:true
						   }


							
							],
                            "validator"=>"",
                            "units"=>"",
                            "hint"=>""
							}


              
