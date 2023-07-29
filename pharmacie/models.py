from django.db import models

# Create your models here.

class Pharmacy(models.Model):
    name = models.CharField(max_length=255)
    location = models.CharField(max_length=100000)
    number_pharmacy = models.CharField(max_length=25)
    on_call_period = models.CharField(max_length=100)
    start_date = models.DateTimeField(auto_now=True)
    end_date = models.DateTimeField(auto_now=True)
    Pharmacist_holder = models.CharField(max_length=255)
    image = models.ImageField(upload_to='photos/pharmacie', null=True, blank=True)
    
    def __str__(self):
        return self.name