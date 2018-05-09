default['cc_policy_windows_shared_folder']['policy_map'] = {components: [
                              {
                               identified_by: 'value',
                               id: 'os:windows',
                               enforced_by: [{
                                                policy: 'policy_windows_shared_folder',
                                                enabled: true}]
                              }               

                           
                             ]
                          }
default['cc_policy_windows_shared_folder']['ui_metadata']['policy_windows_shared_folder'] = {
                            policy:"policy_windows_shared_folder",
							display_name:"policy_windows_shared_folder",
              techspec: '<b>CSD_Win2008:</b>YO.1.9.3<br><b>-CSD_Win2012:</b>ED.1.9.3<br><b>-CSD_Win2016:</b>GZ.1.9.5<br><b>-ITCS_Win2008:</b>Section 4.2<br><b>-ITCS_Win2012:</b>Section 4.2<br>',
							attributes:[
							
							{key:"exempted_shared_paths",
							type:"CSV",
							display_name:"exempted shared paths",
							display_type:"string_array",
							validator:"",
							units:"",
    					options:"",
							hint:"List of shared paths to be exempted from this policy"}

                            ],
                            validator:"",
                            units:"",
                            hint:""
                          }

              
