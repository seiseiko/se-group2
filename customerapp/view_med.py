from django.shortcuts import render
from .interface.indexlib import *
from .interface.otherlib import *
from .interface.reclib import *

# show medicine according to id
def medview(request,mid):
    res={}
    res['info'] = getmedinfo(mid)
    res['custitle']='药品信息'
    res['stock']=getmedstock(mid)
    return render(request, 'medinfo.html',res)

# list according category 1
def c1listing(request,c1_guid):
    med=getmc1(c1_guid)
    med=pagination(request, med, pa=10)
    res=dict()
    res['custitle']=med[0]['c1_name']
    res['med']=med
    return render(request, 'medlisting.html', res)

# list according category 2
def c2listing(request,c2_guid):
    med=getmc2(c2_guid)
    med=pagination(request, med, pa=10)
    res=dict()
    res['custitle']=med[0]['c2_name']
    res['med']=med
    return render(request, 'medlisting.html', res)

def pharlisting(request,pid):
    med=getpharmed(pid)
    med=pagination(request, med, pa=10)
    res=dict()
    res['custitle']=Pharmacy.objects.get(idpharmacy=pid).__dict__['name']
    res['med']=med
    return render(request, 'medlisting.html', res)