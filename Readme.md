# Ambiente Delta/Spark

Este projeto cria um ambiente local para desenvolvimento e testes com **Apache Spark**, **Delta Lake**, **MinIO (S3 local)** e **Jupyter Notebook**, usando **Docker Compose**.

Ideal para estudar e testar leitura e escrita de arquivos Delta com Spark, em um bucket S3 local simulado via MinIO.

---

✅ Tecnologias Utilizadas
Jupyter Notebook (pyspark-notebook:spark-3.5.0)
Imagem base com PySpark pré-instalado, usada como ambiente interativo para testes com Spark.

Apache Spark 3.5.0
Motor de processamento distribuído usado para análise e transformação de dados.

Delta Lake 3.2.0 (Scala 2.12)
Formato de armazenamento transacional otimizado para grandes volumes de dados com suporte a ACID.

MinIO (latest)
Serviço de armazenamento compatível com S3 para uso local, simulando um bucket da AWS.

Hadoop AWS 3.3.4
Conector usado pelo Spark para acessar sistemas de arquivos compatíveis com S3 via fs.s3a.

AWS Java SDK 1.12.262
Dependência necessária para comunicação entre o Hadoop e serviços compatíveis com S3.

Docker (versão 20 ou superior)
Plataforma de contêineres usada para empacotar e executar os serviços.

Docker Compose (versão 1.29 ou superior)
Ferramenta para orquestrar múltiplos contêineres (Jupyter, Spark e MinIO) com um único comando.


## 🚀 Como subir o ambiente

docker-compose up --build

Isso criará os serviços: notebook, minio, e spark.

🧭 Como acessar o projeto

Acessar o Jupyter Notebook
Navegue até: http://localhost:8888

Abra um novo terminal (sem parar o ambiente) e execute:

docker-compose logs notebook

Procure por uma linha parecida com esta no log:
http://127.0.0.1:8888/?token=abc123def456...
Essa URL contém o token de acesso. Copie o conteudo a partir de token=

🪣 Como criar um bucket no MinIO
Acesse http://localhost:9001

Clique em "Create Bucket"

Nomeie como: meu-bucket (ou outro nome que preferir)

Use este nome nos caminhos do Spark com s3a://meu-bucket/


🔐 Segurança
Este ambiente é projetado para uso local apenas. Para facilitar as senhas estão em hardcode (Não replicar em ambientes de produção)



