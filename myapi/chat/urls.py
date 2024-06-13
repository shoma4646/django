# 以下を追加
from django.urls import path, include
from rest_framework.routers import DefaultRouter
from .views import ChatModelViewSet

router = DefaultRouter()
router.register('index', ChatModelViewSet)

urlpatterns = [
    path('', include(router.urls)),
]
