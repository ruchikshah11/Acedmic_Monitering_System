from django.forms import ModelForm
from .models import Faculty


class Faculty_Registration(ModelForm):
    class Meta:
        model=Faculty
        fields=['firstname','lastname','username','email','contact_number']


