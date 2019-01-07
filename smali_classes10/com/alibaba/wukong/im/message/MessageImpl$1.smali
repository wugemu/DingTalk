.class final Lcom/alibaba/wukong/im/message/MessageImpl$1;
.super Liae;
.source "MessageImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/im/message/MessageImpl;->sendToLocal(Lcom/alibaba/wukong/im/Conversation;ZLcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Liae",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic c:Z

.field final synthetic d:Lcom/alibaba/wukong/Callback;

.field final synthetic e:Lcom/alibaba/wukong/im/message/MessageImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;ZLcom/alibaba/wukong/Callback;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 325
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/lang/Void;>;"
    iput-object p1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$1;->e:Lcom/alibaba/wukong/im/message/MessageImpl;

    iput-object p5, p0, Lcom/alibaba/wukong/im/message/MessageImpl$1;->a:Ljava/lang/String;

    iput-object p6, p0, Lcom/alibaba/wukong/im/message/MessageImpl$1;->b:Lcom/alibaba/wukong/im/Conversation;

    iput-boolean p7, p0, Lcom/alibaba/wukong/im/message/MessageImpl$1;->c:Z

    iput-object p8, p0, Lcom/alibaba/wukong/im/message/MessageImpl$1;->d:Lcom/alibaba/wukong/Callback;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p4}, Liae;-><init>(Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 325
    .line 1328
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    .line 1329
    if-nez v0, :cond_2

    .line 1330
    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$1;->e:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$1;->b:Lcom/alibaba/wukong/im/Conversation;

    check-cast v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iput-object v0, v1, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 1333
    :goto_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$1;->e:Lcom/alibaba/wukong/im/message/MessageImpl;

    sget-object v1, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENT:Lcom/alibaba/wukong/im/Message$MessageStatus;

    iput-object v1, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageStatus:Lcom/alibaba/wukong/im/Message$MessageStatus;

    .line 1334
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$1;->e:Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$1;->e:Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 1335
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    const/16 v1, 0x4b2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$1;->e:Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 1336
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageImpl;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    const/16 v1, 0x4b4

    if-eq v0, v1, :cond_0

    .line 1337
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$1;->e:Lcom/alibaba/wukong/im/message/MessageImpl;

    sget-object v1, Lcom/alibaba/wukong/im/Message$CreatorType;->SELF:Lcom/alibaba/wukong/im/Message$CreatorType;

    iput-object v1, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mCreatorType:Lcom/alibaba/wukong/im/Message$CreatorType;

    .line 1340
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$1;->e:Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageImpl;->doAfter()V

    .line 1342
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl$1;->e:Lcom/alibaba/wukong/im/message/MessageImpl;

    .line 2061
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Libs;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;Z)Z

    .line 1343
    iget-boolean v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$1;->c:Z

    if-eqz v0, :cond_1

    .line 1345
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl$1;->e:Lcom/alibaba/wukong/im/message/MessageImpl;

    invoke-virtual {v0, v1, v2}, Liar;->b(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;)Z
    :try_end_0
    .catch Lcom/alibaba/wukong/im/base/WKException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1350
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl$1;->d:Lcom/alibaba/wukong/Callback;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    .line 325
    return-void

    .line 1332
    :cond_2
    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$1;->e:Lcom/alibaba/wukong/im/message/MessageImpl;

    iput-object v0, v1, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    goto :goto_0

    .line 1347
    :catch_0
    move-exception v0

    .line 1348
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/base/WKException;->printStackTrace()V

    goto :goto_1
.end method
