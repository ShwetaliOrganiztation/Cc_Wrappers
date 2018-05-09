default['cc_policy_windows_audit_logging_requirements']['policy_map'] = {
  components: [
    {
      identified_by: 'value',
      id: 'os:windows',
      enforced_by: [{ policy: 'policy_windows_audit_logging_requirements', enabled: true }]
    }
  ]
}

default['cc_policy_windows_audit_logging_requirements']['ui_metadata']['policy_windows_audit_logging_requirements'] = {
  policy: 'policy_windows_audit_logging_requirements',
  display_name: 'policy_windows_audit_logging_requirements',
  techspec: '<b>CSD_Win2008:</b> YO.1.2.1, YO.1.2.2, YO.1.2.3, YO.1.2.4, YO.1.2.5, YO.1.2.6, YO.1.2.7, YO.1.2.8, YO.1.2.9, YO.1.2.10, YO.1.2.11, YO.1.2.12, YO.1.2.13, YO.1.2.14, YO.1.2.15, YO.1.2.16, YO.1.2.17, YO.1.2.18, YO.1.2.19, YO.1.2.20, YO.1.2.21, YO.1.2.22, YO.1.2.23, YO.1.2.24, YO.1.2.25, YO.1.2.26, YO.1.2.27, YO.1.2.28, YO.1.2.29, YO.1.2.30, YO.1.2.31, YO.1.2.32, YO.1.2.33, YO.1.2.34, YO.1.2.35, YO.1.2.36, YO.1.2.37, YO.1.2.38, YO.1.2.39, YO.1.2.40, YO.1.2.41, YO.1.2.42, YO.1.2.43, YO.1.2.44, YO.1.2.45, YO.1.2.46, YO.1.2.47, YO.1.2.48, YO.1.2.49, YO.1.2.50, YO.1.2.51, YO.1.2.52, YO.1.2.53, YO.1.2.54, YO.1.2.55, YO.20.1.2.1'\
    '<br><b>-CSD_Win2012:</b> ED.1.2.1, ED.1.2.2, ED.1.2.3, ED.1.2.4, ED.1.2.5, ED.1.2.6, ED.1.2.7, ED.1.2.8, ED.1.2.9, ED.1.2.10, ED.1.2.11, ED.1.2.12, ED.1.2.13, ED.1.2.14, ED.1.2.15, ED.1.2.16, ED.1.2.17, ED.1.2.18, ED.1.2.19, ED.1.2.20, ED.1.2.21, ED.1.2.22, ED.1.2.23, ED.1.2.24, ED.1.2.25, ED.1.2.26, ED.1.2.27, ED.1.2.28, ED.1.2.29, ED.1.2.30, ED.1.2.31, ED.1.2.32, ED.1.2.33, ED.1.2.34, ED.1.2.35, ED.1.2.36, ED.1.2.36, ED.1.2.37, ED.1.2.38, ED.1.2.39, ED.1.2.40, ED.1.2.41, ED.1.2.42, ED.1.2.43, ED.1.2.44, ED.1.2.45, ED.1.2.46, ED.1.2.47, ED.1.2.48, ED.1.2.49, ED.1.2.50, ED.1.2.51, ED.1.2.52, ED.1.2.53, ED.1.2.54, ED.1.2.55, ED.1.2.56, ED.1.2.57, ED.20.1.2.1'\
    '<br><b>-CSD_Win2016:</b> GZ.1.2.1, GZ.1.2.2, GZ.1.2.3, GZ.1.2.4, GZ.1.2.5, GZ.1.2.6, GZ.1.2.7, GZ.1.2.8, GZ.1.2.9, GZ.1.2.10, GZ.1.2.11, GZ.1.2.12, GZ.1.2.13, GZ.1.2.14, GZ.1.2.15, GZ.1.2.16, GZ.1.2.17, GZ.1.2.18, GZ.1.2.19, GZ.1.2.20, GZ.1.2.21, GZ.1.2.22, GZ.1.2.23, GZ.1.2.24, GZ.1.2.25, GZ.1.2.26, GZ.1.2.27, GZ.1.2.28, GZ.1.2.29, GZ.1.2.30, GZ.1.2.31, GZ.1.2.32, GZ.1.2.33, GZ.1.2.34, GZ.1.2.35, GZ.1.2.36, GZ.1.2.37, GZ.1.2.38, GZ.1.2.39, GZ.1.2.40, GZ.1.2.41, GZ.1.2.42, GZ.1.2.43, GZ.1.2.44, GZ.1.2.45, GZ.1.2.46, GZ.1.2.47, GZ.1.2.48, GZ.1.2.49, GZ.1.2.50, GZ.1.2.51, GZ.1.2.52, GZ.1.2.53, GZ.1.2.54, GZ.20.1.2.1'\
    '<br><b>-ITCS_Win2008:</b> Section 6'\
    '<br><b>-ITCS_Win2012:</b> Section 6'\
    '<br>',
  attributes: [
    {
      key: 'allow_modify_gpo',
      type: 'Boolean',
      display_type: 'single_select',
      display_name: 'Allow GPO Remediation',
      validator: '',
      units: '',
      options: '[{"key": "true", "value": "true"}, {"key": "false", "value": "false"}]',
      hint: 'Allow recipe to modify GPO settings.',
      default: false
    },
    {
      key: 'event_categories',
      type: 'complex_hash',
      display_name: 'event categories',
      display_type: 'object_set',
      attributes: [{
        display_type: 'key_value_pair',
        attributes: [{ display_type: 'string' }]
      }],
      'validator' => '',
      'units' => '',
      'options' => [],
      'hint' => 'Set audit events to subcategories.<br/><br/>If you wish to not enforce the audit setting, leave value box blank'
    },
    {
      key: 'subcat_override_cat',
      type: 'text',
      display_type: 'text_box',
      display_name: 'Force Advanced Audit Policy subcategory settings to override Audit Policy category settings <br/>(key: SCENoApplyLegacyAuditPolicy)',
      validator: '^Enabled|Disabled$',
      units: '',
      options: [],
      hint: 'Valid values: Enabled, Disabled'
    },
    {
      key: 'audit_object_access',
      type: 'text',
      display_type: 'text_box',
      display_name: 'Audit object access',
      validator: '^No Auditing|Success|Failure|Success and Failure|.{0}$',
      units: '',
      options: [],
      hint: 'Valid values: No Auditing, Success, Failure, Success and Failure. <br/><br/>If you wish to not enforce the audit setting, leave value box blank'
    }
  ],
  'validator' => '',
  'units' => '',
  'hint' => ''
}
