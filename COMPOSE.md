# Foliage Control Plane
## Local deploy Stack
```
git clone https://github.com/foliagecp/foliage

cp .env.example .env

docker-compose up -d
```

## Test stack
```
* install  [qdsl](https://github.com/foliagecp/cmdb/releases/tag/v0.1.1)
qdsl *.root

export KAFKA_ADDR=127.0.0.1:9094
git clone https://github.com/foliagecp/go-core
go run ./cmd/example/system

```
