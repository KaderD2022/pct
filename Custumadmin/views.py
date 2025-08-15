from django.shortcuts import get_object_or_404, render
# Create your views here.
from django.http import HttpResponseRedirect
from django.shortcuts import redirect, render
from django.contrib import messages
from django.contrib.auth import authenticate, login
from django.contrib import messages
from django.contrib.auth.models import User
from django.shortcuts import render
from django.shortcuts import redirect, render
from django.contrib.auth import authenticate, login, logout
from django.contrib import messages
from django.urls import reverse
from compte.models import Habitant
from deplacement.models import Anemager
from famille.models import Famille
# Create your views here.

def admin_login(request):
    try:
        if request.user.is_authenticated:
            return redirect('/dashboard/')
        if request.method == 'POST':
            username = request.POST.get('username')
            password = request.POST.get('password')
            user_obj = Habitant.objects.filter(username=username)
            if not user_obj.exists ():
                messages.info(request, 'Account not found')
                return HttpResponseRedirect(request.META.get('HTTP_REFERER'))
            user_obj = authenticate(username=username, password=password)
            if user_obj and user_obj.is_superuser:
                login(request , user_obj)
                return redirect('/dashboard/')
            
            messages.info(request , 'Invalid password')
            return redirect('/')
        return render(request, 'custumadmin/login.html')
    
    except Exception as e:
        print(e)
                
            
def dashboard(request):
    return render(request, 'custumadmin/dashboard.html')

def anemagers(request):
    objs   = Anemager.objects.all()
    context = {
                'objs': objs
               }
    return render(request, 'custumadmin/amenagers.html', context)



# def add_amenager(request):
#     if request.method == "POST":
#         nom = request.POST["nom"]
#         genre = request.POST["genre"]
#         fonction = request.POST["fonction"]
#         origine = request.POST["origine"]
#         date_de_naissance = request.POST["date_de_naissance"]
#         Type_of_accommodation_on_arrival = request.POST["Type_of_accommodation_on_arrival"]
#         nom_du_pere = request.POST["nom_du_pere"]
#         nom_de_mere = request.POST["nom_de_mere"]
#         lieu_habitation = request.POST["lieu_habitation"]

#         familles_id = request.POST.get('familles')
#         status = request.POST["status"]
        


#         try:
#             familles_id = int(familles_id)
#         except ValueError:
#             # Gérer l'erreur si familles_id n'est pas un nombre entier valide
#             messages.error(request, "L'ID de Famille n'est pas valide.")
#             return HttpResponseRedirect(reverse('anemagers'))  # Redirigez ou affichez un message d'erreur approprié
                

#         try:
#             # Récupérez l'instance de Famille correspondante
            
#             # Assurez-vous que familles_id est un nombre entier valide
#             familles_id = int(familles_id)
#             familles = Famille.objects.get(pk=familles_id)
#             amenager = Anemager(
#                 nom=nom,
#                 genre=genre,
#                 fonction=fonction,
#                 origine=origine,
#                 date_de_naissance=date_de_naissance,
#                 Type_of_accommodation_on_arrival=Type_of_accommodation_on_arrival,
#                 nom_du_pere=nom_du_pere,
#                 nom_de_mere=nom_de_mere,
#                 lieu_habitation=lieu_habitation,
#                 familles=familles,
#                 status=status
#             )
#             amenager.save()
#             messages.success(request, "AJOUTÉ AVEC SUCCÈS")
#         except Famille.DoesNotExist:
#             messages.error(request, "La Famille avec l'ID spécifié n'existe pas.")
        
#     return render(request, 'custumadmin/amenagers.html')
    

def add_amenager(request):
    print("11111111111111111111111111")
    if request.method == "POST":
        print("2222222222222222222222221")
        nom = request.POST["nom"]
        print(nom)
        genre = request.POST["genre"]
        print(genre)
        fonction = request.POST["fonction"]
        print(fonction)
        origine = request.POST["origine"]
        print(origine) 
        date_de_naissance = request.POST
        ["date_de_naissance"]
        print(date_de_naissance)
        Type_of_accommodation_on_arrival = request.POST["Type_of_accommodation_on_arrival"]
        print(Type_of_accommodation_on_arrival)
        nom_du_pere = request.POST["nom_du_pere"]
        print(nom_du_pere)
        nom_de_mere = request.POST["nom_de_mere"]
        print(nom_de_mere)
        lieu_habitation = request.POST["lieu_habitation"]
        print(lieu_habitation)

        famille = request.POST["famille"]                  
        print(famille )
        status = request.POST["status"]
        print(status)
                # Récupérez l'instance de Famille correspondante

        amenager = Anemager(nom = nom, genre = genre, fonction = fonction, origine = origine, date_de_naissance = date_de_naissance, Type_of_accommodation_on_arrival = Type_of_accommodation_on_arrival, nom_du_pere = nom_du_pere, nom_de_mere = nom_de_mere, lieu_habitation = lieu_habitation, famille = famille, status = status)
        print(amenager)
        amenager.save() 
        messages.info(request, "AJOUTER AVEC SUCCESS")
    else:
        pass
    return render(request, 'custumadmin/amenagers.html')


# from django.shortcuts import render, get_object_or_404
# from django.http import HttpResponseRedirect
# from django.urls import reverse


