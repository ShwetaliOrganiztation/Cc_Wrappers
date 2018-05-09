default['cc_policy_linux_ftp']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:linux',
                               "enforced_by" => [{ 
                                                policy: 'policy_linux_ftp',
                                                enabled: true}]
                              }               

                           
                             ]
                          }

# default['policy_linux_ftp']['ftpusers'] = ['ftp']

default['cc_policy_linux_ftp']['ui_metadata']['policy_linux_ftp'] = {
	policy: 'policy_linux_ftp',
	display_name: 'policy_linux_ftp',
        techspec: '<b>CSD:</b>AD.1.4.2, AD.1.5.1.1, AD.1.5.1.2, AD.1.5.1.3, AD.1.5.1.4, AD.1.5.1.5, AD.1.5.1.6, AD.1.5.1.8<br><b>-ITCS:</b>Section 2.1.2(2.1), 2.1.2(5.2), 2.1.2(8)<br>',
	'attributes' => [{
		 key: "ftpusers",
		 display_name: "FTP Users",
		 type: "CSV",
		 display_type: "string_array",
		 validator: "",
		 units: "",
		 hint: "List of ftp users whose login will be denied."

		},
		],
		
	validator: "",
	units: "",
	hint: ""
	}

              
