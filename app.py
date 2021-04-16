from flask import Flask
import pymongo
import json
from flask import jsonify
from flask import request

app = Flask(__name__)
myclient = pymongo.MongoClient("mongodb://test_mongodb:27017/")
mydb = myclient["inventory"]
collection = mydb["inv"]



@app.route('/',methods =['GET', 'POST'])
def ping_server():
    return "Welcome to invemtory management api"


# returns  the data in database collection
# user 1 and 2 are student and manager respectively (authentication is not used)
@app.route('/read/<int:usr>', methods=['GET'])
def get(usr):
    records = collection.find()
    response = []
    if usr == 1:    #Student view available list of equipments
        response = [{"id": record["id"], "name": record["name"],"available": record["available"]} for record in records if record["available"] == "Yes"]
    if usr == 2:    #manager view availabe/issued pieces of equipments
        response = [{"id": record["id"], "name": record["name"], "issue": record["issue"], "available": record["available"]} for record in records ]
    
    return jsonify({'result':response})


#request access of the equipment
#function enter the name of employ in the "access_req"  who want to acees the eqp. 
@app.route('/access', methods = ['POST'])
def req_access():
    equipment_id = request.json['id']
    emp_name = request.json['name']
    record = collection.find_one({"id":equipment_id})

    if record["available"] =='Yes':
        filter = {'id':equipment_id}
        update = {"$set":{"access_req":emp_name}}
        try:
            collection.update_one(filter,update)
            status = "Access Requested"
        except:
            status = 'Cant Request Access'
    
    return jsonify({'result':status})




#view access requested by employees
@app.route('/access_req', methods = ['GET'])
def access_requested():
    records = collection.find()
    response = []
    response = [{"id": record["id"], "name": record["name"],"available": record["available"],"Requested by": record["access_req"]} for record in records if record["access_req"] != ""]
    return jsonify({'result':response})


#issue and return a equipment
@app.route('/return', methods = ['POST'])
def return_eqp():
    equipment_id = request.json['id']
    emp_name = request.json['name']
    records = collection.find_one({"id":equipment_id})

    if records['return'] =='':
        filter = {'id':equipment_id}
        update = {"$set":{"return":emp_name}}
        collection.update_one(filter,update)
        response = "Return requested"
    else:
        response = 'Return error'
    
    return jsonify({'result':response})
    



if __name__ == '__main__':
    app.run(debug=True,host="0.0.0.0", port=5000)