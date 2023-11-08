kubectl create ns kafka
helm upgrade --install zookeeper ./zookeeper -n kafka
