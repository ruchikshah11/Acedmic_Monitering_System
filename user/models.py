from django.db import models

class Faculty(models.Model):
    firstname=models.CharField(max_length=200)
    lastname = models.CharField(max_length=200)
    username = models.CharField(max_length=200)
    email = models.CharField(max_length=200)
    password = models.CharField(max_length=200)
    contact_number = models.CharField(max_length=200)
    class Meta:
        db_table="Faculty"

class lectures(models.Model):
    date=models.DateField()
    subject_name=models.CharField(max_length=200)
    start_time=models.TimeField()
    end_time=models.TimeField()
    faculty_name=models.CharField(max_length=200)
    status=models.CharField(max_length=200)
    class Meta:
        db_table="lectures"

    def __str__(self):
        return self.subject_name

class Syllabus(models.Model):
    subject_name=models.CharField(max_length=200)
    units_title=models.CharField(max_length=200)
    weighatge=models.CharField(max_length=200)
    faculty_name=models.CharField(max_length=200)
    term=models.CharField(max_length=200)
    status=models.CharField(max_length=200)
    class Meta:
        db_table="syllabus"

class Teaching_Materials(models.Model):
    Title=models.CharField(max_length=200)
    faculty_name=models.CharField(max_length=200)
    number_of_collaborators=models.CharField(max_length=200)
    status=models.CharField(max_length=200)
    class Meta:
        db_table="Teaching_Materials"

class Students_Projects(models.Model):
    title_of_project=models.CharField(max_length=200)
    faculty_name=models.CharField(max_length=200)
    term=models.CharField(max_length=200)
    no_of_students=models.CharField(max_length=200)
    class Meta:
        db_table="Students_Projects"

class Sech(models.Model):
    start_date=models.DateField()
    end_date=models.DateField()
    course_title=models.CharField(max_length=200)
    program=models.CharField(max_length=200)
    no_of_sessions=models.CharField(max_length=11)
    number_of_hour_in_each_session=models.CharField(max_length=11)
    total_number_of_hours=models.CharField(max_length=11)
    faculty_name = models.CharField(max_length=200)
    class Meta:
        db_table="Sechdule"

class Admin(models.Model):
    username=models.CharField(max_length=200)
    password=models.CharField(max_length=200)
    class Meta:
        db_table="Admin"