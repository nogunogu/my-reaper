# my-reaper


1. Create a keyspace for Cassandra Reaper like below:
```
CREATE KEYSPACE reaper_db WITH replication = {'class': 'NetworkTopologyStrategy', 'jpdc': 3, 'usdc': 2};
```

1. Set attributes like below:
```
{
  "reaper": {
    "cassandra": {
      "clusterName": "Prod Cluster",
      "contactPoints": [
        "10.122.0.2"
      ]
    },
    "conf": {
      "storageType": "cassandra",
      "datacenterAvailability": "EACH"
    },
    "jmx": {
      "auth_enabled": true,
      "ports_mapping": {
        "10.122.0.2": 7199,
        "10.122.0.3": 7199
      }
    }
  }
}
```
