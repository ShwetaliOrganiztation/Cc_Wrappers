default['cc_policy_linux_syslog']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:linux',
                               "enforced_by" => [{ 
                                                policy: 'policy_linux_syslog',
                                                enabled: true}]
                              }               

                           
                             ]
                          }



              
default['cc_policy_linux_syslog']['ui_metadata']['policy_linux_syslog'] = {
	policy: 'policy_linux_syslog',
	display_name: 'policy_linux_syslog',
    techspec: '<b>CSD:</b>AD.1.2.1.1, AD.1.2.1.2, AD.1.2.1.3, AD.1.2.1.4, AD.1.2.1.5, AD.20.1.2.1<br><b>-ITCS:</b>Section 2.1.2(6.1)<br>',
	"attributes" => [{
			key: "rhel6_entries",
			type: "complex_hash",
			display_type: "object_set",
		"attributes" => [{
			display_type: "key_value_pair",
			"attributes" => [{
				display_type: "string"
			}]
		}],
			display_name: "Rhel6 Entries",
			validator: "",
			units: "",
			options: [],
			hint: "One or more spaces/tabs separated selector and action field for rhel6 and above."
        },
        {
        	key: "rhel5_entries",
			type: "complex_hash",
			display_type: "object_set",
		"attributes" => [{
			display_type: "key_value_pair",
			"attributes" => [{
				display_type: "string"
			}]
		}],
			display_name: "Rhel5 Entries",
			validator: "",
			units: "",
			options: [],
			hint: "One or more spaces/tabs separated selector and action field for rhel5."
        },
        {
        	key: "debian_entries",
			type: "complex_hash",
			display_type: "object_set",
		"attributes" => [{
			display_type: "key_value_pair",
			"attributes" => [{
				display_type: "string"
			}]
		}],
			display_name: "Debian Entries",
			validator: "",
			units: "",
			options: [],
			hint: "One or more spaces/tabs separated selector and action field for debian."
        },

        {
        	key: "suse_entries",
			type: "complex_hash",
			display_type: "object_set",
		"attributes" => [{
			display_type: "key_value_pair",
			"attributes" => [{
				display_type: "string"
			}]
		}],
			display_name: "Suse Entries",
			validator: "",
			units: "",
			options: [],
			hint: "One or more spaces/tabs separated selector and action field for suse."
        },

    ],
 validator: "",
 units: "",
 hint: ""
}
