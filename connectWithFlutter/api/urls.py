from django.urls import path
from api import views
from .views import StudentList

urlpatterns = [
    path('student/', views.StudentList.as_view()),
]