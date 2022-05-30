## Last Block Header

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