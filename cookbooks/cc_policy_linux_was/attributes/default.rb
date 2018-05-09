# =================================================================
# Licensed Materials - Property of IBM
#
# (c) Copyright IBM Corp. 2018 All Rights Reserved
#
# US Government Users Restricted Rights - Use, duplication or
# disclosure restricted by GSA ADP Schedule Contract with IBM Corp.
# =================================================================

default['cc_policy_linux_was']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:linux',
                               "enforced_by" => [{ 
                                                policy: 'policy_linux_was',
                                                enabled: false}]
                              }
                             ]
                          }

default['cc_policy_linux_was']['ui_metadata']['policy_linux_was'] = {
  policy:"policy_linux_was",
  display_name:"policy_linux_was",
  techspec:'<b>CSD:</b>AS.1.2.1.2, AS.10.1.2.2, AS.1.7.17.1, AS.1.7.19, AS.1.7.14, AS.1.8.2.2, AS.1.7.15, AS.1.8.1.1, AS.1.8.1.3, AS.1.8.1.2, AS.1.8.1.4, AS.1.7.10.2, AS.1.8.1.15, AS.1.8.1.16, AS.1.8.1.17, AS.1.8.1.18, AS.1.8.1.19, AS.1.8.1.20, AS.1.8.1.21, AS.1.8.1.22, AS.1.8.1.23, AS.1.8.1.24, AS.1.8.1.25, AS.1.8.5, AS.1.8.7, AS.2.1.2.2., AS.2.1.3.5<br><b>-ITCS:</b>NA<br>',
  attributes:[
    {
   "key"=>"enforce_websphere_home_dir_permissions",
      "type"=>"Boolean",
      "display_type"=>"single_select",
      "display_name"=>"Change WAS home directory permissions",
      "validator"=>"",
      "units"=>"",
      "options"=>[],
      "hint"=>"Select to change WAS home directory permissions"
    },
    {
      "key"=>"admin_user",
      "type"=>"text",
      "display_type"=>"text_box",
      "display_name"=>"Local Admin User for WAS",
      "validator"=>"",
      "units"=>"",
      "options"=>[],
      "hint"=>"Provide local user which has admin privileges over WAS file,setups."+
              "<br/>Edit sudoers file and make sure requiretty is set as 'Defaults !requiretty' if not already set" +
              "<br/>This user needs to be provided if automate user cannot have access to soap.client.props file of profile." +
              "<br/>This policy will check if user name and password are provided in soap.client.props file" +
              "<br/>If credentials are not provided, no wsadmin requirement will be executed, and policy will exit gracefully."
    },
    {
   "key"=>"enforce_websphere_home_property_file_permissions",
      "type"=>"Boolean",
      "display_type"=>"single_select",
      "display_name"=>"Change WAS home property files permissions",
      "validator"=>"",
      "units"=>"",
      "options"=>[],
      "hint"=>"Select to change WAS home property files permissions"
 },
    {
   "key"=>"enforce_websphere_property_file_permissions",
      "type"=>"Boolean",
      "display_type"=>"single_select",
      "display_name"=>"Change WAS property files permissions",
      "validator"=>"",
      "units"=>"",
      "options"=>[],
      "hint"=>"Select to change WAS property files permissions"
 },
    {
	  "key"=>"enforce_websphere_server_logfiles_permissions",
      "type"=>"Boolean",
      "display_type"=>"single_select",
      "display_name"=>"Change WAS server log files permissions",
      "validator"=>"",
      "units"=>"",
      "options"=>[],
      "hint"=>"Select to change WAS server log files permissions"
	},
	{
	  "key"=>"enforce_websphere_key_file_permissions",
      "type"=>"Boolean",
      "display_type"=>"single_select",
      "display_name"=>"Change WAS key file permissions",
      "validator"=>"",
      "units"=>"",
      "options"=>[],
      "hint"=>"Select to change WAS key file permissions"
	},
    {
	  "key"=>"enforce_websphere_backup_file_permissions",
      "type"=>"Boolean",
      "display_type"=>"single_select",
      "display_name"=>"Change WAS backup file permissions",
      "validator"=>"",
      "units"=>"",
      "options"=>[],
      "hint"=>"Select to change WAS backup file permissions. The server may need to be restarted for these changes to take effect."
	},
	{
	  "key"=>"enforce_websphere_admin_security",
      "type"=>"Boolean",
      "display_type"=>"single_select",
      "display_name"=>"Enable WAS admin security",
      "validator"=>"",
      "units"=>"",
      "options"=>[],
      "hint"=>"Select to enable WAS admin security. The server may need to be restarted for these changes to take effect."
	},
	{
	  "key"=>"profile_admin_security_exemption",
      "type"=>"string_array",
      "display_type"=>"string_array",
      "display_name"=>"Profiles exempted from admin security",
      "validator"=>"",
      "units"=>"",
      "options"=>[],
      "hint"=>"Profiles on which admin security will not be enabled"
	},
	{
	  "key"=>"enforce_websphere_java_security",
      "type"=>"Boolean",
      "display_type"=>"single_select",
      "display_name"=>"Enable WAS java security",
      "validator"=>"",
      "units"=>"",
      "options"=>[],
      "hint"=>"Select to enable WAS java security. The server may need to be restarted for these changes to take effect."
	},
	{
	  "key"=>"profile_java_security_exemption",
      "type"=>"string_array",
      "display_type"=>"string_array",
      "display_name"=>"Profiles exempted from java security",
      "validator"=>"",
      "units"=>"",
      "options"=>[],
      "hint"=>"Profiles on which java security will not be enabled"
	},
	{
	  "key"=>"enforce_ltpa_auth_mechanism",
      "type"=>"Boolean",
      "display_type"=>"single_select",
      "display_name"=>"Enable LTPA auth mechanism",
      "validator"=>"",
      "units"=>"",
      "options"=>[],
      "hint"=>"Select to enable LTPA authentication mechanism. The server may need to be restarted for these changes to take effect."
	},
	{
	  "key"=>"profile_ltpa_auth_mechanism_exemption",
      "type"=>"string_array",
      "display_type"=>"string_array",
      "display_name"=>"Profiles exempted from LTPA auth mechanism",
      "validator"=>"",
      "units"=>"",
      "options"=>[],
      "hint"=>"Profiles on which LTPA authentication mechanism will not be enabled"
	},
  {
	  "key"=>"enforce_corba_naming_service",
      "type"=>"Boolean",
      "display_type"=>"single_select",
      "display_name"=>"Enable corba naming service",
      "validator"=>"",
      "units"=>"",
      "options"=>[],
      "hint"=>"Select to enable corba naming service. The server may need to be restarted for these changes to take effect."
	},
    {
	  "key"=>"enforce_websphere_security_auditing",
      "type"=>"Boolean",
      "display_type"=>"single_select",
      "display_name"=>"Enable WAS security service",
      "validator"=>"",
      "units"=>"",
      "options"=>[],
      "hint"=>"Select to enable WAS security service. The server may need to be restarted for these changes to take effect."
	},
  {
	  "key"=>"profile_security_auditing_exemption",
      "type"=>"string_array",
      "display_type"=>"string_array",
      "display_name"=>"Profiles exempted from security auditing",
      "validator"=>"",
      "units"=>"",
      "options"=>[],
      "hint"=>"Profiles on which security auditing will not be enabled"
	},
  {
	  "key"=>"enforce_sample_applications_status",
      "type"=>"Boolean",
      "display_type"=>"single_select",
      "display_name"=>"Enable sample application",
      "validator"=>"",
      "units"=>"",
      "options"=>[],
      "hint"=>"Select to enable sample application status. The server may need to be restarted for these changes to take effect."
	},
	{
    key: "websphere_home_dir",
	display_name: "Dir List",
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
	hint: "List of directories with the respective permissions that need to be set."
  },
  {
    key: "websphere_home_property_files",
	display_name: "Home Property file list",
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
	hint: "List of home property files with the respective permissions that need to be set."
  },
  {
    key: "websphere_property_files",
	display_name: "Property file list",
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
	hint: "List of property files with the respective permissions that need to be set."
  },
  {
    key: "websphere_server_logfiles",
	display_name: "websphere_server_logfiles",
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
	hint: "List of server log files with the respective permissions that need to be set."
  },
  {
    key: "websphere_backup_file_permissions",
	display_name: "Backup file",
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
	hint: "Specify the complete file name with path for backup file with the respective permissions that need to be set."
  },
  {
	  "key"=>"websphere_file_dir_whitelist",
      "type"=>"string_array",
      "display_type"=>"string_array",
      "display_name"=>"List of files/dir to be excluded",
      "validator"=>"",
      "units"=>"",
      "options"=>[],
      "hint"=>"Specify the complete file/dir name with path to be excluded."
	},
  {
      key:"excluded_websphere_profiles",
	    type:"complex_hash",
		  display_name:"Exclude profiles",
			display_type: "object_set",
			"attributes" => [{
				display_type: "hash_of_Array"
				}],
			validator:"",
			units:"",
			options:"",
			hint:"Provide WAS installation Path -> profile_name to be excluded",
		},
   {
      key:"corba_naming_service_groups_roles",
	    type:"complex_hash",
		  display_name:"corba_naming_service_groups_roles",
			display_type: "object_set",
			"attributes" => [{
				display_type: "hash_of_Array"
				}],
			validator:"",
			units:"",
			options:"",
			hint:"List of role names with groups",
		},
     {
      key:"security_audit_event_outcome",
	    type:"complex_hash",
		  display_name:"security_audit_event_outcome",
			display_type: "object_set",
			"attributes" => [{
				display_type: "hash_of_Array"
				}],
			validator:"",
			units:"",
			options:"",
			hint:"List of audit events with outcomes",
	},  
  {
      key:"websphere_sample_applications",
	    type:"complex_hash",
		  display_name:"websphere_sample_applications",
			display_type: "object_set",
			"attributes" => [{
				display_type: "hash_of_Array"
				}],
			validator:"",
			units:"",
			options:"",
			hint:"List of sample applications to be stopped",
	},
  {
      key:"websphere_key_file_permissions",
	    type:"complex_hash",
		  display_name:"websphere_key_file_permissions",
			display_type: "key_value_pair",
			    "attributes" => [{
						display_type: "directory_permission"
				}],
			validator:"",
			units:"",
			options:"",
			hint:"Set permission, owner and group to websphere files",
	},
  {
      key:"websphere_security_file_permissions",
	    type:"complex_hash",
		  display_name:"websphere_security_file_permissions",
			display_type: "key_value_pair",
			    "attributes" => [{
						display_type: "directory_permission"
				}],
			validator:"",
			units:"",
			options:"",
			hint:"Set only permission to security files",
	},
  {
      key:"websphere_key_dir_permissions",
	    type:"complex_hash",
		  display_name:"websphere_key_dir_permissions",
			display_type: "key_value_pair",
			    "attributes" => [{
						display_type: "directory_permission"
				}],
			validator:"",
			units:"",
			options:"",
			hint:"Set owner and group to websphere dir",
		}
  ]
}

