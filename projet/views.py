from django.shortcuts import render

from projet.models import Projet

# Create your views here.

def project_view(request):
    projects = Projet.objects.all()
    return render(request, 'project/project.html', {'projects': projects}) 
    
