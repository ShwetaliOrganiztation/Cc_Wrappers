# =================================================================
# Licensed Materials - Property of IBM
#
# (c) Copyright IBM Corp. 2018 All Rights Reserved
#
# US Government Users Restricted Rights - Use, duplication or
# disclosure restricted by GSA ADP Schedule Contract with IBM Corp.
# =================================================================
name             'cc_policy_windows_advanced_firewall'
version          '1.0.1'
maintainer       ''
maintainer_email ''
license          'IBM Proprietary - All rights reserved'
description      'recipe wrapper'
depends          'chef_handler'
depends          'cobalt_ohai'
depends          'policy_windows_advanced_firewall', '= 0.1.0'

attribute        'cc_policy_windows_advanced_firewall/policy_map',
                 description: 'policy map',
                 type: 'string'

supports         'windows', '>= 6.1.0'
