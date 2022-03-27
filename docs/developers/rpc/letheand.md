# Lethean Blockchain Daemon RPC

Start `letheand` [Start Arguments](../../chain/cli/letheand.md)

- RPC Port: `48782`
- Host: `127.0.0.1`
- JSON-RPC: http://127.0.0.1:48782/json_rpc


## RPC Endpoints

### Get Block

- Method: `getblock`
- Params:
  - hash: string
  - height: int
  
```http
POST http://seed.lethean.io:48782/json_rpc
Content-Type: application/json

{
    "jsonrpc": "2.0",
    "id": "0",
    "method": "getblock",
    "params": {
      "height": 285377
  }
}
```

### Last Block Header

```http
POST http://seed.lethean.io:48782/json_rpc
Content-Type: application/json

  {
    "jsonrpc": "2.0",
    "id": "0",
    "method": "getlastblockheader"
}
```

```json
{
  "id": "0",
  "jsonrpc": "2.0",
  "result": {
    "block_header": {
      "block_size": 102,
      "depth": 0,
      "difficulty": 453319455,
      "hash": "b16dbe8bd14dbe5576866afaa3b2c4e26cd43c7d90e848c63ef34fff9dd5ac4c",
      "height": 1177440,
      "major_version": 7,
      "minor_version": 7,
      "nonce": 2271626,
      "num_txes": 0,
      "orphan_status": false,
      "prev_hash": "208096e55a23d6a11141d37985cba636f257759a1b4209b0ca7b98cd201eb3a2",
      "reward": 5800000000,
      "timestamp": 1648389357
    },
    "status": "OK"
  }
}
```


### Get Block Header by Hash

- Method: `getblockheaderbyhash`
- Params:
  - hash: string

```http
POST http://seed.lethean.io:48782/json_rpc 
Content-Type: application/json

  {
    "jsonrpc": "2.0",
    "id": "0",
    "method": "getblockheaderbyhash",
    "params": {
      "hash": "19f987299e7651fa41a9ef11c635889b483482fddc3e5c0d33677971538fa6f0"
  }
}
```

### Get Block Header by Height

- Method: `getblockheaderbyheight`
- Params:
  - height: int

```http
POST http://127.0.0.1:18081/json_rpc 
Content-Type: application/json

  {
    "jsonrpc": "2.0",
    "id": "0",
    "method": "getblockheaderbyheight",
    "params": {
      "height": 285377
  }
}'
```

### Get Transaction

```http
POST http://seed.lethean.io:48782/gettransactions 
Content-Type: application/json

{
  "txs_hashes": [
    "e481de53afb2f38abcfa2ce22fe6c0aedb789ce2440d688972b45f8e13915ee9"
  ],
  "decode_as_json": true
}
```

### Get Transaction pool

```http
POST http://127.0.0.1:18081/get_transaction_pool
Content-Type: application/json
```

### Get Block Count

```http
POST http://seed.lethean.io:48782/json_rpc 
Content-Type: application/json

{"jsonrpc": "2.0", "id": "0", "method": "getblockcount"}
```

### Get Connections

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

### Get Info

```http
POST http://seed.lethean.io:48782/json_rpc
Content-Type: application/json

  {
    "jsonrpc": "2.0",
    "id": "0",
    "method": "get_info"
}
```
```json
{
  "id": "0",
  "jsonrpc": "2.0",
  "result": {
    "alt_blocks_count": 50,
    "block_size_limit": 479269,
    "cumulative_difficulty": 236473494931373,
    "difficulty": 461689725,
    "grey_peerlist_size": 279,
    "height": 1177441,
    "incoming_connections_count": 12,
    "outgoing_connections_count": 8,
    "start_time": 1646322518,
    "status": "OK",
    "target": 120,
    "target_height": 1177243,
    "testnet": false,
    "top_block_hash": "b16dbe8bd14dbe5576866afaa3b2c4e26cd43c7d90e848c63ef34fff9dd5ac4c",
    "tx_count": 1271394,
    "tx_pool_size": 0,
    "white_peerlist_size": 68
  }
}
```

### Hardfork info

```http
POST http://seed.lethean.io:48782/json_rpc
Content-Type: application/json

  {
    "jsonrpc": "2.0",
    "id": "0",
    "method": "hard_fork_info"
}
```
```json
{
  "id": "0",
  "jsonrpc": "2.0",
  "result": {
    "earliest_height": 1147126,
    "enabled": true,
    "state": 2,
    "status": "OK",
    "threshold": 0,
    "version": 7,
    "votes": 10080,
    "voting": 7,
    "window": 10080
  }
}
```
### Get Fee Estimate

```http
POST http://seed.lethean.io:48782/json_rpc
Content-Type: application/json

  {
    "jsonrpc": "2.0",
    "id": "0",
    "method": "get_fee_estimate"
}
```
```json
{
  "id": "0",
  "jsonrpc": "2.0",
  "result": {
    "fee": 11600,
    "status": "OK"
  }
}
```
