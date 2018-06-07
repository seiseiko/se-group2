from .indexlib import pagination
from ..models import Pharmacy,Stock,Order
from .reclib import processlist,getpharmed2
def getpid(request):
    resdict={}
    uid=request.user.id
    print(uid)
    pid=Pharmacy.objects.get(userid=uid).__dict__['idpharmacy']
    return pid
def getpindex(request):
    resdict={}
    pid=getpid(request)
    orderlist=Order.objects.filter(idpharmacy=pid,status__in=['paid','accepted','delivered'])
    orderlist=processlist(orderlist)
    resdict['order']=orderlist
    info = Pharmacy.objects.get(idpharmacy=pid).__dict__
    resdict['info']=info
    print(resdict)
    return resdict

def getpstock(request):
    pid = getpid(request)
    stock=getpharmed2(pid)
    return stock