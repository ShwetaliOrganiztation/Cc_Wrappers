# =================================================================
# Licensed Materials - Property of IBM
#
# (c) Copyright IBM Corp. 2018 All Rights Reserved
#
# US Government Users Restricted Rights - Use, duplication or
# disclosure restricted by GSA ADP Schedule Contract with IBM Corp.
# =================================================================

name             'cc_policy_aix_i4ls'
version          '1.0.1'
maintainer       'Robert Filepp'
maintainer_email 'filepp@us.ibm.com'
license          'IBM Proprietary - All rights reserved'
description      'recipe wrapper'
depends           'chef_handler'
depends           'cobalt_ohai'
depends          'policy_aix_i4ls' ,'= 0.1.3'

attribute        'cc_policy_aix_i4ls/policy_map',
                   description: 'policy map',
                   type: 'string'                   

supports         'aix'
