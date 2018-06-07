
"""se URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from . import views,view_user,view_med,view_cart,view_customer,view_search,view_order,view_pharmacy

urlpatterns = [
    #views
    path(r'',views.index),
    path(r'category', views.category),


    #view_user
    path(r'logout',view_user.logout_view),
    path(r'sign',view_user.sign),


    #view_med
    path(r'medview/<int:mid>',view_med.medview,name='medview'),
    path(r'c1listing/<str:c1_guid>', view_med.c1listing, name='c1listing'),
    path(r'c2listing/<str:c2_guid>', view_med.c2listing, name='c2listing'),
    path(r'pharlisting/<int:pid>', view_med.pharlisting, name='pharlisting'),


    #view_cart
    path(r'addcart/<int:mid>',view_cart.addcart_view,name='addcart'),
    path(r'deletecart',view_cart.deletecart_view,name='addcart'),
    path(r'cart',view_cart.cart_view),


    # view_search
    path(r'search',view_search.search),
    path(r'searchlis', view_search.search_listing),

    # view_customer
    path(r'ínfo/<int:cid>',view_customer.cus_info,name='cusinfo'),

    # view_order
    path(r'check', view_order.check_view),
    path(r'pay', view_order.order_pay,name='pay'),
    path(r'orderview/<int:oid>', view_order.order_view),
    path(r'porderview/<int:oid>',view_order.porder_view),

    # view_pharmacy
    path(r'pharindex',view_pharmacy.pharmacy_index),
    path(r'pharstock',view_pharmacy.pharmacy_stock),
    path(r'pharorder',view_pharmacy.pharmacy_order),

]
