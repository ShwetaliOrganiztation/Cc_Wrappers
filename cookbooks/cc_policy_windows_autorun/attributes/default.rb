default['cc_policy_windows_autorun']['policy_map'] = { components: [
  {
    identified_by: 'value',
    id: 'os:windows',
    enforced_by: [{
      policy: 'policy_windows_autorun',
      enabled: true }]
  }
]
}

default['cc_policy_windows_autorun']['ui_metadata']['policy_windows_autorun'] = {
  policy: 'policy_windows_autorun',
  display_name: 'policy_windows_autorun',
  techspec: '<b>CSD_Win2008:</b>YO.1.8.29<br><b>-CSD_Win2012:</b>ED.1.8.29<br><b>-CSD_Win2016:</b>GZ.1.8.27<br><b>-ITCS_Win2008:</b>Section 5.1<br><b>-ITCS_Win2012:</b>Section 5.1',
  attributes: [
    { key: 'NoDriveTypeAutoRun',
      type: 'number',
      display_type: 'text_box',
      display_name: 'Drive Type for Autorun',
      validator: '0|1|4|8|16|32|64|255',
      units: 'days',
      options: [],
      hint: 'Enter 0, 1, 4, 8, 16, 32, 64 or 255 for the NoDriveTypeAutoRun'
   },

    {
      key: 'HonorAutorunSetting',
      type: 'number',
      display_name: 'Honor Autorun Setting',
      display_type: 'text_box',
      validator: '0|1',
      units: '',
      options: [

      ],
      hint: 'This is only applicable to windows_server_2003_r2 or windows_server_2003. Allowed value is 0 or 1'
    }

  ],
  validator: '',
  units: '',
  hint: ''
}
