.class final Lbxo$10;
.super Ljava/lang/Object;
.source "AnchorPresenter.java"

# interfaces
.implements Lbwf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbxo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbxo;


# direct methods
.method constructor <init>(Lbxo;)V
    .locals 0
    .param p1, "this$0"    # Lbxo;

    .prologue
    .line 371
    iput-object p1, p0, Lbxo$10;->a:Lbxo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;)V
    .locals 7
    .param p1, "message"    # Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 374
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v1

    .line 1086
    iget-object v0, v1, Lbtq;->f:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    .line 375
    .local v0, "liveInfo":Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;
    if-nez v0, :cond_1

    .line 2543
    .end local p1    # "message":Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;
    :cond_0
    :goto_0
    return-void

    .line 378
    .restart local p1    # "message":Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;
    :cond_1
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->topic:Ljava/lang/String;

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->liveUuid:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    iget-object v2, p0, Lbxo$10;->a:Lbxo;

    .line 2519
    if-eqz p1, :cond_0

    .line 2522
    iget v1, p1, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->type:I

    .line 2523
    const/16 v3, 0x67

    if-ne v1, v3, :cond_2

    .line 2524
    instance-of v1, p1, Lcom/alibaba/android/dingtalk/live/msg/common/JoinPowerMessage;

    if-eqz v1, :cond_0

    .line 2525
    check-cast p1, Lcom/alibaba/android/dingtalk/live/msg/common/JoinPowerMessage;

    .line 2526
    .end local p1    # "message":Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;
    iget-object v1, v2, Lbxo;->a:Lbxn$b;

    iget v2, p1, Lcom/alibaba/android/dingtalk/live/msg/common/JoinPowerMessage;->totalCount:I

    invoke-interface {v1, v2}, Lbxn$b;->a(I)V

    goto :goto_0

    .line 2528
    .restart local p1    # "message":Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;
    :cond_2
    const/16 v3, 0x66

    if-ne v1, v3, :cond_0

    .line 2530
    :try_start_0
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->data:[B

    if-eqz v1, :cond_0

    .line 2531
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->data:[B

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$CountInfo;->parseFrom([B)Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$CountInfo;

    move-result-object v1

    .line 2532
    iget-object v1, v1, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$CountInfo;->value:Ljava/util/Map;

    .line 2533
    if-eqz v1, :cond_0

    .line 2534
    const-string/jumbo v3, "dig"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 2535
    if-eqz v1, :cond_0

    .line 2536
    iget-object v2, v2, Lbxo;->a:Lbxn$b;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lbxn$b;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2540
    :catch_0
    move-exception v1

    .line 2541
    const-string/jumbo v2, "live"

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "handlePowerMessage error="

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 2542
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2541
    invoke-static {v2, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/live/rpc/model/EvenWheatBroadCastObject;)V
    .locals 3
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/live/rpc/model/EvenWheatBroadCastObject;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 394
    if-eqz p1, :cond_0

    iget-object v0, p0, Lbxo$10;->a:Lbxo;

    .line 4059
    iget-object v0, v0, Lbxo;->a:Lbxn$b;

    .line 394
    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lbxo$10;->a:Lbxo;

    .line 5059
    iget-object v0, v0, Lbxo;->a:Lbxn$b;

    .line 395
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/live/rpc/model/EvenWheatBroadCastObject;->uids:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lbxn$b;->a(Ljava/util/List;Z)V

    .line 397
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 401
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;>;"
    iget-object v1, p0, Lbxo$10;->a:Lbxo;

    .line 6059
    iget-object v1, v1, Lbxo;->a:Lbxn$b;

    .line 401
    invoke-interface {v1}, Lbxn$b;->f()Lcom/taobao/taolive/sdk/component/ChatFrame;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 402
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 403
    .local v0, "barrages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 404
    iget-object v1, p0, Lbxo$10;->a:Lbxo;

    .line 7059
    iget-object v1, v1, Lbxo;->a:Lbxn$b;

    .line 404
    invoke-interface {v1}, Lbxn$b;->f()Lcom/taobao/taolive/sdk/component/ChatFrame;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/taobao/taolive/sdk/component/ChatFrame;->onGetMessages(Ljava/util/List;)V

    .line 408
    .end local v0    # "barrages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;>;"
    :cond_0
    return-void
.end method

.method public final a([B)V
    .locals 2
    .param p1, "data"    # [B

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 386
    iget-object v1, p0, Lbxo$10;->a:Lbxo;

    .line 3059
    iget-object v1, v1, Lbxo;->a:Lbxn$b;

    .line 386
    invoke-interface {v1}, Lbxn$b;->g()Ljjx;

    move-result-object v0

    .line 387
    .local v0, "pushInstance":Ljjx;
    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {v0, p1}, Ljjx;->a([B)V

    .line 390
    :cond_0
    return-void
.end method
