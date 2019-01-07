.class final Ljjx$e;
.super Ljava/lang/Object;
.source "PushInstance.java"

# interfaces
.implements Lcom/taobao/living/internal/TBLiveStreamEngineImpl$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljjx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Ljjx;


# direct methods
.method private constructor <init>(Ljjx;)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Ljjx$e;->a:Ljjx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljjx;B)V
    .locals 0
    .param p1, "x0"    # Ljjx;

    .prologue
    .line 533
    invoke-direct {p0, p1}, Ljjx$e;-><init>(Ljjx;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 601
    const-string/jumbo v1, "onVideoFpsTooSlow"

    .line 3013
    const-string/jumbo v2, "live"

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iget-object v1, p0, Ljjx$e;->a:Ljjx;

    invoke-static {v1}, Ljjx;->d(Ljjx;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljjx$e;->a:Ljjx;

    invoke-static {v1}, Ljjx;->d(Ljjx;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 603
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljjx$e;->a:Ljjx;

    invoke-static {v1}, Ljjx;->d(Ljjx;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 604
    iget-object v1, p0, Ljjx$e;->a:Ljjx;

    invoke-static {v1}, Ljjx;->d(Ljjx;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljjx$b;

    invoke-interface {v1}, Ljjx$b;->e()V

    .line 603
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 607
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public final a(Lcom/taobao/living/api/TBConstants$TBLiveStreamState;)V
    .locals 5
    .param p1, "tbLiveStreamState"    # Lcom/taobao/living/api/TBConstants$TBLiveStreamState;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 537
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "onTBLiveStreamState, tbLiveStreamState="

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1013
    const-string/jumbo v2, "live"

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    sget-object v1, Ljjx$2;->a:[I

    invoke-virtual {p1}, Lcom/taobao/living/api/TBConstants$TBLiveStreamState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 591
    :cond_0
    :pswitch_0
    return-void

    .line 545
    :pswitch_1
    iget-object v1, p0, Ljjx$e;->a:Ljjx;

    invoke-static {v1}, Ljjx;->d(Ljjx;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljjx$e;->a:Ljjx;

    invoke-static {v1}, Ljjx;->d(Ljjx;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 546
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljjx$e;->a:Ljjx;

    invoke-static {v1}, Ljjx;->d(Ljjx;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 547
    iget-object v1, p0, Ljjx$e;->a:Ljjx;

    invoke-static {v1}, Ljjx;->d(Ljjx;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljjx$b;

    invoke-interface {v1}, Ljjx$b;->a()V

    .line 546
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 558
    .end local v0    # "i":I
    :pswitch_2
    iget-object v1, p0, Ljjx$e;->a:Ljjx;

    invoke-static {v1}, Ljjx;->e(Ljjx;)Lcom/taobao/taolive/sdk/utils/WeakHandler;

    move-result-object v1

    if-nez v1, :cond_1

    .line 559
    iget-object v1, p0, Ljjx$e;->a:Ljjx;

    new-instance v2, Lcom/taobao/taolive/sdk/utils/WeakHandler;

    iget-object v3, p0, Ljjx$e;->a:Ljjx;

    invoke-direct {v2, v3}, Lcom/taobao/taolive/sdk/utils/WeakHandler;-><init>(Lcom/taobao/taolive/sdk/utils/IHandler;)V

    invoke-static {v1, v2}, Ljjx;->a(Ljjx;Lcom/taobao/taolive/sdk/utils/WeakHandler;)Lcom/taobao/taolive/sdk/utils/WeakHandler;

    .line 561
    :cond_1
    iget-object v1, p0, Ljjx$e;->a:Ljjx;

    invoke-static {v1}, Ljjx;->e(Ljjx;)Lcom/taobao/taolive/sdk/utils/WeakHandler;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/taobao/taolive/sdk/utils/WeakHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 562
    iget-object v1, p0, Ljjx$e;->a:Ljjx;

    invoke-static {v1}, Ljjx;->e(Ljjx;)Lcom/taobao/taolive/sdk/utils/WeakHandler;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/taobao/taolive/sdk/utils/WeakHandler;->removeMessages(I)V

    .line 565
    :cond_2
    iget-object v1, p0, Ljjx$e;->a:Ljjx;

    invoke-static {v1}, Ljjx;->d(Ljjx;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljjx$e;->a:Ljjx;

    invoke-static {v1}, Ljjx;->d(Ljjx;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 566
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Ljjx$e;->a:Ljjx;

    invoke-static {v1}, Ljjx;->d(Ljjx;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 567
    iget-object v1, p0, Ljjx$e;->a:Ljjx;

    invoke-static {v1}, Ljjx;->d(Ljjx;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljjx$b;

    invoke-interface {v1}, Ljjx$b;->c()V

    .line 568
    iget-object v1, p0, Ljjx$e;->a:Ljjx;

    invoke-static {v1}, Ljjx;->d(Ljjx;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljjx$b;

    sget-object v2, Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;->TBLiveStreamNetworkWorse:Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;

    invoke-interface {v1, v2}, Ljjx$b;->a(Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;)V

    .line 566
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 574
    .end local v0    # "i":I
    :pswitch_3
    iget-object v1, p0, Ljjx$e;->a:Ljjx;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Ljjx;->a(Ljjx;J)J

    .line 575
    iget-object v1, p0, Ljjx$e;->a:Ljjx;

    invoke-static {v1}, Ljjx;->e(Ljjx;)Lcom/taobao/taolive/sdk/utils/WeakHandler;

    move-result-object v1

    if-nez v1, :cond_3

    .line 576
    iget-object v1, p0, Ljjx$e;->a:Ljjx;

    new-instance v2, Lcom/taobao/taolive/sdk/utils/WeakHandler;

    iget-object v3, p0, Ljjx$e;->a:Ljjx;

    invoke-direct {v2, v3}, Lcom/taobao/taolive/sdk/utils/WeakHandler;-><init>(Lcom/taobao/taolive/sdk/utils/IHandler;)V

    invoke-static {v1, v2}, Ljjx;->a(Ljjx;Lcom/taobao/taolive/sdk/utils/WeakHandler;)Lcom/taobao/taolive/sdk/utils/WeakHandler;

    .line 578
    :cond_3
    iget-object v1, p0, Ljjx$e;->a:Ljjx;

    invoke-static {v1}, Ljjx;->e(Ljjx;)Lcom/taobao/taolive/sdk/utils/WeakHandler;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/taobao/taolive/sdk/utils/WeakHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 579
    iget-object v1, p0, Ljjx$e;->a:Ljjx;

    invoke-static {v1}, Ljjx;->e(Ljjx;)Lcom/taobao/taolive/sdk/utils/WeakHandler;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/taobao/taolive/sdk/utils/WeakHandler;->removeMessages(I)V

    .line 581
    :cond_4
    iget-object v1, p0, Ljjx$e;->a:Ljjx;

    invoke-static {v1}, Ljjx;->e(Ljjx;)Lcom/taobao/taolive/sdk/utils/WeakHandler;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v4, v2, v3}, Lcom/taobao/taolive/sdk/utils/WeakHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 583
    iget-object v1, p0, Ljjx$e;->a:Ljjx;

    invoke-static {v1}, Ljjx;->d(Ljjx;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljjx$e;->a:Ljjx;

    invoke-static {v1}, Ljjx;->d(Ljjx;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 584
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p0, Ljjx$e;->a:Ljjx;

    invoke-static {v1}, Ljjx;->d(Ljjx;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 585
    iget-object v1, p0, Ljjx$e;->a:Ljjx;

    invoke-static {v1}, Ljjx;->d(Ljjx;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljjx$b;

    invoke-interface {v1}, Ljjx$b;->b()V

    .line 586
    iget-object v1, p0, Ljjx$e;->a:Ljjx;

    invoke-static {v1}, Ljjx;->d(Ljjx;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljjx$b;

    sget-object v2, Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;->TBLiveStreamNetworkExcellent:Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;

    invoke-interface {v1, v2}, Ljjx$b;->a(Lcom/taobao/living/api/TBConstants$TBLiveStreamNetworkStauts;)V

    .line 584
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 538
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Z)V
    .locals 3
    .param p1, "b"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 595
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "onTBLiveEncoderSoftware, b="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2013
    const-string/jumbo v1, "live"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    return-void
.end method
