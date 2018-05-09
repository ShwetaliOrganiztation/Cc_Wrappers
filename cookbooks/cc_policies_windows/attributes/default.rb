default['cc_policies_windows']['policy_map'] = {"components" => [
    {
      identified_by: 'value',
      id: 'os:windows',
      "enforced_by" => [
#       { policy: 'windows_prerequisites', enabled: true },
        { policy: 'cc_policy_windows_anonymous_ftp_directory_restrictions', enabled: true },
        { policy: 'cc_policy_windows_admin_account', enabled: true },
        { policy: 'cc_policy_windows_autorun', enabled: true },
        { policy: 'cc_policy_windows_db2', enabled: true },
        { policy: 'cc_policy_windows_defender', enabled: true },
        { policy: 'cc_policy_windows_event_log_guest_access', enabled: true },
        { policy: 'cc_policy_windows_log_retention', enabled: true },
        { policy: 'cc_policy_windows_mcafee_av', enabled: true },
        { policy: 'cc_policy_windows_motd', enabled: true },
        { policy: 'cc_policy_windows_network_synattack', enabled: true },
        { policy: 'cc_policy_windows_password_policy', enabled: true },
        { policy: 'cc_policy_windows_user_access_control', enabled: true },
        { policy: 'cc_policy_windows_vulnerability_updates', enabled: true },
        { policy: 'cc_policy_windows_password_requirements', enabled: true },
        { policy: 'cc_policy_windows_osr', enabled: true },
        { policy: 'cc_policy_windows_osr_permission', enabled: true },  
        { policy: 'cc_policy_windows_antivirus_mse', enabled: true },
        { policy: 'cc_policy_windows_audit_logging_requirements', enabled: true },
        { policy: 'cc_policy_windows_guestaccount_check', enabled: true },
        { policy: 'cc_policy_windows_kerberos_ticket_lifetime', enabled: true },
        { policy: 'cc_policy_windows_shared_folder', enabled: true },
        { policy: 'cc_policy_windows_user_home_directory', enabled: true },
        { policy: 'cc_policy_windows_osr_auditing', enabled: true },
        { policy: 'cc_policy_windows_task_scheduler', enabled: true },
        { policy: 'cc_policy_windows_trendmicro_av', enabled: true },
        { policy: 'cc_policy_windows_symantec_av', enabled: true },
        { policy: 'cc_policy_windows_session', enabled: true },
        { policy: 'cc_policy_windows_security_options', enabled: true },
        { policy: 'cc_policy_windows_advanced_firewall', enabled: true },
        { policy: 'cc_policy_windows_prohibited_services', enabled: true },
        { policy: 'cc_policy_windows_was', enabled: true }
      ]
    }
  ]
}

