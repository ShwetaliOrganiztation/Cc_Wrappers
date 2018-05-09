default['cc_policy_linux_directory_perms']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:linux',
                               "enforced_by" => [{ 
                                                policy: 'policy_linux_directory_perms',
                                                enabled: true}]
                              }               

                           
                             ]
                          }

default['cc_policy_linux_directory_perms']['ui_metadata']['policy_linux_directory_perms'] = {
		policy: 'policy_linux_directory_perms',
		display_name: 'policy_linux_directory_perms',
		techspec: '<b>CSD:</b>AD.1.8.3.1, AD.1.8.3.2, AD.1.8.3.3, AD.1.8.5.1, AD.1.8.5.2, AD.1.8.9, AD.1.8.11<br><b>-ITCS:</b>Section 2.1.2(5.1)<br>',
		'attributes' => [
		{
		key: "dirlist",
		display_name: "Dir List",
		type: "complex_hash",
		display_type: "object_set",
		"attributes" => [{
			display_type: "key_value_pair",
			"attributes" => [{
				display_type: "directory_permission"
			}]
		}],
		validator: "",
		units: "",
		hint: "List of directories with the respective permissions that need to be set."

		},	

		],
		validator: "",
		units: "",
		hint: ""

}


      
