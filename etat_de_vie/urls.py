from django.contrib import admin
from django.urls import path 

from .views import naissance_view, soumettre_naissances, soumettre_deces

urlpatterns = [
    path('naissance/', naissance_view, name='naissance'), 
    path('soumettre_naissances/', soumettre_naissances, name='soumettre_naissances'), 
    path('soumettre_deces/', soumettre_deces, name='soumettre_deces'), 

]