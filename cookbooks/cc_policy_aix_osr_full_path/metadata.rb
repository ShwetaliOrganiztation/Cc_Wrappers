# =================================================================
# Licensed Materials - Property of IBM
#
# (c) Copyright IBM Corp. 2017 All Rights Reserved
#
# US Government Users Restricted Rights - Use, duplication or
# disclosure restricted by GSA ADP Schedule Contract with IBM Corp.
# =================================================================
name             'cc_policy_aix_osr_full_path'
version          '1.0.4'
maintainer       'Padmakshi'
maintainer_email 'padmakst@us.ibm.com'
license          'IBM Proprietary - All rights reserved'
description      'recipe wrapper'
depends           'chef_handler'
depends           'cobalt_ohai'
depends          'policy_aix_osr_full_path' ,'= 0.0.8'

attribute        'cc_policy_aix_osr_full_path/policy_map',
                   description: 'policy map',
                   type: 'string'                   

