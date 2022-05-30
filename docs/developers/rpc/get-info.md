## Get Info

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