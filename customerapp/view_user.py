from django.shortcuts import render
from django.contrib.auth import models,authenticate,login,logout
from django.contrib.auth.models import Group,User
from .models import Pharmacy
from django.http import HttpResponse,HttpResponseRedirect
from django.contrib.auth.decorators import login_required
from .interface.sqlautomaking.pharmacy import makepharmacy
import MySQLdb,random
#login/sign up/logout:
def sign(request):
    if request.method=='POST':
        username = request.POST['username']
        password = request.POST['password']
        print(username,password)
        user = authenticate(request, username=username,
                            password=password)
        if user is not None:
            login(request, user)
            group=str(Group.objects.get(user=user))

            #group the user belongs
            if(group=='admin'):
                return HttpResponseRedirect(r'/admin')
            if(group=='customer'):
               return HttpResponseRedirect(r'/')
            if (group == 'pharmacy'):
               return HttpResponseRedirect(r'/pharindex')
        else:
            login_err = "Wrong username or password!"
            return HttpResponse(login_err)
    return render(request,'sign.html')

@login_required
def logout_view(request):
    logout(request)
    return HttpResponseRedirect(r'/')

#创建数据
def create_phar(n):
    password='654321'
    for i in range(100,n):
        user = User.objects.create(username='pharmacy{}'.format(i),email='pharmacy{}@233.com'.format(i),password=password)
        user.save()
        id=User.objects.get(username=user).__dict__['id']
        address, district, name=makepharmacy()
        group = Group.objects.get(name='pharmacy')
        user.groups.add(group)
        Pharmacy.objects.create(userid=id,district=district,address=address,name=name)

def create_stock(n):
    for a in range(166,199):
        db = MySQLdb.connect("localhost", "root", "654321", "med", charset='utf8')
        cursor = db.cursor()
        list = range(1, 16426)
        medidlist=random.sample(list, n)
        for i in medidlist:
            quantity = random.randint(5, 20)
            line="INSERT INTO stock(medid, pharmacyid, quantity) VALUES ('{}', '{}', '{}');".format(i,a,quantity)
            try:
                cursor.execute(line)
                db.commit()
            except:
                continue
        db.close()
