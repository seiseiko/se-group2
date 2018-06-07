from django.db.models import Q
from ..models import Medicine,Category

def fuzzy_key(key):
    data_list=Category.objects.filter(category_name__contains=key)[:5]
    list=data_list[:]
    cat_list=[]
    for i in list:
        cat=i.__dict__
        if not cat['parent_name']:
            continue
        res={}
        res['guid']=cat['guid']
        res['category_name']=cat['category_name']
        cat_list.append(res)
        print(res)

    data_list=Medicine.objects.filter(ypmc__contains=key)[:5]
    data_list=data_list[:]
    med_list=[]
    for i in data_list:
        i=i.__dict__
        res={}
        res['id'] = i['id']
        res['guid']=i['guid']
        res['ypmc']=i['ypmc']
        med_list.append(res)
    dic={'cat_list':cat_list,
         'med_list':med_list}
    return dic

def fuzzy_med(key):
    data_list = Medicine.objects.filter(Q(c1_name__contains=key)|Q(c2_name__contains=key)|Q(ypmc__contains=key)|Q(gnzz__contains=key)).values("id","ypmc","ppmc","jx","c1_guid","c2_guid","c1_name","c2_name","yptp","gnzz","jgqj")
    data_list=data_list[:]
    return data_list