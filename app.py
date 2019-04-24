from flask import Flask, render_template, request, session
import MySQLdb
app = Flask(__name__)
app.secret_key = 'osmans_secret_key'
host = 'http://127.0.0.1:5000/'
connection = MySQLdb.connect('localhost', 'root', 'password', 'CanvasPath')

################################# Start Route ##########################################################################

@app.route('/', methods=['POST', 'GET'])
def login():
    error = None
    session['user'] = ''
    session['email'] = ''
    if request.method == 'POST':
        result = validloginStudent(request.form['username'], request.form['passw'])
        result2 = validloginProfessor(request.form['username'], request.form['passw'])
        result3 = validAdminLogin(request.form['username'], request.form['passw'])
        session['email'] = request.form['username']
        if result:
            session['user'] = result[0][0]
            return render_template('Student_dash.html', name=session.get('user', None),
                                   password=request.form['passw'], error=error, url=host, result=result)
        elif result2:
            session['user'] = result2[0][0]
            prof_info = getProfInfo(session.get('email', None))
            prof_team = getProfteamID(session.get('email', None))
            prof_courses = getProfCourseName(prof_team)
            sec_taught = getProfSec(prof_team)
            sec_exams = getProfSecAssign2(prof_team)
            sec_assign = getProfSecAssign(prof_team)
            return render_template('Professor_dash.html', secs=prof_courses, sec_taught=sec_taught,
                                   sec_exams = sec_exams, sec_assign=sec_assign, prof_info=prof_info,
                                   name=session.get('user', None),
                                   error=error, url=host)
        elif result3:
            session['user'] = result3[0][0]
            prof_names = getProfnames()
            student_name = getStudentNames()
            course_name = getCourseNames()
            courses= getCourseDetails()
            return render_template('Admin_dash.html', course_name=course_name, result4=courses,
                                   student_name = student_name,prof_names = prof_names,
                                   name=session.get('user', None), error=error, url=host, result3 = result3)
        else:
            error = 'invalid login'
            return render_template('error.html', error=error, url=host, result=result)
    return render_template('login.html', error=error, url=host)

########################## App Routes ##################################################################################

@app.route('/logout', methods=['POST', 'GET'])
def logout():
    error = None
    return render_template('login.html', error=error, url=host)

@app.route('/insertPassword', methods=['POST', 'GET'])
def insertPassword():
   error = None
   if request.method == 'POST':
        insertPass(session.get('email', None), request.form['NewPassword'])
        result = validloginStudent(session.get('email', None), request.form['NewPassword'])
   return render_template('Student_dash.html', name=session.get('user', None), error=error, url=host, result=result)

@app.route('/getCourseInfo', methods=['POST', 'GET'])
def getCourseInfo():
    error = None
    if request.method == 'POST':
        result = getCourseInfo(session.get('email', None))
    return render_template('Student_course_dash.html',
                           error=error, name=session.get('user', None), url=host, result=result)

@app.route('/<string:course>/<string:section>', methods=['POST', 'GET'])
def getCourseDetails(course, section):
    error = None
    result = getCourseDetails2(course)
    result2 = getSecProfDetails(course, section)
    result3 = viewAssign(course,section)
    result4 = viewAssign2(course,section)
    return render_template('course_details.html',
                           error=error, result4 = result4,section=section, course=course, result3 = result3 , result2=result2, result=result)


@app.route('/AddCourse', methods=['POST', 'GET'])
def AddCourse():
    error = None
    if request.method == 'POST':
        course_id = request.form['newcourse']
        course_name = request.form['newcourse_name']
        result = AddCourse(course_id, course_name)
        prof_names = getProfnames()
        course_name = getCourseNames()
        student_name = getStudentNames()
        courses = getCourseDetails()

    return render_template('Admin_dash.html', student_name = student_name, result4 = courses,
                           course_name=course_name,prof_names=prof_names,
                           name=session.get('user', None), error=error, url=host, result3=result)

