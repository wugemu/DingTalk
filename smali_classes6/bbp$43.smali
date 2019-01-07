.class public final Lbbp$43;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbgl;

.field final synthetic b:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;Lbgl;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 347
    iput-object p1, p0, Lbbp$43;->b:Lbbp;

    iput-object p2, p0, Lbbp$43;->a:Lbgl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    .line 350
    iget-object v0, p0, Lbbp$43;->b:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v1

    iget-object v2, p0, Lbbp$43;->a:Lbgl;

    .line 1468
    if-eqz v2, :cond_0

    iget-object v0, v2, Lbgl;->a:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1469
    :cond_0
    :goto_0
    return-void

    .line 1472
    :cond_1
    iget v0, v2, Lbgl;->c:I

    invoke-static {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->valueOf(I)Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    move-result-object v0

    .line 1473
    sget-object v3, Lbbo$68;->a:[I

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    .line 1534
    :goto_1
    iget-object v0, v1, Lbbo;->b:Lbbq;

    .line 3272
    new-instance v1, Lbbq$2;

    invoke-direct {v1, v0, v2}, Lbbq$2;-><init>(Lbbq;Lbgl;)V

    invoke-virtual {v0, v1}, Lbbq;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1475
    :pswitch_0
    iget-object v0, v1, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->getOrderlyAndOrderless()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1476
    if-eqz v0, :cond_2

    iget-object v4, v2, Lbgl;->a:Ljava/util/List;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v5

    .line 2109
    invoke-static {v5, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1476
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1477
    sget-object v4, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->NORMAL:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;)V

    .line 1478
    invoke-static {v0}, Lbjs;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 1480
    invoke-static {}, Layv;->a()Layv;

    move-result-object v4

    invoke-virtual {v4, v0}, Layv;->d(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    goto :goto_2

    .line 1483
    :cond_3
    iget-object v0, v1, Lbbo;->f:Lbgp;

    iget-object v3, v2, Lbgl;->a:Ljava/util/List;

    iget v4, v2, Lbgl;->c:I

    invoke-interface {v0, v3, v4}, Lbgp;->a(Ljava/util/List;I)I

    .line 1485
    invoke-virtual {v1}, Lbbo;->e()V

    .line 1486
    invoke-virtual {v1}, Lbbo;->d()V

    goto :goto_1

    .line 1489
    :pswitch_1
    iget-object v0, v1, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->getOrderlyAndOrderless()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1490
    if-eqz v0, :cond_4

    iget-object v4, v2, Lbgl;->a:Ljava/util/List;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v5

    .line 3109
    invoke-static {v5, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1490
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1491
    sget-object v4, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->DELETED:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;)V

    .line 1492
    invoke-virtual {v1, v0}, Lbbo;->d(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 1493
    invoke-static {v0}, Lbjs;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 1495
    invoke-static {}, Layv;->a()Layv;

    move-result-object v4

    invoke-virtual {v4, v0}, Layv;->d(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    goto :goto_3

    .line 1498
    :cond_5
    iget-object v0, v1, Lbbo;->f:Lbgp;

    iget-object v3, v2, Lbgl;->a:Ljava/util/List;

    iget v4, v2, Lbgl;->c:I

    invoke-interface {v0, v3, v4}, Lbgp;->a(Ljava/util/List;I)I

    .line 1500
    invoke-virtual {v1}, Lbbo;->e()V

    .line 1501
    invoke-virtual {v1}, Lbbo;->d()V

    goto/16 :goto_1

    .line 1504
    :pswitch_2
    iget-object v0, v2, Lbgl;->a:Ljava/util/List;

    invoke-virtual {v1, v0}, Lbbo;->b(Ljava/util/List;)V

    .line 1505
    invoke-static {}, Layv;->a()Layv;

    move-result-object v0

    iget-object v3, v2, Lbgl;->a:Ljava/util/List;

    .line 3249
    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1507
    :cond_6
    :goto_4
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v3, Lbbo$1;

    invoke-direct {v3, v1, v2}, Lbbo$1;-><init>(Lbbo;Lbgl;)V

    invoke-virtual {v0, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 3253
    :cond_7
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v4

    new-instance v5, Layv$8;

    invoke-direct {v5, v0, v3}, Layv$8;-><init>(Layv;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 1473
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
