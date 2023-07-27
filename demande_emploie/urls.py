from django.contrib import admin
from django.urls import path 

from .views import demande_view, affiche_view

urlpatterns = [
    path('affiche/', affiche_view, name='affiche'), 
    path('demande/', demande_view, name='demande'), 
]