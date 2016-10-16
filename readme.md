AroundApp Flask Service
=====================
----------


### How to run it locally
-------------------
#### Prerequisite
> - Install [**Virtual Box**][2]
> - Install [**Docker**][1]

#### Clone the repository
```
$ git clone https://github.com/aroundapp/aroundflask.git
```

#### Build the docker image
```
$ cd aroundflask
$ docker build -t aroundapp:v1 .
```

#### Run the docker container
```
$ docker run -d -p 8081:5000 aroundapp:v1 python aroundapp/run.py
```
> - **Note :**  You can change **8081** to any port you want the service to be available at.


### How to update the code base
-------------------
#### Pull the latest code
```
$ git pull origin master
```

#### Update the running container
```
$ ./update_container.sh
```

[1]: https://docs.docker.com/
[2]: https://www.virtualbox.org/
