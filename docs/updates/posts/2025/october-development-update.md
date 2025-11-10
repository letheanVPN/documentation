---
date: 2025-10-09
authors:
  - snider
categories:
  - Development
tags:
  - CryptoNote
  - testnet
description: >
  Build system improvements, new chain features and a new API in development
title: Development Update
---

# Testnet & Development Update

With the closure of the old chain, its network difficulty dropped to a point a single thread can mine it. The SWAP height is: `2,040,903`


This post covers what's next as the Lethean community starts our new chain, and the first feature after recent build stability updates.

<!-- more -->

So, let's get to it. Here's a brief overview of chain alterations already done:

## Build System Improvements

- Full transparent dependency management (`make testnet`, no boost, openssl, QT, nothing)
- Public compile cache, so your build probably won't need to compile Boost locally, but it can.
- CMake Presets: preconfigured builds `cmake --workflow mainnet` = `build/bin/BINARY`
- Offline Documentation (this website) integrated into the final packages.
- Installers + tarballs automatically made with docs on `make release|testnet|mainnet` 

## New Chain Functionality

- CMake Template-powered Chain Configuration
- Automatic genesis creation, either during the build or via a genesis executable
- Automatic premine wallet creation

## Next Features

Currently, I'm making a new chain binary, `lethean-api`, with an HTTP C++ framework so it can handle production traffic and supply a modern interface to our chain,
including OpenAPI + SDKs in Go, TypeScript, PHP, C++, Python, etc. 

```
                                                              +-------------------------+
                                                              |   Internal Admin/Wallet |
                                                              |   (Not Publicly Routed) |
                                                              +-----------+-------------+
                                                                          | (RPC)
                                                                          |
  Public Internet <---+                                       +-----------+-------------+
                      |                                       |   Internal P2P Node     |
+---------------------+------------------+                    |  (Firewalled, Trusted)  |
| Load Balancer / Reverse Proxy (NGINX)  |                    +-----------+-------------+
| (SSL Termination, Rate Limiting, etc.) |                                | (P2P)
+---------------------+------------------+                                |
                      |                                       +-----------+-------------+
                      |                                                   | (P2P)
+---------------------+---------------------------------------------------+---------------------+
|                     |                    |                                |                     |
|  DMZ / Public-Facing API Node Pool                                        |  Wider Lethean P2P  |
|                                                                           |  Network            |
| +-----------------+ +-----------------+             +-----------------+   |                     |
| | lethean-api #1  | | lethean-api #2  |    .....    | lethean-api #N  |   |                     |
| +-----------------+ +-----------------+             +-----------------+   |                     |
| | - Oat++ Server  | | - Oat++ Server  |             | - Oat++ Server  |   |                     |
| | - currency_core | | - currency_core |             | - currency_core |   |                     |
| | - p2p_node      | | - p2p_node      |             | - p2p_node      |   |                     |
| +-----------------+ +-----------------+             +-----------------+   |                     |
+-------------------------------------------------------------------------+---------------------+
```
The current binary/JSON-RPC systems will stay, but the untouched legacy API is where upstream features would first appear. 

The chain node will come in two flavors, one for production use, the other for personal. 
The production version will only sync the chain and serve the new API. 

The framework was recently load-tested to handle 5 million concurrent web sockets, so this `lethean-api` binary will only really need NGINX for load balancing and reverse proxy/SSL termination (SSL would be handled in-binary by using .lthn names, but that's a future feature).

The personal version will include the features of `lethean-api` in the `lethean-chain-node` binary, but without `stratum`, `market`, or anything likely to become geographically problematic in the coming years.

A CryptoNote chain with a local OpenAPI Server + Docs interface & SDKs in your programming language, anyone?

The first "cool" feature I'll add on top is an in-binary torrent of the chain's pre-download file, with the seed nodes and people who select to share the torrent seeding.

It will grab a packaged .raw file, update your local chain, and then turn on the P2P server, which will take over to align your height with the chain's top height. 

It is excellent at doing sequential binary updates; it's just slow for the initial sync, which only gets slower as the chain ages. 

## A Teaser of a Coming Feature

We are getting a sidechain. While running the sidechain is optional, it's a deeply integrated bolt-on of functionality into the CryptoNote space for our use case.

That's all you get for now. Until next time.

Take Care

Snider<br/>
Lethean Developer<br/>
_I Would Love To Change The World, But They Won't Give Me The Source Code_