kubectl create ns minio
helm upgrade --install minio ./minio -n minio