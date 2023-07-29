from django.contrib import admin
from django.urls import path 

from .views import maladie_view

urlpatterns = [
    path('maladie/', maladie_view, name='maladie'), 
    # path('deces/', deces_view, name='deces'), 
]