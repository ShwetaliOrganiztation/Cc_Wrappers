default['cc_policy_linux_docker_daemon']['policy_map']={
  "components"=>[{
    identified_by: 'value',
    id: 'os:linux',
    "enforced_by"=>[{
      policy: 'policy_linux_docker_daemon',
      enabled: false
    }]
  }]
}
default['cc_policy_linux_docker_daemon']['ui_metadata']['policy_linux_docker_daemon']={
  policy: 'policy_linux_docker_daemon',
  display_name: 'policy_linux_docker_daemon',
  techspec: '<b>CIS:</b>Section 2.1, 2.2, 2.3, 2.4, 2.5, 2.8, 2.9, 2.10, 2.12, 2.13, 2.14, 2.15, 2.18, 2.20, 2.21 <br>',
  "attributes"=>[
  {
    key: "create_daemon_config",
    display_name: "Create daemon config file",
    type: "Boolean",
    display_type: "single_select",
    validator: "",
    units: "",
    hint: "Create docker daemon config file (/etc/docker/daemon.json) or not, In case of file not exist. Values: true, false"
  },
  {
    key: "dc_restrict_network_traffic",
    display_name: "Restrict network traffic",
    type: "text",
    display_type: "text_box",
    validator: "^(?:true|false)$",
    units: "",
    hint: "Restrict network traffic between containers. Values: true, false, or left blank to ignore."
  },
  {
    key: "dc_logging_level",
    display_name: "Set the logging level",
    type: "text",
    display_type: "text_box",
    validator: "^(?:info|warn|debug|error)$",
    units: "",
    hint: "Set the logging level. Values: info, warn, debug, error"
  },
  {
    key: "dc_allow_iptable_changes",
    display_name: "Allow changes to iptables",
    type: "text",
    display_type: "text_box",
    validator: "^(?:true|false)$",
    units: "",
    hint: "Allow Docker to make changes to iptables. Values: true, false, or left blank to ignore."
  },
  {
    key: "enforce_dc_dont_use_insecure_registries",
    display_name: "Do not use insecure registries",
    type: "text",
    display_type: "text_box",
    validator: "^(?:check-remediate|disabled)$",
    units: "",
    hint: "Do not use insecure registries. Values: check-remediate, disabled or left blank to ignore.",
    isNull: false
  },
  {
    key: "enforce_dc_storage_driver",
    display_name: "Enforce to check aufs storage driver",
    type: "text",
    display_type: "text_box",
    validator: "^(?:check-remediate|check-only|disabled)$",
    units: "",
    hint: "Enforce to check aufs storage driver. Values: check-remediate, check-only, disabled or left blank to ignore.",
    isNull: false
  },
  {
    key: "dc_storage_driver",
    display_name: "Do not use the aufs storage driver",
    type: "text",
    display_type: "text_box",
    validator: "^(?:overlay|overlay2)$",
    units: "",
    hint: "Do not use the aufs storage driver. Values: overlay,overlay2 or left blank to ignore."
  },
  {
    key: "enforce_dc_enable_user_namespace_support",
    display_name: "Enable user namespace support",
    type: "text",
    display_type: "text_box",
    validator: "^(?:check-remediate|disabled)$",
    units: "",
    hint: "Enable user namespace support. Values: check-remediate, disabled",
    isNull: false
  },
  {
    key: "enforce_dc_confirm_default_cgroup_usage",
    display_name: "Confirm default cgroup usage",
    type: "text",
    display_type: "text_box",
    validator: "^(?:check-remediate|disabled)$",
    units: "",
    hint: "Confirm default cgroup usage. Values: check-remediate, disabled",
    isNull: false
  },
  {
    key: "enforce_dc_dont_change_base_device_size",
    display_name: "Do not change base device size until needed",
    type: "text",
    display_type: "text_box",
    validator: "^(?:check-remediate|disabled)$",
    units: "",
    hint: "Do not change base device size until needed. Values: check-remediate, disabled",
    isNull: false
  },
  {
    key: "dc_logging_driver",
    display_name: "Logging driver",
    type: "text",
    display_type: "text_box",
    validator: "^(?:syslog)$",
    units: "",
    hint: "Configure centralized and remote logging. Values: syslog or left blank to ignore."
  },
  {
    key: "dc_add_log_driver_options",
    display_name: "Add Logging driver options",
    type: "text",
    display_type: "text_box",
    validator: "^(?:true|false)$",
    units: "",
    hint: "Specifies enable to add logging driver options or not . Values: true,false",
    isNull: false
  },
  {
    key: "dc_logging_driver_options",
    display_name: "Logging driver options",
    type: "complex_hash",
    display_type: "object_set","attributes" => [{"display_type"=> "key_value_pair","attributes" => [{"display_type"=> "string"}]}],

    validator: "",
    units: "",
    hint: "Configure centralized and remote logging. Values: key, value pair"
  },
  {
    key: "dc_disable_ops_legacy_registry",
    display_name: "Disable operations on legacy registry",
    type: "text",
    display_type: "text_box",
    validator: "^(?:true|false)$",
    units: "",
    hint: "Disable operations on legacy registry. Values: true, false, or left blank to ignore"
  },
  {
    key: "dc_enable_live_restore",
    display_name: "Enable live restore",
    type: "text",
    display_type: "text_box",
    validator: "^(?:true|false)$",
    units: "",
    hint: "Enable live restore. Values: true, false, or left blank to ignore"
  },
  {
    key: "enforce_dc_dont_enable_swarm_mode",
    display_name: "Do not enable swarm mode",
    type: "text",
    display_type: "text_box",
    validator: "^(?:check-remediate|disabled)$",
    units: "",
    hint: "Do not enable swarm mode, if not needed. Values: check-remediate, disabled",
    isNull: false
  },
  {
    key: "dc_disable_userland_proxy",
    display_name: "Disable Userland Proxy",
    type: "text",
    display_type: "text_box",
    validator: "^(?:true|false)$",
    units: "",
    hint: "Disable Userland Proxy. Values: true, false or left blank to ignore"  
  },
  {
    key: "dc_seccomp_profile_name",
    display_name: "Custom seccomp profile",
    type: "text",
    display_type: "text_box",
    validator: "",
    units: "",
    hint: "Apply a daemon-wide custom seccomp profile, if needed. Values: valid seccomp profile names"
  },
  {
    key: "dc_avoid_experimental_features",
    display_name: "Avoid experimental features",
    type: "text",
    display_type: "text_box",
    validator: "^(?:true|false)$",
    units: "",
    hint: "Avoid experimental features in production. Values: true, false or left blank to ignore"
  },
  {
    key: "restart_docker_daemon",
    display_name: "Restart Docker daemon",
    type: "Boolean",
    display_type: "single_select",
    validator: "",
    units: "",
    hint: "Restart Docker daemon or not. Values: true, false"
  }
  ],
  validator: "",
  units: "",
  hint: ""
}

