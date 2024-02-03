## Get Fee Estimate

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
