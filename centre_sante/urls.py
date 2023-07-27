from django.contrib import admin
from django.urls import path

from centre_sante.views import center

urlpatterns = [
    path('center/', center, name='center'),
]