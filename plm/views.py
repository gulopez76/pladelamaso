# Create your views here.
# -*- coding: utf-8 -*-
from django.conf import settings
from django.views.generic import CreateView, ListView, DetailView, UpdateView
from django.shortcuts import render
from .models import Vins, TipusVins, Empresa, Varemes, PreusVins, Email
from .forms import EmailForm
from django.template.loader import render_to_string, get_template
from django.core.mail import EmailMessage, send_mail, BadHeaderError
from django.http import HttpResponse, HttpResponseRedirect
from django.shortcuts import render,get_object_or_404
from django.shortcuts import redirect
from django.template.context_processors import csrf
from django.contrib.auth.models import User
from django.core.urlresolvers import reverse
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required
from django.contrib import messages
from django.contrib.auth.hashers import make_password
from django.db import connection
from django.db.models.query import QuerySet
from django.forms import formset_factory
from django.template import RequestContext
from django.template.loader import get_template
from django.http import HttpResponse, QueryDict
from django.forms.models import model_to_dict
from django.utils.encoding import force_text
from django.utils.encoding import smart_unicode
from django import template
from django.utils.encoding import smart_str
import string
import MySQLdb
from io import BytesIO
from django.conf import settings
from reportlab.pdfgen import canvas
from reportlab.lib.enums import TA_RIGHT, TA_JUSTIFY
from reportlab.pdfbase import pdfmetrics
from reportlab.pdfbase.ttfonts import TTFont
from reportlab.platypus import SimpleDocTemplate, Paragraph, TableStyle, Spacer, Image
from reportlab.lib.styles import getSampleStyleSheet, ParagraphStyle
from reportlab.lib import colors
from reportlab.lib.pagesizes import letter, landscape
from reportlab.platypus import Table
from reportlab.lib.units import inch
import datetime
from django.utils.dateformat import DateFormat
from django.utils.formats import get_format
import StringIO
import xlsxwriter
from dateutil.parser import parse

# Create your views here.
def index(request):
    return render(request, 'plm/index.html', {})

def Email_view(request):
    if request.method == "POST":
        form = EmailForm(request.POST)
        if form.is_valid():
            email = form.save(commit=False)
            subject = request.POST.get('subject', '')
            message = request.POST.get('text', '')
            from_email = request.POST.get('email', '')
            email.save()
            if subject and message and from_email:
                try:
                    send_mail(subject, message, 'billy@virtelix.eu', [from_email])
                except BadHeaderError:
                    return HttpResponse('Invalid header found.')
                return redirect('plm.views.index')
            else:
                # In reality we'd use a form class
                # to get proper validation errors.
                return HttpResponse('Make sure all fields are entered and valid.')
    else:
        form = EmailForm()
    return render(request, 'plm/email.html', {'form': form})

def Varema_view(request, pk):
        varema = get_object_or_404(Varemes.objects.only('icones', 'titolvarema', 'descripciovarema', 'anyvarema', 'fotosvarema1','fotosvarema2','fotosvarema3','fotosvarema4'), idvarema=pk) 
#        usuprofile = get_object_or_404(userprofile.objects.select_related('user__username', 'user__email').only('user__username', 'user__email', 'photo').get(user_id=pk), pk=pk)
	print "============================================================="
	print "Update user profile"
	print "============================================================="
	print varema.icones
	print varema.titolvarema
	print varema.descripciovarema
	print varema.anyvarema
	print varema.fotosvarema1
	print varema.fotosvarema2
	print varema.fotosvarema3
	print varema.fotosvarema4
	context = {
			'icones': varema.icones, 
			'titol': varema.titolvarema,
			'descripcio': varema.descripciovarema,
			'anyvarema': varema.anyvarema,
			'foto1': varema.fotosvarema1,
			'foto2': varema.fotosvarema2,
			'foto3': varema.fotosvarema3,
			'foto4': varema.fotosvarema4,
		  }				
	return render(request, 'plm/varema_detail.html', context)

def Vins_view(request, pk):
        vins = get_object_or_404(Vins.objects.select_related('idvarema__anyvarema','idtipusvi__titoltipusvi').only('icones', 'titolvi', 'descripciovi','idvarema__anyvarema','idtipusvi__titoltipusvi','fotosvi1','fotosvi2','fotosvi3','fotosvi4'), idvi=pk) 
#        usuprofile = get_object_or_404(userprofile.objects.select_related('user__username', 'user__email').only('user__username', 'user__email', 'photo').get(user_id=pk), pk=pk)
	print "============================================================="
	print "Update user profile"
	print "============================================================="
	print vins.icones
	print vins.titolvi
	print vins.descripciovi
	print vins.idvarema.anyvarema
	print vins.idtipusvi.titoltipusvi
	print vins.fotosvi2
	print vins.fotosvi2
	print vins.fotosvi3
	print vins.fotosvi4
	context = {
			'icones': vins.icones, 
			'titol': vins.titolvi,
			'descripcio': vins.descripciovi,
			'varema': vins.idvarema.anyvarema,
			'tipusvi': vins.idtipusvi.titoltipusvi,
			'foto1': vins.fotosvi1,
			'foto2': vins.fotosvi2,
			'foto3': vins.fotosvi3,
			'foto4': vins.fotosvi4,
		  }				
	return render(request, 'plm/vins_detail.html', context)

def PreusVins_view(request):
        preusvins = PreusVins.objects.filter(visible=1).select_related('idvi__titolvi','idvi__icones').only('taxa','preubrut','preunet','idvi__titolvi','idvi__icones') 
	context = {
			'preusvins': preusvins, 
		  }				
	return render(request, 'plm/preusvins_detail.html', context)
