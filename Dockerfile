FROM robotframework/rfdocker
MAINTAINER swan  <info@squareflakes.com>
COPY . /app
WORKDIR /app
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
ENTRYPOINT robot -d results Tests/Facade/SolutionCenterApi.robot
