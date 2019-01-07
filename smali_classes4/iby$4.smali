.class final Liby$4;
.super Ljava/lang/Object;
.source "MessageReadTask.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liby;->b()V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Liby;


# direct methods
.method constructor <init>(Liby;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Liby;

    .prologue
    .line 122
    iput-object p1, p0, Liby$4;->c:Liby;

    iput-object p2, p0, Liby$4;->a:Ljava/lang/String;

    iput-object p3, p0, Liby$4;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 138
    const-string/jumbo v0, "[TAG] MsgRead"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[RPC] read err: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4022
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    sget-object v0, Lcom/laiwang/protocol/core/Constants$Status;->REQUEST_TIMEOUT:Lcom/laiwang/protocol/core/Constants$Status;

    iget v0, v0, Lcom/laiwang/protocol/core/Constants$Status;->code:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/laiwang/protocol/core/Constants$Status;->NETWORK_BROKEN:Lcom/laiwang/protocol/core/Constants$Status;

    iget v0, v0, Lcom/laiwang/protocol/core/Constants$Status;->code:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Liby$4;->c:Liby;

    .line 4030
    iget-object v0, v0, Liby;->b:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 140
    iget-object v1, p0, Liby$4;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListSet;->removeAll(Ljava/util/Collection;)Z

    .line 142
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 122
    .line 4125
    const-string/jumbo v0, "[TAG] MsgRead"

    const-string/jumbo v1, "[RPC] read succ"

    .line 5018
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4127
    :try_start_0
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v0

    iget-object v1, p0, Liby$4;->a:Ljava/lang/String;

    iget-object v2, p0, Liby$4;->b:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Libs;->b(Ljava/lang/String;Ljava/util/List;)Z

    .line 4128
    invoke-static {}, Liaf;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4129
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v1

    iget-object v2, p0, Liby$4;->a:Ljava/lang/String;

    iget-object v3, p0, Liby$4;->b:Ljava/util/List;

    .line 5349
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 4132
    :cond_0
    :goto_0
    iget-object v0, p0, Liby$4;->c:Liby;

    .line 6030
    iget-object v0, v0, Liby;->b:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 4132
    iget-object v1, p0, Liby$4;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListSet;->removeAll(Ljava/util/Collection;)Z

    .line 4133
    return-void

    .line 5353
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v0

    invoke-virtual {v0, v2}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    .line 5354
    if-eqz v0, :cond_0

    .line 5358
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    .line 5359
    if-eqz v0, :cond_0

    .line 5363
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5367
    invoke-static {v0}, Liar;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5370
    instance-of v3, v0, Lcom/alibaba/wukong/im/message/MessageImpl;

    if-eqz v3, :cond_2

    .line 5371
    check-cast v0, Lcom/alibaba/wukong/im/message/MessageImpl;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/alibaba/wukong/im/message/MessageImpl;->setIsRead(Z)V

    .line 5375
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {v1, v2, v0}, Liar;->c(Ljava/lang/String;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4132
    :catchall_0
    move-exception v0

    iget-object v1, p0, Liby$4;->c:Liby;

    .line 7030
    iget-object v1, v1, Liby;->b:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 4132
    iget-object v2, p0, Liby$4;->b:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentSkipListSet;->removeAll(Ljava/util/Collection;)Z

    throw v0
.end method
