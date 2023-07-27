from django.shortcuts import render

# Create your views here.

from .models import Skill
def skiller(request):
    skills = Skill.objects.all()
    return render(request, 'skill/skill.html', {'skills': skills})