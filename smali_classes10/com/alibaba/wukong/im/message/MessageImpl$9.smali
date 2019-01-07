.class final Lcom/alibaba/wukong/im/message/MessageImpl$9;
.super Liae;
.source "MessageImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/im/message/MessageImpl;->getOffsetMessage(ILcom/alibaba/wukong/im/Message$CreatorType;ZLcom/alibaba/wukong/Callback;)V
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
        "Lcom/alibaba/wukong/im/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/wukong/im/Message$CreatorType;

.field final synthetic c:Z

.field final synthetic d:Lcom/alibaba/wukong/im/message/MessageImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;ILcom/alibaba/wukong/im/Message$CreatorType;Z)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 1393
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Lcom/alibaba/wukong/im/Message;>;"
    iput-object p1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$9;->d:Lcom/alibaba/wukong/im/message/MessageImpl;

    iput p5, p0, Lcom/alibaba/wukong/im/message/MessageImpl$9;->a:I

    iput-object p6, p0, Lcom/alibaba/wukong/im/message/MessageImpl$9;->b:Lcom/alibaba/wukong/im/Message$CreatorType;

    iput-boolean p7, p0, Lcom/alibaba/wukong/im/message/MessageImpl$9;->c:Z

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p4}, Liae;-><init>(Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1393
    .line 2396
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$9;->d:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v1, v1, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 2397
    invoke-virtual {v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl$9;->d:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl$9;->a:I

    iget-object v4, p0, Lcom/alibaba/wukong/im/message/MessageImpl$9;->b:Lcom/alibaba/wukong/im/Message$CreatorType;

    iget-boolean v5, p0, Lcom/alibaba/wukong/im/message/MessageImpl$9;->c:Z

    .line 2396
    invoke-virtual/range {v0 .. v5}, Libs;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;ILcom/alibaba/wukong/im/Message$CreatorType;Z)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    .line 2399
    invoke-interface {p2, v0}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 1393
    return-void
.end method
