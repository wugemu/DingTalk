.class public final Lbbp$16;
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
.field final synthetic a:Lbfl;

.field final synthetic b:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;Lbfl;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 1233
    iput-object p1, p0, Lbbp$16;->b:Lbbp;

    iput-object p2, p0, Lbbp$16;->a:Lbfl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1236
    iget-object v0, p0, Lbbp$16;->b:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-object v1, p0, Lbbp$16;->a:Lbfl;

    .line 5476
    if-eqz v1, :cond_0

    .line 6020
    iget-wide v2, v1, Lbfl;->a:J

    .line 5476
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    .line 5477
    :cond_0
    if-nez v1, :cond_1

    .line 5478
    new-array v0, v9, [Ljava/lang/String;

    const-string/jumbo v1, "[DingDataCenter] updateTaskExecutorFinishCount data is null"

    aput-object v1, v0, v8

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 5493
    :goto_0
    return-void

    .line 5480
    :cond_1
    new-array v0, v10, [Ljava/lang/String;

    const-string/jumbo v2, "[DingDataCenter] updateTaskExecutorFinishCount data\'s dingId is invalid,dingId:"

    aput-object v2, v0, v8

    .line 7020
    iget-wide v2, v1, Lbfl;->a:J

    .line 5480
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 8020
    :cond_2
    iget-wide v2, v1, Lbfl;->a:J

    .line 5484
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbbo;->a(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v2

    .line 5485
    if-nez v2, :cond_3

    .line 5486
    new-array v0, v10, [Ljava/lang/String;

    const-string/jumbo v2, "[DingDataCenter] updateTaskExecutorFinishCount data is not in local, dingId:"

    aput-object v2, v0, v8

    .line 9020
    iget-wide v2, v1, Lbfl;->a:J

    .line 5486
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 9178
    :cond_3
    iget-wide v4, v2, Lcom/alibaba/android/ding/base/objects/ObjectDing;->T:J

    .line 10028
    iget-wide v6, v1, Lbfl;->c:J

    .line 5490
    cmp-long v3, v4, v6

    if-ltz v3, :cond_4

    .line 5491
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "[DingDataCenter] updateTaskExecutorFinishCount localObjectDing.version"

    aput-object v3, v0, v8

    .line 10178
    iget-wide v2, v2, Lcom/alibaba/android/ding/base/objects/ObjectDing;->T:J

    .line 5492
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v9

    const-string/jumbo v2, ", new Version="

    aput-object v2, v0, v10

    const/4 v2, 0x3

    .line 11028
    iget-wide v4, v1, Lbfl;->c:J

    .line 5492
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 5491
    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 12024
    :cond_4
    iget v3, v1, Lbfl;->b:I

    .line 5496
    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->d(I)V

    .line 12028
    iget-wide v4, v1, Lbfl;->c:J

    .line 12182
    iput-wide v4, v2, Lcom/alibaba/android/ding/base/objects/ObjectDing;->T:J

    .line 5499
    iget-object v3, v0, Lbbo;->f:Lbgp;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v4

    .line 13024
    iget v5, v1, Lbfl;->b:I

    .line 5499
    invoke-interface {v3, v4, v5}, Lbgp;->e(Ljava/lang/String;I)I

    .line 5500
    iget-object v0, v0, Lbbo;->f:Lbgp;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v2

    .line 13028
    iget-wide v4, v1, Lbfl;->c:J

    .line 5500
    invoke-interface {v0, v2, v4, v5}, Lbgp;->d(Ljava/lang/String;J)I

    goto/16 :goto_0
.end method
