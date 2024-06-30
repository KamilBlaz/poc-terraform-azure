
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
