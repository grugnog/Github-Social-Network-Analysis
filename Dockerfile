FROM python:2.7.16-stretch

RUN pip install networkx==1.11 git+https://github.com/isouza-daitan/PyGithub.git@retry_feature
COPY . /usr/src/app
RUN mkdir /usr/src/out
WORKDIR /usr/src/out
CMD [ "python", "/usr/src/app/organization_repositories_social_mining_weighted.py" ]