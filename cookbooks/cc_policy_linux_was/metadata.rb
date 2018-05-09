# =================================================================
# Licensed Materials - Property of IBM
#
# (c) Copyright IBM Corp. 2018 All Rights Reserved
#
# US Government Users Restricted Rights - Use, duplication or
# disclosure restricted by GSA ADP Schedule Contract with IBM Corp.
# =================================================================

name             'cc_policy_linux_was'
version          '1.0.7'
maintainer       'Utkarsh Shah'
maintainer_email 'utkarsh@ca.ibm.com'
license          'IBM Proprietary - All rights reserved'
description      'recipe wrapper'
depends          'chef_handler'
depends          'cobalt_ohai'
depends          'policy_linux_was' ,'= 0.1.8'

attribute        'cc_policy_linux_was/policy_map',
                   description: 'policy map',
                   type: 'string'

supports         'redhat', '>= 6.6'
supports         'ubuntu', '>= 14.04'
supports         'suse', '>= 11.0'
