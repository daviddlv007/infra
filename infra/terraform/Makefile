TF_DIR := .

# Key pair a usar
KEY := ~/.ssh/dev-key.pem

# Inicializar Terraform
init:
	terraform -chdir=$(TF_DIR) init

# Planificar cambios
plan:
	terraform -chdir=$(TF_DIR) plan -var="key_name=dev-key"

# Aplicar cambios automáticamente
apply:
	terraform -chdir=$(TF_DIR) apply -var="key_name=dev-key" -auto-approve

# Destruir infraestructura automáticamente
destroy:
	terraform -chdir=$(TF_DIR) destroy -var="key_name=dev-key" -auto-approve

# Obtener la IP pública de la EC2
public_ip:
	@terraform -chdir=$(TF_DIR) output -raw public_ip

# Conectarse vía SSH a la EC2
ssh: public_ip
	ssh -i $(KEY) ec2-user@$$(terraform -chdir=$(TF_DIR) output -raw public_ip)
