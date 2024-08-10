# Create your views here.
from django.shortcuts import render
from .models import Project, Certification

def portfolio(request):
    projects = Project.objects.all()
    certifications = Certification.objects.all()
    return render(request, 'portfolio/portfolio.html', {'projects': projects, 'certifications': certifications})

