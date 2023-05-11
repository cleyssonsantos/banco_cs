FROM python:3.11.3-alpine3.17

# Gerenciador de pacotes escolhido
RUN pip install pipenv

# Todo projeto desenvolvido será alocado aqui
WORKDIR /home/python/app
# Isso fará com que ele gere o pipenv em uma pastinha dentro do projeto para facilitar nossa vida em questão de uso na hora da programação, e até para consulta de codigo fonte.
ENV PIPENV_VENV_IN_PROJECT=True

COPY ./app /home/python/app
# Deixar o container rodando eternamente
CMD ["tail", "-f", "/dev/null"]
