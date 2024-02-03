
## Hardfork info

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