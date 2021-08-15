from django.shortcuts import render,HttpResponseRedirect
from .models import *
from django.contrib import messages
from django.utils.timezone import datetime
from .forms import Faculty_Registration

def index(request):
    context_dict = {'welcome_home': "Welcome To My Site"}
    return render(request, 'login.html', context=context_dict)


def dashboard(request):
    data = Faculty.objects.all()
    return render(request, "dashboard.html", {'data': data})

def user_dashboard(request):
    return render(request, 'user.html')

def profile(request):
    return render(request,"profile.html")

def login(request):
    return render(request, "login.html")

def faculty_register(request):
    return render(request,"faculty_registration.html")

def add_project(request):
    return render(request,"add_project_details.html")

def view_project(request):
    return render(request,"view_project_details.html")

def faculty(request):
    if request.method=='POST':
        firstname = request.POST.get("firstname")
        lastname = request.POST.get("lastname")
        username=request.POST.get("username")
        email=request.POST.get("email")
        password=request.POST.get("password")
        cpassword=request.POST.get("cpassword")
        contact_number=request.POST.get("number")
        if cpassword==password:
            password1=password
        else:
            messages.error(request,"both Password not match")
            return render(request, "faculty_registration.html")
        try:
            user=Faculty.objects.get(email=email)
            messages.error(request,"email is already exists")
            return render(request, "faculty_registration.html")
        except Faculty.DoesNotExist:
            reg = Faculty(firstname=firstname, lastname=lastname, username=username, email=email, password=password1,
                  contact_number=contact_number)
            reg.save()
    else:
        messages.error(request,"not load")
    return render(request,"faculty_registration.html")

def login_auth(request):
    username=request.POST.get("username")
    password = request.POST.get("password")
    if Faculty.objects.filter(username=username,password=password).exists():
        reg=Faculty.objects.get(username=username,password=password)
        request.session['username']=username
        pending = lectures.objects.filter(faculty_name=username, status="pending").count()
        completed = lectures.objects.filter(faculty_name=username, status="completed").count()
        return render(request, "user.html",{"pending":pending,"completed":completed})
    if Admin.objects.filter(username=username,password=password).exists():
        reg=Admin.objects.get(username=username,password=password)
        request.session['username']=username
        data = Faculty.objects.all()
        return render(request, "dashboard.html", {'data': data})
    else:
        return render(request, "login.html")

def viewall(request):
    if request.method=="POST":
        if request.POST['sel']=="completed":
            data = lectures.objects.filter(status=request.POST['sel'],faculty_name=request.session.get("username"))
            return render(request, "lectures.html", {'data': data})
        if request.POST['sel']=="today":
            data = lectures.objects.filter(date=datetime.today(), faculty_name=request.session.get("username"))
            return render(request, "lectures.html", {'data': data})
    data=lectures.objects.filter(date=datetime.today(),faculty_name=request.session.get("username"))
    return render(request,"lectures.html",{'data':data})

def view_faculty(request):
    data=Faculty.objects.all()
    return render(request,"view_faculty.html",{'data':data})

def deletedata(request,id):
    if request.method=="POST":
        pi=Faculty.objects.get(id=id)
        pi.delete()
        return HttpResponseRedirect('/view_faculty/')

def updatedata(request,id):
    if request.method=="POST":
        task=Faculty.objects.get(id=id)
        form=Faculty_Registration(request.POST or None,instance=task)
        if form.is_valid():
            form.save()
            messages.success(request,"updated Successfully")
        return HttpResponseRedirect('/view_faculty/')
    else:
        task=Faculty.objects.get(id=id)
        return render(request, "update_faculty.html", context={"task":task})

def lecture_status(request,id):
    task=lectures.objects.get(id=id)
    task.status="completed"
    task.save()
    return HttpResponseRedirect("/viewall/")

def add_project_details(request):
    if request.method=='POST':
        project_name = request.POST.get("project_name")
        faculty_name = request.POST.get("faculty_name")
        term=request.POST.get("term")
        students=request.POST.get("students")
        reg = Students_Projects(title_of_project=project_name,faculty_name=faculty_name,term=term,no_of_students=students)
        reg.save()
        return render(request,"add_project_details.html")

