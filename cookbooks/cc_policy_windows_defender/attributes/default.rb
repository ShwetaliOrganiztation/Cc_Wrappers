default['cc_policy_windows_defender']['policy_map'] = {
  components: [
    {
      identified_by: 'value',
      id: 'os:windows',
      enforced_by: [{ policy: 'policy_windows_defender', enabled: false }]
    }
  ]
}

default['cc_policy_windows_defender']['ui_metadata']['policy_windows_defender'] = {
  policy: 'policy_windows_defender',
  display_name: 'policy_windows_defender',
  techspec: '<b>-CSD_Win2016:</b>GZ.1.3.2<br>',
  attributes: [
    {
      key: 'allow_modify_gpo',
      type: 'Boolean',
      display_type: 'single_select',
      display_name: 'Allow GPO Remediation',
      validator: '',
      units: '',
      options: '[{"key": "true", "value": "true"}, {"key": "false", "value": "false"}]',
      hint: 'Allow policy to modify GPO settings.',
      default: false
    },
    {
      key: 'turnoff_defender',
      type: 'text',
      display_type: 'text_box',
      display_name: 'Turn off Windows Defender for Windows 2016<br/>(Key: DisableAntiSpyware)',
      validator: '^Enabled|Disabled$',
      units: '',
      options: [],
      hint: 'Administrative Templates - Windows Components - Windows Defender - Turn off Windows Defender'\
        '<br/>'\
        '<br/>Valid values: Enabled, Disabled'\
        '<br/>'\
        '<br/>If enabled, Windows Defender does not run, and computers are not scanned for malware or'\
        '<br/>other potentially unwanted software.'\
        '<br/>'\
        '<br/>If disabled, by default Windows Defender runs and computers are scanned for malware and'\
        '<br/>other potentially unwanted software.'
    }
  ],
  validator: '',
  units: '',
  hint: ''
}
