# Local deploy Stack
## 1 Step (Clone it)
```
git clone https://github.com/foliagecp/foliage
```

## 2 Step (Download io/core)
* download  [io.jar](https://github.com/foliagecp/io/packages/1779825) to foliage/flink/modules/io/io.jar
* download  [core.jar](https://github.com/foliagecp/core/packages/1779864) to foliage/flink/modules/core/core.jar

## 3 Step (Deploy stack)
```
# replace ${hostname} to your hostname eg 'MacBook-Pro.local'
# in file 'flink/modules/proxy/module.yml'

# add '127.0.0.1 kafka' to /etc/hosts

docker-compose up -d
```

## 5 Step (Test stack)
```
* install  [qdsl](https://github.com/foliagecp/cmdb/releases/tag/v0.1.1)
qdsl *.root

git clone https://github.com/foliagecp/go-core
go run ./cmd/example/system

```