def view_project_details(request):
    sem = Students_Projects.objects.values("term").distinct()
    if request.method=="POST":
        data = Students_Projects.objects.filter(term=request.POST['sel'],faculty_name=request.session.get("username"))
        return render(request, "view_project_details.html", {'data':data,'sem':sem})
    else:
        data=Students_Projects.objects.filter(faculty_name=request.session.get("username"))
        return render(request,"view_project_details.html",{'data':data,'sem':sem})

def logout(request):
    del request.session['username']
    return HttpResponseRedirect("/Login/")

def show_syllabus(request):
    data=Syllabus.objects.filter(faculty_name=request.session.get("username"))
    return render(request,"show_syllabus.html",{'data':data})

def syllabus_status(request,id):
    task=Syllabus.objects.get(id=id)
    task.status="completed"
    task.save()
    return HttpResponseRedirect("/show_syllabus/")

def view_faculty_name(request):
    if request.method == "POST":
        data = Faculty.objects.filter(username=request.POST['sel'])
        lec=lectures.objects.filter(faculty_name=request.POST['sel'])
        stud=Students_Projects.objects.filter(faculty_name=request.POST['sel'])
        syllabus=Syllabus.objects.filter(faculty_name=request.POST['sel'])
        tech=Teaching_Materials.objects.filter(faculty_name=request.POST['sel'])
        se=Sech.objects.filter(faculty_name=request.POST['sel'])
        return render(request, "show_faculty_details.html", {'data': data,'lec':lec,'stud':stud,'syallbus':syllabus,'tech':tech,'se':se})

def add_lectures(request):
    if request.method == 'POST':
        date = request.POST.get("date")
        subject_name = request.POST.get("subject_name")
        start_time = request.POST.get("start_time")
        end_time = request.POST.get("end_time")
        faculty_name = request.POST.get("faculty_name")
        try:
            user=lectures.objects.get(date=date,start_time=start_time,end_time=end_time)
            messages.error(request,"in this date and time already given lecture to another faculty")
            return render(request, "add_lectures.html")
        except:
            reg = lectures(date=date,subject_name=subject_name, start_time=start_time, end_time=end_time, faculty_name=faculty_name,
                status="pending")
            reg.save()
    else:
        messages.error(request, "Please Fill All Fields")
    return render(request, "add_lectures.html")

def add_teaching_materials(request):
    if request.method == 'POST':
        title = request.POST.get("title")
        faculty_name = request.POST.get("faculty_name")
        num_col = request.POST.get("num_col")
        try:
            user=Teaching_Materials.objects.get(Title=title,faculty_name=faculty_name)
            messages.error(request,"already exists")
            return render(request, "add_teaching_materials.html")
        except:
            reg = Teaching_Materials(Title=title,faculty_name=faculty_name,number_of_collaborators=num_col,
                status="pending")
            reg.save()
    else:
        messages.error(request, "Please Fill All Fields")
    return render(request, "add_teaching_materials.html")

def view_materials(request):
    data = Teaching_Materials.objects.filter(faculty_name=request.session.get("username"))
    return render(request, "view_materials.html", {'data': data})

def materials_status(request,id):
    task = Teaching_Materials.objects.get(id=id)
    task.status = "Uploded"
    task.save()
    return HttpResponseRedirect("/view_materials/")

def Sechdule(request):
    if request.method == 'POST':
        start_date = request.POST.get("start_date")
        end_date = request.POST.get("end_date")
        title = request.POST.get("title")
        program = request.POST.get("program")
        faculty_name = request.POST.get("faculty_name")
        number_of_session = request.POST.get("number_of_session")
        number_of_each_session=request.POST.get("number_of_each_session")
        total_hours=request.POST.get("total_hours")
        reg = Sech(start_date=start_date,end_date=end_date,course_title=title,program=program,
        no_of_sessions=number_of_session,number_of_hour_in_each_session=number_of_each_session,total_number_of_hours=total_hours,faculty_name=faculty_name)
        reg.save()
    else:
        messages.error(request, "Please Fill All Fields")
    return render(request,"Sechdule.html")

def count_lectures(request):
    return render(request,"user.html")