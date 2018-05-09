default['cc_policy_linux_mongodb']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:linux',
                               "enforced_by" => [{ 
                                                policy: 'policy_linux_mongodb',
                                                enabled: true}]
                              }               

                           
                             ]
                          }


# default['policy_linux_mongodb']['install_mongo'] = false
# default['policy_linux_mongodb']['manage_repo'] = true
# default['policy_linux_mongodb']['logpath'] = '/var/log/mongodb/mongod.log'
# default['policy_linux_mongodb']['logappend'] = true
# default['policy_linux_mongodb']['httpinterface'] = false
# default['policy_linux_mongodb']['rest'] = false
              
default['cc_policy_linux_mongodb']['ui_metadata']['policy_linux_mongodb'] = {
	policy: 'policy_linux_mongodb',
	display_name: 'policy_linux_mongodb',
	techspec: '<b>CSD:</b>NA<br><b>-ITCS:</b>NA<br>',
	'attributes' => [{
		 key: "install_mongo",
		 display_name: "Install Mongo",
		 type: "Boolean",
		 display_type: "single_select",
		 validator: "",
		 units: "",
		 hint: "If checked, the recipe will install MongoDB. Default is false(not to install)."

		},
		{
		 key: "manage_repo",
		 display_name: "Manage Repo",
		 type: "Boolean",
		 display_type: "single_select",
		 validator: "",
		 units: "",
		 hint: "Config whether to use Mongo repos or not. Default is true(use Mongo repos)."
		},
		{
		 key: "logpath",
		 display_name: "Log Path",
		 type: "text",
		 display_type: "text_box",
		 validator: "",
		 units: "",
		 hint: "Config the path for MongoDB logs, default is /var/log/mongodb/mongod.log"
		},
		{
		 key: "logappend",
		 display_name: "Log Append",
		 type: "Boolean",
		 display_type: "single_select",
		 validator: "",
		 units: "",
		 hint: "Config whether MongoDB log is appended to the log file or to overwrite it. True or False. Default is true, to append the log"
		},
		{
		 key: "httpinterface",
		 display_name: "Http Interface",
		 type: "Boolean",
		 display_type: "single_select",
		 validator: "",
		 units: "",
		 hint: "Enable or disable MongoDB http interface. Default is false and is recommended setting for production environment"
		},
		key: "rest",
		 display_name: "Rest",
		 type: "Boolean",
		 display_type: "single_select",
		 validator: "",
		 units: "",
		 hint: "Enable or disable MongoDB rest interface. Default is false and is recommended for production environment"


	]
}

