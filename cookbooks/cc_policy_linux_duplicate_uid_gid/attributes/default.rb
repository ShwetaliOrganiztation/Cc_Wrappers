default['cc_policy_linux_duplicate_uid_gid']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:linux',
                               "enforced_by" => [{ 
                                                policy: 'policy_linux_duplicate_uid_gid',
                                                enabled: true}]
                              }               

                           
                             ]
                          }

default['cc_policy_linux_duplicate_uid_gid']['ui_metadata']['policy_linux_duplicate_uid_gid'] = {
	policy: 'policy_linux_duplicate_uid_gid',
	display_name: 'policy_linux_duplicate_uid_gid',
	techspec: '<b>CSD:</b>AD.1.1.8.2, AD.1.1.8.3<br><b>-ITCS:</b>Section 2.1.2(1.1)<br>',
	'attributes' => [
		{
			key: "user_whitelist",
			type: "csv",
			display_name: "User White List",
			display_type: "string_array",
			validator: "",
			units: "",
			options: [],
			hint: "Enter a comma-separated list of user ids"
        },
        {
			key: "group_whitelist",
			type: "csv",
			display_name: "Group White List",
			display_type: "string_array",
			validator: "",
			units: "",
			options: [],
			hint: "Enter a comma-separated list of user ids"
        },
        {
			key: "check_users",
			type: "Boolean",
			display_type: "single_select",
			display_name: "Check users",
			validator: "",
			units: "",
			options: [],
			hint: "Enable this option to check for duplicate users "
        },
        {
			key: "check_groups",
			type: "Boolean",
			display_type: "single_select",
			display_name: "Check Group",
			validator: "",
			units: "",
			options: [],
			hint: "Enable this option to check for duplicate groups "
        },
                 
		
	],
 validator: "",
	units: "",
	hint: ""
}


              
