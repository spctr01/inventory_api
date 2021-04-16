db = db.getSiblingDB("inventory");
db.inv.drop();

db.inv.insertMany([
    {
        "id": 1,
        "name": "Monitor",
        "issue": "",
        "available": "Yes",
        "return": "",
        "access_req":""
    },
    {
        "id": 2,
        "name": "Keyboard",
        "issue": "Emp_1",
        "available": "No",
        "return": "",
        "access_req":""
    },
    {
        "id": 3,
        "name": "Headset",
        "issue": "",
        "available": "No",
        "return": "",
        "access_req":"Emp_2"
    },
    {
        "id": 4,
        "name": "Dell_Monitor",
        "issue": "",
        "available": "Yes",
        "return": "",
        "access_req":""
    },
    {
        "id": 5,
        "name": "Laptop_456",
        "issue": "",
        "available": "Yes",
        "return": "",
        "access_req":"Emp_2"
    },
    {
        "id": 6,
        "name": "wireless_mouse",
        "issue": "Emp_5",
        "available": "No",
        "return": "Yes",
        "access_req":""
    },
]);