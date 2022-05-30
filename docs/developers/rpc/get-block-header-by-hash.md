## Get Block Header by Hash

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
```json
{
  "id": "0",
  "jsonrpc": "2.0",
  "result": {
    "block_header": {
      "block_size": 13233,
      "depth": 892101,
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
    "status": "OK"
  }
}
```