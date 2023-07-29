from django.contrib import admin
from django.urls import path 

from .views import deplacement

urlpatterns = [
    path('deplacement/', deplacement, name='deplacement'), 
    # path('deces/', deces_view, name='deces'), 
]