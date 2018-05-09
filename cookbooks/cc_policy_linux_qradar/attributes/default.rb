default['cc_policy_linux_qradar']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:linux',
                               "enforced_by" => [{
                                                policy: 'policy_linux_qradar',
                                                enabled: false}]
                              }
                             ]
                          }
default['cc_policy_linux_qradar']['ui_metadata']['policy_linux_qradar'] = {
  "policy"=>"policy_linux_qradar",
  "display_name" => "policy_linux_qradar",
  "attributes" =>[
    {
      "key"=> "enable_qradar",
      "display_name"=> "Enable Qradar",
      "type"=> "boolean",
      "display_type"=> "single_select",
      "validator"=> "",
      "units"=> "",
      "hint"=> "Enable/Disable the Qradar feature. Default=Disabled",
      "options"=>"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\: \"false\"}]",
      "default"=>"false"
    },
    {
      "key"=> "user_cmd_logging",
      "display_name"=> "User Command Logging",
      "type"=> "boolean",
      "display_type"=> "single_select",
      "validator"=> "",
      "units"=> "",
      "hint"=> "Enable/Disable the functionality of user command logging. Default=Disabled",
      "options"=>"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\: \"false\"}]",
      "default"=>"false"
    },
    {
      "key"=> "syslog_filepath",
      "display_name" => "Qradar config file",
      "type"=> "string",
      "display_type" => "text_box",
      "validator" => "",
      "units" => "",
      "hint" => "Configuration file for qradar client",
      "default" => "/etc/rsyslog.d/qradar.conf"
    },
    {
      "key"=> "syslog_cafile",
      "display_name" => "Qradar NetstreamDriverCAFile file",
      "type"=> "string",
      "display_type" => "text_box",
      "validator" => "",
      "units" => "",
      "hint" => "Certificate file required to communicate with the Qradar server",
      "default" => "/etc/ssl/certs/qradar-syslog-tls.cert"
    },
    {
      "key"=> "syslog_qradar_address",
      "display_name" => "Qradar server address",
      "type"=> "string",
      "display_type" => "text_box",
      "validator" => "",
      "units" => "",
      "hint" => "Qradar server address, IP:port",
      "default" => ""
    },
    {
      "key"=> "syslog_qradar_address_selector",
      "display_name" => "Qradar selector for server",
      "type"=> "string",
      "display_type" => "text_box",
      "validator" => "",
      "units" => "",
      "hint" => "Qradar selector for server",
      "default" => "*.info;mail.none;authpriv.*;cron.none;local6.*"
    }
  ],
  "validator"=> "",
  "units"=> "",
  "hint"=> ""
}
