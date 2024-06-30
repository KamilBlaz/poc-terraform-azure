

# Login to Azure
az-login:
	az login


#az ad app create --display-name terraform_app
#az ad sp create --id Client_id
az account show --query tenantId -o tsv

az ad sp list --display-name terraform_app --query '[].{ClientID:appId}' --output table

#Create a service principal and get the client id and secret
az ad sp create-for-rbac --name app_name --query password -o tsv