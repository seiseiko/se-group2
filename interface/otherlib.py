from ..models import Medicine

def showmedlist(list):
    return list

def getmedinfo(mid):
    info=Medicine.objects.get(id=mid).__dict__
    return info