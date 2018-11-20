# =================================================================
# Licensed Materials - Property of IBM
#
# (c) Copyright IBM Corp. 2018 All Rights Reserved
#
# US Government Users Restricted Rights - Use, duplication or
# disclosure restricted by GSA ADP Schedule Contract with IBM Corp.
# =================================================================

name             'cc_policy_aix_was'
version          '1.0.4'
maintainer       'Utkarsh Shah'
maintainer_email 'utkarsh@ca.ibm.com'
license          'IBM Proprietary - All rights reserved'
description      'recipe wrapper'
depends          'chef_handler'
depends          'cobalt_ohai'
depends          'policy_aix_was' ,'= 0.1.3'

attribute        'cc_policy_aix_was/policy_map',
                   description: 'policy map',
                   type: 'string'

supports         'aix','>=6.1'
