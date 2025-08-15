from django.shortcuts import render

# Create your views here.
def appros(request):
    return render(request, 'autre/appros.html')



def contact(request):
    return render(request, 'autre/contact.html')