# Create your views here.
# -*- coding: utf-8 -*-
from django.conf import settings
from django.views.generic import CreateView, ListView, DetailView, UpdateView
from django.shortcuts import render
from .models import Vins, TipusVins, Empresa, Varemes, PreusVins, Email
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
