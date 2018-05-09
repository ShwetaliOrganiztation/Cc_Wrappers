default['cc_policy_aix_syslog_v2']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:aix',
                               "enforced_by" => [{
                                                policy: 'policy_aix_syslog_v2',
                                                enabled: false}]
                              }
                             ]
                          }

default['cc_policy_aix_syslog_v2']['ui_metadata']['policy_aix_syslog_v2'] = {
	policy: 'policy_aix_syslog_v2',
	display_name: 'policy_aix_syslog_v2',
    techspec: '<b>CSD:</b>E.1.2.5.2<br><b>-ITCS:</b>Section 2.1.1(6)<br>',
	"attributes" => [
    {
      key: "replace_existing",
      type: 'boolean',
      display_type: 'single_select',
      display_name: "Replace Entries",
      validator: "",
      units: "",
      options: '[{"key": "true", "value": "true"}, {"key": "false", "value": "false"}]',
      hint: "Replace existing entries in syslog.conf file for matching selctor(s) only.",
      default: false
    },
    {
		  key: "aix_entries",
			type: "csv",
			display_type:"string_array",
			display_name: "Aix Entries",
			validator: "",
			units: "",
			options: "",
			hint: "One or more spaces/tabs separated selector(s) and action(s) for Aix.",
      default:"['auth.info /var/adm/auth.log']"
    },
    {
      key: "whitelist",
      type: "CSV",
      display_type:"string_array",
      display_name: "Whitelist",
      validator: "",
      units: "",
      options: "",
      hint: "One or more spaces/tabs separated selector(s) and action(s) to be ignored while remediation.",
      default:"[]"
    }

  ],
  validator: "",
  units: "",
  hint: ""
}
