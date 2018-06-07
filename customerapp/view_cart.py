
from  .interface.cartlib import *
from django.http import HttpResponse,JsonResponse,HttpResponseRedirect
from django.shortcuts import render
from django.views.decorators.csrf import csrf_exempt
#cart

# add_cart_id
def addcart_view(request,mid):
    pid=request.GET['pid']
    product=getproduct(mid,pid)
    request=addcart(request,product)
    jsres=cartodict(request.session['cart'])
    print(jsres)
    return JsonResponse(jsres)

@csrf_exempt
def deletecart_view(request):
    pid=request.GET['pid']
    mid = request.GET['mid']
    request=deleteitem(request, pid, mid)
    jsres=cartodict(request.session['cart'])
    print(jsres)
    return JsonResponse(jsres)



def cart_view(request):
    cart=request.session['cart']
    if not cart:
        return HttpResponseRedirect(request.get_all_path())
    resdict={'cart':cartlisting(cart)}
    return render(request,'cart.html',resdict)

