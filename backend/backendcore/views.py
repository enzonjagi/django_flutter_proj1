from django.shortcuts import render, HttpResponse
from rest_framework.response import Response
from rest_framework.permissions import AllowAny
from rest_framework.decorators import api_view, permission_classes

# Create your views here.

@api_view(['GET'],)
@permission_classes([AllowAny],)
def hello_django(request):
    """A Simple Hello view"""

    # print("Request received")
    return Response(
        {'message: Request imefika bro, Rada Django?'}, 
        status=200
    )
    # return HttpResponse("Greetings Visitor, welcome to Area ya Mzito!")