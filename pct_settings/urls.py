"""pct_settings URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import include, path

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('accounts.urls')),
    path('metier/', include('metier.urls')),
    path('skill/', include('skill.urls')),
    path('annonce/', include('announcement.urls')),
    path('demande_emploie/', include('demande_emploie.urls')),
    path('pharmacie/', include('pharmacie.urls')),
    path('centre_sante/', include('centre_sante.urls')),
    path('projet/', include('project.urls')),
    path('naissances/', include('etat_de_vie.urls')),
    path('maladies/', include('maladies.urls')),
    path('deplacement/', include('deplacement.urls')),
]