@app.route('/DeleteCourse', methods=['POST', 'GET'])
def DeleteCourse():
    error = None
    if request.method == 'POST':
        course_id = request.form.get('course_name')
        result = DeleteCourse(course_id)
        course_name = getCourseNames()
        prof_names = getProfnames()
        student_name = getStudentNames()
        courses = getCourseDetails()

    return render_template('Admin_dash.html', result4 = courses,student_name = student_name,
                           course_name=course_name, prof_names=prof_names,
                           name=session.get('user', None), error=error, url=host, result3=result)

@app.route('/AssignProf', methods=['POST', 'GET'])
def AssignProf():
    if request.method == 'POST':
        error = None
        course_id = request.form.get('course_name')
        sec_no = str(request.form.get('sections'))
        sec_type = request.form.get('sec_type')
        limit = str(request.form['limit'])
        prof_name = request.form.get('prof_names')
        prof_email = getProfEmail(prof_name)
        teaching_team_id = str(getProfteamID(prof_email))
        result = AssignProf(course_id,sec_no,sec_type,limit,teaching_team_id)
        course_name = getCourseNames()
        prof_names = getProfnames()
        student_name = getStudentNames()
        courses = getCourseDetails()
    return render_template('Admin_dash.html',result4= courses, student_name=student_name, course_name=course_name,
                           prof_names=prof_names, name=session.get('user', None), error=error,
                           url=host, result=result)

@app.route('/EnrollStudent', methods=['POST', 'GET'])
def EnrollStudent():
    error = None
    name = request.form.get('student_name')
    course_id = request.form.get('course_name')
    sec_no = request.form.get('sections')
    student_email = getStudentEmail(name)
    a = getCourseCount(course_id,sec_no)
    b = getLimit(course_id,sec_no)
    if a >= b:
        return render_template('class_full_error.html', error=error, url=host,)
    else:
        result = EnrollStudent(student_email,course_id,sec_no)
        course_name = getCourseNames()
        prof_names = getProfnames()
        student_name = getStudentNames()
        courses = getCourseDetails()
        return render_template('Admin_dash.html', result4 = courses,student_name=student_name,
                             course_name=course_name, prof_names=prof_names,
                             name=session.get('user', None), error=error, url=host, result=result)

@app.route('/AddAssign', methods=['POST', 'GET'])
def AddAssign():
    error = None
    if request.method == 'POST':
        prof_info = getProfInfo(session.get('email', None))
        prof_team = getProfteamID(session.get('email', None))
        prof_courses = getProfCourseName(prof_team)
        sec_taught = getProfSec(prof_team)
        ass_type = request.form.get('assign_type')
        course = request.form.get('course')
        sec = request.form.get('sections')
        hw_no = request.form['no']
        if ass_type == 'Homework':
            new_assign = AddAssignHW(course,sec,hw_no)
        else:
            new_assign = AddAssignExam(course,sec,hw_no)
        sec_assign = getProfSecAssign(prof_team)
        sec_exams =  getProfSecAssign2(prof_team)
        return render_template('Professor_dash.html',secs=prof_courses, sec_taught=sec_taught,
                               sec_assign=sec_assign,sec_exams = sec_exams, prof_info=prof_info,
                               name=session.get('user', None),
                               error=error, url=host)

@app.route('/AddGradesPage', methods=['POST', 'GET'])
def AddGrades():
    prof = session.get('email',None)
    prof_id = getProfteamID(prof)
    result1 = getProfSecExamGrades(prof_id)
    result2 = getProfSecHWGrades(prof_id)
    course_name =getProfCourseName(prof_id)
    course_students = getProfStudentName(prof_id)
    return render_template('Addgrade.html',course_name = course_name,
                           course_students= course_students,result2=result2, result1=result1)

