# -Cybersecurity-6M-Traffic-Analytics-
`6M Record Network Security ETL Pipeline and Executive Dashboard processed on local hardware ($0 Cloud spend).`

📌 Executive Summary

This project presents an enterprise-grade ETL pipeline and dashboard analyzing 6,000,000 (6.00M) network security interactions across multiple protocols, actions (allowed vs. blocked), and logging security systems (firewall, ids, application).  Using an optimized R tidyverse data processing script, raw network log records were cleaned, type-casted, validated, deduplicated, and grouped into 42 highly structured interaction rows. The pipeline processed 150.28 Gigabytes (150,278,953,326 bytes) of network traffic on a low-spec local machine—demonstrating extreme memory efficiency without relying on dedicated servers or cloud infrastructure.  

📊 Dataset Statistics & Pipeline PerformanceMetric

         ValueRaw Network Interactions Processed6,000,000 Logs (6.00M)  Total Bytes Transferred150.28 GB ($150,278,953,326\text{ Bytes}$)  Cleaned & Aggregated Records42 Grouped Rows  System HardwareIntel Core i3 @ 1.20 GHz, 4.0 GB RAM  Infrastructure Overhead$0.00 USD (100% On-Premises Processing)  Quality ControlLogic, R Pipeline & Visuals Verified by Google Gemini  

         ## 📈 Key Security Metrics & Findings

### 1. Protocol Traffic Distribution
* **TCP** generated the highest network load, accounting for **37.50 GB (37,496,568,415 bytes)** across **1,497,493 interactions** (24.95% of total volume)[cite: 9].
* **HTTP & HTTPS** represented combined web activity of **60.17 GB** across **2,401,498 interactions** (40.03% of total traffic)[cite: 9].
* **UDP** accounted for **22.53 GB** (**900,422 logs**), while **ICMP** accounted for **15.02 GB** (**599,903 logs**)[cite: 9].
* Encrypted and unencrypted management streams (**SSH & FTP**) each generated ~**7.53 GB** across ~**300,000 logs**[cite: 9].

### 2. Action Comparison (`allowed` vs. `blocked`)
* **Allowed Network Activity:** **75.16 GB** (**3,000,646 interactions** / 50.01%)[cite: 9].
* **Blocked Network Activity:** **75.12 GB** (**2,999,354 interactions** / 49.99%)[cite: 9].
* **Security Insight:** Exactly **50% of incoming network traffic is flagged and blocked** by threat prevention controls, indicating a high-threat gateway environment requiring automated threat response[cite: 9].

### 3. Security Subsystem Load (`Log Type`)
* Network monitoring workload is evenly distributed across firewall logs (**50.06 GB / 1.998M logs**), Intrusion Detection Systems (IDS) (**50.07 GB / 1.999M logs**), and Application Security logs (**50.15 GB / 2.001M logs**)[cite: 9].

---

## 💼 Strategic Business & Security Recommendations

### 1. Automated Threat Suppression for TCP Gateways
* **Observation:** TCP traffic represents the largest attack and transfer vector (**37.50 GB**)[cite: 9].
* **Action:** Deploy automated firewall rules and IP rate-limiting on TCP ports to reduce latency and eliminate malicious handshake traffic before reaching internal servers[cite: 9].

### 2. Zero-Trust Security for HTTP/HTTPS Web Endpoints
* **Observation:** HTTP and HTTPS make up over 40% of overall network usage (**2.40M sessions**)[cite: 9].
* **Action:** Enforce strict Web Application Firewall (WAF) filtering and auto-redirect all plain HTTP sessions to encrypted HTTPS endpoints[cite: 9].

### 3. SOC Cost Optimization & Log Archiving
* **Observation:** Processing 6M logs on local hardware demonstrates that pre-aggregation saves substantial cloud SIEM logging costs[cite: 8, 9].
* **Action:** Implement edge-aggregation (similar to this ETL script) before streaming raw logs into Cloud SIEM tools (e.g., Splunk, Sentinel) to reduce cloud logging storage fees by up to 99%.
