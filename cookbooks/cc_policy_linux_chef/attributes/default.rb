default['cc_policy_linux_chef']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:linux',
                               "enforced_by" => [{ 
                                                policy: 'policy_linux_chef',
                                                enabled: true}]
                              }               

                           
                             ]
                          }

	default['cc_policy_linux_chef']['ui_metadata']['policy_linux_chef'] = {
		policy: 'policy_linux_chef',
		display_name: 'policy_linux_chef',
		'attributes' => [
	{
		key: "chefdirlist",
		display_name: "Chef Dir List",
		type: "CSV",
		display_type: "csv",
		validator: "",
		units: "",
		hint: ""
	},	
	{
		key: "default_chefdirlist",
		display_name: "Default Chef Dir List",
		type: "complex_hash",
		display_type: "object_set",
		"attributes" => [{
			display_type: "key_value_pair",
			"attributes" => [{
				display_type: "directory_permission"
			}]
		}],
		validator: "",
		units: "",
		hint: "the default chef directory list"
	},	
    {
		key: "bookshelflogs",
		display_name: "BookShelf logs",
		type: "text",
		display_type: "text_box",
		validator: "",
		units: "",
		hint: "path to the bookshelf logs"
	},	
	 {
		key: "chefexpanderlogs",
		display_name: "chef expander logs",
		type: "text",
		display_type: "text_box",
		validator: "",
		units: "",
		hint: ""
	},	
	{
		key: "pedant_log_http_requests",
		display_name: "pedant log http requests",
		type: "text",
		display_type: "text_box",
		validator: "",
		units: "",
		hint: ""
	},	
	{
		key: "pedantlogs",
		display_name: "Pedant logs",
		type: "text",
		display_type: "text_box",
		validator: "",
		units: "",
		hint: ""
	},
	{
		key: "solrlogs",
		display_name: "Solrlogs",
		type: "text",
		display_type: "text_box",
		validator: "",
		units: "",
		hint: ""

	},
	{
		key: "erlogs",
		display_name: "erlogs",
		type: "text",
		display_type: "text_box",
		validator: "",
		units: "",
		hint: ""

	},
	{
		key: "nginxlogs",
		display_name: "Nginxlogs",
		type: "text",
		display_type: "text_box",
		validator: "",
		units: "",
		hint: ""

	},
	{
		key: "postgreslogs",
		display_name: "postgreslogs",
		type: "text",
		display_type: "text_box",
		validator: "",
		units: "",
		hint: ""

	},
   {
		key: "rabbitmqlogs",
		display_name: "Rabbitmqlogs",
		type: "text",
		display_type: "text_box",
		validator: "",
		units: "",
		hint: ""
	},
	{
		key: "chefwebuilogs",
		display_name: "Chef Web Ui Logs",
		type: "text",
		display_type: "text_box",
		validator: "",
		units: "",
		hint: ""
	},
	],
	validator: "",
	units: "",
	hint: ""

}
