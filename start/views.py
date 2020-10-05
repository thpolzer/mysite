from django.shortcuts import render, get_object_or_404
from django.http import HttpResponse, Http404
from django.template import RequestContext,loader,Context

# Create your views here.
def home_display(request):
    return render(request, 'start/index.html')