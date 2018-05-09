default['cc_policy_windows_prohibited_services']['policy_map'] = { components: [
  {
    identified_by: 'value',
    id: 'os:windows',
    enforced_by: [{
      policy: 'policy_windows_prohibited_services',
      enabled: false
    }]
  }
] }

default['cc_policy_windows_prohibited_services']['ui_metadata']['policy_windows_prohibited_services'] = {
  policy: 'policy_windows_prohibited_services',
  display_name: 'policy_windows_prohibited_services',
  techspec: '<b>CSD_Win2008:</b>YO.1.5.3, YO.1.5.6.1, YO.1.5.6.2, YO.1.5.6.3, YO.1.5.6.4, YO.1.5.6.5, YO.1.5.6.6, YO.1.5.6.7, YO.1.5.6.8, YO.1.5.7.1, YO.1.5.7.2, YO.1.5.7.3, YO.1.5.7.4, YO.1.5.7.5, YO.1.5.7.6, YO.1.5.7.7, YO.1.5.7.8, YO.1.5.7.9, YO.1.5.7.10, YO.1.5.7.11, YO.1.5.7.12, YO.1.5.7.13, YO.1.5.7.14, YO.1.5.7.15, YO.1.5.7.16, YO.1.5.7.17, YO.1.5.7.18, YO.1.5.7.19, YO.1.5.8.1, YO.1.5.8.2<br><b>-CSD_Win2012:</b>ED.1.5.3, ED.1.5.6.1, ED.1.5.6.2, ED.1.5.6.3, ED.1.5.6.4, ED.1.5.6.5, ED.1.5.6.6, ED.1.5.6.7, ED.1.5.6.8, ED.1.5.7.1, ED.1.5.7.2, ED.1.5.7.3, ED.1.5.7.4, ED.1.5.7.5, ED.1.5.7.6, ED.1.5.7.7, ED.1.5.7.8, ED.1.5.7.9, ED.1.5.7.10, ED.1.5.7.11, ED.1.5.7.12, ED.1.5.7.13, ED.1.5.7.14, ED.1.5.7.15, ED.1.5.7.16, ED.1.5.7.17, ED.1.5.7.18, ED.1.5.7.19, ED.1.5.8.1, ED.1.5.8.2<br><b>-CSD_Win2016:</b>GZ.1.5.1, GZ.1.5.2, GZ.1.5.3, GZ.1.5.4, GZ.1.5.5, GZ.1.5.6, GZ.1.5.7, GZ.1.5.8, GZ.1.5.9, GZ.1.5.10, GZ.1.5.11, GZ.1.5.12, GZ.1.5.13, GZ.1.5.14, GZ.1.5.15, GZ.1.5.14, GZ.1.5.15<br><b>-ITCS_Win2008:</b>Section 8<br><b>-ITCS_Win2012:</b>Section 8<br>',
  attributes: [{
    key: 'disable_services',
    type: 'CSV',
    display_name: 'Services to be disabled',
    display_type: 'string_array',
    validator: '',
    units: '',
    options: '',
    hint: 'Windows services to be disabled.' +
          '<br/><b>ftp</b>: FTP service, usually using port 21.' +
          '<br/><b>ftpsvc</b>: FTP service, usually using port 21.' +
          '<br/><b>msftpsvc</b>: FTP service, usually using port 21.' +
          '<br/><b>tlntsvr</b>: Telnet service, usually using port 23.' +
          '<br/><b>snmp</b>: SNMP service, usually using port 161.',
    default: ['ftp', 'msftpsvc', 'ftpsvc', 'tlntsvr', 'snmp']
  },
  {
    key: 'disable_simpletcp_protocol_list',
    type: 'CSV',
    display_name: 'SimpleTCP protocols to be disabled',
    display_type: 'string_array',
    validator: '',
    units: '',
    options: '',
    hint: 'SimpleTCP protocol which needs to be disabled.' +
          '<br/><b>echo</b>: using port 7.' +
          '<br/><b>discard</b>: using port 9.' +
          '<br/><b>daytime</b>: using port 13.' +
          '<br/><b>quote</b>: using port 17.' +
          '<br/><b>chargen</b>: using port 19.',
    default: ['echo', 'chargen', 'daytime', 'discard']
  },
  {
    key: 'snmp_community_blacklist',
    type: 'CSV',
    display_name: 'SNMP community name to be deleted',
    display_type: 'string_array',
    validator: '',
    units: '',
    options: '',
    hint: 'To delete SNMP community, you could enter its name',
    default: ['public', 'private']
  },
  {
    key: 'snmp_community_create_list',
    type: 'complex_hash',
    display_name: 'SNMP community to be created by key-value pair. Key is the community name.' +
                  '<br/>Value is community permission, i.e.: None, Notify, Read Only, Read Write, Read Create.',
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
    hint: '',
    default: {}
  },
  {
    key: 'target_port_and_exempt_services',
    type: 'complex_hash',
    display_name: 'Target sensitive port and its exempted services' +
                  '<br/>(It will send warn-message if any service except the exempted ones using the port)',
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
    hint: 'Sensitive port and exempt services which will not be treated as suspicious services',
    default: {
        '7' => '',
        '9' => '',
        '13' => '',
        '19' => '',
        '21' => '',
        '23' => '',
        '119' => '',
        '161' => ''
    }
  }],
  validator: '',
  units: '',
  hint: ''
}
