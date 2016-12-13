from django import forms
from .models import Email,Varemes
from django.forms.models import inlineformset_factory
from django.forms import ModelChoiceField, ChoiceField
from django.contrib.auth.models import User
from django.forms import formset_factory

class EmailForm(forms.ModelForm):

    class Meta:
        model = Email
        fields = ('email', 'subject', 'text')
