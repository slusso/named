Run ISC named in Docker container
=================================

Run the ISC named daemon in centos7  


### Prerequisites

Make sure you have a `</netservices/BIND>`  owned by `<named:named>` (`<25:25>`)


### Build

```
docker build -t isc-bind .
```

### Run 

Run detached:

```
docker run -d  --net=host -v /netservices/BIND/etc/:/etc/named  --name named isc-bind:latest
```


