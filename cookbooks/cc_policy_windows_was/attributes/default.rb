# =================================================================
# Licensed Materials - Property of IBM
#
# (c) Copyright IBM Corp. 2018 All Rights Reserved
#
# US Government Users Restricted Rights - Use, duplication or
# disclosure restricted by GSA ADP Schedule Contract with IBM Corp.
# =================================================================

default['cc_policy_windows_was']['policy_map'] = {
  components: [
    {
      identified_by: 'value',
      id: 'os:windows',
      enforced_by: [{ policy: 'policy_windows_was', enabled: false }]
    }
  ]
}

default['cc_policy_windows_was']['ui_metadata']['policy_windows_was'] = {
  policy: 'policy_windows_was',
  display_name: 'policy_windows_was',
  techspec: '<b>CSD:</b>AS.1.2.1.2, AS.10.1.2.2, AS.1.7.17.1, AS.1.7.19, AS.1.7.14, AS.1.8.2.2, AS.1.7.15, AS.1.8.1.1, '\
    'AS.1.8.1.3, AS.1.8.1.2, AS.1.8.1.4, AS.1.7.10.2, AS.1.8.1.15, AS.1.8.1.16, AS.1.8.1.17, AS.1.8.1.18, AS.1.8.1.19, '\
    'AS.1.8.1.20, AS.1.8.1.21, AS.1.8.1.22, AS.1.8.1.23, AS.1.8.1.24, AS.1.8.1.25, AS.1.8.5, AS.1.8.7, AS.2.1.2.2, AS.2.1.3.5'\
    '<br><b>-ITCS:</b>NA<br>',
  attributes: [
    {
      key: 'enforce_homedir_permissions',
      type: 'Boolean',
      display_type: 'single_select',
      display_name: 'Enforce home directory permissions',
      validator: '',
      units: '',
      options: [],
      hint: 'Select to enforce home directory permissions',
      default: true
    },
    {
      key: 'homedir_perm_hash',
      display_name: 'Home directory list and permissions',
      type: 'complex_hash',
      display_type: 'object_set',
      attributes: [{
        display_type: 'key_value_pair',
        attributes: [{ display_type: 'directory_permission' }]
      }],
      validator: '',
      units: '',
      hint: 'List of directories with the respective permissions that need to be set.'
    },
    {
      key: 'enforce_home_property_file_permissions',
      type: 'Boolean',
      display_type: 'single_select',
      display_name: 'Enforce home property file permissions',
      validator: '',
      units: '',
      options: [],
      hint: 'Select to change home property file permissions',
      default: true
    },
    {
      key: 'home_property_file_permissions',
      display_name: 'Home property files',
      type: 'complex_hash',
      display_type: 'object_set',
      attributes: [{
        display_type: 'key_value_pair',
        attributes: [{ display_type: 'directory_permission' }]
      }],
      validator: '',
      units: '',
      hint: 'List of home property files with the respective permissions that need to be set.'
    },
    {
      key: 'enforce_profile_property_file_permissions',
      type: 'Boolean',
      display_type: 'single_select',
      display_name: 'Enforce profile property file permissions',
      validator: '',
      units: '',
      options: [],
      hint: 'Select to change profile property file permissions',
      default: true
    },
    {
      key: 'profile_property_file_permissions',
      display_name: 'Profile property files',
      type: 'complex_hash',
      display_type: 'object_set',
      attributes: [{
        display_type: 'key_value_pair',
        attributes: [{
          display_type: 'directory_permission'
        }]
      }],
      validator: '',
      units: '',
      hint: 'List of property files with the respective permissions that need to be set.'
    },
    {
      key: 'enforce_server_logfiles_permissions',
      type: 'Boolean',
      display_type: 'single_select',
      display_name: 'Enforce server log files permissions',
      validator: '',
      units: '',
      options: [],
      hint: 'Select to change server log files permissions',
      default: true
    },
    {
      key: 'server_logfiles_permissions',
      type: 'complex_hash',
      display_name: 'Log files permission',
      display_type: 'object_set',
      attributes: [{
        display_type: 'key_value_pair',
        attributes: [{ display_type: 'directory_permission' }]
      }],
      validator: '',
      units: '',
      options: '',
      hint: 'Set logfiles with name and its permission that need to be set'
    },
    {
      key: 'enforce_security_file_permissions',
      type: 'Boolean',
      display_type: 'single_select',
      display_name: 'Enforce security files permissions',
      validator: '',
      units: '',
      options: [],
      hint: 'Select to change security files permissions',
      default: true
    },
    {
      key: 'security_file_permissions',
      type: 'complex_hash',
      display_name: 'Security file permission',
      display_type: 'object_set',
      attributes: [{
        display_type: 'key_value_pair',
        attributes: [{ display_type: 'string' }]
      }],
      validator: '',
      units: '',
      options: '',
      hint: 'Set Security file permissions'
    },
    {
      key: 'enforce_key_file_permissions',
      type: 'Boolean',
      display_type: 'single_select',
      display_name: 'Enforce key file/dir permissions',
      validator: '',
      units: '',
      options: [],
      hint: 'Select to change key file/dir permissions',
      default: true
    },
    {
      key: 'key_file_permissions',
      type: 'complex_hash',
      display_name: 'key file permissions',
      display_type: 'object_set',
      attributes: [{
        display_type: 'key_value_pair',
        attributes: [{ display_type: 'string' }]
      }],
      validator: '',
      units: '',
      options: '',
      hint: 'Set key file permissions'
    },
    {
      key: 'key_dir_permissions',
      type: 'complex_hash',
      display_name: 'key dir permissions',
      display_type: 'object_set',
      attributes: [{
        display_type: 'key_value_pair',
        attributes: [{ display_type: 'string' }]
      }],
      validator: '',
      units: '',
      options: '',
      hint: 'Set key directory permissions'
    },
    {
      key: 'enforce_backup_file_permissions',
      type: 'Boolean',
      display_type: 'single_select',
      display_name: 'Enforce backup file permissions',
      validator: '',
      units: '',
      options: [],
      hint: 'Select to change backup file permissions',
      default: true
    },
    {
      key: 'backup_file_permissions',
      display_name: 'Backup files',
      type: 'complex_hash',
      display_type: 'object_set',
      attributes: [{
        display_type: 'key_value_pair',
        attributes: [{
          display_type: 'directory_permission'
        }]
      }],
      validator: '',
      units: '',
      hint: 'Specify the complete file path with the respective permissions that need to be set.'
    },
    {
      key: 'perm_related_path_whitelist',
      type: 'string_array',
      display_type: 'string_array',
      display_name: 'Whitelist of permission-related files/directories',
      validator: '',
      units: '',
      options: [],
      hint: 'Specify the full-path of the file/directory, which needs to be excluded from permission check.'
    },
    {
      key: 'enforce_admin_security',
      type: 'Boolean',
      display_type: 'single_select',
      display_name: 'Enforce admin security',
      validator: '',
      units: '',
      options: [],
      hint: 'Select to enable admin security. The server may need to be restarted for these changes to take effect.',
      default: false
    },
    {
      key: 'enforce_java_security',
      type: 'Boolean',
      display_type: 'single_select',
      display_name: 'Disable java security',
      validator: '',
      units: '',
      options: [],
      hint: 'Select to disable java security. The server may need to be restarted for these changes to take effect.',
      default: false
    },
    {
      key: 'enforce_ltpa_auth_mechanism',
      type: 'Boolean',
      display_type: 'single_select',
      display_name: 'Enforce LTPA auth mechanism',
      validator: '',
      units: '',
      options: [],
      hint: 'Select to enable LTPA authentication mechanism. The server may need to be restarted for these changes to take effect.',
      default: false
    },
    {
      key: 'enforce_security_auditing',
      type: 'Boolean',
      display_type: 'single_select',
      display_name: 'Enforce security service',
      validator: '',
      units: '',
      options: [],
      hint: 'Select to enable security service. The server may need to be restarted for these changes to take effect.',
      default: false
    },
    {
      key: 'security_audit_event_outcome',
      type: 'complex_hash',
      display_name: 'Security audit event-outcomes',
      display_type: 'object_set',
      attributes: [{
        display_type: 'key_value_pair',
        attributes: [{
          display_type: 'string'
        }]
      }],
      validator: '',
      units: '',
      options: '',
      hint: 'Set security auditing events'
    },
    {
      key: 'enforce_sample_applications_status',
      type: 'Boolean',
      display_type: 'single_select',
      display_name: 'Disable sample applications',
      validator: '',
      units: '',
      options: [],
      hint: 'Select to disable sample applications. The server may need to be restarted for these changes to take effect.',
      default: false
    },
    {
      key: 'sample_applications',
      type: 'complex_hash',
      display_name: 'Sample applications that need to stop',
      display_type: 'object_set',
      attributes: [{
        display_type: 'key_value_pair',
        attributes: [{
          display_type: 'string'
        }]
      }],
      validator: '',
      units: '',
      options: '',
      hint: 'List of sample applications to be stopped'
    },
    {
      key: 'enforce_corba_naming_service',
      type: 'Boolean',
      display_type: 'single_select',
      display_name: 'Enforce Corba naming service',
      validator: '',
      units: '',
      options: [],
      hint: 'Select to enforce corba naming service. The server may need to be restarted for these changes to take effect.',
      default: false
    },
    {
      key: 'corba_naming_service_groups_roles',
      type: 'complex_hash',
      display_name: 'Corba naming service rules',
      display_type: 'object_set',
      attributes: [{
        display_type: 'key_value_pair',
        attributes: [{ display_type: 'string' }]
      }],
      validator: '',
      units: '',
      options: '',
      hint: 'Set roles that corba naming service groups shall follow'
    }
  ]
}
