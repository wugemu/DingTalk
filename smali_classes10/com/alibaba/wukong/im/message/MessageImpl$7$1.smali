.class final Lcom/alibaba/wukong/im/message/MessageImpl$7$1;
.super Ljava/lang/Object;
.source "MessageImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/im/message/MessageImpl$7;->onAfterRpc(Liae$b;)Liae$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Liae$b;

.field final synthetic b:Lcom/alibaba/wukong/im/message/MessageImpl$7;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/message/MessageImpl$7;Liae$b;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/wukong/im/message/MessageImpl$7;

    .prologue
    .line 1311
    iput-object p1, p0, Lcom/alibaba/wukong/im/message/MessageImpl$7$1;->b:Lcom/alibaba/wukong/im/message/MessageImpl$7;

    iput-object p2, p0, Lcom/alibaba/wukong/im/message/MessageImpl$7$1;->a:Liae$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1314
    const/4 v1, 0x0

    .line 1315
    .local v1, "count":I
    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl$7$1;->a:Liae$b;

    iget-object v3, v3, Liae$b;->d:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageReceiver;

    .line 1316
    .local v2, "receiver":Lcom/alibaba/wukong/im/MessageReceiver;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageReceiver;->readStatus()Lcom/alibaba/wukong/im/Message$ReadStatus;

    move-result-object v4

    sget-object v5, Lcom/alibaba/wukong/im/Message$ReadStatus;->READ:Lcom/alibaba/wukong/im/Message$ReadStatus;

    if-eq v4, v5, :cond_0

    .line 1317
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1320
    .end local v2    # "receiver":Lcom/alibaba/wukong/im/MessageReceiver;
    :cond_1
    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl$7$1;->b:Lcom/alibaba/wukong/im/message/MessageImpl$7;

    iget-object v3, v3, Lcom/alibaba/wukong/im/message/MessageImpl$7;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget v3, v3, Lcom/alibaba/wukong/im/message/MessageImpl;->mUnreadCount:I

    if-eq v3, v1, :cond_2

    .line 1321
    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl$7$1;->b:Lcom/alibaba/wukong/im/message/MessageImpl$7;

    iget-object v3, v3, Lcom/alibaba/wukong/im/message/MessageImpl$7;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v3, v3, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-nez v3, :cond_3

    const/4 v0, 0x0

    .line 1322
    .local v0, "cid":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/wukong/im/message/MessageImpl$7$1;->b:Lcom/alibaba/wukong/im/message/MessageImpl$7;

    iget-object v4, v4, Lcom/alibaba/wukong/im/message/MessageImpl$7;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v5, p0, Lcom/alibaba/wukong/im/message/MessageImpl$7$1;->b:Lcom/alibaba/wukong/im/message/MessageImpl$7;

    iget-object v5, v5, Lcom/alibaba/wukong/im/message/MessageImpl$7;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget v5, v5, Lcom/alibaba/wukong/im/message/MessageImpl;->mTotalCount:I

    invoke-virtual {v3, v0, v4, v1, v5}, Libs;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/message/MessageImpl;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1324
    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl$7$1;->b:Lcom/alibaba/wukong/im/message/MessageImpl$7;

    iget-object v3, v3, Lcom/alibaba/wukong/im/message/MessageImpl$7;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    iput v1, v3, Lcom/alibaba/wukong/im/message/MessageImpl;->mUnreadCount:I

    .line 1327
    .end local v0    # "cid":Ljava/lang/String;
    :cond_2
    return-void

    .line 1321
    :cond_3
    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl$7$1;->b:Lcom/alibaba/wukong/im/message/MessageImpl$7;

    iget-object v3, v3, Lcom/alibaba/wukong/im/message/MessageImpl$7;->a:Lcom/alibaba/wukong/im/message/MessageImpl;

    iget-object v3, v3, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    invoke-virtual {v3}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