@app.route('/gradeUpdate', methods=['POST', 'GET'])
def gradeUpdate():
    ass_type = request.form.get('assign_type')
    email = request.form.get('course_students')
    course_id = request.form.get('course_name')
    sec_no = request.form.get('sections')
    ass_no = request.form['ass_no']
    grade = request.form['grade']
    if ass_type == "Homework":
        updateGradeHW(email,course_id,sec_no,ass_no,grade)
        prof = session.get('email', None)
        prof_id = getProfteamID(prof)
        result1 = getProfSecExamGrades(prof_id)
        result2 = getProfSecHWGrades(prof_id)
        course_name = getProfCourseName(prof_id)
        course_students = getProfStudentName(prof_id)
        return render_template('Addgrade.html',course_name = course_name,
                               course_students= course_students, result2=result2, result1=result1)
    else:
        updateGradeExam(email,course_id,sec_no,ass_no,grade)
        print(email, course_id, sec_no, ass_no, grade)
        prof = session.get('email', None)
        prof_id = getProfteamID(prof)
        result1 = getProfSecExamGrades(prof_id)
        result2 = getProfSecHWGrades(prof_id)
        course_name = getProfCourseName(prof_id)
        course_students = getProfStudentName(prof_id)
        return render_template('Addgrade.html', course_name=course_name,
                               course_students=course_students, result2=result2, result1=result1)

@app.route('/getMygrades', methods=['POST', 'GET'])
def getMygrades():
   error = None
   user = session.get('email',None)
   exams = getStudentExamGrade(user)
   HW = getStuHWGrade(user)
   c = getSCourses(user)
   exams = getStudentExamGrade(user)
   HW = getStuHWGrade(user)
   return render_template('mygrades.html',course_name = c,error = error, url = host, exams = exams ,HW = HW)

   ############################### SQL QUERIES ###################################################

@app.route('/getExamAvg', methods=['POST', 'GET'])
def getExamAvg():
    error = None
    user = session.get('email', None)
    c1 = getSCourses(user)
    exams = getStudentExamGrade(user)
    HW = getStuHWGrade(user)
    t = request.form.get('Type')
    if t == 'Highest':
        c = request.form.get('course_name')
        n = request.form['exam_no']
        s = request.form['exam_sec_no']
        result = getHighExams(c, n, s)
    if t == 'Lowest':
        c = request.form.get('course_name')
        n = request.form['hw_no']
        s = request.form['hw_sec_no']
        result = getLowExams(c, n, s)
    if t == 'Average':
        c = request.form.get('course_name')
        n = request.form['hw_no']
        s = request.form['hw_sec_no']
        result = getAvgExams(c, n, s)

    return render_template('mygrades.html', Examavg=result, course_name=c1, error=error, url=host, exams=exams, HW=HW)

@app.route('/getHWAvg', methods=['POST', 'GET'])
def getHWAvg():
    error = None
    user = session.get('email', None)
    c1 = getSCourses(user)
    exams = getStudentExamGrade(user)
    HW = getStuHWGrade(user)
    t = request.form.get('Type')
    if t == 'Highest':
        c = request.form.get('course_name')
        n = request.form['hw_no']
        s = request.form['hw_sec_no']
        result = getHighHomework(c, n, s)
    if t == 'Lowest':
        c = request.form.get('course_name')
        n = request.form['hw_no']
        s = request.form['hw_sec_no']
        result = getLowHomework(c, n, s)
    if t == 'Average':
        c = request.form.get('course_name')
        n = request.form['hw_no']
        s = request.form['hw_sec_no']
        result = getAvgHomework(c, n, s)


    return render_template('mygrades.html', HwAvg = result, course_name= c1, error=error, url=host, exams=exams, HW=HW)

