```shell
./lethean-wallet-rpc --help
Failed to parse arguments: the option '--rpc-bind-port' is required but missing

General options:
  --help                          Produce help message
  --version                       Output version information

Wallet options:
  --daemon-address arg            Use daemon instance at <host>:<port>
  --daemon-host arg               Use daemon instance at host <arg> instead of 
                                  localhost
  --password arg                  Wallet password (escape/quote as needed)
  --password-file arg             Wallet password file
  --daemon-port arg (=0)          Use daemon instance at port <arg> instead of 
                                  48782
  --daemon-login arg              Specify username[:password] for daemon RPC 
                                  client
  --testnet                       For testnet. Daemon must also be launched 
                                  with --testnet flag
  --restricted-rpc                Restricts to view-only commands
  --rpc-bind-port arg             Sets bind port for server
  --disable-rpc-login             Disable HTTP authentication for RPC 
                                  connections served by this process
  --trusted-daemon                Enable commands which rely on a trusted 
                                  daemon
  --rpc-bind-ip arg (=127.0.0.1)  Specify ip to bind rpc server
  --rpc-login arg                 Specify username[:password] required for RPC 
                                  server
  --confirm-external-bind         Confirm rpc-bind-ip value is NOT a loopback 
                                  (local) IP
  --wallet-file arg               Use wallet <arg>
  --generate-from-json arg        Generate wallet from JSON format file
  --wallet-dir arg                Directory for newly created wallets
  --log-file arg                  Specify log file
  --log-level arg                 0-4 or categories
  --max-concurrency arg (=1)      Max number of threads to use for a parallel 
                                  job
  --config-file arg               Config file

```
