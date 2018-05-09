# =================================================================
# Licensed Materials - Property of IBM
#
# (c) Copyright IBM Corp. 2018 All Rights Reserved
#
# US Government Users Restricted Rights - Use, duplication or
# disclosure restricted by GSA ADP Schedule Contract with IBM Corp.
# =================================================================
name             'cc_policies_aix'
version          '1.0.59'
maintainer       'Robert Filepp'
maintainer_email 'filepp@us.ibm.com'
license          'IBM Proprietary - All rights reserved'
description      'recipe wrapper'
# long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
# depends          'sentinel_ingredients',  '~> 0.0.9'
depends           'chef_handler'
depends           'cobalt_ohai'
# depends on wrappers for policy cookbooks
depends           'cc_policy_aix_berkeley', '= 1.0.0'
depends           'cc_policy_aix_db2', '= 1.0.3'
depends           'cc_policy_aix_dict_words', '= 1.0.2'
depends           'cc_policy_aix_duplicate_gid', '= 1.0.1'
depends           'cc_policy_aix_failed_login_retries', '= 1.0.0'
depends           'cc_policy_aix_file_permissions', '= 1.0.9'
depends           'cc_policy_aix_ftp', '= 1.0.2'
depends           'cc_policy_aix_i4ls', '= 1.0.1'
depends           'cc_policy_aix_inactive_accounts', '= 1.0.1'
depends           'cc_policy_aix_log_retention', '= 1.0.2'
depends           'cc_policy_aix_motd', '= 1.0.0'
depends           'cc_policy_aix_nfs', '= 1.0.1'
depends           'cc_policy_aix_nis', '= 1.0.0'
depends           'cc_policy_aix_no_loginpassword', '= 1.0.1'
depends           'cc_policy_aix_ntpd', '= 1.0.5'
depends           'cc_policy_aix_pass_max_age', '= 1.0.2'
depends           'cc_policy_aix_pass_min_age', '= 1.0.0'
depends           'cc_policy_aix_pass_min_len', '= 1.0.0'
depends           'cc_policy_aix_passwd_file', '= 1.0.1'
depends           'cc_policy_aix_password_history', '= 1.0.0'
depends           'cc_policy_aix_priv_group_membership', '= 1.0.1'
depends           'cc_policy_aix_rlogin', '= 1.0.3'
depends           'cc_policy_aix_session', '= 1.0.4'
depends           'cc_policy_aix_snmpd', '= 1.0.4'
depends           'cc_policy_aix_sshd', '= 1.0.5'
depends           'cc_policy_aix_sudo', '= 1.0.0'
depends           'cc_policy_aix_sysctl_network', '= 1.0.1'
depends           'cc_policy_aix_syslog', '= 1.0.0'
depends           'cc_policy_aix_syslog_v2', '= 1.0.0'
depends           'cc_policy_aix_tftp', '= 1.0.1'
depends           'cc_policy_aix_unsafe_services', '= 1.0.2'
depends           'cc_policy_aix_xserver', '= 1.0.0'
depends           'cc_policy_aix_osr_full_path', '= 1.0.4'
depends           'cc_policy_aix_entire_dir_perms', '= 1.0.7'
depends           'cc_policy_aix_root_rlogin', '= 1.0.0'
depends           'cc_policy_aix_motd_v2', '= 1.0.2'
depends           'cc_policy_aix_was', '= 1.0.3'

attribute         'cc_policies_aix/policy_map',
                  description: 'policy map',
                  type: 'string'
