from django.contrib import admin
from django.urls import include, path

from Custumadmin.views import admin_login
from .views import *
urlpatterns = [
    path('', admin_login, name="admin_login"), 
    path('dashboard/', dashboard, name="dashboard"),
    path('anemagers/', anemagers, name="anemagers"), 
    path('add_amenager' , add_amenager, name='add_amenager'),
    # path('update_amenage/<int:id>/' , update_amenager, name='update_amenager'),
]