@app.route('/OTeam', methods=['POST', 'GET'])
def OTeam():
    error = None
    prof = session.get('email', None)
    prof_id = getProfteamID(prof)
    course_name =getProfCourseName(prof_id)
    teams = getTeams(request.form.get('course_name'))
    prof_info = getProfInfo(session.get('email', None))
    prof_team = getProfteamID(session.get('email', None))
    prof_courses = getProfCourseName(prof_team)
    sec_taught = getProfSec(prof_team)
    sec_exams = getProfSecAssign2(prof_team)
    sec_assign = getProfSecAssign(prof_team)
    return render_template('Professor_dash.html',prof_info=prof_info,error=error, url=host,
                           name=session.get('user', None),sec_assign=sec_assign,
                           sec_taught=sec_taught,
                           secs=prof_courses, sec_exams = sec_exams,teams = teams,course_name = course_name,)



########################################SQL#############################################################################

def validloginStudent(username, passw):
    cursor = connection.cursor()
    query_str = 'SELECT S.name, S.age, S.gender, S.major, S.password FROM Student S ' \
                'WHERE S.email = %s AND S.password = %s'
    cursor.execute(query_str, (username, passw))
    ans = cursor.fetchall()
    return ans

def validloginProfessor(username, passw):

    cursor = connection.cursor()
    query_str = 'SELECT P.name from Professor P where P.email = %s and P.password = %s'
    cursor.execute(query_str, (username, passw))
    ans = cursor.fetchall()
    return ans

def insertPass(username, NewPassword):

    cursor = connection.cursor()
    query_str = 'UPDATE Student S SET S.password = %s WHERE S.email= %s'
    cursor.execute(query_str, (NewPassword, username))
    connection.commit()
    return

def getCourseInfo(username):
    cursor = connection.cursor()
    query_str = 'SELECT course_id,section_no, CONCAT(course_id,"/",section_no) ' \
                'AS url FROM TestEnrolls E where E.student_email = %s'
    cursor.execute(query_str, (username,))
    ans = cursor.fetchall()
    return ans

def getCourseDetails2(course_name):
    cursor = connection.cursor()
    query_str = 'SELECT course_name,course_description FROM TestCourse C where C.course_id = %s'
    cursor.execute(query_str, (course_name,))
    ans = cursor.fetchall()
    return ans

def getSecProfDetails(course,section):
    cursor = connection.cursor()
    query_str = 'SELECT Professor.email,Professor.office_address,Professor.name from Professor, ' \
                'Prof_team_members,Sections where ' \
                'Sections.course_id = %s and Sections.sec_no = %s and ' \
                'Sections.teaching_team_id = Prof_team_members.teaching_team_id ' \
                'and Prof_team_members.prof_email = Professor.email;'
    cursor.execute(query_str, (course, section))
    ans = cursor.fetchall()
    return ans

def validAdminLogin(username,password):
    cursor = connection.cursor()
    query_str = 'SELECT A.name from Admin A where A.admin_email = %s and A.password = %s'
    cursor.execute(query_str, (username, password))
    ans = cursor.fetchall()
    return ans

def AddCourse(course_id,course_name):
    cursor = connection.cursor()
    query_str = 'INSERT INTO TestCourse(course_id, course_name, course_description) VALUES (%s,%s,%s)'
    cursor.execute(query_str, (course_id, course_name, 'Regular 3 credit course offered only on campus'))
    connection.commit()
    return

def getProfnames():
    cursor = connection.cursor()
    query_str = 'SELECT P.name from Professor P'
    cursor.execute(query_str)
    result_list = []
    for row in cursor.fetchall():
        result_list.append(row[0])
    return result_list

def getProfteamID(prof_email):
    cursor = connection.cursor()
    query_str = 'SELECT T.teaching_team_id from Prof_team_members T where T.prof_email = %s '
    cursor.execute(query_str, (prof_email,))
    result_list = []
    for row in cursor.fetchall():
        result_list.append(row[0])
    return result_list[0]

def getCourseNames():
    cursor = connection.cursor()
    query_str = 'SELECT C.course_id from TestCourse C'
    cursor.execute(query_str)
    result_list = []
    for row in cursor.fetchall():
        result_list.append(row[0])
    return result_list

def getProfEmail(name):
    cursor = connection.cursor()
    query_str = 'SELECT P.email from Professor P where P.name = %s '
    cursor.execute(query_str, (name,))
    ans = cursor.fetchall()
    return ans

