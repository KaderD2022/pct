from django.contrib import admin

# Register your models here.

from django.contrib import admin

from announcement.models import Announcement

# Register your models here.
class AdminAnnouncement(admin.ModelAdmin):
    list_display = ('job','prerequisite', 'space_available', 'title', 'content')
    search_fields = ('job', 'title')
    ordering = ('job', 'title')
    filter = ('job','prerequisite', 'space_available', 'title', 'content')
    list_filter = ('job','prerequisite', 'space_available', 'title', 'content')


admin.site.register(Announcement, AdminAnnouncement)

