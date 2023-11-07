helm repo add opensearch https://opensearch-project.github.io/helm-charts/
kubectl create ns opensearch
helm upgrade --install opensearch ./opensearch -n opensearch
helm upgrade --install opensearch-dashboards ./opensearch-dashboards -n opensearch
#helm repo add vector https://helm.vector.dev
#helm upgrade --install vector ./vector -n opensearch1
helm repo add fluent https://fluent.github.io/helm-charts
helm upgrade --install fluent-bit ./fluent-bit -n opensearch

kubectl -n opensearch create secret generic opensearchpass \
--from-literal=username=admin \
--from-literal=password=admin