# # from kindlycare import db, login_manager
# # from werkzeug.security import generate_password_hash, check_password_hash
# # from flask_login import UserMixin
# from app import db
# from datetime import datetime

# # relate = db.Table('relate',
# #         db.Column('doctor_id', db.Integer, db.ForeignKey('doctors.id')),
# #         db.Column('hospital_id', db.Integer, db.ForeignKey('hospital.id')))


# class Teacher(db.Model):
#     __tablename__ = 'teacher'
#     id = db.Column(db.Integer, primary_key=True)
#     name = db.Column(db.String(100), nullable=False)
#     username = db.Column(db.String(50), nullable=False)
#     password = db.Column(db.Text, nullable=False)
#     # contact_no = db. Column(db.Integer,nullable=False)
#     # address = db.Column(db.Text,nullable=False)
#     doctors_name = db.relationship('StudentTeacher', backref='teacherid')
#     #services = db.Column(db.ARRAY(String))

#     def __repr__(self):
#         return f"Hospital Name is : {self.name}"

# # class Feedback(db.Model):
# #     __tablename__='feedback'
# #     id = db.Column(db.Integer,primary_key=True)
# #     user_name = db.Column(db.String(30),nullable=False)
# #     content = db.Column(db.Text,nullable=False)
# #     rating = db.Column(db.Integer,nullable=False)
# #     hosp_id = db.Column(db.Integer,db.ForeignKey('hospital.id'))

# # @login_manager.user_loader
# # def load_user(doctor_id):
# #     return Doctors.query.get(doctor_id)


# class StudentTeacher(db.Model):
#     __tablename__ = 'studentteacher'
#     id = db.Column(db.Integer, primary_key=True)
#     name = db.Column(db.String(20), nullable=False)
#     teacher_name = db.Column(db.String(20), nullable=False)
#     session_image = db.Column(db.String(64), default='default_image.jpg')
#     comments = db.Column(db.Text, nullable=False)
#     availability_of_materials = db.Column(db.Integer, nullable=False)
#     leadership = db.Column(db.Integer, nullable=False)
#     confidence = db.Column(db.Integer, nullable=False)
#     date = db.Column(db.DateTime, nullable=False, default=datetime.utcnow)

#     # consultation_fees = db.Column(db.Integer, nullable = False)

#     # experience = db.Column(db.Text,nullable = False)
#     # contact_number = db.Column(db.String(10),nullable = False)

#     # address_line_1 = db.Column(db.Text,nullable = False,default='India')
#     # address_line_2 = db.Column(db.Text,nullable = False,default='India')
#     # address_line_3 = db.Column(db.Text,nullable = False,default='India')
#     # reviews = db.relationship('Reviews',backref='doctor')
#     # slots = db.relationship('Slots',backref='doctor')
#     # appointments = db.relationship('Appointments',backref='doctor')
#     # hospitals_name = db.relationship('Hospitals',secondary=relate, backref = db.backref('doctor', lazy = True))

#     def __init__(self, name, username, comments, availability_of_materials, leadership, confidence):
#         self.name = name
#         self.username = username
#         self.comments = comments
#         self.availability_of_materials = availability_of_materials
#         self.leadership = leadership
#         self.confidence = confidence
#         # self.experience = experience
#         # self.contact_number = contact_number
#         # self.description = description
#         # self.address_line_1=address_line_1
#         # self.address_line_2=address_line_2
#         # self.address_line_3=address_line_3

#     # def check_password(self,password):
#     #     return self.password==password

#     def __repr__(self):
#         return f"Name  : {self.name}"

# # class Teacher(db.Model, UserMixin):
# #     __tablename__ = 'teacher'
# #     id = db.Column(db.Integer,primary_key = True)
# #     name = db.Column(db.String(20),nullable = False)
# #     password = db.Column(db.String(20))
# #     username = db.Column(db.String(64),unique = True)
# #     student_teacher_name = db.Column(db.String(50),nullable = False)
# #     specialization = db.Column(db.String(140))
# #     consultation_fees = db.Column(db.Integer, nullable = False)
# #     profile_image = db.Column(db.String(64),default = 'default_image.jpg')
# #     experience = db.Column(db.Text,nullable = False)
# #     contact_number = db.Column(db.String(10),nullable = False)
# #     description = db.Column(db.Text,nullable = False)
# #     address_line_1 = db.Column(db.Text,nullable = False,default='India')
# #     address_line_2 = db.Column(db.Text,nullable = False,default='India')
# #     address_line_3 = db.Column(db.Text,nullable = False,default='India')
# #     reviews = db.relationship('Reviews',backref='doctor')
# #     slots = db.relationship('Slots',backref='doctor')
# #     appointments = db.relationship('Appointments',backref='doctor')
# #     hospitals_name = db.relationship('Hospitals',secondary=relate, backref = db.backref('doctor', lazy = True))

# #     def __init__(self,name,password,email,qualification,specialization,consultation_fees,experience,contact_number,description,address_line_1,address_line_2,address_line_3):
# #         self.name = name
# #         self.password = password
# #         self.email = email
# #         self.qualification = qualification
# #         self.specialization = specialization
# #         self.consultation_fees = consultation_fees
# #         self.experience = experience
# #         self.contact_number = contact_number
# #         self.description = description
# #         self.address_line_1=address_line_1
# #         self.address_line_2=address_line_2
# #         self.address_line_3=address_line_3

# #     def check_password(self,password):
# #         return self.password==password

# #     def __repr__(self):
# #         return f"Name  : {self.name}"

# # class Reviews(db.Model):
# #     __tablename__ = 'reviews'

# #     id = db.Column(db.Integer,primary_key=True)
# #     name = db.Column(db.String(30),nullable=False)
# #     content = db.Column(db.Text,nullable=False)
# #     rating = db.Column(db.Integer,nullable=False)
# #     doctor_id = db.Column(db.Integer,db.ForeignKey('doctors.id'))

# # class Slots(db.Model):
# #     id = db.Column(db.Integer,primary_key=True)
# #     morning_slots = db.Column(db.Text)
# #     afternoon_slots = db.Column(db.Text)
# #     evening_slots = db.Column(db.Text)
# #     night_slots = db.Column(db.Text)
# #     hospital_name = db.Column(db.String(20))
# #     doc_id = db.Column(db.Integer,db.ForeignKey('doctors.id'))
# #     m_capacity = db.Column(db.Integer,default=0)
# #     a_capacity = db.Column(db.Integer,default=0)
# #     e_capacity = db.Column(db.Integer,default=0)
# #     n_capacity = db.Column(db.Integer,default=0)

# # class Appointments(db.Model):
# #     id = db.Column(db.Integer,primary_key=True)
# #     slot = db.Column(db.Text)
# #     day = db.Column(db.String(20))
# #     user_name = db.Column(db.String(50))
# #     user_contact = db.Column(db.Integer)
# #     user_email = db.Column(db.String(64))
# #     doc_id = db.Column(db.Integer,db.ForeignKey('doctors.id'))
# #     hosp_name = db.Column(db.String(20))
# #     appointment_id = db.Column(db.Integer)
# #     current_date = db.Column(db.DateTime,default = datetime.utcnow)
