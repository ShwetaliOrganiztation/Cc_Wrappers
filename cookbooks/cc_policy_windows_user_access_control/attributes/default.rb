default['cc_policy_windows_user_access_control']['policy_map'] = { components: [
  {
    identified_by: 'value',
    id: 'os:windows',
    enforced_by: [{
      policy: 'policy_windows_user_access_control',
      enabled: true
    }]
  }

] }
default['cc_policy_windows_user_access_control']['ui_metadata']['policy_windows_user_access_control'] = {
  policy: 'policy_windows_user_access_control',
  display_name: 'policy_windows_user_access_control',
  techspec: '<b>CSD_Win2008:</b>YO.1.9.4<br><b>-CSD_Win2012:</b>ED.1.9.4<br><b>-CSD_Win2016:</b>NA<br><b>-ITCS_Win2008:</b>NA<br><b>-ITCS_Win2012:</b>NA<br>',
  attributes: [
    { key: 'allow_modify_gpo',
      type: 'Boolean',
      display_type: 'single_select',
      display_name: 'Allow GPO Remediation',
      validator: '',
      units: '',
      options: '[{"key": "true", "value": "true"}, {"key": "false", "value": "false"}]',
      hint: 'Allow policy to modify GPO settings',
      default: false },

    { key: 'uac_enable',
      type: 'multi_select',
      display_type: 'single_select',
      display_name: 'UAC Enabled',
      validator: '',
      units: '',
      options: [],
      hint: 'Check it to enable UAC; and uncheck it to disable UAC.' },

    { key: 'reboot_if_needed',
      type: 'multi_select',
      display_type: 'single_select',
      display_name: 'Reboot If Needed',
      validator: '',
      units: '',
      options: [],
      hint: 'Warn: if this is checked, the system will reboot automatically after remediation.' }
  ],
  validator: '',
  units: '',
  hint: ''
}
