default['cc_policy_linux_port_vulnerabilities']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:linux',
                               "enforced_by" => [{
                                                policy: 'policy_linux_port_vulnerabilities',
                                                enabled: true}]
                              }


                             ]
                          }


default['cc_policy_linux_port_vulnerabilities']['ui_metadata']['policy_linux_port_vulnerabilities'] = {
           "policy"=>"policy_linux_port_vulnerabilities",
           "display_name"=>"policy_linux_port_vulnerabilities",
           "techspec"=> '<b>CSD:</b>NA<br><b>-ITCS:</b>NA<br>',
              "attributes"=>[
                  {"key"=>"action",
                   "type"=>"multi_select",
                   "display_type"=>"select_box",
                   "display_name"=>"Action",
                   "validator"=>"",
                   "units"=>"",
                   "options"=>[],
                   "hint"=>"Choose the action to be taken from list 'nothing, scan_only, patch, stop, or disable'"},
                  {"key"=>"protocol",
                   "type"=>"multi_select",
                   "display_name"=> "Protocol",
                   "display_type"=>"string_array",
                   "validator"=>"",
                   "units"=>"",
                   "options"=>[],
                   "hint"=>"Choose protocol from list 'tcp, udp'"},
                  {"key"=>"port",    
                   "type"=>"text",
                   "display_type"=>"text_box",
                   "display_name"=> "Port",
                  "validator"=>"^[0-9\.\,]+$",
                   "options"=>[],
                   "hint"=>"Enter the port number"},
                  {"key"=>"exclude_port", 
                   "type"=>"number",
                   "display_type"=>"text_box",
                   "display_name"=> "Exclude ports",
                   "validator"=>"",
                   "units"=>"",
                   "options"=>[],
                   "hint"=>"Enter ports to exclude"},
                  {"key"=>"severity",
                   "type"=>"text",
                   "display_type"=>"text_box",
                   "display_name"=> "Severity",
                   "validator"=>"",
                   "units"=>"",
                   "options"=>[],
                   "hint"=>"Enter the severity level e.g. Critical, Important, Moderate, Low"}
           ],
             "validator"=>"",
             "units"=>"",
             "hint"=>""}
