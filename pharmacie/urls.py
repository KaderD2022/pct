from django.contrib import admin
from django.urls import path

from pharmacie.views import pharmacy, pharmacy_garde

urlpatterns = [
    path('pharmacy/', pharmacy, name='pharmacy'),
    path('pharmacy_garde/', pharmacy_garde, name='pharmacy_garde'),
]