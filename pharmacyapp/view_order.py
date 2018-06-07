from .interface.orderlib import *
from django.shortcuts import render
from .models import Order
from django.contrib.auth.decorators import login_required
from django.http import HttpResponse,HttpResponseRedirect

def check_view(request):
    if request.method == 'POST':
        #process and check out, return the order id
        oid=checkout(request)
        return  HttpResponseRedirect('/orderview/{}'.format(oid))
    if request.method=='GET':
        pid=request.GET['pid']
        resdict=checkoutdict(pid,request)
        print(resdict)
        return render(request,'order.html',resdict)

@login_required
def order_pay(request):
    oid=request.GET['oid']
    order = Order.objects.get(idorder=oid)
    order.status='paid'
    order.save()
    return HttpResponseRedirect('/orderview/{}'.format(oid))

def order_view(request,oid):
    orderdict=Order.objects.get(idorder=oid).__dict__
    orderdict=url_to_list(orderdict)
    print(orderdict)
    return render(request,'orderview.html',orderdict)

def porder_view(request,oid):
    orderdict=Order.objects.get(idorder=oid).__dict__
    orderdict=url_to_list(orderdict)
    print(orderdict)
    return render(request,'porderview.html',orderdict)