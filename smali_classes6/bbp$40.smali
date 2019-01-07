.class public final Lbbp$40;
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
.field final synthetic a:Lazk;

.field final synthetic b:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;Lazk;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 320
    iput-object p1, p0, Lbbp$40;->b:Lbbp;

    iput-object p2, p0, Lbbp$40;->a:Lazk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 323
    iget-object v0, p0, Lbbp$40;->b:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v6

    iget-object v7, p0, Lbbp$40;->a:Lazk;

    .line 1408
    if-eqz v7, :cond_0

    iget-object v0, v7, Lazk;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, v7, Lazk;->b:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 1409
    :cond_0
    :goto_0
    return-void

    .line 1411
    :cond_1
    iget-object v0, v7, Lazk;->a:Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lbbo;->a(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v8

    .line 1412
    if-eqz v8, :cond_0

    .line 1417
    iget-object v0, v6, Lbbo;->g:Lbgq;

    iget-object v1, v7, Lazk;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v1, v7, Lazk;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v0, v2, v3, v4, v5}, Lbgq;->a(JJ)I

    .line 1418
    iget-object v1, v6, Lbbo;->b:Lbbq;

    iget-object v0, v7, Lazk;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, v7, Lazk;->b:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 2243
    new-instance v0, Lbbq$10;

    invoke-direct/range {v0 .. v5}, Lbbq$10;-><init>(Lbbq;JJ)V

    invoke-virtual {v1, v0}, Lbbq;->a(Ljava/lang/Runnable;)V

    .line 1419
    iget-object v0, v6, Lbbo;->b:Lbbq;

    iget-object v1, v6, Lbbo;->g:Lbgq;

    invoke-interface {v1}, Lbgq;->o_()Ljava/util/List;

    move-result-object v1

    .line 3124
    new-instance v2, Lbbq$5;

    invoke-direct {v2, v0, v1}, Lbbq$5;-><init>(Lbbq;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lbbq;->a(Ljava/lang/Runnable;)V

    .line 1422
    iget-object v0, v7, Lazk;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 1423
    iget-object v0, v7, Lazk;->g:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_3

    iget-object v0, v7, Lazk;->g:Ljava/lang/Integer;

    .line 1424
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    .line 1423
    :goto_1
    invoke-virtual {v8, v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->f(J)V

    .line 1429
    :cond_2
    iget-object v0, v7, Lazk;->q:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, v7, Lazk;->q:Ljava/lang/Integer;

    .line 1430
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, v7, Lazk;->q:Ljava/lang/Integer;

    .line 1431
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v8}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->W()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1432
    iget-object v0, v7, Lazk;->q:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v8, v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->g(J)V

    goto :goto_0

    .line 1425
    :cond_3
    invoke-virtual {v8}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->V()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    goto :goto_1
.end method
