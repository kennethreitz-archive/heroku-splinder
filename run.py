
from time import sleep

import envoy


run = envoy.connect('make run')
print 'Running downloader...'

while True:
    print 'Wating 200 seconds...'
    sleep(200)
    print 'Uploading...'
    c = envoy.run('make upload')
    print 'In sync!'
    # print c.std_out
    # print



