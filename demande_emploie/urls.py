from django.contrib import admin
from django.urls import path 

from .views import demande_view, affiche_view, detail_new, offre_view

urlpatterns = [
    path('affiche/', affiche_view, name='affiche'), 
    path('offre/', offre_view, name='offre'), 
    path('demande/', demande_view, name='demande'), 
    path('detail/<int:id>/', detail_new, name='detail'),
]