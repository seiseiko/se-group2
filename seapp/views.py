from django.shortcuts import render
from .interface.indexlib import *
from .interface.cartlib import *
from .interface.reclib import *
from django.http import HttpResponse,JsonResponse,HttpResponseRedirect
from django.contrib.auth.decorators import login_required

# universal index
def index(request,a=0):
    resdict={}
    resdict['cate']=getcategorylist()
    resdict['rec1']=getrecommend1()
    resdict['rec2']=getrecommend2()
    request=getcart(request)
    if a:
        resdict['catfocus']='mdui-tab-active'
    else:
        resdict['catfocus'] =''
    return render(request,'frame.html',resdict)

# show category yes
def category(request):
    a=index(request,1)
    return a


