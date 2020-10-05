from django.urls import path
from . import  views

app_name = 'start'

urlpatterns = [
    # home view
    path('',views.home_display,name='home_display')
]