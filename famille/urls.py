from django.contrib import admin
from django.urls import path 

from .views import actualite_view, activite_view, centre_interet_view

urlpatterns = [
    path('actualite/', actualite_view, name='actualite'), 
    path('activite/', activite_view, name='activite'), 
    path('centre_interet/', centre_interet_view, name='centre_interet'), 

]