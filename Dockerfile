FROM python:3.10

WORKDIR /pytest_template

COPY ./Test_dir Tests/

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

VOLUME ["/pytest_template/allure-results"]

CMD [ "pytest", "-v" , "-s", "--alluredir", "allure-results", "Tests"]