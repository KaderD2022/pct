from django.contrib import admin
from django.urls import path

from metier.views import order

urlpatterns = [

    path('order/', order, name='order'),

]