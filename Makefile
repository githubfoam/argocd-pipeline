IMAGE := alpine/fio
APP:="app/deploy-openesb.sh"

deploy-kubectl-testing:
	bash app/deploy-kubectl-testing.sh

deploy-minikube-kubectl-helm-latest:
	bash platform/deploy-minikube-kubectl-helm-latest.sh

deploy-argocd:
	bash app/deploy-argocd.sh

provision-helm:
	bash platform/provision-helm.sh

provision-kubectl:
	bash platform/provision-kubectl.sh

provision-minikube:
	bash platform/provision-minikube.sh

deploy-minikube-latest:
	bash platform/deploy-minikube_latest.sh

deploy-minikube:
	bash platform/deploy-minikube.sh

deploy-kind:
	bash platform/deploy-kind.sh

push-image:
	docker push $(IMAGE)
.PHONY: deploy-openesb deploy-dashboard push-image
