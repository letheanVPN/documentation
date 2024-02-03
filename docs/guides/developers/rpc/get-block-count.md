
## Get Block Count

```http
POST http://seed.lethean.io:48782/json_rpc 
Content-Type: application/json

{"jsonrpc": "2.0", "id": "0", "method": "getblockcount"}
```
```json
{
  "id": "0",
  "jsonrpc": "2.0",
  "result": {
    "count": 1177481,
    "status": "OK"
  }
}
```