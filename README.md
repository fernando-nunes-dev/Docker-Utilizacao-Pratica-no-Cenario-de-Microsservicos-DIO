# Docker-Utilizacao-Pratica-no-Cenario-de-Microsservicos-DIO

# Microsserviços com Docker Swarm

Projeto demonstrando a implementação de microsserviços em um cluster Docker Swarm.

## Funcionalidades

- Cluster Docker Swarm
- MySQL containerizado com volume persistente
- API escalável com 3 réplicas
- Nginx como proxy reverso
- Testes de estresse automatizados

## Como Executar

1. Inicialize o cluster:
```bash
chmod +x swarm-init.sh
./swarm-init.sh
```

2. Execute os testes:
```bash
chmod +x stress-test.sh
./stress-test.sh
```

Melhorias Implementadas
Automação da criação do cluster

Configuração de políticas de deploy

Monitoramento durante os testes

Documentação completa


### 8. Deploy na AWS (Opcional)

```bash
# Criar instâncias EC2 com Docker pré-instalado
aws ec2 run-instances \
    --image-id ami-0abcdef1234567890 \
    --count 3 \
    --instance-type t2.medium \
    --key-name minha-chave \
    --security-group-ids sg-0123456789abcdef \
    --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=swarm-node}]'
```
