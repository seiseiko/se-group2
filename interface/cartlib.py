from ..models import Cart
from ..interface.reclib import getmed,getpname
#cart

def getcart(request):
    cart=request.session.get("cart")
    if not cart:
        cart=Cart()
        request.session["cart"] = cart
    return request
def deleteitem(request,pid,mid):
    cart = request.session.get("cart")
    for index,i in enumerate(cart.items):
        if str(i['mid']) == mid:
            if  str(i['pid']) == pid:
                if(str(i['quantity'])=='1'):
                    cart.items.pop(index)
                    cart.total_price -= float(i['price'])
                    request.session["cart"] = cart
                    return request
                else:
                    i['quantity'] -=1
                    cart.total_price -= float(i['price'])
                    request.session["cart"] = cart
                    return request
def getproduct(mid,pid):
    info=getmed(mid)
    product={'mid':mid,
             'quantity':1,
             'ypmc':info['ypmc'],
             'price':info['price'],
             'pid':pid,
             'yptp':info['yptp'],
             'pname':getpname(pid),
    }
    return product
def cartodict(cart):
    dic=dict()
    dic['items']=cart.items
    dic['total']=cart.total_price
    return dic
def addcart(request,product):
    request=getcart(request)
    cart=request.session["cart"]
    cart.add_product(product)
    request.session["cart"] = cart
    return request

def cartlisting(cart):
    res=[]
    addlist=[]
    for i in cart.items:
        if i['pid'] in addlist:
            inde=addlist.index(i['pid'])
            res[inde]['list'].append(i)
            res[inde]['total'] += round(float(i['price']) * float(i['quantity']),2)
        else:
            list=[]
            total=float(i['price'])*float(i['quantity'])
            list.append(i)
            addlist.append(i['pid'])
            resdict={'list':list,
                    "pid":i['pid'],
                     "pname": i['pname'],
                     'total':round(total,2)
            }
            res.append(resdict)
    return res