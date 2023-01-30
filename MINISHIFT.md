# Foliage Control Plane
## Minishift deploy Stack

```
git clone https://github.com/foliagecp/foliage

# arangodb
oc apply -f minishift/arangodb/storages.yaml
oc apply -f minishift/arangodb/services.yaml
oc apply -f minishift/arangodb/deployments.yaml

# cmdb
oc apply -f minishift/cmdb/services.yaml
oc apply -f minishift/cmdb/deployments.yaml

# proxy
oc apply -f minishift/proxy/services.yaml
oc apply -f minishift/proxy/deployments.yaml

# kafka
oc apply -f minishift/kafka/strimzi-cluster-operator-0.15.0.yaml
oc apply -f minishift/kafka/kafka.yaml

# jobmanager
oc apply -f minishift/jobmanager/storages.yaml
oc apply -f minishift/jobmanager/services.yaml
oc apply -f minishift/jobmanager/deployments.yaml

# taskmanager
oc apply -f minishift/taskmanager/storages.yaml
oc apply -f minishift/taskmanager/deployments.yaml
```

## Test stack
```
* install  [qdsl](https://github.com/foliagecp/cmdb/releases/tag/v0.1.1)

export CMDB_ADDR=$(minishift_ip)
# oc get service | grep foliage-cmdb-external
export CMDB_PORT=32406

qdsl *.root


git clone https://github.com/foliagecp/go-core
# oc get service | grep kafka-cluster-kafka-external-bootstrap
# executor.New("$(minishift_ip):30329")

go run ./cmd/example/system

```
