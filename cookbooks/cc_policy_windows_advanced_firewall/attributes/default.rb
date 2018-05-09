default['cc_policy_windows_advanced_firewall']['policy_map'] = { components: [
  {
    identified_by: 'value',
    id: 'os:windows',
    enforced_by: [{ policy: 'policy_windows_advanced_firewall', enabled: false }]
  }
] }

default['cc_policy_windows_advanced_firewall']['ui_metadata']['policy_windows_advanced_firewall'] = {
  policy: 'policy_windows_advanced_firewall',
  display_name: 'policy_windows_advanced_firewall',
  techspec: '<b>-CSD_Win2016:</b>GZ.1.6.1<br><b>-CSD_Win2012:</b>ED.1.5.9<br><b>-CSD_Win2008:</b>YO.1.5.9<br>',
  attributes: [
    {
      key: 'allow_modify_gpo',
      type: 'Boolean',
      display_type: 'single_select',
      display_name: 'Allow GPO Remediation',
      validator: '',
      units: '',
      options: '[{"key": "true", "value": "true"}, {"key": "false", "value": "false"}]',
      hint: 'Allow policy to modify GPO settings',
      default: false
    },
    {
      key: 'domain_profile_state',
      type: 'text',
      display_name: 'Windows Firewall state of Domain Profile (On/Off)',
      display_type: 'text_box',
      validator: '^On|Off$',
      units: '',
      options: '',
      hint: 'GPO path: Windows Settings - Security Settings - Windows Firewall with Advanced Security'\
        '<br/><br/>Local path: HKLM\SOFTWARE\Policies\Microsoft\WindowsFirewall\DomainProfile ! EnableFirewall',
      default: 'On'
    },
    {
      key: 'public_profile_state',
      type: 'text',
      display_name: 'Windows Firewall state of Public Profile (On/Off)',
      display_type: 'text_box',
      validator: '^On|Off$',
      units: '',
      options: '',
      hint: 'GPO path: Windows Settings - Security Settings - Windows Firewall with Advanced Security'\
        '<br/><br/>Local path: HKLM\SOFTWARE\Policies\Microsoft\WindowsFirewall\PublicProfile ! EnableFirewall',
      default: 'On'
    },
    {
      key: 'private_profile_state',
      type: 'text',
      display_name: 'Windows Firewall state of Private Profile (On/Off)',
      display_type: 'text_box',
      validator: '^On|Off$',
      units: '',
      options: '',
      hint: 'GPO path: Windows Settings - Security Settings - Windows Firewall with Advanced Security'\
        '<br/><br/>Local path: HKLM\SOFTWARE\Policies\Microsoft\WindowsFirewall\PrivateProfile ! EnableFirewall',
      default: 'On'
    }
  ],
  validator: '',
  units: '',
  hint: ''
}
