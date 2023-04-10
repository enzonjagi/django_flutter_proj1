from django.shortcuts import render, HttpResponse

# Create your views here.


def hello_django(request):
    """A Simple Hello view"""

    return HttpResponse("Greetings Visitor, welcome to Area ya Mzito!")