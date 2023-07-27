from django.shortcuts import render
from django.shortcuts import redirect, render
from django.contrib.auth import authenticate, login, logout
from django.contrib import messages
from django.views.generic import DetailView

from accounts.models import Customer

# Create your views here.


def index(request):
    return render(request, 'accounts/index.html')



def login_view(request):
    if not request.user.is_authenticated:
        if request.method == 'POST':
            username = request.POST['username']
            password = request.POST['password']
            user = authenticate(request, username=username, password=password)
            if user is not None:     
                login(request, user)              
                return redirect('home')               
            else:
                messages.error(request, "Vous etez pas encore client")
                return render(request, 'accounts/login.html', {})
        else:
            return render(request, 'accounts/login.html', {})
    else:
        return redirect('home')


def logout_view(request):
    logout(request)
    return redirect('login')


def register_view(request): 
    if request.method == "POST":
        username = request.POST.get('username')
        print(username)
        first_name = request.POST.get('first_name')
        print(first_name)
        last_name = request.POST.get('last_name')
        print(last_name)
        email = request.POST.get('email')
        print(email)
        password = request.POST.get('password')
        is_visiteur = request.POST.get('is_visiteur', False) == 'True'
        is_actor = request.POST.get('is_actor', False) == 'True'

        # number = request.POST['number']
        # image = request.POST['image']
        # date_of_birth = request.POST['date_of_birth']
        # place_of_birth = request.POST['place_of_birth']
        print(password)
        user = Customer.objects.create_user(username=username, first_name=first_name, last_name=last_name, email=email,
          password=password, is_visiteur=is_visiteur, is_actor=is_actor)
        print(user)
  
        print('Valideeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee')      
        return redirect('login')
   
    else:
        print('non validesssssssssssssssssssssssssssssssssssssssssssssssssss')
        return render(request, 'accounts/register.html', )



class UserDetailView(DetailView):
    model = Customer
    template_name = 'user_detail.html'
    context_object_name = 'user'
