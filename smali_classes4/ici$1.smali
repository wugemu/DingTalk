.class final Lici$1;
.super Ljava/lang/Object;
.source "MessageHandler.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lici;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/message/MessageImpl;

.field final synthetic b:Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;

.field final synthetic c:Lici;


# direct methods
.method constructor <init>(Lici;Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;)V
    .locals 0
    .param p1, "this$0"    # Lici;

    .prologue
    .line 85
    iput-object p1, p0, Lici$1;->c:Lici;

    iput-object p2, p0, Lici$1;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    iput-object p3, p0, Lici$1;->b:Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 114
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 85
    check-cast p1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 1089
    const/4 v1, 0x0

    .line 1091
    :try_start_0
    const-string/jumbo v0, "[TAG] MsgPush"

    .line 2014
    const-string/jumbo v2, "im"

    invoke-static {v0, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v1

    .line 1092
    if-eqz p1, :cond_2

    .line 1093
    iget-object v0, p0, Lici$1;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-static {v0, p1}, Libt;->a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/conversation/ConversationImpl;)V

    .line 1094
    iget-object v0, p0, Lici$1;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageImpl;->senderId()J

    move-result-wide v2

    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 1096
    const-string/jumbo v0, "[Push] Self reset unread count"

    invoke-virtual {v1, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 1097
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lici$1;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 1098
    invoke-virtual {p1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->totalMembers()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->totalMembers()I

    move-result v5

    .line 1097
    invoke-virtual {v0, v2, v3, v4, v5}, Libs;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;II)Z

    .line 1101
    :cond_0
    invoke-static {p1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isVisible(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1102
    iget-object v0, p0, Lici$1;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-static {v0}, Libv;->a(Lcom/alibaba/wukong/im/Message;)V

    .line 1105
    :cond_1
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v0

    iget-object v2, p0, Lici$1;->b:Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;

    iget-object v2, v2, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->conversationId:Ljava/lang/String;

    iget-object v3, p0, Lici$1;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-virtual {v0, v2, v3}, Liar;->b(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2030
    :cond_2
    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    .line 1109
    return-void

    .line 1108
    :catchall_0
    move-exception v0

    .line 3030
    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    .line 1108
    throw v0
.end method
