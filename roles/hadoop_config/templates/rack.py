#!/bin/env python

import sys,os,time

pwd = os.path.realpath( __file__ )
rack_file = os.path.dirname(pwd) + "/rack.data"
rack_list = [ l.strip().split() for l in open(rack_file).readlines() if len(l.strip().split()) > 1 ]
rack_map = {}
for item in rack_list:
    for host in item[:-1]:
        rack_map[host] = item[-1]
rack_map['default'] = 'default' in rack_map and rack_map['default'] or '/default/rack'
rack_result = [av in rack_map and rack_map[av] or rack_map['default'] for av in sys.argv[1:]]
#print rack_map, rack_result
print ' '.join( rack_result )
#f = open('/tmp/rack.log','a+')
#f.writelines( "[%s] %sn" % (time.strftime("%F %T"),str(sys.argv)))
#f.close()
