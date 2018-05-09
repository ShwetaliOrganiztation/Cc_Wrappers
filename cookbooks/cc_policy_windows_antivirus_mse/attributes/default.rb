default['cc_policy_windows_antivirus_mse']['policy_map'] = {
    components: [
                              {
                               identified_by: 'value',
                               id: 'os:windows',
                               enforced_by: [{ 
                                                policy: 'policy_windows_antivirus_mse',
                                                enabled: true}]
                              }               
                           
                             ]
                          }
default['cc_policy_windows_antivirus_mse']['ui_metadata']['policy_windows_antivirus_mse'] = {
								policy:"policy_windows_antivirus_mse",
								display_name:"policy_windows_antivirus_mse",
								techspec: '<b>CSD_Win2008:</b>YO.1.3.1<br><b>-CSD_Win2012:</b>ED.1.3.1<br><b>-CSD_Win2016:</b>Not yet supported<br><b>-ITCS_Win2008:</b>NA<br><b>-ITCS_Win2012:</b>NA<br>',
								attributes: [{
									key: "update_interval",
									type: "number",
									display_name: "update_interval",
									display_type: "text_box",
									validator: "[0-9]*",
									units: "days",
									options: "",
									hint: "Specifies the interval/threshold for virus definitions(signatures) update in days",
									default: "1"
								}
								],
                            validator:"",
                            units:"",
                            hint:""
					}
              