
AZURE_APP:=terraform_app
# Login to Azure
az-login:
	az login

prerequisites:
	az account set --subscription $(AZURE_SUBSCRIPTION_ID)
	az account show

get_tenant_id:
	az account show --query tenantId -o tsv

get_client_id:
	az ad sp list --display-name ${AZURE_APP} --query '[].{ClientID:appId}' --output table

create_sp:
	az ad sp create-for-rbac --name ${AZURE_APP} --query password -o tsv


state-init:
	bash -c 'cd remote-state && \
    terraform init -backend-config=../backend.auto.tfvars'

state-apply:
	bash -c 'cd remote-state && \
    terraform apply -var-file=../backend.auto.tfvars'

state-destroy:
	bash -c 'cd remote-state && \
    terraform destroy -var-file=../backend.auto.tfvars'