from django.shortcuts import render

from famille.models import Actualite, Activite, Centre_interet

# Create your views here.


def actualite_view(request):
    actualites = Actualite.objects.all()
    return render(request, 'famille/actualité.html', {'actualites': actualites}) 

    
def activite_view(request):
    activites = Activite.objects.all()
    return render(request, 'famille/activite.html', {'activites': activites}) 

    
def centre_interet_view(request):
    centre_interets = Centre_interet.objects.all()
    return render(request, 'famille/centre_interet.html', {'centre_interets': centre_interets}) 

    
