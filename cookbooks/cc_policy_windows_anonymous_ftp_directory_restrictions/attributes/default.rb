default['cc_policy_windows_anonymous_ftp_directory_restrictions']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:windows',
                               "enforced_by" => [{ 
                                                policy: 'policy_windows_anonymous_ftp_directory_restrictions',
                                                enabled: true}]
                              }               

                           
                             ]
                          }
# default['policy_windows_anonymous_ftp_directory_restrictions']['users'] = ['All Anonymous Users'] # defau

default['cc_policy_windows_anonymous_ftp_directory_restrictions']['ui_metadata']['policy_windows_anonymous_ftp_directory_restrictions'] = {
	policy: 'policy_windows_anonymous_ftp_directory_restrictions',
	display_name: 'policy_windows_anonymous_ftp_directory_restrictions',
  techspec:'<b>CSD_Win2008:</b>YO.1.5.4.2<br><b>-CSD_Win2012:</b>ED.1.5.4.2<br><b>-CSD_Win2016:</b>GZ.1.5.2.2<br><b>-ITCS_Win2008:</b>Section 8<br><b>-ITCS_Win2012:</b>Section 8<br>',
	"attributes" => [{
		 key: "users",
		 display_name: "Users",
		 type: "CSV",
		 display_type: "string_array",
		 validator: "",
		 units: "",
		 hint: "FTP User Names"

		},
		],

 validator: "",
 units: "",
 hint: ""
}
	

              

              
 
