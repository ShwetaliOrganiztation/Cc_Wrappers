default['cc_policy_windows_osr_auditing']['policy_map'] = {
  "components" => [{
                     identified_by: 'value',
                     id: 'os:windows',
                     "enforced_by" => [{
                                         policy: 'policy_windows_osr_auditing',
                                         enabled: true
                                       }]
                   }]
}

default['cc_policy_windows_osr_auditing']['ui_metadata']['policy_windows_osr_auditing'] = {
  policy: 'policy_windows_osr_auditing',
	display_name: 'policy_windows_osr_auditing',
  techspec:'<b>CSD_Win2008:</b>YO.1.2.56, YO.1.2.56, YO.1.2.56, YO.1.2.56, YO.1.2.56, YO.1.2.56, YO.1.2.56, YO.1.2.56, YO.1.2.56, YO.1.2.56, YO.1.2.56, YO.1.2.56, YO.1.2.57, YO.1.2.57, YO.1.2.57, YO.1.2.57, YO.1.2.57, YO.1.2.57, YO.1.2.57, YO.20.1.2.2, YO.20.1.2.3, YO.20.1.2.4, YO.20.1.2.5, YO.20.1.2.6, YO.20.1.2.7, YO.20.1.2.8, YO.20.1.2.9, YO.20.1.2.10, YO.20.1.2.11, YO.20.1.2.12, YO.20.1.2.13, YO.20.1.2.14, YO.20.1.2.15, YO.20.1.2.16, YO.20.1.2.17, YO.20.1.2.18, YO.20.1.2.19, YO.20.1.2.20, YO.20.1.2.21, YO.20.1.2.22, YO.20.1.2.23, YO.20.1.2.24<br><b>-CSD_Win2012:</b>ED.1.2.58, ED.1.2.58, ED.1.2.58, ED.1.2.58, ED.1.2.58, ED.1.2.58, ED.1.2.58, ED.1.2.58, ED.1.2.58, ED.1.2.58, ED.1.2.58, ED.1.2.58, ED.1.2.59, ED.1.2.59, ED.1.2.59, ED.1.2.59, ED.1.2.59, ED.1.2.59, ED.20.1.2.2, ED.20.1.2.3, ED.20.1.2.4, ED.20.1.2.5, ED.20.1.2.6, ED.20.1.2.7, ED.20.1.2.8, ED.20.1.2.9, ED.20.1.2.10, ED.20.1.2.11, ED.20.1.2.12, ED.20.1.2.13, ED.20.1.2.14, ED.20.1.2.15, ED.20.1.2.16, ED.20.1.2.17, ED.20.1.2.18, ED.20.1.2.19, ED.20.1.2.20, ED.20.1.2.21, ED.20.1.2.22, ED.20.1.2.23<br><b>-CSD_Win2016:</b>GZ.1.2.55, GZ.1.2.56, GZ.20.1.2.2, GZ.20.1.2.3, GZ.20.1.2.4, GZ.20.1.2.5, GZ.20.1.2.6, GZ.20.1.2.7, GZ.20.1.2.8, GZ.20.1.2.9, GZ.20.1.2.10, GZ.20.1.2.11, GZ.20.1.2.12, GZ.20.1.2.13, GZ.20.1.2.14, GZ.20.1.2.15, GZ.20.1.2.16, GZ.20.1.2.17, GZ.20.1.2.18, GZ.20.1.2.19<br><b>-ITCS_Win2008:</b>Section 6<br><b>-ITCS_Win2012:</b>Section 6<br>',
		'attributes' => [{
				key: "applicable_directories",
				display_name: "Applicable Directories for Windows 2008/2012",
				type: "complex_hash",
				display_type: "object_set",
				validator: "",
				units: "",
				hint: "Applicable Directories for Windows 2008 & 2012",
				'attributes' => [
					{
						"display_type"=> "array_set",
            'attributes' => [
                {
                  "display_type"=> "config_set"
                }
              ],
              options: "migrate"
					}
				]
		},
		{
			key: "applicable_directories_win2016",
			display_name: "Applicable Directories for Windows 2016",
			type: "complex_hash",
			display_type: "object_set",
			validator: "",
			units: "",
			hint: "Applicable Directories for Windows 2016",
			'attributes' => [
				{
					"display_type"=> "array_set",
					'attributes' => [
						{
							"display_type"=> "config_set"
						}
					],
					options: "migrate"
				}
			]
		}],
		validator: '',
		units: '',
		hint: ''
}
