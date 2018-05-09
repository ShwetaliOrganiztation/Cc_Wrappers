default['cc_policy_linux_file_permissions']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:linux',
                               "enforced_by" => [{ 
                                                policy: 'policy_linux_file_permissions',
                                                enabled: true}]
                              }               

                           
                             ]
                          }


default['cc_policy_linux_file_permissions']['ui_metadata']['policy_linux_file_permissions'] = {
		policy: 'policy_linux_file_permissions',
		display_name: 'policy_linux_file_permissions',
                techspec: '<b>CSD:</b>AD.1.2.2, AD.1.2.3.1, AD.1.2.3.2, AD.1.2.4.1, AD.1.2.4.2, AD.1.2.5, AD.1.5.3.1, AD.1.8.2.1, AD.1.8.2.2, AD.1.8.4.1, AD.1.8.4.2, AD.1.8.6.1, AD.1.8.6.2, AD.1.8.7.1, AD.1.8.7.2, AD.1.8.8, AD.1.8.10, AD.1.8.12.1.1, AD.1.8.12.1.2, AD.1.8.12.2, AD.1.8.12.3, AD.1.8.12.4, AD.1.8.12.5, AD.1.8.12.6, AD.1.8.12.7<br><b>-ITCS:</b>Section 2.1.2(2.1), 2.1.2(5.1), 2.1.2(6.1), 2.1.2(8)<br>',
		'attributes' => [
		{
		key: "dirs_for_other_perm_normalization",
		display_name: "Dirs for Other Perm Normalization",
		type: "string_array",
		display_type: "string_array",
		validator: "",
		units: "",
		hint: "For the files contained in the directories, the write permission from others will be removed in case it has both write and execute permissions."
		},

		{

		key: "common_filelist",
		display_name: "Common File list",
		type: "complex_hash",
		display_type: "object_set",
		"attributes" => [{
			display_type: "key_value_pair",
			"attributes" => [{
				display_type: "file_permission",
				options: "enforce_if_exist"
			}]
		}],
		validator: "",
		units: "",
		hint: "Input commom file list that is shared by supported platforms"

		},	

		{
		key: "rhel7_filelist",
		display_name: "Rhel7 Filelist",
		type: "complex_hash",
		display_type: "object_set",
		"attributes" => [{
			display_type: "key_value_pair",
			"attributes" => [{
				display_type: "file_permission"
			}]
		}],
		validator: "",
		units: "",
		hint: "Input file list that is supported by rhel7"
		},

		{
		key: "rhel6_filelist",
		display_name: "Rhel6 Filelist",
		type: "complex_hash",
		display_type: "object_set",
		"attributes" => [{
			display_type: "key_value_pair",
			"attributes" => [{
				display_type: "file_permission"
			}]
		}],
		validator: "",
		units: "",
		hint: "Input file list that is supported by rhel6"
		},
		{
			
		key: "rhel5_filelist",
		display_name: "Rhel5 Filelist",
		type: "complex_hash",
		display_type: "object_set",
		"attributes" => [{
			display_type: "key_value_pair",
			"attributes" => [{
				display_type: "file_permission"
			}]
		}],
		validator: "",
		units: "",
		hint: "Input file list that is supported by rhel5"
		},

		{
		key: "debian_filelist",
		display_name: "Debian File List",
		type: "complex_hash",
		display_type: "object_set",
		"attributes" => [{
			display_type: "key_value_pair",
			"attributes" => [{
				display_type: "file_permission"
			}]
		}],
		validator: "",
		units: "",
		hint: "Input file list that is supported by Debian"
		},
		
		{
		key: "suse_filelist",
		display_name: "Suse File List",
		type: "complex_hash",
		display_type: "object_set",
		"attributes" => [{
			display_type: "key_value_pair",
			"attributes" => [{
				display_type: "file_permission"
			}]
		}],
		validator: "",
		units: "",
		hint: "Input file list that is supported by suse"
		},
		

		],
		validator: "",
		units: "",
		hint: ""

}

              
