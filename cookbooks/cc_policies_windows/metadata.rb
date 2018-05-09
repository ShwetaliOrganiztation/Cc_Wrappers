# =================================================================
# Licensed Materials - Property of IBM
#
# (c) Copyright IBM Corp. 2014 All Rights Reserved
#
# US Government Users Restricted Rights - Use, duplication or
# disclosure restricted by GSA ADP Schedule Contract with IBM Corp.
# =================================================================
name             'cc_policies_windows'
# Updated version for dev ivt_20.2
version          '1.0.42'
maintainer       'Robert Filepp'
maintainer_email 'filepp@us.ibm.com'
license          'IBM Proprietary - All rights reserved'
description      'recipe wrapper'
#long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
#depends          'sentinel_ingredients', '~> 0.0.9'
depends           'windows_prerequisites','= 0.2.3'
depends           'chef_handler'
depends           'cobalt_ohai'
# depends on wrappers for policy cookbooks
depends           'cc_policy_windows_anonymous_ftp_directory_restrictions' ,'= 1.0.3'
depends           'cc_policy_windows_admin_account' ,'= 1.0.4'
depends           'cc_policy_windows_autorun' ,'= 1.0.1'
depends           'cc_policy_windows_db2' ,'= 1.0.5'
depends           'cc_policy_windows_defender' ,'= 1.0.0'
depends           'cc_policy_windows_event_log_guest_access' ,'= 1.0.6'
depends           'cc_policy_windows_log_retention' ,'= 1.0.4'
depends           'cc_policy_windows_mcafee_av' ,'= 1.0.2'
depends           'cc_policy_windows_motd' ,'= 1.0.2'
depends           'cc_policy_windows_network_synattack' ,'= 1.0.0'
depends           'cc_policy_windows_password_policy' ,'= 1.0.10'
depends           'cc_policy_windows_user_access_control' ,'= 1.0.2'
depends           'cc_policy_windows_vulnerability_updates' ,'= 1.0.1'
depends           'cc_policy_windows_osr' ,'= 1.0.15'
depends           'cc_policy_windows_osr_permission' ,'= 1.0.7'
depends           'cc_policy_windows_antivirus_mse' ,'= 1.0.4'
depends           'cc_policy_windows_audit_logging_requirements' ,'= 1.0.13'
depends           'cc_policy_windows_osr_auditing' ,'= 1.0.12'
depends           'cc_policy_windows_guestaccount_check' ,'= 1.0.3'
depends           'cc_policy_windows_kerberos_ticket_lifetime' ,'= 1.0.7'
depends           'cc_policy_windows_shared_folder' ,'= 1.0.4'
depends           'cc_policy_windows_user_home_directory' ,'= 1.0.1'
depends           'cc_policy_windows_task_scheduler' ,'= 1.0.6'
depends           'cc_policy_windows_password_requirements' ,'= 1.0.7'
depends           'cc_policy_windows_trendmicro_av' ,'= 1.0.4'
depends           'cc_policy_windows_symantec_av' ,'= 1.0.2'
depends           'cc_policy_windows_session' ,'= 1.0.1'
depends           'cc_policy_windows_security_options' ,'= 1.0.1'
depends           'cc_policy_windows_prohibited_services' ,'= 1.0.3'
depends           'cc_policy_windows_advanced_firewall' ,'= 1.0.1'
depends           'cc_policy_windows_was' ,'= 1.0.6'

attribute        'cc_policies_windows/policy_map',
                   description: 'policy map',
                   type: 'string'

