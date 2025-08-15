from django.contrib import admin
from django.urls import path 

from .views import maladie_view, epidemie_view

urlpatterns = [
    path('maladie/', maladie_view, name='maladie'), 
    path('epidemie/', epidemie_view, name='epidemie'), 
]