default['cc_policy_aix_log_retention']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:aix',
                               "enforced_by" => [{ 
                                                policy: 'policy_aix_log_retention',
                                                enabled: true}]
                              }               

                           
                             ]
                          }
default['cc_policy_aix_log_retention']['ui_metadata']['policy_aix_log_retention'] = {
	policy:"policy_aix_log_retention",
	display_name:"policy_aix_log_retention",
    techspec: '<b>CSD:</b>E.1.2.4, E.10.1.2.1<br><b>-ITCS:</b>Section 2.1.1(6)<br>',
	attributes:[{
		"key" => "custom_chef_location",
		"type" => "text",
		"display_name" => "Custom Chef Location",
		"display_type" => "text_box",
		"validator" => "",
		"units" => "",
		"hint" => "If custom-chef is installed, specify the location for it. Default is '/opt/IBM/cobalt/etc/chef'",
		default:'/opt/IBM/cobalt/etc/chef'
		},
		{
		"key"=> "logrotate_config_params",
		"display_name"=> "Log Rotate Config Params",
		"type"=> "complex_hash",
		"display_type"=> "array_set",
		"attributes" => [{
			display_type: "row_objects",
			"options"=> "min_rotate_months,log_filepath",
			"display_name"=> "Min Rotate Months,Log File Path"
			}],
		validator: "",
		units: "",
		hint: "Specifies the minimum number of months for target log file rotation.",
		default:[{'min_rotate_months' => '3','log_filepath' => '/var/adm/wtmp'},{'min_rotate_months' => '3','log_filepath' => '/var/adm/sulog'},{'min_rotate_months' => '3','log_filepath' => '/etc/security/failedlogin'},{'min_rotate_months' => '3','log_filepath' => '/var/adm/auth.log'}]
		}
	],
	"validator"=>"",
	"units"=>"",
	"hint"=>""
}

