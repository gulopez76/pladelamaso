from django.conf.urls import include, url, patterns
from . import views
from django.conf import settings

urlpatterns = (
	url(r'^$', views.index, name='index'),
	url(r'^contact$', views.Email_view, name='Email_view'),
	url(r'^varema/(?P<pk>[0-9]+)/$', views.Varema_view, name='Varema_view'),
	url(r'^vins/(?P<pk>[0-9]+)/$', views.Vins_view, name='Vins_view'),
	url(r'^preus$', views.PreusVins_view, name='PreusVins_view'),
)
