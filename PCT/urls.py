
from django.contrib import admin
from django.urls import include, path

urlpatterns = [

    path('', include('compte.urls')),
    path('admin/', include('Custumadmin.urls')),
    path('dj-admin/', admin.site.urls),

    path('metier/', include('metier.urls')),
    path('skill/', include('competence.urls')),
    path('demande_emploie/', include('demande_emploie.urls')),
    path('pharmacie/', include('pharmacie.urls')),
    path('centre_sante/', include('centre_sante.urls')),
    path('projet/', include('projet.urls')),
    path('naissances/', include('etat_de_vie.urls')),
    path('maladies/', include('maladies.urls')),
    path('deplacement/', include('deplacement.urls')),
    path('actualites/', include('famille.urls')), 
    path('autres/', include('autre.urls')),
]