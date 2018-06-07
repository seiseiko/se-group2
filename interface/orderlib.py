import uuid,csv,os
from ..models import Order
from ..interface.reclib import getmed,getpname

def checkoutdict(pid,request):
    cart=request.session['cart']
    list=[]
    resdict = {'list': list,
               "pid": pid,
               'total': 0.0
               }
    for i in cart.items:
        if i['pid'] == resdict['pid']:
            resdict['list'].append(i)
            resdict['total'] += round(float(i['price']) * float(i['quantity']),2)
            resdict['pname']=i['pname']

    return resdict

def checkout(request):
    pid = request.GET['pid']
    resdict = checkoutdict(pid, request)
    resdict['address']=request.POST['address']
    resdict['tel']= request.POST['tel']
    print("resdict",resdict)
    url=check_url(resdict)
    order=Order.objects.create(idpharmacy=pid,idcustomer=request.user.id,order_url=url,status='unpaid')
    return order.idorder

def check_url(resdict):
    url=uuid.uuid4()
    filename = './csvdata/orderdata/{}.csv'.format(url)
    f = open(filename, 'a+', newline='')  # start with no blank
    writer = csv.writer(f)
    itemlist=resdict['list']
    i=[resdict['pname'],resdict['address'],resdict['tel']]
    writer.writerow(i)
    for i in itemlist:
        writer.writerow(i.values())
    f.close()
    return url

def url_to_list(resdict):
    url=resdict['order_url']
    filename='./csvdata/orderdata/{}.csv'.format(url)
    itemlist=[]
    total=0
    with open(filename, 'r') as csvfile:
        reader = csv.reader(csvfile)
        for i, rows in enumerate(reader):
            print(rows)
            if (i == 0):
                pname=rows[0]
                address=rows[1]
                tel=rows[2]
                continue
            idict={'mid': rows[0], 'quantity': rows[1], 'ypmc': rows[2], 'price': rows[3], 'pid': rows[4], 'pname': rows[5]}
            total+=float(rows[1])*float(rows[3])
            itemlist.append(idict)
    resdict['list']=itemlist
    resdict['pname']=pname
    resdict['address']=address
    resdict['tel']=tel
    resdict['total']=total
    return resdict
