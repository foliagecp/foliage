# Foliage Control Plane
## Local deploy Stack
```
git clone https://github.com/foliagecp/foliage

# replace ${hostname} to your hostname eg 'MacBook-Pro.local'
# in file 'flink/modules/proxy/module.yml'

# add '127.0.0.1 kafka' to /etc/hosts

docker-compose up -d
```

## Test stack
```
* install  [qdsl](https://github.com/foliagecp/cmdb/releases/tag/v0.1.1)
qdsl *.root

git clone https://github.com/foliagecp/go-core
go run ./cmd/example/system

```
