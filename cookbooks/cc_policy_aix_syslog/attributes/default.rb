default['cc_policy_aix_syslog']['policy_map'] = { 'components' => [
  {
    identified_by: 'value',
    id: 'os:aix',
    'enforced_by' => [{
      policy: 'policy_aix_syslog',
      enabled: true }]
  }

]
                          }
default['cc_policy_aix_syslog']['ui_metadata']['policy_aix_syslog'] = {
  policy: 'policy_aix_syslog',
  display_name: 'policy_aix_syslog',
  techspec: '<b>CSD:</b>E.1.2.5.1<br><b>-ITCS:</b>Section 2.1.1(6)<br>',
  attributes: [
    { key: 'aix_entries',
      type: 'complex_hash',
      display_name: 'aix_entries',
      display_type: 'object_set',
      'attributes' => [{
        display_type: 'key_value_pair',
        'attributes' => [{
          display_type: 'string'
        }]
      }],
      validator: '',
      units: '',
      options: '',
      hint: 'Mapping of log locations and selectors for AIX',
      default: { '/var/adm/auth.log' => 'auth.info' } },

    { key: 'file_path',
      type: 'text',
      display_name: 'file_path',
      display_type: 'text_box',
      validator: '',
      units: '',
      options: '',
      hint: 'Syslog configuration file location to control the output of the syslogd daemon.',
      default: '/etc/syslog.conf' }
  ],
  'validator' => '',
  'units' => '',
  'hint' => ''
}
