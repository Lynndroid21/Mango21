#!/usr/bin/env python

import os
import subprocess
import tempfile
import glob as gb
import json

data = {}
rem_file = os.path.join(os.environ['XDG_CONFIG_HOME'], 'remind', 'remind')
with tempfile.TemporaryDirectory(prefix='remind') as tmp_dir:
    cmd = ["remind", f"\"-krem_save {tmp_dir} %s\"", rem_file, ">", "/dev/null"]
    subprocess.check_call(" ".join(cmd), shell=True)
    data['text'] = len(gb.glob(os.path.join(tmp_dir, '*')))

cmd = ["/usr/bin/remind", rem_file]
rmind = subprocess.run(cmd, stdout=subprocess.PIPE)
data['tooltip'] = rmind.stdout.decode('utf8')
print(json.dumps(data))
