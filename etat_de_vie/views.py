from django.shortcuts import redirect, render
from django.shortcuts import render
from datetime import date

from centre_sante.models import centre_sante
# Create your views here.
from .models import Naissance, Deces

def naissance_view(request):
    today = date.today()
    naissances = Naissance.objects.filter(date_de_naissance=today).filter(status=True)
    deces = Deces.objects.all().filter(date_de_deces=today)
    return render(request, 'etat_de_vie/etat_de_vie.html', {'naissances': naissances, 'deces': deces})




from django.contrib.auth.decorators import login_required

@login_required
def soumettre_naissances(request):
    if request.method == "POST":
        nom = request.POST.get('nom')
        genre = request.POST.get('genre')
        date_de_naissance = request.POST.get('date_de_naissance')
        lieu_dela_naissance = request.POST.get('lieu_dela_naissance')
        nom_du_pere = request.POST.get('nom_du_pere')
        nom_dela_mere = request.POST.get('nom_dela_mere')
        lieu_habitation = request.POST.get('lieu_habitation')
        famille = request.POST.get('famille')
        hopital = request.POST.get('hopital')
        numero = request.POST.get('numero ')
        email = request.POST.get('email')
        
        try:
            centre_sante_instance = centre_sante.objects.get(nom=hopital)
        except centre_sante.DoesNotExist:
            # Gérez le cas où le centre_sante n'existe pas
            centre_sante_instance = None
        
        naissance = Naissance.objects.create(nom=nom, genre=genre, date_de_naissance=date_de_naissance, lieu_dela_naissance=lieu_dela_naissance, nom_du_pere=nom_du_pere, nom_dela_mere=nom_dela_mere, lieu_habitation=lieu_habitation, famille=famille, hopital=centre_sante_instance, numero=numero, email=email)
        print(naissance)
  
        print('Valideeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee')      
        return redirect('home')
   
    else:
        print('non validesssssssssssssssssssssssssssssssssssssssssssssssssss')
        return render(request, 'etat_de_vie/soumettre_naissance.html')

@login_required
def soumettre_deces(request):
    if request.method == "POST":
        nom = request.POST.get('nom')
        genre = request.POST.get('genre')
        fonction = request.POST.get('fonction')
        date_de_naissance = request.POST.get('date_de_naissance')
        date_de_deces = request.POST.get('date_de_deces')
        lieu_ode_deces = request.POST.get('lieu_ode_deces')
        raison_du_deces = request.POST.get('raison_du_deces')
        nom_du_pere = request.POST.get('nom_du_pere')
        nom_de_mere = request.POST.get('nom_de_mere')
        lieu_habitation = request.POST.get('lieu_habitation')
        famille = request.POST.get('famille')
        hopital = request.POST.get('hopital')
        numero = request.POST.get('numero ')
        email = request.POST.get('email')
        
        try:
            centre_sante_instance = centre_sante.objects.get(nom=hopital)
        except centre_sante.DoesNotExist:
            # Gérez le cas où le centre_sante n'existe pas
            centre_sante_instance = None
        
        deces = Deces.objects.create(nom=nom, genre=genre, fonction=fonction, date_de_naissance=date_de_naissance, date_de_deces=date_de_deces, lieu_ode_deces=lieu_ode_deces,  raison_du_deces=raison_du_deces,  nom_du_pere=nom_du_pere, nom_de_mere=nom_de_mere, lieu_habitation=lieu_habitation, famille=famille, hopital=centre_sante_instance, numero=numero, email=email)
        print(deces)
  
        print('Valideeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee')      
        return redirect('home')
   
    else:
        print('non validesssssssssssssssssssssssssssssssssssssssssssssssssss')
        return render(request, 'etat_de_vie/soumettre_deces.html')

