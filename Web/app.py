
import os
from flask import Flask, request, jsonify
from flask_sqlalchemy import SQLAlchemy
from flask_migrate import Migrate
from flask_restful import Resource, Api
import json
# from flask_mail import Mail

app = Flask(__name__)
app.config['SECRET_KEY'] = 'assembler'

basedir = os.path.abspath(os.path.dirname(__file__))
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///' + \
    os.path.join(basedir, 'data.sqlite')
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
# app.config['DEBUG'] = True
# app.config['MAIL_SERVER'] = 'smtp.gmail.com'
# app.config['MAIL_PORT'] = 587
# app.config['MAIL_USE_TLS'] = True
# app.config['MAIL_USERNAME'] = 'kay1872k@gmail.com'
# app.config['MAIL_PASSWORD'] = 'KayJashnani18k'
# app.config['MAIL_DEFAULT_SENDER'] = 'kay1872k@gmail.com'
# app.config['MAIL_ASCII_ATTACHMENTS'] = False
# app.config['MAIL_MAX_EMAILS'] = None


db = SQLAlchemy(app)
Migrate(app, db)
# mail = Mail(app)

# from flask_login import LoginManager
# login_manager = LoginManager()
# login_manager.init_app(app)
# login_manager.login_view = 'doctors.login'

#from kindlycare.users.views import users
# from kindlycare.core.views import core
# from kindlycare.hospitals.views import hospitals
# from kindlycare.doctors.views import doctors

# app.register_blueprint(core)
# #app.register_blueprint(users)
# app.register_blueprint(hospitals)
# app.register_blueprint(doctors)

from datetime import datetime

# relate = db.Table('relate',
#         db.Column('doctor_id', db.Integer, db.ForeignKey('doctors.id')),
#         db.Column('hospital_id', db.Integer, db.ForeignKey('hospital.id')))

########### MODELS ##########

class Teacher(db.Model):
    __tablename__ = 'teacher'
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(100), nullable=False)
    username = db.Column(db.String(50), nullable=False)
    password = db.Column(db.Text, nullable=False)
    student_teacher = db.relationship('StudentTeacher', backref='teacherid', lazy=True)
    #services = db.Column(db.ARRAY(String))

    def __init__(self,name,username,password):
        self.name = name
        self.username = username
        self.password = password

    def __repr__(self):
        return f"Teacher Name is : {self.name}"




class StudentTeacher(db.Model):
    __tablename__ = 'studentteacher'
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(20), nullable=False)
    teacher_name = db.Column(db.String(20), db.ForeignKey('teacher.username'),nullable=False)
    session_image = db.Column(db.String(64), default='default_image.jpg')
    comments = db.Column(db.Text, nullable=False)
    availability_of_materials = db.Column(db.Integer, nullable=False)
    leadership = db.Column(db.Integer, nullable=False)
    confidence = db.Column(db.Integer, nullable=False)
    date = db.Column(db.DateTime, nullable=False, default=datetime.utcnow)

    

    def __init__(self, name, teacher_name, comments, availability_of_materials, leadership, confidence):
        self.name = name
        self.teacher_name = teacher_name
        self.comments = comments
        self.availability_of_materials = availability_of_materials
        self.leadership = leadership
        self.confidence = confidence
     

    # def __repr__(self):
    #     return f"Student  : {self.name}"

# db.session.add(Teacher('Rishi','teacher1','abcd'))
# db.session.commit()

# logins = {"teacher1" : "password1",
#         "teacher2" : "password2",
#         "teacher3" : "password3"}

class Login(Resource):
    def post(self):
        if Teacher.query.filter_by(username=request.json['username']).first().password == request.json['password']:
            return {"Status" : 'Success'}
        else:
            return {"Status" : "Failure"}



class TeacherApi(Resource):
    def post(self, username):
        data = request.get_json()
        print(data['name'], data['username'], data['comments'], data['availabilty'], data['leadership'], data['confidence'])
        student_teacher = StudentTeacher(
            data['name'], data['username'], data['comments'], data['availabilty'], data['leadership'], data['confidence'])
        db.session.add(student_teacher)
        db.session.commit()

        return {'message':'Student Teacher created successfully'}

    def get(self,username):
        teacher = Teacher.query.filter_by(username=username).first()
        student = StudentTeacher.query.filter_by(teacher_name=username).all()
        # student = StudentTeacher.query.get(1)
        print(student)
        student_data = []
        for i in range(len(student)):
            student_data.append({'name':student[i].name,
        'teacher_name' : student[i].teacher_name,
        'comments' : student[i].comments,
        'availability_of_materials' : student[i].availability_of_materials,
        'leadership' : student[i].leadership,
        'confidence' : student[i].confidence})
        
        if not teacher:
            return {'message': 'No teacher found!'}
        # student_data = {}
        # student_data['name'] = student.name
        # student_data['confidence'] = student.confidence
        
        user_data = {}
        user_data['name'] = teacher.name
        user_data['username'] = teacher.username

        return {'teacher': user_data,'student': student_data}

api = Api(app)

api.add_resource(Login,"/login")
api.add_resource(TeacherApi, '/teacher/<string:username>')

if __name__ == "__main__":
    app.run(debug=True)
