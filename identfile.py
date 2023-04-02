#!/usr/bin/env python

filename = '/tmp/output_1.txt'
output_file = '/tmp/output_2.txt'

with open(filename) as f_in, open(output_file, 'w') as f_out:
    for line in f_in:
        fields = line.split()
        f_out.write('{:<15} {:<20}'.format(fields[0], fields[1]))
        for field in fields[2:]:
            f_out.write('   {}'.format(field))
        f_out.write('\n')
