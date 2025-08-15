from django.contrib import admin
from django.urls import path 

from .views import  contact, appros

urlpatterns = [

    path('contact/', contact, name='contact'), 
    path('appros/', appros, name='appros'), 
]