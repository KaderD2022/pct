from django.contrib import admin
from django.urls import path 

from .views import deplacement, passer_anemager_a_denemager, annulle_anemager



urlpatterns = [
    path('deplacement/', deplacement, name='deplacement'), 
    path('amenager/annule/<int:amager_id>', annulle_anemager, name='annule_amenager'), 

    # path('deces/', deces_view, name='deces'), 
]