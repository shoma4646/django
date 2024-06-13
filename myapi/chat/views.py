from rest_framework import viewsets, views
from .models import Chat
from .serializers import ChatSerializer
from rest_framework.response import Response


class ChatModelViewSet(viewsets.ModelViewSet):
    queryset = Chat.objects.all()
    serializer_class = ChatSerializer


# class ChatApiView(views.APIView):
#     def get(self, request):
#         chats = Chat.objects.all()
#         serializer = ChatSerializer(chats, many=True)
#         return Response(serializer.data)