default['cc_policy_linux_was'] ['override_metadata'] ['policy_linux_was'] = {
'deviations' => [
  {
    'patterns' => ["Java 2 security will be disabled for profile (.*)"],
    override_attribute: "profile_java_security_exemption",
    attribute_type: "array",
    override_action: "add_update",
    override_value: '$1'
  },
  {
    'patterns' => ["LTPA will be enabled for profile (.*)"],
    override_attribute: "profile_ltpa_auth_mechanism_exemption",
    attribute_type: "array",
    override_action: "add_update",
    override_value: '$1'
  },
  {
    'patterns' => ["Security audit will be enabled for (.*)"],
    override_attribute: "profile_security_auditing_exemption",
    attribute_type: "array",
    override_action: "add_update",
    override_value: '$1'
  },
  {
    'patterns' => ["Administrative security will be enabled for profile (.*)"],
    override_attribute: "profile_admin_security_exemption",
    attribute_type: "array",
    override_action: "add_update",
    override_value: '$1'
  },
  {
    'patterns' => ["Revoke Role (.*) from Groups (.*) for profile (.*)"],
    override_attribute: "profile_corba_naming_groups_roles_exemption",
    attribute_type: "complex_hash",
    override_action: "add_update",
    override_value: {
      '$3' => {'$1' => ['$2'] }
    }
  },
  {
    'patterns' => ["Application \\\[\'(.*)\'\\\] will be stopped for profile (.*)"],
    override_attribute: "profile_sample_applications_exemption",
    attribute_type: "complex_hash",
    override_action: "add_update",
    override_value: {
      '$2' => {'/opt/IBM/WebSphere/AppServer' => ['$1'] }
    }
  },
  {
    'patterns' => ["Configure audit event (.*) with (.*) for profile (.*)"],
    override_attribute: "profile_audit_event_outcome_exemption",
    attribute_type: "complex_hash",
    override_action: "add_update",
    override_value: {
      '$3' => {'$1' => ['$2'] }
    }
  },
  {
    'patterns' => ["change (.*) from \'(.*)\' to (.*), change (.*) from \'(.*)\' to (.*), change (.*) from \'(.*)\' to (.*)"],
    override_attribute: "websphere_file_dir_whitelist",
    attribute_type: "array",
    override_action: "add_update",
    override_value: '$validation'
  },
  {
    'patterns' => ["change (.*) from \'(.*)\' to (.*), change (.*) from \'(.*)\' to (.*)"],
    override_attribute: "websphere_file_dir_whitelist",
    attribute_type: "array",
    override_action: "add_update",
    override_value: '$validation'
  },
  {
    'patterns' => ["change (.*) from \'(.*)\' to (.*)"],
    override_attribute: "websphere_file_dir_whitelist",
    attribute_type: "array",
    override_action: "add_update",
    override_value: '$validation'
  }
  ]
}
