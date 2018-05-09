# =================================================================
# Licensed Materials - Property of IBM
#
# (c) Copyright IBM Corp. 2014 All Rights Reserved
#
# US Government Users Restricted Rights - Use, duplication or
# disclosure restricted by GSA ADP Schedule Contract with IBM Corp.
# =================================================================
name             'cc_policy_enforcement'

# Updated version for dev ivt_20.2
version          '20.2.0'
maintainer       'Robert Filepp'
maintainer_email 'filepp@us.ibm.com'
license          'IBM Proprietary - All rights reserved'
description      'recipe wrapper'
# long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
# sentinel_ingredients version number is for Sprint 20.2
depends          'sentinel_ingredients', '= 0.0.306'
depends           'chef_handler'
depends           'cobalt_ohai'

depends           'cc_policies_mysql', '= 1.0.0'
depends           'cc_policies_linux', '= 1.0.139'
depends           'cc_policies_windows', '= 1.0.42'
depends           'cc_policies_aix', '= 1.0.58'

attribute        'cc_policy_enforcement/policy_map',
                 description: 'policy map',
                 type: 'string'

attribute        'cc_policy_enforcement/release_versions',
                 description: 'release version mapping',
                 type: 'string'
