# Create your models here.
from django.db import models
from django.utils import timezone
from django.conf import settings
from django.utils.timezone import now
from decimal import Decimal

class userprofile(models.Model):
    user = models.OneToOneField(settings.AUTH_USER_MODEL)
    photo = models.ImageField(upload_to='photos/', blank=True, null=True)

    def __unicode__(self):
        return self.user.username

class Varemes(models.Model):
	idvarema = models.AutoField(primary_key=True)
	icones =  models.ImageField(upload_to='photos/varemas/', blank=True, null=True)
	titolvarema = models.CharField(max_length=15, null=True)
	descripciovarema = models.TextField(null=True)
	anyvarema = models.CharField(max_length=4, null=False)
	fotosvarema1  = models.ImageField(upload_to='photos/varemas/', blank=True, null=True)
	fotosvarema2  = models.ImageField(upload_to='photos/varemas/', blank=True, null=True)
	fotosvarema3  = models.ImageField(upload_to='photos/varemas/', blank=True, null=True)
	fotosvarema4  = models.ImageField(upload_to='photos/varemas/', blank=True, null=True)
	user = models.ForeignKey('auth.User')

	def save_Varemes(self):
		self.save()

	def __unicode__(self):
		return self.titolvarema

class TipusVins(models.Model):
	idtipusvi = models.AutoField(primary_key=True)
	icones =  models.ImageField(upload_to='photos/tipusvins/', blank=True, null=True)
	titoltipusvi = models.CharField(max_length=15, null=True)
	descripciotipusvi = models.TextField(null=True)
	user = models.ForeignKey('auth.User')

	def save_TipusVins(self):
		self.save()

	def __unicode__(self):
		return self.titoltipusvi

class Vins(models.Model):
	idvi = models.AutoField(primary_key=True)
	icones = models.ImageField(upload_to='photos/vins/', blank=True, null=True)
	titolvi = models.CharField(max_length=15, null=True)
	descripciovi = models.TextField(null=True)
	idvarema =  models.ForeignKey(Varemes) 
	idtipusvi =  models.ForeignKey(TipusVins) 
	fotosvi1  = models.ImageField(upload_to='photos/vins/', blank=True, null=True)
	fotosvi2  = models.ImageField(upload_to='photos/vins/', blank=True, null=True)
	fotosvi3  = models.ImageField(upload_to='photos/vins/', blank=True, null=True)
	fotosvi4  = models.ImageField(upload_to='photos/vins/', blank=True, null=True)
	user = models.ForeignKey('auth.User')

	def save_Vins(self):
		self.save()

	def __unicode__(self):
		return self.titolvi

class PreusVins(models.Model):
	idpreuvi = models.AutoField(primary_key=True)
	idvi = models.ForeignKey(Vins)
	taxa =  models.DecimalField(max_digits=10,decimal_places=2,default=Decimal('21.0000'))
	preubrut =  models.DecimalField(max_digits=10,decimal_places=2,default=Decimal('0.0000'))
	preunet =  models.DecimalField(max_digits=10,decimal_places=2,default=Decimal('0.0000'))
	visible =  models.CharField(max_length=1, null=True) 
	user = models.ForeignKey('auth.User')

	def save_PreusVins(self):
		self.save()

class Empresa(models.Model):
	idempresa = models.AutoField(primary_key=True)
	icones =  models.ImageField(upload_to='photos/empresa/', blank=True, null=True)
	titolempresa = models.CharField(max_length=15, null=True)
	descripcioempresa = models.TextField(null=True)
	user = models.ForeignKey('auth.User')

	def save_Empresa(self):
		self.save()

	def __unicode__(self):
		return self.titolempresa

class Email(models.Model):
	email   = models.CharField(max_length=100)
	subject = models.CharField(max_length=50)
	text = models.TextField()
	created_date = models.DateTimeField(
	default=timezone.now)

	def save_Email(self):
		self.save()

	def __unicode__(self):
		return self.subject
