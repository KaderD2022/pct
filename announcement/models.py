from django.db import models

from metier.models import Job

# Create your models here.

class Announcement(models.Model):
    job = models.ForeignKey(Job, on_delete=models.CASCADE, null=True, blank=True, related_name='announcements')
    prerequisite = models.CharField(max_length=1000, null=True, blank=True)
    space_available = models.IntegerField(null=True, blank=True)
    title = models.CharField(max_length=500, null=True, blank=True)
    content = models.TextField(null=True, blank=True)
    
    def __str__(self):
        return self.job