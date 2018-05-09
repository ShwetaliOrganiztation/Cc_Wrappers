default['cc_policy_windows_osr_permission']['policy_map'] = {"components" => [
                              {
                               identified_by: 'value',
                               id: 'os:windows',
                               "enforced_by" => [{ 
                                                policy: 'policy_windows_osr_permission',
                                                enabled: false}]
                              }               

                           
                             ]
                          }
default['cc_policy_windows_osr_permission'] ['ui_metadata'] ['policy_windows_osr_permission'] = {
                           policy:"policy_windows_osr_permission",
    display_name:"policy_windows_osr_permission",
    techspec:'<b>CSD_Win2008:</b>YO.1.8.1, YO.1.8.2, YO.1.8.3, YO.1.8.4, YO.1.8.5, YO.1.8.6, YO.1.8.7, YO.1.8.8, YO.1.8.9, YO.1.8.10, YO.1.8.11, YO.1.8.12, YO.1.8.13, YO.1.8.14, YO.1.8.15, YO.1.8.16, YO.1.8.17, YO.1.8.20, YO.1.8.21, YO.5.0.1, YO.5.0.2, YO.5.0.3, YO.5.0.4, YO.5.0.5, YO.5.0.6, YO.5.0.7, YO.5.0.8, YO.5.0.9, YO.5.0.11, YO.5.0.12, YO.5.0.13, YO.5.0.14, YO.5.0.15, YO.5.0.16, YO.5.0.17, YO.5.0.18, YO.5.0.19, YO.5.0.20, YO.5.0.21<br><b>-CSD_Win2012:</b>ED.1.8.1, ED.1.8.2, ED.1.8.3, ED.1.8.4, ED.1.8.5, ED.1.8.6, ED.1.8.7, ED.1.8.8, ED.1.8.9, ED.1.8.10, ED.1.8.11, ED.1.8.12, ED.1.8.15, ED.1.8.16, ED.1.8.17, ED.1.8.18, ED.1.8.19, ED.1.8.22, ED.1.8.23, ED.5.0.1, ED.5.0.2, ED.5.0.3, ED.5.0.4, ED.5.0.5, ED.5.0.6, ED.5.0.7, ED.5.0.8, ED.5.0.9, ED.5.0.11, ED.5.0.12, ED.5.0.13, ED.5.0.14, ED.5.0.15, ED.5.0.16, ED.5.0.17, ED.5.0.18, ED.5.0.19, ED.5.0.20, ED.5.0.21, ED.5.0.22<br><b>-CSD_Win2016:</b>GZ.1.8.1, GZ.1.8.2, GZ.1.8.3, GZ.1.8.4, GZ.1.8.5, GZ.1.8.6, GZ.1.8.7, GZ.1.8.8, GZ.1.8.9, GZ.1.8.10, GZ.1.8.11, GZ.1.8.12, GZ.1.8.13, GZ.1.8.14, GZ.1.8.15, GZ.1.8.16, GZ.1.8.17, GZ.1.8.20, GZ.1.8.21, GZ.1.8.22 <br><b>-ITCS_Win2008:</b>Section 5.1<br><b>-ITCS_Win2012:</b>Section 5.1<br>',
    'attributes' => [{
    key: "priviledged_groups_users",
    display_name: "Priviledged Groups Users for Windows 2008/2012",
    type: "csv",
    display_type: "string_array",
    validator: "",
    units: "",
    hint: ""
  },{
    key: "priviledged_groups_users_2016",
    display_name: "Priviledged Groups Users for Windows 2016",
    type: "csv",
    display_type: "string_array",
    validator: "",
    units: "",
    hint: ""
  },{
    key: "grants",
    display_name: "Grants",
    type: "complex_hash",
    display_type: "object_set",
    validator: "[0-9]*",
    units: "",
    hint: "",
    'attributes' => [
        {
          "display_type"=> "array_set",
          'attributes' => [
              {
                "display_type"=> "permission_set"
              }
              ],
              "options"=> "migrate"  
        }
        ]
  },{
    key:          "registry_grants",
    display_name: "Registry Grants for Windows 2008/2012",
    type:         "complex_hash",
    display_type: "object_set",
    validator:    "[0-9]*",
    units:        "",
    hint:         "",
    'attributes' => [
      {
        "display_type" => "array_set",
        'attributes'   => [ { "display_type"=> "permission_set" } ],
        "options"      => "migrate"  
      }
    ]
  },{
    key:          "registry_grants_2016",
    display_name: "Registry Grants for Windows 2016",
    type:         "complex_hash",
    display_type: "object_set",
    validator:    "[0-9]*",
    units:        "",
    hint:         "",
    'attributes' => [
      {
        "display_type" => "array_set",
        'attributes'   => [ { "display_type"=> "permission_set" } ],
        "options"      => "migrate"  
      }
    ]
  }],
  validator: '',
  units: '',
  hint: ''
}
