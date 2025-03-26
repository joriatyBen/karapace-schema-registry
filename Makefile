.ONESHELL:
SHELL := bash

K := kubectl
CLUSTER_NAMESPACE := <your namespace>

.PHONY: install-registry

install-registry:
	$(K) apply -n $(CLUSTER_NAMESPACE) -f karapace-schema-registry.yaml