```shell
./letheand --help

Usage: ./letheand [options|settings] [daemon_command...]

Options:
  --help                                Produce help message
  --version                             Output version information
  --os-version                          OS for which this executable was 
                                        compiled
  --config-file arg (=/Users/snider/.intensecoin/intensecoin.conf)
                                        Specify configuration file
  --test-dbg-lock-sleep arg (=0)        Sleep time in ms, defaults to 0 (off), 
                                        used to debug before/after locking 
                                        mutex. Values 100 to 1000 are good for 
                                        tests.
  --detach                              Run as daemon
  --pidfile arg                         File path to write the daemon's PID to 
                                        (optional, requires --detach)
  --non-interactive                     Run non-interactive

Settings:
  --log-file arg (=/Users/snider/.intensecoin/intensecoin.log)
                                        Specify log file
  --log-level arg
  --max-concurrency arg (=0)            Max number of threads to use for a 
                                        parallel job
  --data-dir arg (=/Users/snider/.intensecoin)
                                        Specify data directory
  --testnet-data-dir arg (=/Users/snider/.intensecoin/testnet)
                                        Specify testnet data directory
  --test-drop-download                  For net tests: in download, discard ALL
                                        blocks instead checking/saving them 
                                        (very fast)
  --test-drop-download-height arg (=0)  Like test-drop-download but disards 
                                        only after around certain height
  --testnet                             Run on testnet. The wallet must be 
                                        launched with --testnet flag.
  --enforce-dns-checkpointing           checkpoints from DNS server will be 
                                        enforced
  --prep-blocks-threads arg (=4)        Max number of threads to use when 
                                        preparing block hashes in groups.
  --fast-block-sync arg (=1)            Sync up most of the way by using 
                                        embedded, known block hashes.
  --show-time-stats arg (=0)            Show time-stats when processing 
                                        blocks/txs and disk synchronization.
  --block-sync-size arg (=0)            How many blocks to sync at once during 
                                        chain synchronization (0 = adaptive).
  --check-updates arg (=notify)         Check for new versions of monero: 
                                        [disabled|notify|download|update]
  --fluffy-blocks                       Relay blocks as fluffy blocks where 
                                        possible (automatic on testnet)
  --standard-json                       Force standard JSON output (do not 
                                        return binary data in json fields)
  --testnet-p2p-bind-port arg (=38772)  Port for testnet p2p network protocol
  --p2p-bind-port arg (=48772)          Port for p2p network protocol
  --extra-messages-file arg             Specify file for extra messages to 
                                        include into coinbase transactions
  --start-mining arg                    Specify wallet address to mining for
  --mining-threads arg                  Specify mining threads count
  --bg-mining-enable                    enable/disable background mining
  --bg-mining-ignore-battery            if true, assumes plugged in when unable
                                        to query system power status
  --bg-mining-min-idle-interval arg     Specify min lookback interval in 
                                        seconds for determining idle state
  --bg-mining-idle-threshold arg        Specify minimum avg idle percentage 
                                        over lookback interval
  --bg-mining-miner-target arg          Specificy maximum percentage cpu use by
                                        miner(s)
  --db-type arg (=lmdb)                 Specify database type, available: lmdb
  --db-sync-mode arg (=fast:async:1000) Specify sync option, using format 
                                        [safe|fast|fastest]:[sync|async]:[nbloc
                                        ks_per_sync].
  --db-salvage                          Try to salvage a blockchain database if
                                        it seems corrupted
  --p2p-bind-ip arg (=0.0.0.0)          Interface for p2p network protocol
  --p2p-external-port arg (=0)          External port for p2p network protocol 
                                        (if port forwarding used with NAT)
  --allow-local-ip                      Allow local ip add to peer list, mostly
                                        in debug purposes
  --add-peer arg                        Manually add peer to local peerlist
  --add-priority-node arg               Specify list of peers to connect to and
                                        attempt to keep the connection open
  --add-exclusive-node arg              Specify list of peers to connect to 
                                        only. If this option is given the 
                                        options add-priority-node and seed-node
                                        are ignored
  --seed-node arg                       Connect to a node to retrieve peer 
                                        addresses, and disconnect
  --hide-my-port                        Do not announce yourself as peerlist 
                                        candidate
  --no-igd                              Disable UPnP port mapping
  --offline                             Do not listen for peers, nor connect to
                                        any
  --out-peers arg (=-1)                 set max number of out peers
  --tos-flag arg (=-1)                  set TOS flag
  --limit-rate-up arg (=-1)             set limit-rate-up [kB/s]
  --limit-rate-down arg (=-1)           set limit-rate-down [kB/s]
  --limit-rate arg (=-1)                set limit-rate [kB/s]
  --save-graph                          Save data for dr monero
  --rpc-bind-port arg (=48782)          Port for RPC server
  --testnet-rpc-bind-port arg (=38782)  Port for testnet RPC server
  --restricted-rpc                      Restrict RPC to view only commands
  --rpc-bind-ip arg (=127.0.0.1)        Specify ip to bind rpc server
  --rpc-login arg                       Specify username[:password] required 
                                        for RPC server
  --confirm-external-bind               Confirm rpc-bind-ip value is NOT a 
                                        loopback (local) IP
```