def AssignProf(course_id,sec_no,section_type,sec_limit,teaching_team_id):
    cursor = connection.cursor()
    query_str = 'INSERT INTO TestSections(course_id,sec_no,section_type,sec_limit,teaching_team_id) ' \
                'VALUES (%s,%s,%s,%s,%s)'
    cursor.execute(query_str, (course_id, sec_no, section_type, sec_limit, teaching_team_id))
    connection.commit()
    return

def DeleteCourse(course_id):
    cursor = connection.cursor()
    query_str = 'DELETE FROM TestCourse WHERE TestCourse.course_id = %s'
    cursor.execute(query_str, (course_id,))
    query_str2 = 'DELETE FROM TestSections WHERE TestSections.course_id = %s'
    cursor.execute(query_str2, (course_id,))
    query_str3 = 'DELETE FROM TestEnrolls WHERE TestEnrolls.course_id = %s'
    cursor.execute(query_str3, (course_id,))
    query_str4 = 'DELETE FROM TestExam_grades WHERE TestExam_grades.course_id = %s'
    cursor.execute(query_str4, (course_id,))
    query_str5 = 'DELETE FROM  TestHomework_grades WHERE TestHomework_grades.course_id = %s'
    cursor.execute(query_str5, (course_id,))
    connection.commit()
    return

def getStudentNames():
    cursor = connection.cursor()
    query_str = 'SELECT S.name FROM Student S'
    cursor.execute(query_str)
    result_list = []
    for row in cursor.fetchall():
        result_list.append(row[0])
    return result_list

def getStudentEmail(name):
    cursor = connection.cursor()
    query_str = 'SELECT S.email from Student S where S.name = %s '
    cursor.execute(query_str, (name,))
    result_list = []
    for row in cursor.fetchall():
        result_list.append(row[0])
    return result_list[0]

def EnrollStudent(email,course_id,sec_no):
    cursor = connection.cursor()
    query_str = 'INSERT INTO TestEnrolls(student_email,course_id,section_no) ' \
                'VALUES (%s,%s,%s)'
    cursor.execute(query_str, (email, course_id, sec_no))
    connection.commit()
    return

def getLimit(course_id,sec_no):
    cursor = connection.cursor()
    query_str = 'SELECT S.sec_limit from TestSections S where S.course_id = %s and S.sec_no= %s'
    cursor.execute(query_str, (course_id,sec_no))
    ans = cursor.fetchall()
    return ans

def getCourseCount(course_id,sec_no):
    cursor = connection.cursor()
    query_str ='SELECT COUNT(E.student_email) FROM TestEnrolls E WHERE E.course_id = %s and E.section_no = %s'
    cursor.execute(query_str, (course_id, sec_no))
    ans = cursor.fetchall()
    return ans

def getCourseDetails():
    cursor = connection.cursor()
    query_str = 'SELECT C.course_id,C.course_name,C.course_description FROM TestCourse C'
    cursor.execute(query_str)
    ans = cursor.fetchall()
    return ans

def getProfInfo(email):
    cursor = connection.cursor()
    query_str = 'SELECT * FROM Professor P WHERE P.email = %s'
    cursor.execute(query_str,(email,) )
    ans = cursor.fetchall()
    return ans

def getProfSec(team_id):
    cursor = connection.cursor()
    query_str = 'SELECT course_id,sec_no,section_type from TestSections where teaching_team_id = %s'
    cursor.execute(query_str, (team_id,))
    ans = cursor.fetchall()
    return ans

def getProfSecAssign(team_id):
    cursor = connection.cursor()
    query_str = 'SELECT H.course_id,H.sec_no,H.hw_no,H.hw_details from TestHomework H, TestSections S ' \
                'where S.course_id = H.course_id ' \
                'and S.sec_no = H.sec_no and S.teaching_team_id = %s'
    cursor.execute(query_str, (team_id,))
    ans = cursor.fetchall()
    return ans
    return

