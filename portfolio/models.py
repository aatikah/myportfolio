# Create your models here.
from django.db import models

class Project(models.Model):
    title = models.CharField(max_length=200)
    description = models.TextField()
    image = models.ImageField(upload_to='project_images/')
    github_link = models.URLField()
    live_link = models.URLField(blank=True, null=True)

    def __str__(self):
        return self.title

class Certification(models.Model):
    name = models.CharField(max_length=200)
    issuing_organization = models.CharField(max_length=200)
    issue_date = models.DateField()
    certificate_link = models.URLField()

    def __str__(self):
        return self.name
