# =================================================================
# Licensed Materials - Property of IBM
#
# (c) Copyright IBM Corp. 2017 All Rights Reserved
#
# US Government Users Restricted Rights - Use, duplication or
# disclosure restricted by GSA ADP Schedule Contract with IBM Corp.
# =================================================================

name             'cc_policy_aix_ntpd'
version          '1.0.5'
maintainer       'Bidisha Sanchiher'
maintainer_email 'bidisha@ca.ibm.com'
license          'IBM Proprietary - All rights reserved'
description      'recipe wrapper'
depends          'chef_handler'
depends          'cobalt_ohai'
depends          'policy_aix_ntpd' ,'= 0.1.5'

attribute        'cc_policy_aix_ntpd/policy_map',
                   description: 'policy map',
                   type: 'string'                   