def getProfCourseName(prof_team):
    cursor = connection.cursor()
    query_str = 'SELECT DISTINCT course_id from TestSections where teaching_team_id = %s'
    cursor.execute(query_str, (prof_team,))
    result_list = []
    for row in cursor.fetchall():
        result_list.append(row[0])
    return result_list

def AddAssignExam(course_id,sec_no,exam_no):
    cursor = connection.cursor()
    query_str = 'INSERT INTO TestExams(course_id,sec_no,exam_no,exam_details) VALUES (%s,%s,%s,%s)'
    cursor.execute(query_str, (course_id, sec_no, exam_no, 'Closed book exam for 100 marks'))
    connection.commit()
    return

def AddAssignHW(course_id,sec_no,hw_no):
    cursor = connection.cursor()
    query_str = 'INSERT INTO TestHomework(course_id,sec_no,hw_no,hw_details) VALUES (%s,%s,%s,%s)'
    cursor.execute(query_str, (course_id, sec_no, hw_no, 'Submit this homework on CanvasPath. Grade is out of 100'))
    connection.commit()
    return

def getProfSecAssign2(team_id):
    cursor = connection.cursor()
    query_str = 'SELECT H.course_id,H.sec_no,H.exam_no,H.exam_details from TestExams H, TestSections S ' \
                'where S.course_id = H.course_id ' \
                'and S.sec_no = H.sec_no and S.teaching_team_id = %s'
    cursor.execute(query_str, (team_id,))
    ans = cursor.fetchall()
    return ans
    return

def getProfSecExamGrades(team_id):
    cursor = connection.cursor()
    query_str = 'SELECT DISTINCT H.student_email,H.course_id,H.sec_no,H.exam_no,H.grades from TestExam_grades H, Sections S ' \
                'where S.course_id = H.course_id ' \
                'and S.sec_no = H.sec_no and S.teaching_team_id = %s'
    cursor.execute(query_str, (team_id,))
    ans = cursor.fetchall()
    return ans
    return

def getProfSecHWGrades(team_id):
    cursor = connection.cursor()
    query_str = 'SELECT DISTINCT H.student_email,H.course_id,H.sec_no,H.hw_no,H.grade from TestHomework_grades H, Sections S ' \
                'where S.course_id = H.course_id ' \
                'and S.sec_no = H.sec_no and S.teaching_team_id = %s'
    cursor.execute(query_str, (team_id,))
    ans = cursor.fetchall()
    return ans
    return

def getProfStudentName(prof_team):
    cursor = connection.cursor()
    query_str = 'SELECT DISTINCT H.student_email from TestEnrolls H, Sections S ' \
                'where S.course_id = H.course_id ' \
                'and S.sec_no = H.section_no and S.teaching_team_id = %s'
    cursor.execute(query_str, (prof_team,))
    result_list = []
    for row in cursor.fetchall():
        result_list.append(row[0])
    return result_list

def updateGradeHW(student_email,course_id,sec_no,hw_no,grade):
    cursor = connection.cursor()
    query_str = 'REPLACE INTO TestHomework_grades(student_email,course_id,sec_no,hw_no,grade) VALUES (%s,%s,%s,%s,%s)'
    cursor.execute(query_str, (student_email,course_id,sec_no,hw_no,grade))
    connection.commit()
    return

def updateGradeExam(student_email, course_id, sec_no, exam_no, grade):
    cursor = connection.cursor()
    query_str = 'REPLACE INTO TestExam_grades(student_email,course_id,sec_no,exam_no,grades) VALUES (%s,%s,%s,%s,%s)'
    cursor.execute(query_str, (student_email, course_id, sec_no, exam_no, grade))
    connection.commit()
    return

def getStudentExamGrade(email):
    cursor = connection.cursor()
    query_str = 'SELECT T.course_id,T.sec_no,T.exam_no, T.grades FROM TestExam_grades T WHERE T.student_email=%s'
    cursor.execute(query_str,(email,))
    ans = cursor.fetchall()
    return ans

