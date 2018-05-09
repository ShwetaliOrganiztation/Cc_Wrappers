# =================================================================
# Licensed Materials - Property of IBM
#
# (c) Copyright IBM Corp. 2014 All Rights Reserved
#
# US Government Users Restricted Rights - Use, duplication or
# disclosure restricted by GSA ADP Schedule Contract with IBM Corp.
# =================================================================
name             'cc_policy_windows_password_policy'
version          '1.0.10'
maintainer       'Robert Filepp'
maintainer_email 'filepp@us.ibm.com'
license          'IBM Proprietary - All rights reserved'
description      'recipe wrapper'
depends           'chef_handler'
depends           'cobalt_ohai'
depends          'policy_windows_password_policy' ,'= 0.1.16'

attribute        'cc_policy_windows_password_policy/policy_map',
                 description: 'policy map',
                 type: 'string'

supports         'windows', '>= 6.1.0'