# def update_amenager(request):
#     if request.method == 'POST':
#         try:
#             amenagers_id = int(request.POST.get('amenagers'))  # Convertir en nombre entier
#             nom = request.POST.get('nom')
#             genre = request.POST.get('genre')
#             fonction = request.POST.get('fonction')
#             origine = request.POST.get('origine')
#             date_de_naissance = request.POST.get('date_de_naissance')
#             Type_of_accommodation_on_arrival = request.POST.get('Type_of_accommodation_on_arrival')
#             nom_du_pere = request.POST.get('nom_du_pere')
#             nom_de_mere = request.POST.get('nom_de_mere')
#             lieu_habitation = request.POST.get('lieu_habitation')
#             famille = request.POST.get('famille')
#             status = request.POST.get('status')
            
#             amenager = get_object_or_404(Amenager, pk=amenagers_id)
#             amenager.nom = nom
#             amenager.genre = genre
#             amenager.fonction = fonction
#             amenager.origine = origine
#             amenager.date_de_naissance = date_de_naissance
#             amenager.Type_of_accommodation_on_arrival = Type_of_accommodation_on_arrival
#             amenager.nom_du_pere = nom_du_pere
#             amenager.nom_de_mere = nom_de_mere
#             amenager.lieu_habitation = lieu_habitation
#             amenager.famille = famille
#             amenager.status = status
#             amenager.save()

#         except ValueError:
#             # Gérer l'erreur si amenagers_id n'est pas un nombre entier valide
#             return render(request, 'custumadmin/errors1.html')
#         except KeyError:
#             # Gérer les clés manquantes dans les données POST
#             return render(request, 'custumadmin/errors2.html')
#         except Amenager.DoesNotExist:
#             # Gérer le cas où l'objet Amenager avec la clé primaire donnée n'existe pas
#             return render(request, 'custumadmin/errors3.html')
        
#     return HttpResponseRedirect(reverse('anemagers'))



# def update_amenager(request):
#     if request.method == 'POST':
#         try:
#             amenagers_id = int(request.POST.get('amenagers'))  # Convertir en nombre entier
#             nom = request.POST.get('nom')
#             genre = request.POST.get('genre')
#             fonction = request.POST.get('fonction')
#             origine = request.POST.get('origine')
#             date_de_naissance = request.POST.get('date_de_naissance')
#             Type_of_accommodation_on_arrival = request.POST.get('Type_of_accommodation_on_arrival')
#             nom_du_pere = request.POST.get('nom_du_pere')
#             nom_de_mere = request.POST.get('nom_de_mere')
#             lieu_habitation = request.POST.get('lieu_habitation')
#             famille = request.POST.get('famille')
#             status = request.POST.get('status')
            
#             amenagers = get_object_or_404(Anemager, pk=amenagers_id)
#             amenagers.nom = nom
#             amenagers.genre = genre
#             amenagers.fonction = fonction
#             amenagers.origine = origine
#             amenagers.date_de_naissance = date_de_naissance
#             amenagers.Type_of_accommodation_on_arrival = Type_of_accommodation_on_arrival
#             amenagers.nom_du_pere = nom_du_pere
#             amenagers.nom_de_mere = nom_de_mere
#             amenagers.lieu_habitation = lieu_habitation
#             amenagers.famille = famille
#             amenagers.status = status
#             amenagers.save()

#         except ValueError:
#             # Gérer l'erreur si stock_id n'est pas un nombre entier valide
#             return render(request, 'custumadmin/errors1.html')
#         except KeyError:
#             # Gérer les clés manquantes dans les données POST
#             return render(request, 'custumadmin/errors2.html')
#         except Anemager.DoesNotExist:
#             if Anemager.DoesNotExist:
#                  return render(request, 'custumadmin/errors3.html')

        
#     return HttpResponseRedirect(reverse('anemagers'))
# from django.shortcuts import render, get_object_or_404
# from django.http import HttpResponseRedirect
# from django.urls import reverse


# def update_amenager(request, id):
#     if request.method == 'POST':
#         try:

#             nom = request.POST.get('nom')
#             genre = request.POST.get('genre')
#             fonction = request.POST.get('fonction')
#             origine = request.POST.get('origine')
#             date_de_naissance = request.POST.get('date_de_naissance')
#             Type_of_accommodation_on_arrival = request.POST.get('Type_of_accommodation_on_arrival')
#             nom_du_pere = request.POST.get('nom_du_pere')
#             nom_de_mere = request.POST.get('nom_de_mere')
#             lieu_habitation = request.POST.get('lieu_habitation')
#             famille = request.POST.get('famille')
#             status = request.POST.get('status')
            
#             # Récupérer l'objet Anemager ou renvoyer une erreur 404 si l'ID n'existe pas
#             amenagers = get_object_or_404(Anemager, pk=id)
            
#             # Mettre à jour les attributs de l'objet amenagers
#             amenagers.nom = nom
#             amenagers.genre = genre
#             amenagers.fonction = fonction
#             amenagers.origine = origine
#             amenagers.date_de_naissance = date_de_naissance
#             amenagers.Type_of_accommodation_on_arrival = Type_of_accommodation_on_arrival
#             amenagers.nom_du_pere = nom_du_pere
#             amenagers.nom_de_mere = nom_de_mere
#             amenagers.lieu_habitation = lieu_habitation
#             amenagers.famille = famille
#             amenagers.status = status
            
#             # Enregistrer les modifications
#             amenagers.save()

#         except (ValueError, TypeError):
#             # Gérer l'erreur si l'ID n'est pas un nombre entier valide
#             return render(request, 'custumadmin/errors1.html')
#         except KeyError:
#             # Gérer les clés manquantes dans les données POST
#             return render(request, 'custumadmin/errors2.html')
        
#     return HttpResponseRedirect(reverse('anemagers'))

