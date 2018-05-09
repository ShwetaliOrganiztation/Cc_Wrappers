# =================================================================
# Licensed Materials - Property of IBM
#
# (c) Copyright IBM Corp. 2014 All Rights Reserved
#
# US Government Users Restricted Rights - Use, duplication or
# disclosure restricted by GSA ADP Schedule Contract with IBM Corp.
# =================================================================
name             'cc_policy_aix_db2'
version          '1.0.3'
maintainer       'Robert Filepp'
maintainer_email 'filepp@us.ibm.com'
license          'IBM Proprietary - All rights reserved'
description      'recipe wrapper'
#long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
#depends          'sentinel_ingredients', '~> 0.0.10'
depends           'chef_handler'
depends           'cobalt_ohai'
depends          'policy_aix_db2' ,'= 0.1.7'

attribute        'cc_policy_aix_db2/policy_map',
                   description: 'policy map',
                   type: 'string'                   

supports         'aix'