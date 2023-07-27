from django.contrib import admin
from django.urls import path

from pharmacie.views import pharmacy

urlpatterns = [
    path('pharmacy/', pharmacy, name='pharmacy'),
]