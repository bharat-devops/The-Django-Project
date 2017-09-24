from django.shortcuts import render
from django.http import HttpResponse
from rango.models import Page

def index(request):
    context_dict = {'boldmessage': "Crunchy, creamy, cookie, candy, cupcake!"}
    return render(request, 'rango/index.html', context=context_dict)

#    return HttpResponse("Bharat Says Hi")

# Create your views here.
