from django.shortcuts import render

# Create your views here.
from .models import Maladie, Epidemie

# Create your views here.

def maladie_view(request):
    items = Maladie.objects.all()
    epidemies = Epidemie.objects.all()
    return render(request, 'maladie/maladie.html', {'items': items, 'epidemies': epidemies}) 
    
def epidemie_view(request):
    epidemies = Epidemie.objects.all()
    return render(request, 'maladie/epidemie.html', {'epidemies': epidemies}) 
    
