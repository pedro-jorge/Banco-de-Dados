## Projeto final da disciplina de Banco de Dados

O arquivo `data_cleaning.ipynb` é um notebook que abre o dado original da Netflix, `netflix_titles.csv` e o separa em diversos DataFrames, visando separar as features e formar um banco de dados relacional.
O arquivo `insert_on_db.ipynb` pega todos dos DataFrames gerados e os adiciona em um banco de dados no MySQL.

`data_cleaning.ipynb`:
- limpa os dados
- separa a tabela inicial em tabelas menores mas criando as relações
- salva todas essas tabelas em arquivos `.csv`

`insert_on_db.ipynb`:
- abre cada um dos arquivos `.csv` gerados anteriormente
- insere cada dado desses arquivos no banco de dados relacional