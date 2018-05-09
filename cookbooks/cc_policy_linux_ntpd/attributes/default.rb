default['cc_policy_linux_ntpd']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:linux',
                               "enforced_by" => [{
                                                policy: 'policy_linux_ntpd',
                                                enabled: false}]
                              }


                             ]
                          }

default['cc_policy_linux_ntpd']['ui_metadata']['policy_linux_ntpd'] = {
           "policy"=>"policy_linux_ntpd",
           "display_name"=>"policy_linux_ntpd",
           "techspec"=>'<b>CSD:</b>NA<br><b>-ITCS:</b>NA<br>',
              "attributes"=>[
                  {"key"=>"install_ntpd",
                   "type"=>"Boolean",
                   "display_type"=>"single_select",
                   "display_name"=> "install ntpd",
                   "validator"=>"",
                   "units"=>"",
                   "options"=>[],
                   "hint"=>"Set to false if do not want to install ntpd",
                   "default"=>false},

                  {"key"=>"ntp_conf_file",
                   "type"=>"text",
                   "display_name"=> "NTP config file",
                   "display_type"=> "text_box",
                   "validator"=>"",
                   "units"=>"",
                   "options"=>[],
                   "hint"=>"Enter NTP config file name.",
                   "default"=>"/etc/ntp.conf"},

                  {"key"=> "ntp_conf_file_mode",
                   "display_name"=> "ntp_conf_file_mode",
                   "type"=> "complex_hash",
                   "display_type"=> "key_value_pair",
                   "attributes" => [{
                     "display_type"=> "directory_permission"
                   }],
                   "validator"=> "",
                   "units"=> "",
                   "hint"=> "Input the access rights of the ntp_conf_file",
                   "default"=>{ mode: '0755', owner: 'root', group: 'root' }},

                  {"key"=>"runlevel_list",
                   "type"=>"csv",
                   "display_name"=> "List of runlevels where the file SXXntpd must present",
                   "display_type"=> "string_array",
                   "validator"=>"",
                   "units"=>"",
                   "options"=>[],
                   "hint"=>"Enter a comma-separated list of runlevel directories on RHEL where file SXXntpd must be available",
                   "default"=>["/etc/rc3.d/","/etc/rc5.d/"]},

                  {"key"=>"runlevel_list_ubuntu",
                   "type"=>"csv",
                   "display_name"=> "List of runlevels where the file SXXntpd must present on Ubuntu platform",
                   "display_type"=> "string_array",
                   "validator"=>"",
                   "units"=>"",
                   "options"=>[],
                   "hint"=>"Enter a comma-separated list of runlevel directories on Ubuntu where file SXXntpd must be available",
                   "default"=>["/etc/rc2.d/"]},

                  {"key"=>"runlevel_list_suse",
                   "type"=>"csv",
                   "display_name"=> "List of runlevels where the file SXXntpd must present on SUSE platform",
                   "display_type"=> "string_array",
                   "validator"=>"",
                   "units"=>"",
                   "options"=>[],
                   "hint"=>"Enter a comma-separated list of runlevel directories on SUSE where file SXXntpd must be available",
                   "default"=>["/etc/rc.d/rc3.d/","/etc/rc.d/rc5.d/"]},

                  {"key"=>"server_list",
                   "type"=>"csv",
                   "display_name"=> "List of server entries that should be present in the /etc/ntp.conf file",
                   "display_type"=> "string_array",
                   "validator"=>"",
                   "units"=>"",
                   "options"=>[],
                   "hint"=>"Enter a comma-separated list of servers. If a server is preferred, please add prefer after the server name",
                   "default"=>[]}
               ],
             "validator"=>"",
             "units"=>"",
             "hint"=>""}
