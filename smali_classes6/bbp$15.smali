.class public final Lbbp$15;
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
.field final synthetic a:Lbgc;

.field final synthetic b:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;Lbgc;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 1224
    iput-object p1, p0, Lbbp$15;->b:Lbbp;

    iput-object p2, p0, Lbbp$15;->a:Lbgc;

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
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 1227
    iget-object v0, p0, Lbbp$15;->b:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v6

    iget-object v4, p0, Lbbp$15;->a:Lbgc;

    .line 5451
    if-eqz v4, :cond_0

    .line 6020
    iget-wide v0, v4, Lbgc;->a:J

    .line 5451
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    .line 5452
    :cond_0
    if-nez v4, :cond_2

    .line 5453
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "[DingDataCenter] updateTaskSelfFinish data is null"

    aput-object v1, v0, v8

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 5462
    :cond_1
    :goto_0
    return-void

    .line 5455
    :cond_2
    new-array v0, v9, [Ljava/lang/String;

    const-string/jumbo v1, "[DingDataCenter] updateTaskSelfFinish data\'s dingId is invalid,dingId:"

    aput-object v1, v0, v8

    .line 7020
    iget-wide v2, v4, Lbgc;->a:J

    .line 5455
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 8020
    :cond_3
    iget-wide v0, v4, Lbgc;->a:J

    .line 5459
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lbbo;->a(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v7

    .line 5460
    if-nez v7, :cond_4

    .line 5461
    new-array v0, v9, [Ljava/lang/String;

    const-string/jumbo v1, "[DingDataCenter] updateTaskSelfFinish data is not in local, dingId:"

    aput-object v1, v0, v8

    .line 9020
    iget-wide v2, v4, Lbgc;->a:J

    .line 5461
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 9024
    :cond_4
    iget v0, v4, Lbgc;->b:I

    .line 5465
    invoke-static {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;->fromValue(I)Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    move-result-object v0

    .line 9661
    iget-object v1, v7, Lcom/alibaba/android/ding/base/objects/ObjectDing;->z:Lckm;

    .line 10189
    invoke-virtual {v1, v0, v5}, Lckm;->b(Ljava/lang/Object;Z)Z

    .line 11028
    iget-wide v0, v4, Lbgc;->c:J

    .line 11174
    iput-wide v0, v7, Lcom/alibaba/android/ding/base/objects/ObjectDing;->S:J

    .line 5468
    iget-object v0, v6, Lbbo;->f:Lbgp;

    .line 12020
    iget-wide v1, v4, Lbgc;->a:J

    .line 12024
    iget v3, v4, Lbgc;->b:I

    .line 12028
    iget-wide v4, v4, Lbgc;->c:J

    .line 5468
    invoke-interface/range {v0 .. v5}, Lbgp;->b(JIJ)I

    .line 5469
    invoke-virtual {v6}, Lbbo;->e()V

    .line 5471
    invoke-static {}, Layv;->a()Layv;

    move-result-object v0

    .line 12179
    invoke-virtual {v0, v7}, Layv;->e(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 12183
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Layv$4;

    invoke-direct {v2, v0, v7}, Layv$4;-><init>(Layv;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
