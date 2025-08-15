from django.shortcuts import render

# Create your views here.

from .models import Competence
def skiller(request):
    skills = Competence.objects.all()
    return render(request, 'skill/skill.html', {'skills': skills})