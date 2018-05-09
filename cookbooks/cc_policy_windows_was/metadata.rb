# =================================================================
# Licensed Materials - Property of IBM
#
# (c) Copyright IBM Corp. 2018 All Rights Reserved
#
# US Government Users Restricted Rights - Use, duplication or
# disclosure restricted by GSA ADP Schedule Contract with IBM Corp.
# =================================================================

name             'cc_policy_windows_was'
version          '1.0.6'
maintainer       'Boshen Zhang'
maintainer_email 'boshenz@sg.ibm.com'
license          'IBM Proprietary - All rights reserved'
description      'recipe wrapper'
depends          'chef_handler'
depends          'cobalt_ohai'
depends          'policy_windows_was', '= 0.0.5'

attribute        'cc_policy_windows_was/policy_map',
                 description: 'policy map',
                 type: 'string'

supports         'windows'
