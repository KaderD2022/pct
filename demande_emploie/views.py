from datetime import datetime
from django.shortcuts import get_object_or_404, redirect, render
from django.db.models import Q
from demande_emploie.models import demande_emploie, Offre_emploi
from django.contrib.auth.decorators import login_required
# Create your views here.

@login_required
def affiche_view(request):
    demandes = demande_emploie.objects.all()
    return render(request, 'demande/affiche_demande.html', {'demandes': demandes}) 

@login_required
def offre_view(request):
    now = datetime.now()
    offres = Offre_emploi.objects.all().filter(date_limite__gt=now)
    return render(request, 'demande/offre_emploi.html', {'offres': offres}) 





@login_required
def detail_new(request, id):
    demandes = get_object_or_404(demande_emploie, pk=id)
    return render(request, 'demande/detail.html', {'demande': demandes})

@login_required
def demande_view(request): 
    if request.method == "POST":
        nom = request.POST.get('nom')
        prenom = request.POST.get('prenom')
        niveau_etude = request.POST.get('niveau_etude')
        print(niveau_etude)
        dernier_diplome = request.POST.get('dernier_diplome')
        numero = request.POST.get('numero')
        print(dernier_diplome)
        competence = request.POST.get('competence')
        print(dernier_diplome)
        image = request.POST.get('image')
        print(dernier_diplome)
        metier = request.POST.get('metier')
        contenu = request.POST.get('contenu')
        email = request.POST.get('email')

        demande = demande_emploie.objects.create( nom=nom, prenom=prenom, niveau_etude=niveau_etude,
        dernier_diplome=dernier_diplome, numero=numero, competence=competence, image=image, metier=metier, contenu=contenu, email=email)
        print(demande)
       
  
        print('Valideeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee')      
        return redirect('affiche')
   
    else:
        print('non validesssssssssssssssssssssssssssssssssssssssssssssssssss')
        return render(request, 'demande/demande.html', )


