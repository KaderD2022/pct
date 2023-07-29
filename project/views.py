from django.shortcuts import render

from project.models import Project

# Create your views here.

def project_view(request):
    projects = Project.objects.all()
    return render(request, 'project/project.html', {'projects': projects}) 
    
