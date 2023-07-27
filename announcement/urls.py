from django.contrib import admin
from django.urls import path

from announcement.views import announcements

urlpatterns = [

    path('annonce/', announcements, name='announcements'),

] 