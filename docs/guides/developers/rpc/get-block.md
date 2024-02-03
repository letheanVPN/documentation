## Get Block

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
```json
{
  "id": "0",
  "jsonrpc": "2.0",
  "result": {
    "blob": "04049cf1dadd05b153806db22d07abfe7de09cad766ad1cfe11c1cba1c68e12acb5040fc88a73ec508000002fdb51101ffc1b5110190e89e8f9c03023382ce8a164465c1a35c7a955146ceb36b588ddd4b19026c478827f2055280523401e31344d515542445d3e25b3fd4d7a5dd6ce690cb41a1cf81e25d4402b4b795180211000000002d8739510000000000000000000001e481de53afb2f38abcfa2ce22fe6c0aedb789ce2440d688972b45f8e13915ee9",
    "block_header": {
      "block_size": 13233,
      "depth": 892099,
      "difficulty": 189677778,
      "hash": "19f987299e7651fa41a9ef11c635889b483482fddc3e5c0d33677971538fa6f0",
      "height": 285377,
      "major_version": 4,
      "minor_version": 4,
      "nonce": 2245,
      "num_txes": 1,
      "orphan_status": false,
      "prev_hash": "b153806db22d07abfe7de09cad766ad1cfe11c1cba1c68e12acb5040fc88a73e",
      "reward": 110627370000,
      "timestamp": 1538701468
    },
    "json": "{\n  \"major_version\": 4, \n  \"minor_version\": 4, \n  \"timestamp\": 1538701468, \n  \"prev_id\": \"b153806db22d07abfe7de09cad766ad1cfe11c1cba1c68e12acb5040fc88a73e\", \n  \"nonce\": 2245, \n  \"miner_tx\": {\n    \"version\": 2, \n    \"unlock_time\": 285437, \n    \"vin\": [ {\n        \"gen\": {\n          \"height\": 285377\n        }\n      }\n    ], \n    \"vout\": [ {\n        \"amount\": 110627370000, \n        \"target\": {\n          \"key\": \"3382ce8a164465c1a35c7a955146ceb36b588ddd4b19026c478827f205528052\"\n        }\n      }\n    ], \n    \"extra\": [ 1, 227, 19, 68, 213, 21, 84, 36, 69, 211, 226, 91, 63, 212, 215, 165, 221, 108, 230, 144, 203, 65, 161, 207, 129, 226, 93, 68, 2, 180, 183, 149, 24, 2, 17, 0, 0, 0, 0, 45, 135, 57, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0\n    ], \n    \"rct_signatures\": {\n      \"type\": 0\n    }\n  }, \n  \"tx_hashes\": [ \"e481de53afb2f38abcfa2ce22fe6c0aedb789ce2440d688972b45f8e13915ee9\"\n  ]\n}",
    "status": "OK",
    "tx_hashes": ["e481de53afb2f38abcfa2ce22fe6c0aedb789ce2440d688972b45f8e13915ee9"]
  }
}
```
