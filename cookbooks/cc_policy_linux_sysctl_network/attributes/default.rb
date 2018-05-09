default['cc_policy_linux_sysctl_network']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:linux',
                               "enforced_by" => [{ 
                                                policy: 'policy_linux_sysctl_network',
                                                enabled: true}]
                              }               

                           
                             ]
                          }
default['cc_policy_linux_sysctl_network']['ui_metadata']['policy_linux_sysctl_network'] = {
policy: 'policy_linux_sysctl_network', 
display_name: 'policy_linux_sysctl_network',
techspec: '<b>CSD:</b>AD.1.5.9.20, AD.1.5.9.21, AD.1.5.9.22<br><b>-ITCS:</b>Section 2.1.2(8)<br>',
"attributes" =>[
                {
				key: "conf_file",				 
				display_name: "Configuration File",
				type: "string",
				display_type: "text_box",
				validator: "",
				units: "",
        isNull: false,
				hint: "Path to sysctl configuration file and it shouldn't be empty."
				}, 
				{
				key: "syncookies",				 
				display_name: "clean partial connections",
				type: "number",
				display_type: "text_box",
				validator: "^(0|1)$",
				units: "",
				hint: "Prevents against the common 'syn flood attack' if Specified 1, specify 0 to disable the functionality"
				},{
				key: "ignorebroadcasts",				 
				display_name: "Ignore Broadcasts",
				type: "number",
				display_type: "text_box",
				validator: "^(0|1)$",
				units: "",
				hint: "Enable/Disable ignoring broadcasts. It can have two values, 0 or 1. A value of 0 processes broadcasts. A value of 1 ignores broadcasts"
				},{
				key: "acceptredirects",				 
				display_name: "Accept Redirect",
				type: "number",
				display_type: "text_box",
				validator: "^(0|1)$",
				units: "",
				hint: "Enable/Disable redirects. It can have two values, 0 or 1. A value of 0 ignores redirects. A value of 1 processes redirects."
				}],
 validator: "",
 units: "",
 hint: ""
}

