<picture> <source media="(prefers-color-scheme: dark)" srcset="https://i.imgur.com/GPicfvr.jpeg"> <source media="(prefers-color-scheme: light)" srcset="https://i.imgur.com/GPicfvr.jpeg"> <img alt="README image" src="https://i.imgur.com/GPicfvr.jpeg"> </picture>

## Postmortem: Web Stack Outage Incident

### Issue Summary:

* Duration:
    * Start Time: March 8, 2024, 10:45 AM (UTC)
    * End Time: March 8, 2024, 2:30 PM (UTC)
* Impact:
    * The outage affected the core functionality of our e-commerce platform, leading to a 30% decrease in user engagement and a significant drop in successful transactions.
* Root Cause:
    * A misconfiguration in the load balancer settings resulted in an overload of traffic on one server, causing a bottleneck and subsequent service degradation.

### Timeline:

* Detection:
    * 10:45 AM - Monitoring alerts indicated a sudden spike in server response times.
    * 10:50 AM - Engineers were automatically notified of the anomaly.
* Actions Taken:
    * 11:00 AM - Initial investigation focused on database performance and external API calls.
    * 11:30 AM - Assumed the issue might be related to a recent code deployment, rolled back changes, but no improvement.
    * 12:00 PM - Engaged the network team to investigate potential issues with DNS resolution.
* Misleading Paths:
    * Initial assumption that the problem stemmed from database performance led to unnecessary rollback of recent code changes.
    * A brief exploration of potential DNS issues diverted attention from the actual root cause.
* Escalation:
    * 12:30 PM - Incident escalated to senior backend engineers and the DevOps team.
    * 1:00 PM - Communication sent to executive leadership about the ongoing incident.
* Resolution:
    * 2:00 PM - Discovered misconfiguration in load balancer settings causing uneven distribution of traffic.
    * 2:30 PM - Load balancer settings were corrected, and normal server traffic distribution restored.

### Root Cause and Resolution:

* Root Cause:
    * The misconfiguration in the load balancer resulted in an uneven distribution of incoming requests, overloading one server while others remained underutilized.
* Resolution:
    * Corrected load balancer settings to evenly distribute traffic across servers.
    * Implemented additional monitoring checks to detect similar misconfigurations promptly.

### Corrective and Preventative Measures:

* Improvements/Fixes:
    * Enhance load balancer configuration management to prevent similar misconfigurations.
    * Implement automated testing of load balancer settings during deployment processes.
* Tasks:
    * Conduct a thorough review of load balancer configurations across all environments.
    * Establish a documentation update to include load balancer best practices.
    * Schedule regular training sessions for the operations team on load balancer management.
    * Enhance monitoring alerts for load balancer performance and configuration changes.

### Conclusion:

This outage was primarily caused by a misconfiguration oversight in the load balancer settings, leading to service degradation and a noticeable impact on user engagement. By promptly identifying and addressing the root cause, we were able to restore normal service functionality within a reasonable timeframe. Moving forward, we are committed to implementing preventative measures to ensure the robustness and reliability of our web stack, minimizing the risk of similar incidents in the future.
