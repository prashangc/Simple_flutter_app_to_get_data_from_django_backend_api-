from django.db import models

# Create your models here.

class Student(models.Model):
    studentName = models.CharField(max_length=100)
    email = models.CharField(max_length=100)