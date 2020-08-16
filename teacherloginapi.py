from flask import Flask, request
from flask_restful import Api, Resource

app = Flask(__name__)
api = Api(app)

logins = {"teacher1" : "password1",
        "teacher2" : "password2",
        "teacher3" : "password3"}

class Login(Resource):
    def post(self):
        if request.json['username'] in logins.keys() and request.json['password'] in logins.values():
            return {"Status" : 'Success'}
        else:
            return {"Status" : "Failure"}

api.add_resource(Login,"/login")

if __name__ == '__main__':
    app.run(debug = True)
