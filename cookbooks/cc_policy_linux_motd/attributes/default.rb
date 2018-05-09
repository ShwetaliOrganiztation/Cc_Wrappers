default['cc_policy_linux_motd']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:linux',
                               "enforced_by" => [{
                                                policy: 'policy_linux_motd',
                                                enabled: true}]
                              }


                             ]
                          }
default['cc_policy_linux_motd']['ui_metadata']['policy_linux_motd'] = {
"policy" => "policy_linux_motd",
"display_name" => "policy_linux_motd_deprecated",
"techspec" => '<b>CSD:</b>NA<br><b>-ITCS:</b>NA<br>',
'attributes' =>[{
				"key"=> "message",
				"display_name"=> "Linux Message of the Day",
				"type"=> "string_array",
				"display_type"=> "string_array",
				"validator"=> "",
				"units"=> "",
				"hint"=> "Enter the Message to be displayed at login time"
					}],
 "validator"=> "",
 "units"=> "",
 "hint"=> ""
}
