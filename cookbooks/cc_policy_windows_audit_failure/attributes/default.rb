default['cc_policy_windows_audit_failure']['policy_map'] = { components: [
  {
    identified_by: 'value',
    id: 'os:windows',
    enforced_by: [{
      policy: 'policy_windows_audit_failure',
      enabled: false }]
  }

]
                          }
default['cc_policy_windows_audit_failure']['ui_metadata']['policy_windows_audit_failure'] = {
  policy: 'policy_windows_audit_failure',
  display_name: 'policy_windows_audit_failure_DEP',

  attributes: [
    {
      key: 'crashonauditfail',
      type: 'number',
      display_name: 'Crash on Audit Failure',
      display_type: 'text_box',
      validator: '[0-1]',
      units: '',
      options: [

      ],
      hint: 'Enter 0 if a crash after audit failure is not allowed, Enter 1 if a crash after audit failure is allowed',
	  isNull: false
    }

  ],
  validator: '',
  units: '',
  hint: ''
}
