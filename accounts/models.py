from django.db import models
from django.contrib.auth.models import AbstractUser
# Create your models here.

class Customer(AbstractUser):
    is_actor = models.BooleanField(default=False)
    is_visiteur = models.BooleanField(default=False)
    
class Actor(models.Model):
    user = models.ForeignKey(Customer, on_delete=models.CASCADE, primary_key=True)
    number = models.CharField(max_length=255)
    date_of_birth = models.DateField(auto_now=True)
    place_of_birth = models.CharField(max_length=255)
    
    def __str__(self):
        return self.user.username
        
class visiteur(models.Model):
    user = models.ForeignKey(Customer, on_delete=models.CASCADE, primary_key=True)
    number = models.CharField(max_length=255)
    date_of_birth = models.DateField(auto_now_add=True)
    place_of_birth = models.CharField(max_length=255)
    image = models.ImageField(max_length=255, blank=True, null=True)
    
    def __str__(self):
        return self.user.username
        