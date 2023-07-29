from django.shortcuts import render

# Create your views here.
from deplacement.models import Finished, Moved

# Create your views here.

def deplacement(request):
    finisheds = Finished.objects.all()
    moveds = Moved.objects.all()
    return render(request, 'deplacement/finish.html', {'finisheds': finisheds, 'moveds': moveds}) 
    
