


### API endpoint
```
read :  Student view available list of equipments
        & manager view availabe/issued pieces of equipments     
access :  request access of the equipment
req_access :  view access requested by employees
return :  issue and return a equipment


```

## Installation and Usage
Download this repository  install docker and docker compose then  cd into this repo and run

```
docker-compose up 
```
### Usage
After running the above command  open the link : http://localhost:5000/

 Examples:-
```
1: read (end point ):http://localhost:5000/read/1
                     http://localhost:5000/2
                     
 [access, req_access] uses POST method and accept data as json
 

```
In the below images Postman is used to test the api [ any other method  can be used to test the api]
![alt text](https://github.com/spctr01/inventory_api/blob/main/2.jpg)

---------------------------

![alt text](https://github.com/spctr01/inventory_api/blob/main/inv.jpg)

