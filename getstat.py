#!/usr/bin/python3
import json
import subprocess
import socket
from influxdb import InfluxDBClient

output = subprocess.run('''/bin/echo '{"id":0,"jsonrpc":"2.0","method":"miner_getstat1"}' | /bin/nc localhost 3333 ''', shell=True, stdout=subprocess.PIPE,universal_newlines=True) 
js = json.loads(str(output.stdout))  
#print(js['result'][0])
host = socket.gethostname()
eth=[]
for i in js['result'][3].split(';'):
    try: 
      eth.append("{}".format(int(i)/1000))
    except Exception:
      eth.append(0)
ray=js['result'][6].split(';')
print(ray)
ttt=[]
fan=[]
for i in range(0,len(ray),2):
    ttt.append(int(ray[i]))
    fan.append(int(ray[i+1]))
    
json_body = [
    {
        "measurement": "nodes",
        "tags": {
            "host": host,
        },
        "fields": {
        "ver":js['result'][0],
            "gpu0temp": ttt[0],
            "gpu1temp": ttt[1],
            "gpu2temp": ttt[2],
            "gpu3temp": ttt[3],
            "gpu4temp": ttt[4],
            "gpu5temp": ttt[5],
            "gpu0fan": fan[0],
            "gpu1fan": fan[1],
            "gpu2fan": fan[2],
            "gpu3fan": fan[3],
            "gpu4fan": fan[4],
            "gpu5fan": fan[5],
            "gpu0rate": float(eth[0]),
            "gpu1rate": float(eth[1]),
            "gpu2rate": float(eth[2]),
            "gpu3rate": float(eth[3]),
            "gpu4rate": float(eth[4]),
            "gpu5rate": float(eth[5])
        }
    }
]
print(json_body)
client = InfluxDBClient('rig.ispbug.ru', 8086, 'admin', 'vmPa4s', 'rig')
client.write_points(json_body)