def getStuHWGrade(email):
    cursor = connection.cursor()
    query_str = 'SELECT T.course_id,T.sec_no,T.hw_no, T.grade FROM TestHomework_grades T WHERE T.student_email=%s'
    cursor.execute(query_str,(email,))
    ans = cursor.fetchall()
    return ans

def getSCourses(email):
    cursor = connection.cursor()
    query_str = 'SELECT T.course_id FROM TestEnrolls T WHERE T.student_email=%s'
    cursor.execute(query_str, (email,))
    result_list = []
    for row in cursor.fetchall():
        result_list.append(row[0])
    return result_list

def getAvgHomework(c,n,s):
    cursor = connection.cursor()
    query_str = 'SELECT avg(grade) from TestHomework_grades where TestHomework_grades.course_id = %s ' \
                'AND TestHomework_grades.hw_no = %s and TestHomework_grades.sec_no = %s'
    cursor.execute(query_str, (c,n,s))
    result_list = []
    for row in cursor.fetchall():
        result_list.append(row[0])
    return result_list

def getAvgExams(c,n,s):
    cursor = connection.cursor()
    query_str = 'SELECT avg(grades) from TestExam_grades T where T.course_id = %s AND T.exam_no = %s and T.sec_no = %s'
    cursor.execute(query_str, (c,n,s))
    result_list = []
    for row in cursor.fetchall():
        result_list.append(row[0])
    return result_list

def getLowExams(c,n,s):
    cursor = connection.cursor()
    query_str = 'SELECT MIN(grades) from TestExam_grades T where T.course_id = %s AND T.exam_no = %s and T.sec_no = %s'
    cursor.execute(query_str, (c,n,s))
    result_list = []
    for row in cursor.fetchall():
        result_list.append(row[0])
    return result_list

def getHighExams(c,n,s):
    cursor = connection.cursor()
    query_str = 'SELECT MAX(grades) from TestExam_grades T where T.course_id = %s AND T.exam_no = %s and T.sec_no = %s'
    cursor.execute(query_str, (c,n,s))
    result_list = []
    for row in cursor.fetchall():
        result_list.append(row[0])
    return result_list

def getLowHomework(c,n,s):
    cursor = connection.cursor()
    query_str = 'SELECT MIN(grade) from TestHomework_grades where TestHomework_grades.course_id = %s ' \
                'AND TestHomework_grades.hw_no = %s and TestHomework_grades.sec_no = %s'
    cursor.execute(query_str, (c,n,s))
    result_list = []
    for row in cursor.fetchall():
        result_list.append(row[0])
    return result_list

def getHighHomework(c,n,s):
    cursor = connection.cursor()
    query_str = 'SELECT MAX(grade) from TestHomework_grades where TestHomework_grades.course_id = %s ' \
                'AND TestHomework_grades.hw_no = %s and TestHomework_grades.sec_no = %s'
    cursor.execute(query_str, (c,n,s))
    result_list = []
    for row in cursor.fetchall():
        result_list.append(row[0])
    return result_list

def getTeams(c):
    cursor = connection.cursor()
    query_str = 'SELECT T.sec_no,T.capstone_team_id,T.project_no FROM Capstone_Team T WHERE T.course_id=%s'
    cursor.execute(query_str, (c,))
    ans = cursor.fetchall()
    return ans

def viewAssign(course,sec):
    cursor = connection.cursor()
    query_str = 'SELECT * from TestExams WHERE course_id = %s and sec_no = %s'
    cursor.execute(query_str, (course,sec))
    ans = cursor.fetchall()
    return ans

def viewAssign2(course,sec):
    cursor = connection.cursor()
    query_str = 'SELECT * from TestHomework WHERE course_id = %s and sec_no = %s'
    cursor.execute(query_str, (course,sec))
    ans = cursor.fetchall()
    return ans