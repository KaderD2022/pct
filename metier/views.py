from django.shortcuts import render

# Create your views here.
from .models import Job
def order(request):
    orders = Job.objects.all()
    return render(request, 'metier/metier.html', {'orders': orders})