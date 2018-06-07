from ..models import Cart
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from . import reclib

# for index
def getcategory():
    list=['包治百病','2333']
    return list
def getcategorylist():
    cat1=reclib.getcountc1()
    cat2=reclib.getcat()
    for c1 in cat1:
        c1['c2_list'] = []
    for c2 in cat2:
        for c1 in cat1:
            if c2['parent_name']==c1['c1_name']:
                c1['c2_list'].append({'c2_guid':c2['guid'],'c2_name':c2['category_name']})
    return cat1

def getrecommend1():# random no more than 12
    line="  select id,ypmc,c1_name,c2_name,yptp,gnzz from med.medicine order by rand() limit 12;"
    res = reclib.exesqline(line)
    result=[]
    for row in res:
        dictr={'id':row[0],
               'ypmc':row[1],
               'c1_name':row[2],
               'c2_name':row[3],
               'yptp':row[4],
               'gnzz':row[5]
               }
        result.append(dictr)
    return result

def getrecommend2():# popular category  no more than 10
    line = "SELECT c1_guid,c1_name,count(*) FROM med.medicine group by c1_name,c1_guid order by count(*) desc limit 10;"
    res = reclib.exesqline(line)
    result = []
    for row in res:
            dictr = {}
            dictr['c1_guid'] = row[0]
            dictr['c1_name'] = row[1]
            dictr['count'] = row[2]
            result.append(dictr)
    return result

def getorders():
    return


# paginator
def pagination(request,things,pa=15):
    paginator = Paginator(things,pa)
    try:
        page = request.GET.get('page')
    except:
        page = 1
    try:
        res = paginator.page(page)
    except PageNotAnInteger:
        res = paginator.page(1)
    except EmptyPage:
        res = paginator.page(paginator.num_pages)
    return res
