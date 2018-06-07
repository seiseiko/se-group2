# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Cart(object):
    def __init__(self, *args, **kwargs):
        self.items = []
        self.total_price = 0.00

    def add_product(self,product):
        self.total_price += float(product['price'])*float(product['quantity'])
        self.total_price = round(self.total_price,2)
        for item in self.items:
            if (item['mid'] == product['mid'] and item['pid']==product['pid']):
                item['quantity'] += product['quantity']
                return
        self.items.append(product)
        return

class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=80)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class Category(models.Model):
    guid = models.CharField(max_length=32, blank=True, null=True)
    parent_guid = models.CharField(max_length=32, blank=True, null=True)
    parent_name = models.CharField(max_length=128, blank=True, null=True)
    category_name = models.CharField(max_length=128, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'category'


class Customer(models.Model):
    idcustomer = models.IntegerField(primary_key=True)
    personalfile = models.CharField(max_length=45, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'customer'


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.PositiveSmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class Medicine(models.Model):
    guid = models.CharField(max_length=32, blank=True, null=True)
    ypmc = models.CharField(max_length=128, blank=True, null=True)
    tymc = models.CharField(max_length=128, blank=True, null=True)
    ppmc = models.CharField(max_length=128, blank=True, null=True)
    jx = models.CharField(max_length=128, blank=True, null=True)
    zycf = models.TextField(blank=True, null=True)
    gnzz = models.CharField(max_length=1024, blank=True, null=True)
    yfyl = models.TextField(blank=True, null=True)
    blfy = models.TextField(blank=True, null=True)
    jj = models.TextField(blank=True, null=True)
    zysx = models.TextField(blank=True, null=True)
    ywxhzy = models.TextField(blank=True, null=True)
    cc = models.CharField(max_length=128, blank=True, null=True)
    yxq = models.CharField(max_length=128, blank=True, null=True)
    sccs = models.CharField(max_length=128, blank=True, null=True)
    pzwh = models.CharField(max_length=128, blank=True, null=True)
    jgqj = models.CharField(max_length=128, blank=True, null=True)
    yptp = models.CharField(max_length=128, blank=True, null=True)
    is_otc = models.CharField(max_length=1, blank=True, null=True)
    c1_guid = models.CharField(max_length=32, blank=True, null=True)
    c1_name = models.CharField(max_length=128, blank=True, null=True)
    c2_guid = models.CharField(max_length=32, blank=True, null=True)
    c2_name = models.CharField(max_length=128, blank=True, null=True)
    xingzhuang = models.CharField(max_length=256, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'medicine'


class Order(models.Model):
    idorder = models.AutoField(primary_key=True)
    idcustomer = models.IntegerField()
    idpharmacy = models.IntegerField()
    order_url = models.CharField(max_length=45)
    status = models.CharField(max_length=9, blank=True, null=True)
    deliveryid = models.IntegerField(db_column='deliveryID', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'order'

class Pharmacy(models.Model):
    idpharmacy = models.AutoField(primary_key=True)
    address = models.CharField(max_length=45)
    district = models.CharField(max_length=3, blank=True, null=True)
    name = models.CharField(max_length=45)
    userid = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'pharmacy'

class Stock(models.Model):
    idstock = models.AutoField(primary_key=True)
    idmed = models.ForeignKey(Medicine, models.DO_NOTHING, db_column='idmed')
    idpharmacy = models.ForeignKey(Pharmacy, models.DO_NOTHING, db_column='idpharmacy')
    quantity = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'stock'