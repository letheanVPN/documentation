```shell
./lethean-blockchain-import --help

Allowed options:
  --data-dir arg (=/Users/name/.intensecoin)
                                        Specify data directory
  --testnet-data-dir arg (=/Users/name/.intensecoin/testnet)
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

Command line options:
  --count-blocks                        Count blocks in bootstrap file and exit
  --pop-blocks arg (=0)                 Remove blocks from end of blockchain
  --drop-hard-fork                      Drop hard fork subdbs
  --help                                Produce help message

Command line options and settings options:
  --input-file arg                      Specify input file
  --log-level arg                       0-4 or categories
  --database arg (=lmdb)                available: lmdb
  --batch-size arg (=20000)
  --block-stop arg (=0)                 Stop at block number
  --verify arg (=1)                     Verify blocks and transactions during 
                                        import
  --batch arg (=1)                      Batch transactions for faster import
  --resume arg (=1)                     Resume from current height if output 
                                        database already exists

```
