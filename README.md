# Terraform S3 Backend

Este projeto Terraform provisiona um bucket S3 na AWS para ser utilizado como backend remoto para armazenar o estado do Terraform.

## Pré-requisitos

- [Terraform](https://www.terraform.io/downloads.html) >= 1.0
- Conta AWS com permissões para criar recursos S3 e DynamoDB
- Credenciais AWS configuradas (via `~/.aws/credentials`, variáveis de ambiente ou `aws configure`)

## Recursos Criados

- Bucket S3 para armazenar o state

## Estrutura

```
terraform/
├── main.tf
├── variables.tf
├── s3.tf (exemplo de uso do backend)
```

## Variáveis

| Nome              | Descrição                                    | Tipo    | Default         |
|-------------------|-----------------------------------------------|---------|------------------|
| `bucket_name`     | Nome do bucket S3                             | string  | n/a (obrigatório) |
| `region`          | Região AWS onde criar os recursos             | string  | `"us-east-1"`     |

## Uso

```hcl
module "s3_backend" {
  source          = "./terraform"
  bucket_name     = "meu-bucket-terraform-state"
  region          = "us-east-1"
  enable_dynamodb = true
}
```

## Comandos

```bash
# Inicializar e aplicar o módulo
terraform init
terraform apply

# Após os recursos criados, configurar o backend remoto
terraform init -reconfigure
```

## Avisos

- O módulo deve ser aplicado uma vez localmente para criar os recursos de backend.
- Após o backend remoto estar configurado, o state será armazenado no S3 automaticamente.
- Use `-reconfigure` ao mudar para backend remoto.

## Licença

MIT