default['cc_policy_linux_syslog_v2']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:linux',
                               "enforced_by" => [{ 
                                                policy: 'policy_linux_syslog_v2',
                                                enabled: false}]
                              }               

                           
                             ]
                          }
             
default['cc_policy_linux_syslog_v2']['ui_metadata']['policy_linux_syslog_v2'] = {
	policy: 'policy_linux_syslog_v2',
	display_name: 'policy_linux_syslog_v2',
    techspec: '<b>CSD:</b>AD.1.2.1.1, AD.1.2.1.2, AD.1.2.1.3, AD.1.2.1.4, AD.1.2.1.5, AD.20.1.2.1<br><b>-ITCS:</b>Section 2.1.2(6.1)<br>',
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
		  key: "rhel6_entries",
			type: "csv",
			display_type:"string_array",
			display_name: "Rhel6 Entries",
			validator: "",
			units: "",
			options: "",
			hint: "One or more spaces/tabs separated selector and action field for rhel6 and above.",
      default:"['authpriv.* /var/log/secure', '$ActionFileDefaultTemplate RSYSLOG_TraditionalFileFormat', '*.info;mail.none;authpriv.none;cron.none /var/log/messages']"
    },
    {
      key: "rhel5_entries",
			type: "csv",
			display_type:"string_array",
			display_name: "Rhel5 Entries",
			validator: "",
			units: "",
			options: "",
			hint: "One or more spaces/tabs separated selector and action field for rhel5.",
      default:"['authpriv.* /var/log/secure', '*.info;mail.none;authpriv.none;cron.none /var/log/messages']"
    },
    {
      key: "debian_entries",
			type: "csv",
			display_type:"string_array",
			display_name: "Debian Entries",
			validator: "",
			units: "",
			options: "",
			hint: "One or more spaces/tabs separated selector and action field for debian.",
      default:"['auth,authpriv.* /var/log/auth.log ', '$ActionFileDefaultTemplate RSYSLOG_TraditionalFileFormat', '*.*;auth,authpriv.none /var/log/syslog ',   '*.=info;*.=notice;*.=warning; auth,authpriv.none; cron,daemon.none; mail,news.none /var/log/messages']"
    },
    {
    	key: "suse12_entries",
			type: "csv",
			display_type:"string_array",
			display_name: "Suse12 Entries",
			validator: "",
			units: "",
			options: "",
			hint: "One or more spaces/tabs separated selector and action field for suse12.",
      default:"['$ActionFileDefaultTemplate RSYSLOG_TraditionalFileFormat',   '*.info;mail.none;authpriv.none;cron.none /var/log/messages', 'authpriv.* /var/log/secure']"
    },
    {
    	key: "suse11_entries",
			type: "csv",
			display_type:"string_array",
			display_name: "Suse11 Entries",
			validator: "",
			units: "",
			options: "",
			hint: "One or more spaces/tabs separated selector and action field for suse11.",
      default:"['filter f_authpriv facility(auth,authpriv)', 'destination authpriv file('/var/log/secure')', 'log source(src);filter(f_authpriv);destination(authpriv);']"
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
