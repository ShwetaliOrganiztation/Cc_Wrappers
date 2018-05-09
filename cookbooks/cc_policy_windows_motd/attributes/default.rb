default['cc_policy_windows_motd']['policy_map'] = {components: [
                              {
                               identified_by: 'value',
                               id: 'os:windows',
                               enforced_by: [{
                                                policy: 'policy_windows_motd',
                                                enabled: true}]
                              }               

                           
                             ]
                          }
default['cc_policy_windows_motd']['ui_metadata']['policy_windows_motd'] = {
policy: "policy_windows_motd",
display_name: "policy_windows_motd",
techspec: '<b>CSD_Win2008:</b>YO.2.0.1<br><b>-CSD_Win2012:</b>ED.2.0.1<br><b>-CSD_Win2016:</b>GZ.2.0.1, GZ.2.0.2 <br><b>-ITCS_Win2008:</b>Section 3.1<br><b>-ITCS_Win2012:</b>Section 3.1<br>',
attributes:[

{
				key: "caption",
				display_name: "Caption",
				type: "string",
				display_type: "text_box",
				validator: "",
				units: "",
				hint: "Window title for motd / Business Use Notice"
			}, 
{
				key: "message",
				display_name: "Windows Message of the Day",
				type: "string array",
				display_type: "multiline_box",
				validator: "",
				units: "",
				hint: "Any Valid message to display as Message of the day"
					}
],
 validator: "",
 units: "",
 hint: ""
}



              
