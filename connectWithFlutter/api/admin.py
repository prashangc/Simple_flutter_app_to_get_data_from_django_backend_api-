from django.contrib import admin
from .models import Student

# Register your models here.
# the model-table created in the model should be registered here because when the 
# admin logins on the backend server, the admin should be able to see the tables 

@admin.register(Student)
class StudentAdmin(admin.ModelAdmin):
    list_display = ['id', 'studentName', 'email'] # this will be visible in the admin panel
