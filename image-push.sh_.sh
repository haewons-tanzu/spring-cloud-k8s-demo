#!/bin/sh

#docker login tanzukorea.azurecr.io --username tanzukorea -p oNvli21h+vbc1J=/UWfnUazHTjoDKE4=

docker tag gateway:1.0-SNAPSHOT tanzukorea.azurecr.io/spring-cloud-k8s-demo/gateway:1.0-SNAPSHOT
docker tag hot-deals:1.0-SNAPSHOT tanzukorea.azurecr.io/spring-cloud-k8s-demo/hot-deals:1.0-SNAPSHOT
docker tag toys-bestseller:1.0-SNAPSHOT tanzukorea.azurecr.io/spring-cloud-k8s-demo/toys-bestseller:1.0-SNAPSHOT
docker tag fashion-bestseller:1.0-SNAPSHOT tanzukorea.azurecr.io/spring-cloud-k8s-demo/fashion-bestseller:1.0-SNAPSHOT

docker push tanzukorea.azurecr.io/spring-cloud-k8s-demo/gateway:1.0-SNAPSHOT
docker push tanzukorea.azurecr.io/spring-cloud-k8s-demo/hot-deals:1.0-SNAPSHOT
docker push tanzukorea.azurecr.io/spring-cloud-k8s-demo/toys-bestseller:1.0-SNAPSHOT
docker push tanzukorea.azurecr.io/spring-cloud-k8s-demo/fashion-bestseller:1.0-SNAPSHOT


#docker login --username AWS -p $(aws ecr get-login-password --region ap-southeast-1) 698489875176.dkr.ecr.ap-southeast-1.amazonaws.com

#docker tag gateway:1.0-SNAPSHOT 698489875176.dkr.ecr.ap-southeast-1.amazonaws.com/gateway:1.0-SNAPSHOT
#docker tag hot-deals:1.0-SNAPSHOT 698489875176.dkr.ecr.ap-southeast-1.amazonaws.com/hot-deals:1.0-SNAPSHOT
#docker tag toys-bestseller:1.0-SNAPSHOT 698489875176.dkr.ecr.ap-southeast-1.amazonaws.com/toys-bestseller:1.0-SNAPSHOT
#docker tag fashion-bestseller:1.0-SNAPSHOT 698489875176.dkr.ecr.ap-southeast-1.amazonaws.com/fashion-bestseller:1.0-SNAPSHOT

#docker push 698489875176.dkr.ecr.ap-southeast-1.amazonaws.com/gateway:1.0-SNAPSHOT
#docker push 698489875176.dkr.ecr.ap-southeast-1.amazonaws.com/hot-deals:1.0-SNAPSHOT
#docker push 698489875176.dkr.ecr.ap-southeast-1.amazonaws.com/toys-bestseller:1.0-SNAPSHOT
#docker push 698489875176.dkr.ecr.ap-southeast-1.amazonaws.com/fashion-bestseller:1.0-SNAPSHOT

#docker image prune -a -f
#docker images

#kubectl create secret docker-registry regcred --docker-server=698489875176.dkr.ecr.ap-southeast-1.amazonaws.com --docker-username=AWS --docker-password=$(aws ecr get-login-password --region ap-southeast-1)
#kubectl create secret generic regcred --from-file=.dockerconfigjson=/Users/hshin/.docker/config.json --type=kubernetes.io/dockerconfigjson
#tanzu secret registry add regcred --server 698489875176.dkr.ecr.ap-southeast-1.amazonaws.com --username AWS --password $(aws ecr get-login-password --region ap-southeast-1) --export-to-all-namespaces -n default

#kubectl get secret regcred --output=yaml
#kubectl get secret regcred --output="jsonpath={.data.\.dockerconfigjson}" | base64 --decode