from ..models import Medicine,Category,Stock,Pharmacy
import re
import MySQLdb

def processlist2(list):
    list=list[:]
    res=[]
    for i in list:
        res.append(dict(i))
    return res
def processlist(list):
    list=list[:]
    res=[]
    for i in list:
        res.append(i.__dict__)
    return res
#get data from db


def exesqline(line):
    db = MySQLdb.connect("localhost", "root", "654321", "med", charset='utf8')
    cursor = db.cursor()
    cursor.execute(line)
    results = cursor.fetchall()
    db.close()
    return results

def getallmed():
    a = Medicine.objects.all().values("idmed","ypmc","ppmc","jx","c1_guid","c2_guid","c1_name","c2_name","yptp")
    data_list=a[:]
    return data_list

def getpname(pid):
    name=Pharmacy.objects.get(idpharmacy=pid).__dict__['name']
    return name

def getmed(id):
    med = Medicine.objects.get(id=id).__dict__
    find_float = lambda x: re.search("\d+(\.\d+)?", x).group()
    med['price']=find_float(med['jgqj'])
    return med

def getcat():
    a=Category.objects.all()
    data_list=processlist(a)
    return data_list

def getmedstock(mid):
    stocklist=Stock.objects.filter(idmed=mid)
    stock=processlist(stocklist)
    for i in stock:
        i.pop('_state')
        i['idpharmacy'] = i.pop('idpharmacy_id')
        i['idmed'] = i.pop('idmed_id')
        pharmacy=Pharmacy.objects.get(idpharmacy=i['idpharmacy']).__dict__
        i['pname']=pharmacy['name']
        i['district']=pharmacy['district']
    return stock

def getpharmed(pid):
    stock=Stock.objects.filter(idpharmacy=pid)
    stock=processlist(stock)
    idlist=[]
    for i in stock:
        idlist.append(i['idmed_id'])
    med=Medicine.objects.filter(id__in=idlist).values("id","ypmc","ppmc","jx","c1_guid","c2_guid","c1_name","c2_name","yptp","gnzz","jgqj")
    res=processlist2(med)
    return res

def getpharmed2(pid):
    stock=Stock.objects.filter(idpharmacy=pid)
    stock=processlist(stock)
    medlist=[]
    for i in stock:
        med=Medicine.objects.get(id=i['idmed_id']).__dict__
        keys = {"id","ypmc","c1_name","c2_name","yptp","gnzz"}
        med = {key: value for key, value in med.items() if key in keys}
        med['quantity']=i['quantity']
        medlist.append(med)
    res=processlist2(medlist)
    return res

def getcountc1():
    line="SELECT c1_guid,c1_name,count(*) FROM med.medicine group by c1_name,c1_guid order by count(*) desc;"
    res=exesqline(line)
    result=[]
    for row in res:
        dictr={}
        dictr['c1_guid']=row[0]
        dictr['c1_name']=row[1]
        dictr['count']=row[2]
        result.append(dictr)
    return result

def getmc1(c1_guid):
    med=Medicine.objects.filter(c1_guid=c1_guid).values("id","ypmc","ppmc","jx","c1_guid","c2_guid","c1_name","c2_name","yptp","gnzz","jgqj")
    res=processlist2(med)
    return res


def getmc2(c2_guid):
    med=Medicine.objects.filter(c2_guid=c2_guid).values("id","ypmc","ppmc","jx","c1_guid","c2_guid","c1_name","c2_name","yptp","gnzz","jgqj")
    res = processlist2(med)
    return res

def getstock_pid(pid):
        stocklist = Stock.objects.filter(idpharmacy=pid)
        stock = processlist(stocklist)
        return stock