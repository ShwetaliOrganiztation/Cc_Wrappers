default['cc_policy_linux_docker_cfg_files']['policy_map']={
  "components"=>[{
    identified_by: 'value',
    id: 'os:linux',
    "enforced_by"=>[{
      policy: 'policy_linux_docker_cfg_files',
      enabled: false
    }]
  }]
}
default['cc_policy_linux_docker_cfg_files']['ui_metadata']['policy_linux_docker_cfg_files']={
  policy: 'policy_linux_docker_cfg_files',
  display_name: 'policy_linux_docker_cfg_files',
  techspec: '<b>CIS:</b>Section 3.1, 3.2, 3.3, 3.4, 3.5, 3.6, 3.15, 3.16, 3.17, 3.18, 3.19, 3.20 <br>',
  "attributes"=>[
    {
       "key"=>"docker_service_file_perms",
       "type"=>"complex_hash",
       "display_name"=>"Docker service file perms",
       "display_type"=> "key_value_pair",
       "attributes" => [{  "display_type"=> "directory_permission"}],
       "validator"=>"",
       "units"=>"",
       "options"=>[],
       "hint"=>"File permissions for docker service file."
    },
	{
       "key"=>"docker_socket_file_perms",
       "type"=>"complex_hash",
       "display_name"=>"Docker socket file perms",
       "display_type"=> "key_value_pair",
       "attributes" => [{  "display_type"=> "directory_permission"}],
       "validator"=>"",
       "units"=>"",
       "options"=>[],
       "hint"=>"File permissions for docker socket file."
    },
	{
       "key"=>"docker_dir_file_perms",
       "type"=>"complex_hash",
       "display_name"=>"Docker directory file perms",
       "display_type"=> "key_value_pair",
       "attributes" => [{  "display_type"=> "directory_permission"}],
       "validator"=>"",
       "units"=>"",
       "options"=>[],
       "hint"=>"File permissions for docker directory."
    },
	{
       "key"=>"docker_sock_file_perms",
       "type"=>"complex_hash",
       "display_name"=>"Docker sock file perms",
       "display_type"=> "key_value_pair",
       "attributes" => [{  "display_type"=> "directory_permission"}],
       "validator"=>"",
       "units"=>"",
       "options"=>[],
       "hint"=>"File permissions for docker sock file."
    },
	{
       "key"=>"docker_daemon_file_perms",
       "type"=>"complex_hash",
       "display_name"=>"Docker daemon file perms",
       "display_type"=> "key_value_pair",
       "attributes" => [{  "display_type"=> "directory_permission"}],
       "validator"=>"",
       "units"=>"",
       "options"=>[],
       "hint"=>"File permissions for docker daemon file."
    },
	{
       "key"=>"docker_file_perms",
       "type"=>"complex_hash",
       "display_name"=>"Docker file perms",
       "display_type"=> "key_value_pair",
       "attributes" => [{  "display_type"=> "directory_permission"}],
       "validator"=>"",
       "units"=>"",
       "options"=>[],
       "hint"=>"File permissions for docker file."
    }
	
  ],
  validator: "",
  units: "",
  hint: ""
}

