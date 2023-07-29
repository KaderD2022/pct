from django.shortcuts import render

# Create your views here.
from .models import Disease, epidemie

# Create your views here.

def maladie_view(request):
    items = Disease.objects.all()
    epidemies = epidemie.objects.all()
    return render(request, 'maladie/maladie.html', {'items': items, 'epidemies': epidemies}) 
    
