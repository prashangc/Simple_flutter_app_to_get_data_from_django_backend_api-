from .serializers import StudentSerializer
from .models import Student
from .serializers import StudentSerializer
from rest_framework.generics import ListAPIView

# Create your views here.
# when this class is executed, we get all the data stored in student data
class StudentList(ListAPIView):
    queryset = Student.objects.all() # get all objects of the model
    serializer_class = StudentSerializer 
