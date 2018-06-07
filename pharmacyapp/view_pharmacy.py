from django.shortcuts import render
from .interface.pharmacylib import *
from .interface.indexlib import pagination
def pharmacy_index(request):
    resdict=getpindex(request)
    return render(request,'pharindex.html',resdict)
def pharmacy_stock(request):
    stock=getpstock(request)
    stock = pagination(request, stock, pa=15)
    res=dict()
    res['stock']=stock
    return render(request, 'pharstock.html', res)

def pharmacy_order(request):

    return