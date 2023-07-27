from django.contrib import admin
from django.urls import path

from accounts.views import index, login_view, register_view,  logout_view, UserDetailView

urlpatterns = [
    path('', index, name='home'),
    path('login/', login_view, name='login'),
    path('register/', register_view, name='register'),
    path('logout/', logout_view, name='logout'),
    path('detail/<int:pk>/', UserDetailView.as_view(), name='Detail'),
]