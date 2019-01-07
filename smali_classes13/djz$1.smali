.class final Ldjz$1;
.super Landroid/os/Handler;
.source "MessageCountDownManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldjz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Looper;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    .line 103
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 105
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_0

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Ldjz$a;

    if-eqz v4, :cond_0

    .line 106
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ldjz$a;

    .line 108
    .local v3, "timer":Ldjz$a;
    iget-wide v4, v3, Ldjz$a;->e:J

    cmp-long v4, v4, v8

    if-gtz v4, :cond_1

    .line 110
    invoke-static {}, Ldjz;->d()Landroid/os/Handler;

    move-result-object v4

    iget v5, v3, Ldjz$a;->a:I

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1696
    iget-object v4, v3, Ldjz$a;->b:Lcom/alibaba/wukong/im/Message;

    if-eqz v4, :cond_0

    iget-object v4, v3, Ldjz$a;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1697
    const-class v4, Lcom/alibaba/wukong/im/MessageService;

    invoke-static {v4}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/MessageService;

    new-instance v5, Ldjz$a$1;

    invoke-direct {v5, v3}, Ldjz$a$1;-><init>(Ldjz$a;)V

    iget-object v6, v3, Ldjz$a;->b:Lcom/alibaba/wukong/im/Message;

    .line 1716
    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v6

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Long;

    iget-object v8, v3, Ldjz$a;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v8}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    .line 1697
    invoke-interface {v4, v5, v6, v7}, Lcom/alibaba/wukong/im/MessageService;->removeLocalMessages(Lcom/alibaba/wukong/Callback;Ljava/lang/String;[Ljava/lang/Long;)V

    .line 124
    .end local v3    # "timer":Ldjz$a;
    :cond_0
    :goto_0
    return-void

    .line 2637
    .restart local v3    # "timer":Ldjz$a;
    :cond_1
    iget-wide v0, v3, Ldjz$a;->c:J

    .line 114
    .local v0, "deployTimer":J
    iget-wide v4, v3, Ldjz$a;->e:J

    .line 3637
    iget-wide v6, v3, Ldjz$a;->c:J

    .line 114
    sub-long/2addr v4, v6

    iput-wide v4, v3, Ldjz$a;->e:J

    .line 115
    iget-wide v4, v3, Ldjz$a;->e:J

    cmp-long v4, v4, v8

    if-gez v4, :cond_2

    .line 116
    iget-wide v4, v3, Ldjz$a;->e:J

    .line 4637
    iget-wide v6, v3, Ldjz$a;->c:J

    .line 116
    add-long v0, v4, v6

    .line 118
    :cond_2
    iget-wide v4, v3, Ldjz$a;->e:J

    invoke-virtual {v3, v4, v5}, Ldjz$a;->a(J)V

    .line 120
    invoke-static {}, Ldjz;->d()Landroid/os/Handler;

    move-result-object v4

    iget v5, v3, Ldjz$a;->a:I

    invoke-static {v4, v5, v10, v10, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 121
    .local v2, "m":Landroid/os/Message;
    invoke-static {}, Ldjz;->d()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
