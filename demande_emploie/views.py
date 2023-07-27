from django.shortcuts import redirect, render

from demande_emploie.models import demande_emploie

# Create your views here.


def affiche_view(request):
    demandes = demande_emploie.objects.all()
    return render(request, 'demande/affiche_demande.html', {'demandes': demandes}) 

def demande_view(request): 
    if request.method == "POST":
        first_name = request.POST.get('first_name')
        print(first_name)
        last_name = request.POST.get('last_name')
        print(last_name)
        niveau_etude = request.POST.get('niveau_etude')
        print(niveau_etude)
        dernier_diplome = request.POST.get('dernier_diplome')
        number = request.POST.get('dernier_diplome')
        print(dernier_diplome)
        skill = request.POST.get('dernier_diplome')
        print(dernier_diplome)
        image = request.POST.get('dernier_diplome')
        print(dernier_diplome)
        domaine = request.POST.get('domaine')
        content = request.POST.get('domaine')
        print(domaine)

        demande = demande_emploie.objects.create( first_name=first_name, last_name=last_name, niveau_etude=niveau_etude,
        dernier_diplome=dernier_diplome, number=number, skill=skill, image=image, domaine=domaine, content=content)
        print(demande)
  
        print('Valideeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee')      
        return redirect('home')
   
    else:
        print('non validesssssssssssssssssssssssssssssssssssssssssssssssssss')
        return render(request, 'demande/demande.html', )
