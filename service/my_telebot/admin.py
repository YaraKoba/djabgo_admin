from django.contrib import admin
from my_telebot.models import User, Cities, Spots

# Register your models here.
admin.site.register(User)

admin.site.register(Cities)

admin.site.register(Spots)