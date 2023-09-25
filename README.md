# treinamento_dbt
Treinamento dbt

## Preparando ambiente

### Virtual env do python
```
python3 -m venv venv
cd venv
source bin/activate
```

### Instalação do pacote dbt-bigquery
```
pip install dbt-bigquery
```
### Iniciando um novo projeto
```
dbt init [NOME_DO_SEU_PROJETO]
```

Ao executar o dbt init, seguido do nome do seu projeto, a cli fará algumas perguntas para montar a conexão com o seu banco. 
Após, o processo de criação do projeto ser filizado, será criado um arquivo chamado profiles.yml. Você pode acessar e editar 
esse arquivo no seguinte diretório
```
vi ~/.dbt.profiles.yml
```
