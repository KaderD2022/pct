from django.db import models

from skill.models import Skill

# Create your models here.

class Job(models.Model):
    name = models.CharField(max_length=255)
    sector = models.name = models.CharField(max_length=255, blank=True, null=True)
    skill = models.ForeignKey(Skill, on_delete=models.CASCADE, related_name="skill", null=True, blank=True)
    
    def __str__(self):
        return self.name