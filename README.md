# tenserflow-gpu

Dockerfileのビルド
```
docker build . -t mnist
```

コンテナの生成
```
docker run --runtime=nvidia --rm -it mnist
```