default['cc_policy_linux_docker_daemon'] ['override_metadata'] ['policy_linux_docker_daemon'] = {
'deviations' => [
  {
   'patterns' => ["create new file (.*)"],
    override_attribute: "create_daemon_config",
    attribute_type: "boolean",
    override_action: "replace",
    override_value: 'false'
  },
  {
   'patterns' => ["Add line \'\"icc\":(.*)\' to \/etc\/docker\/daemon.json"],
    override_attribute: "dc_restrict_network_traffic",
    attribute_type: "string",
    override_action: "replace",
    override_value: ''
  },
  {
    'patterns' => ["Update line \'\"icc\"\:(.*)\' to \'\"icc\"\:(.*)\' in \/etc\/docker\/daemon.json"],
    override_attribute: "dc_restrict_network_traffic",
    attribute_type: "string",
    override_action: "replace",
    override_value: '$1'
  },
  {
   'patterns' => ["Add line \'\"log-level\":(.*)\' to \/etc\/docker\/daemon.json"],
    override_attribute: "dc_logging_level",
    attribute_type: "string",
    override_action: "replace",
    override_value: ''
  },
  {
    'patterns' => ["Update line \'\"log-level\"\: (.*)\' to \'\"log-level\"\: (.*)\' in \/etc\/docker\/daemon.json"],
    override_attribute: "dc_logging_level",
    attribute_type: "string",
    override_action: "replace",
    override_value: '$1'
  },
  {
   'patterns' => ["Add line \'\"iptables\":(.*)\' to \/etc\/docker\/daemon.json"],
    override_attribute: "dc_allow_iptable_changes",
    attribute_type: "string",
    override_action: "replace",
    override_value: ''
  },
  {
    'patterns' => ["Update line \'\"iptables\"\: (.*)\' to \'\"iptables\"\: (.*)\' in \/etc\/docker\/daemon.json"],
    override_attribute: "dc_allow_iptable_changes",
    attribute_type: "string",
    override_action: "replace",
    override_value: '$1'
  },
  {
   'patterns' => ["Add line \'\"insecure-registries\":(.*)\' to \/etc\/docker\/daemon.json"],
    override_attribute: "enforce_dc_dont_use_insecure_registries",
    attribute_type: "string",
    override_action: "replace",
    override_value: 'disabled'
  },
  {
   'patterns' => ["Add line \'\"storage-driver\":(.*)\' to \/etc\/docker\/daemon.json"],
    override_attribute: "dc_storage_driver",
    attribute_type: "string",
    override_action: "replace",
    override_value: ''
  },
  {
    'patterns' => ["change storage driver from (.*) to (.*) in \/etc\/docker\/daemon.json"],
    override_attribute: "enforce_dc_storage_driver",
    attribute_type: "string",
    override_action: "replace",
    override_value: 'disabled'
  },
  {
   'patterns' => ["Add line \'\"userns-remap\": (.*)\' to \/etc\/docker\/daemon.json"],
    override_attribute: "enforce_dc_enable_user_namespace_support",
    attribute_type: "string",
    override_action: "replace",
    override_value: 'disabled'
  },
  {
   'patterns' => ["Remove line \'\"cgroup-parent\": (.*)\' from \/etc\/docker\/daemon.json"],
    override_attribute: "enforce_dc_confirm_default_cgroup_usage",
    attribute_type: "string",
    override_action: "replace",
    override_value: 'disabled'
  },
  {
   'patterns' => ["Remove storage option \'\"storage-opts\": (.*)\' from \/etc\/docker\/daemon.json"],
    override_attribute: "enforce_dc_dont_change_base_device_size",
    attribute_type: "string",
    override_action: "replace",
    override_value: 'disabled'
  },
  {
   'patterns' => ["Add line \'\"log-driver\": (.*)\' to \/etc\/docker\/daemon.json"],
    override_attribute: "dc_logging_driver",
    attribute_type: "string",
    override_action: "replace",
    override_value: ''
  },
  {
    'patterns' => ["Update line \'\"log-driver\"\: (.*)\' to \'\"log-driver\"\: (.*)\' in \/etc\/docker\/daemon.json"],
    override_attribute: "dc_logging_driver",
    attribute_type: "string",
    override_action: "replace",
    override_value: '$1'
  },
  {
   'patterns' => ["Add line \'\"log-opts\": (.*)\' to \/etc\/docker\/daemon.json"],
    override_attribute: "dc_add_log_driver_options",
    attribute_type: "string",
    override_action: "replace",
    override_value: 'false'
  }, 
  {
   'patterns' => ["Update line \'\"log-opts\": (.*)\' to \'\"log-opts\": {(.*)}\' in \/etc\/docker\/daemon.json"],
    override_attribute: "dc_logging_driver_options",
    attribute_type: "hash",
    override_action: "add_update_hash",
    override_value: '$1'
  },
  {
   'patterns' => ["Add line \'\"disable-legacy-registry\":(.*)\' to \/etc\/docker\/daemon.json"],
    override_attribute: "dc_disable_ops_legacy_registry",
    attribute_type: "string",
    override_action: "replace",
    override_value: ''
  },
  {
    'patterns' => ["Update line \'\"disable-legacy-registry\"\: (.*)\' to \'\"disable-legacy-registry\"\: (.*)\' in \/etc\/docker\/daemon.json"],
    override_attribute: "dc_disable_ops_legacy_registry",
    attribute_type: "string",
    override_action: "replace",
    override_value: '$1'
  },
  {
   'patterns' => ["Add line \'\"live-restore\": (.*)\' to \/etc\/docker\/daemon.json"],
    override_attribute: "dc_enable_live_restore",
    attribute_type: "string",
    override_action: "replace",
    override_value: ''
  },
  {
    'patterns' => ["Update line \'\"live-restore\"\: (.*)\' to \'\"live-restore\"\: (.*)\' in \/etc\/docker\/daemon.json"],
    override_attribute: "dc_enable_live_restore",
    attribute_type: "string",
    override_action: "replace",
    override_value: '$1'
  },
  {
    'patterns' => ["Leave docker swarm"],
    override_attribute: "enforce_dc_dont_enable_swarm_mode",
    attribute_type: "string",
    override_action: "replace",
    override_value: 'disabled'
  },
  {
   'patterns' => ["Add line \'\"userland-proxy\": (.*)\' to \/etc\/docker\/daemon.json"],
    override_attribute: "dc_disable_userland_proxy",
    attribute_type: "string",
    override_action: "replace",
    override_value: ''
  },
  {
    'patterns' => ["Update line \'\"userland-proxy\"\: (.*)\' to \'\"userland-proxy\"\: (.*)\' in \/etc\/docker\/daemon.json"],
    override_attribute: "dc_disable_userland_proxy",
    attribute_type: "string",
    override_action: "replace",
    override_value: '$1'
  },
  {
   'patterns' => ["Add line \'\"seccomp-profile\": (.*)\' to \/etc\/docker\/daemon.json"],
    override_attribute: "dc_seccomp_profile_name",
    attribute_type: "string",
    override_action: "replace",
    override_value: ''
  },
  {
    'patterns' => ["Update line \'\"seccomp-profile\"\: (.*)\' to \'\"seccomp-profile\"\: (.*)\' in \/etc\/docker\/daemon.json"],
    override_attribute: "dc_seccomp_profile_name",
    attribute_type: "string",
    override_action: "replace",
    override_value: '$1'
  },
  {
   'patterns' => ["Add line \'\"experimental\": (.*)\' to \/etc\/docker\/daemon.json"],
    override_attribute: "dc_avoid_experimental_features",
    attribute_type: "string",
    override_action: "replace",
    override_value: ''
  },
  {
    'patterns' => ["Update line \'\"experimental\"\: (.*)\' to \'\"experimental\"\: (.*)\' in \/etc\/docker\/daemon.json"],
    override_attribute: "dc_avoid_experimental_features",
    attribute_type: "string",
    override_action: "replace",
    override_value: '$1'
  },
  {
    'patterns' => ["Restart docker daemon for the new configuration to take effect"],
    override_attribute: "restart_docker_daemon",
    attribute_type: "boolean",
    override_action: "replace",
    override_value: 'false'
  }
]
}
