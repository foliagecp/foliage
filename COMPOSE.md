# Foliage Control Plane
## Local deploy Stack
```
git clone https://github.com/foliagecp/foliage

cp .env.example .env

# you will set node hostname (HOSTNAME=$HOSTNAME) or node ip  (HOSTNAME=192.168.0.10)
HOSTNAME=$HOSTNAME docker compose up -d
```

## Test stack
### install [qdsl](https://github.com/foliagecp/cmdb/releases/latest)
```
export CMDB_ADDR=$HOSTNAME

qdsl *.root

export KAFKA_ADDR=$HOSTNAME:9094
git clone https://github.com/foliagecp/go-core
go run ./cmd/example/system

```
