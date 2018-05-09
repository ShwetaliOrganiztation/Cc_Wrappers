default['cc_policy_windows_trendmicro_av']['policy_map'] = {
  "components" => [
    {
      identified_by: 'value',
      id: 'os:windows',
      "enforced_by" => [{
                      policy: 'policy_windows_trendmicro_av',
                      enabled: true}]
    }
  ]
}

default['cc_policy_windows_trendmicro_av']['ui_metadata']['policy_windows_trendmicro_av'] = {
  policy: 'policy_windows_trendmicro_av',
  display_name: 'policy_windows_trendmicro_av',
  techspec: '<b>CSD_Win2008:</b>YO.1.3.1<br><b>-CSD_Win2012:</b>ED.1.3.1<br><b>-CSD_Win2016:</b>Not yet supported<br><b>-ITCS_Win2008:</b>NA<br><b>-ITCS_Win2012:</b>NA<br>',
  attributes: [
    {
      key: 'start_if_stopped',
      type: 'Boolean',
      display_type: 'single_select',
      display_name: 'Start Services if Stopped',
      validator: '',
      units: '',
      options: "[{\"key\": \"true\", \"value\": \"true\"}, {\"key\": \"false\", \"value\": \"false\"}]",
      hint: 'Enable this option to start Trend Micro Worry-Free Business Security services if they are found to be stopped during compliance check. Default value is true.',
      default: "true"
    }
  ],
  validator: '',
  units: '',
  hint: ''
}
