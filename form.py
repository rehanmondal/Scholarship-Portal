from flask import Flask, render_template,request,session,redirect
from flask_sqlalchemy import SQLAlchemy
from datetime import datetime


app = Flask(__name__)
app.config["SQLALCHEMY_DATABASE_URI"] ='mysql://root:@localhost/scholarship'

db = SQLAlchemy(app)
class Students(db.Model):
    # total 24 Entries
    # personal details section
    sno             = db.Column(db.Integer, primary_key=True)
    scholar_choice  = db.Column(db.String(20), nullable=False)
    stud_name       = db.Column(db.String(20), nullable=False)
    stud_age        = db.Column(db.Integer, nullable=False)
    stud_gender     = db.Column(db.String(20), nullable=False)
    father_name    = db.Column(db.String(20), nullable=False)
    mother_name     = db.Column(db.String(20), nullable=False)
    permanent_addr  = db.Column(db.String(20), nullable=False)
    phone_no        = db.Column(db.Integer, nullable=False)
    email_id        = db.Column(db.String(20), nullable=False)
    in_come         = db.Column(db.String(20), nullable=False)
    annual_inc_img  = db.Column(db.String(20), nullable=False)
    passport_img    = db.Column(db.String(20), nullable=False)
    course_name     = db.Column(db.String(20), nullable=False)
    str_eam     = db.Column(db.String(20), nullable=False)
    clg_name    = db.Column(db.String(30), nullable=False)
    univ_roll = db.Column(db.Integer, nullable=False)
    sem_1_img = db.Column(db.String(20), nullable=False)
    sem_2_img = db.Column(db.String(20), nullable=False)
    b_Accountno = db.Column(db.Integer, nullable=False)
    b_branch    = db.Column(db.String(20), nullable=False)
    b_ifsc      = db.Column(db.String(30), nullable=False)
    date        = db.Column(db.String(12), nullable=True)

class Contacts(db.Model):
    sno       = db.Column(db.Integer, primary_key=True)
    full_name = db.Column(db.String(20), nullable=False)
    reg_id 	  = db.Column(db.String(20))
    type_issue= db.Column(db.String(20), nullable=False)
    mat_ter   = db.Column(db.String(40), nullable=False)
    cont_date = db.Column(db.String(40), nullable=True)

@app.route("/")
def home():
    return render_template('home.html')
@app.route("/about")
def about():
    return render_template('about.html')

@app.route("/contact",methods = ['GET','POST'])
def contact():
    if(request.method=='POST'):
        fullname = request.form.get('fullname')
        regid    = request.form.get('regid')
        issue    = request.form.get('issue')
        matter   = request.form.get('matter')
        query = Contacts(full_name=fullname,reg_id=regid,type_issue=issue,mat_ter=matter,cont_date=datetime.now())
        db.session.add(query)
        db.session.commit()

    return render_template('contact.html')

@app.route("/form",methods = ['GET','POST'])
def formfill():
    if(request.method=='POST'):
        scholar = request.form.get('scholar')
        name = request.form.get('name')
        age = request.form.get('age')
        gender = request.form.get('gender')
        fname = request.form.get('fname')
        mname = request.form.get('mname')
        address = request.form.get('address')
        phone = request.form.get('phone')
        email = request.form.get('email')
        income = request.form.get('income')
        iimg = request.form.get('iimg')
        pimg = request.form.get('pimg')
        course = request.form.get('course')
        stream = request.form.get('stream')
        clgname = request.form.get('clgname')
        roll = request.form.get('roll')
        sem1 = request.form.get('sem1')
        sem2 = request.form.get('sem2')
        accno = request.form.get('accno')
        bbranch = request.form.get('bbranch')
        bifsc = request.form.get('bifsc')
                                                                                    
        entry = Students(scholar_choice=scholar, stud_name=name, stud_age=age, stud_gender=gender, father_name=fname,mother_name=mname,permanent_addr=address, phone_no=phone, email_id=email, in_come=income, annual_inc_img=iimg,passport_img=pimg,course_name=course,str_eam=stream,clg_name=clgname,univ_roll=roll,sem_1_img=sem1,sem_2_img=sem2, b_Accountno=accno, b_branch=bbranch,b_ifsc=bifsc, date=datetime.now())
        db.session.add(entry)
        db.session.commit()
        onestud = Students.query.filter_by(roll=roll)
        return render_template('message.html', onestud=onestud)

    return render_template('formfill.html')


app.run(debug=True)


