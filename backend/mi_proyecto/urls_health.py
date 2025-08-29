# mi_proyecto/urls_health.py
from django.urls import path
from django.http import HttpResponse

urlpatterns = [
    path('healthz', lambda request: HttpResponse("OK")),
]
