default['cc_policy_windows_password_requirements']['policy_map'] = {
  components: [
    {
      identified_by: 'value',
      id: 'os:windows',
      enforced_by: [{ policy: 'policy_windows_password_requirements', enabled: true }]
    }
  ]
}

default['cc_policy_windows_password_requirements']['ui_metadata']['policy_windows_password_requirements'] = {
  policy: 'policy_windows_password_requirements',
  display_name: 'policy_windows_password_requirements',
  techspec: '<b>CSD_Win2008:</b>YO.1.1.9.1, YO.1.1.9.2, YO.1.1.9.3, YO.1.1.9.4, YO.1.1.9.5<br><b>-CSD_Win2012:</b>ED.1.1.9.1, ED.1.1.9.2, ED.1.1.9.3, ED.1.1.9.4, ED.1.1.9.5<br><b>-CSD_Win2016:</b>GZ.1.1.10, GZ.1.1.11, GZ.1.1.12, GZ.1.1.13<br><b>-ITCS_Win2008:</b>Section 2.1<br><b>-ITCS_Win2012:</b>Section 2.1<br>',
  attributes: [
    {
      key: 'exempted_users',
      type: 'CSV',
      display_name: 'exempted_users',
      display_type: 'string_array',
      validator: '',
      units: '',
      options: '',
      hint: 'Add users which needs to be exempted from compliance scan'
    },
    {
      key: 'disable_defaultaccount',
      type: 'Boolean',
      display_type: 'single_select',
      display_name: 'Disable "DefaultAccount" for Windows 2016',
      validator: '',
      units: '',
      options: '[{"key": "true", "value": "true"}, {"key": "false", "value": "false"}]',
      hint: '"DefaultAccount" is an account, which exists in Windows 2016 by default',
      default: true
    }
  ],
  validator: '',
  units: '',
  hint: ''
}
