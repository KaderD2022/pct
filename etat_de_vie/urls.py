from django.contrib import admin
from django.urls import path 

from .views import naissance_view, deces_view

urlpatterns = [
    path('naissance/', naissance_view, name='naissance'), 
    path('deces/', deces_view, name='deces'), 
]