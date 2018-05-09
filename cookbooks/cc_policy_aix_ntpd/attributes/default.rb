default['cc_policy_aix_ntpd']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:aix',
                               "enforced_by" => [{
                                                policy: 'policy_aix_ntpd',
                                                enabled: false}]
                              }


                             ]
                          }

default['cc_policy_aix_ntpd']['ui_metadata']['policy_aix_ntpd'] = {
           "policy"=>"policy_aix_ntpd",
           "display_name"=>"policy_aix_ntpd",
           "techspec"=>'<b>CSD:</b>NA<br><b>-ITCS:</b>NA<br>',
              "attributes"=>[
                  {"key"=>"server_list",
                   "type"=>"csv",
                   "display_name"=> "List of server entries that should be present in the /etc/ntp.conf file",
                   "display_type"=> "string_array",
                   "validator"=>"",
                   "units"=>"",
                   "options"=>[],
                   "hint"=>"Enter a comma-separated list of servers. If a server is preferred, please add prefer after the server name",
                   "default"=>[]},
                  {"key"=>"rc_tcpip_is_enabled",
                   "type"=>"boolean",
                   "display_name"=> "Enable check for /etc/rc.tcpip",
                   "display_type"=> "single_select",
                   "validator"=>"^(?i)(true|false)$",
                   "units"=>"",
                   "options"=>"[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\: \"false\"}]",
                   "hint"=>"If checkbox is selected, the policy ensures /etc/rc.tcpip contains the uncommented command to start Network Time Protocol (NTP) daemon",
                   "default"=>"true"}
               ],
             "validator"=>"",
             "units"=>"",
             "hint"=>""}
