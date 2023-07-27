from django.shortcuts import render

from announcement.models import Announcement

# Create your views here.

def announcements(request):
    annonces = Announcement.objects.all()
    return render(request, 'announcement/announcement.html', {'annonces': annonces})