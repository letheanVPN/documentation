## Get Connections

```http
POST http://seed.lethean.io:48782/json_rpc
Content-Type: application/json

  {
    "jsonrpc": "2.0",
    "id": "0",
    "method": "get_connections"
}
```
```json
{
  "id": "0",
  "jsonrpc": "2.0",
  "result": {
    "connections": [{
      "address": "xxx.xxx.xx.xxx:34736",
      "avg_download": 0,
      "avg_upload": 0,
      "connection_id": "1d9xxxxxx1c045a0fe42d0bbc2261cd",
      "current_download": 0,
      "current_upload": 0,
      "height": 1177438,
      "host": "xxx.xxx.xx.xxx",
      "incoming": true,
      "ip": "xxx.xxx.xxx.xxx",
      "live_time": 21206,
      "local_ip": false,
      "localhost": false,
      "peer_id": "d72c15735d9",
      "port": "34336",
      "recv_count": 11420946,
      "recv_idle_time": 2,
      "send_count": 3917337,
      "send_idle_time": 2,
      "state": "state_normal",
      "support_flags": 0
    }],
    "status": "OK"
  }
}
```