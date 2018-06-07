from .interface.searchlib import *
from django.http import JsonResponse
from .interface.indexlib import  pagination
from django.shortcuts import render

# return json 模糊联想
def search(request):
    key=request.GET['key']
    res=fuzzy_key(key)
    if len(res['cat_list']) or len(res['med_list']):
        dic = res
        return JsonResponse(dic)
    else:
        return JsonResponse({'cat_list':'无匹配'})

def search_listing(request):
    key=request.GET['key']
    med=fuzzy_med(key)
    med=pagination(request, med, pa=10)
    res=dict()
    res['custitle']=key
    res['med']=med
    return render(request, 'medlisting.html', res)
