from django.shortcuts import render
from django.contrib.auth.decorators import login_required

# info-id
@login_required
def cus_info(request,cid):
    return render(request,'cus_info.html',{'custitle':'个人信息'})
