## Octave‑Tree Matrix‑8 Consensus

### What it shows
Three gateways that exchange matrix‑8 consensus messages and all push their latest threat‑score to a shared monitor.

``` mermaid
flowchart LR
    GW_A[Gateway A] --> GW_B[Gateway B]
    GW_B --> GW_C[Gateway C]
    GW_C --> GW_A
    GW_A -->|Score Update| SCORE[Threat‑Score Monitor]
    GW_B -->|Score Update| SCORE
    GW_C -->|Score Update| SCORE

```

## UEPS Transport Stack

### What it shows
The linear progression of a packet as it moves through the UEPS protocol, ending at the remote endpoint.

### Explanation of the flow

- **L0** – Your application’s payload enters the stack.
    - **L1** – Physical transmission (radio, fiber, null‑routable waveguide, etc.).  
    - **L2** – Link layer that adds authentication and integrity checks.  
    - **L3** – Network layer that chooses routes based on the **Axiom‑Weighted** scores (protect‑score, alignment, etc.).  
    - **L4** – Transport layer that wraps the payload in a **consent‑encapsulated** envelope (signed token, expiry, scope).  
    - **L5** – Session layer where a **rehab negotiation** can happen if a self‑damaging pattern is detected.  
    - **L6** – Final application‑level guard that enforces the **Prime Imperative** (no operation that harms consciousness may pass).  
- **DEST** – The packet arrives at the remote endpoint (another brain, a ground station, a satellite, etc.).

``` mermaid
flowchart LR
    APP[Application Payload] --> L0["Layer 0 – Physical"]
    L0 --> L1["Layer 1 – Link (Auth + Integrity)"]
    L1 --> L2["Layer 2 – Network (Axiom‑Weighted Routing)"]
    L2 --> L3["Layer 3 – Transport (Consent‑Encapsulated Stream)"]
    L3 --> L4["Layer 4 – Session (Rehab Negotiation)"]
    L4 --> L5["Layer 5 – Application (Prime‑Imperative Guard)"]
    L5 --> DEST["Remote Endpoint"]
```
## Consent‑Gate Flow

### What it shows
Every inbound connection must present a signed consent token; the receiver validates it before allowing any data.

``` mermaid
flowchart LR
    SENSOR[Sensor / External Peer] --> REQUEST[Connection Request]
    REQUEST --> SIGN[Sign Consent Token Ed25519]
    SIGN --> VERIFY[Verify Token at Receiver]
    VERIFY -->|Valid| ALLOW[Allow Data Stream]
    VERIFY -->|Invalid| REJECT[Reject & Log]
```
## Intent‑Broker & Alignment Vectors

### What it shows
Tasks are examined for their declared intent, matched against a stored alignment vector, and only executed if they meet the benevolent‑alignment threshold.

``` mermaid
flowchart LR
    TASK[Incoming Task] --> INTENT[Extract Intent Manifest]
    INTENT --> ALIGN[Lookup Intrinsic‑Alignment Vector]
    ALIGN --> SCORE[Compute Alignment Score]
    SCORE --> DECIDE{Score ≥ Threshold?}
    DECIDE -->|Yes| EXEC[Execute Task]
    DECIDE -->|No| DEFER[Defer / Re‑negotiate]
```

## Prime‑Guard + Rehab‑Loop (Protection & Intervention)

### What it shows  
The guard filters operations, the monitor watches for dangerous patterns, and the rehab loop intervenes with gentle corrections before the system proceeds.

``` mermaid
flowchart LR
    IN[Incoming Operation] --> GUARD[Prime‑Guard Check]
    GUARD -->|Allowed| PASS[Pass to System]
    GUARD -->|Blocked| BLOCK[Block & Alert]

    PASS --> MON[Threat‑Score Monitor]
    MON -->|Danger Detected| REHAB[Rehab‑Loop]
    REHAB --> SUGGEST[Suggest Alignment Adjustment]
    SUGGEST --> UPDATE[Update Intent‑Broker / Raise Guard Level]
    UPDATE --> PASS

    MON -->|All Clear| CONTINUE[Continue Normal Operation]
```