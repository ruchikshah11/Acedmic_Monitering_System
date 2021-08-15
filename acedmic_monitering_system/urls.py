"""acedmic_monitering_system URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from user import views as user_views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', user_views.index, name="index"),
    path('dashboard/', user_views.dashboard, name="dashboard"),
    path('logout/', user_views.logout, name="logout"),
    path('profile/', user_views.profile, name="profile"),
    path('Login/', user_views.login, name="login"),
    path('faculty/', user_views.faculty, name="faculty"),
    path('login_auth/', user_views.login_auth, name="login_auth"),
    path("faculty_register/", user_views.faculty_register, name="faculty_register"),
    path("viewall/", user_views.viewall, name="viewall"),
    path("add_project/", user_views.add_project, name="add_project"),
    path("add_project_details/", user_views.add_project_details, name="add_project_details"),
    path("view_project_details/", user_views.view_project_details, name="view_project_details"),
    path("view_faculty/", user_views.view_faculty, name="view_faculty"),
    path("delete/<int:id>/", user_views.deletedata, name="deletedata"),
    path("updatedata/<int:id>/", user_views.updatedata, name="updatedata"),
    path("lecture_status/<int:id>/", user_views.lecture_status, name="lecture_status"),
    path("show_syllabus/", user_views.show_syllabus, name="show_syllabus"),
    path("show_syllabus/<int:id>/", user_views.syllabus_status, name="syllabus_status"),
    path("user_dashboard/", user_views.user_dashboard, name="user_dashboard"),
    path("view_faculty_name/",user_views.view_faculty_name,name="view_faculty_name"),
    path("add_lectures/",user_views.add_lectures,name="add_lectures"),
    path("add_teaching_materials/", user_views.add_teaching_materials, name="add_teaching_materials"),
    path("view_materials/", user_views.view_materials, name="view_materials"),
    path("materials_status/", user_views.materials_status, name="materials_status"),
    path("materials_status/<int:id>/", user_views.materials_status, name="materials_status"),
    path("Sechdule/", user_views.Sechdule, name="Sechdule")
]
