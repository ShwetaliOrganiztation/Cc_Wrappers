default['cc_policy_windows_osr']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:windows',
                               "enforced_by" => [{ 
                                                policy: 'policy_windows_osr',
                                                enabled: true}]
                              }               

                           
                             ]
                          }
default['cc_policy_windows_osr'] ['ui_metadata'] ['policy_windows_osr'] = {
                           policy:"policy_windows_osr",
		display_name:"policy_windows_osr",
    techspec: '<b>CSD_Win2008:</b>YO.1.8.30, YO.1.8.31, YO.1.8.32, YO.20.1.2.26, YO.1.8.1, YO.1.8.2, YO.1.8.3, YO.1.8.4, YO.1.8.5, YO.1.8.6, YO.1.8.7, YO.1.8.8, YO.1.8.9, YO.1.8.10, YO.1.8.11, YO.1.8.12, YO.1.8.13, YO.1.8.14, YO.1.8.15, YO.1.8.16, YO.1.8.17, YO.1.8.20, YO.1.8.21<br><b>-CSD_Win2012:</b>ED.1.8.1, ED.1.8.2, ED.1.8.3, ED.1.8.4, ED.1.8.5, ED.1.8.6, ED.1.8.7, ED.1.8.8, ED.1.8.9, ED.1.8.10, ED.1.8.11, ED.1.8.12, ED.1.8.15, ED.1.8.16, ED.1.8.17, ED.1.8.18, ED.1.8.19, ED.1.8.22, ED.1.8.23, ED.1.8.30, ED.1.8.31, ED.1.8.32, ED.20.1.2.25<br><b>-CSD_Win2016:</b>GZ.1.8.1, GZ.1.8.2, GZ.1.8.3, GZ.1.8.4, GZ.1.8.5, GZ.1.8.6, GZ.1.8.7, GZ.1.8.8, GZ.1.8.9, GZ.1.8.10, GZ.1.8.11, GZ.1.8.12, GZ.1.8.13, GZ.1.8.14, GZ.1.8.15, GZ.1.8.16, GZ.1.8.17, GZ.1.8.20, GZ.1.8.21, GZ.1.8.22, GZ.1.8.28, GZ.1.8.29, GZ.1.8.30<br><b>-ITCS_Win2008:</b>Section 5.1<br><b>-ITCS_Win2012:</b>Section 5.1<br>',
		'attributes' => [{
		key: 'allow_modify_gpo',
		type: 'Boolean',
		display_type: 'single_select',
		display_name: 'Allow GPO Remediation',
		validator: '',
		units: '',
		options: '[{"key": "true", "value": "true"}, {"key": "false", "value": "false"}]',
		hint: 'Allow recipe to modify GPO settings.',
		default: false
	},{
		key: "grants",
		display_name: "Grants for all Windows editions",
		type: "complex_hash",
		display_type: "object_set",
		validator: "[0-9]*",
		units: "",
		hint: "OS Resource permissions of specific groups and users",
		'attributes' => [
				{
					"display_type"=> "access_set"
				}
				]
	},{
		key: "registry_grants",
		display_name: "Registry Grants for Windows 2008/2012",
		type: "complex_hash",
		display_type: "object_set",
		validator: "[0-9]*",
		units: "",
		hint: "Registry permissions of specific groups and users for Windows 2008 and 2012",
		'attributes' => [
				{
					"display_type"=> "access_set"
				}
				]
	},{
		key: "registry_grants_2016",
		display_name: "Registry Grants for Windows 2016",
		type: "complex_hash",
		display_type: "object_set",
		validator: "[0-9]*",
		units: "",
		hint: "Registry permissions of specific groups and users for Windows 2016",
		'attributes' => [
				{
					"display_type"=> "access_set"
				}
				]
	},{
		key: "registry_values",
		display_name: "Registry Values for Windows 2008/2012",
		type: "complex_hash",
		display_type: "object_set",
		validator: "[0-9]*",
		units: "",
		hint: "Registry value and data settings for Windows 2008 and 2012",
		"attributes" => [{
			display_type: "registry_value"
		}]
	},{
		key: "registry_values_2016",
		display_name: "Registry Values for Windows 2016",
		type: "complex_hash",
		display_type: "object_set",
		validator: "[0-9]*",
		units: "",
		hint: "Registry value and data settings for Windows 2016",
		"attributes" => [{
			display_type: "registry_value"
		}]
	}],
  validator: '',
  units: '',
  hint: ''
}

