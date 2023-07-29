from django.shortcuts import render

# Create your views here.
from .models import Birth, Death

# Create your views here.

def naissance_view(request):
    naissances = Birth.objects.all()
    deces = Death.objects.all()
    return render(request, 'etat_de_vie/etat_de_vie.html', {'naissances': naissances, 'deces': deces}) 
    

# def deces_view(request):
#     deces = Death.objects.all()
#     return render(request, 'etat_de_vie/etat_de_vie.html', {'deces': deces }) 
    
