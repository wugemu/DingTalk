.class public final Lgop$2;
.super Lcmi;
.source "SpaceShareRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lgio;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcma;

.field final synthetic c:I

.field final synthetic d:J


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcma;IJ)V
    .locals 0

    .prologue
    .line 422
    iput-object p1, p0, Lgop$2;->a:Landroid/app/Activity;

    iput-object p2, p0, Lgop$2;->b:Lcma;

    iput p3, p0, Lgop$2;->c:I

    iput-wide p4, p0, Lgop$2;->d:J

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 490
    iget-object v0, p0, Lgop$2;->b:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceShareRPC"

    const-string/jumbo v2, "listMembersByRole"

    .line 492
    invoke-static {v2, p1, p2, p3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 491
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 422
    check-cast p1, Lgio;

    .line 1425
    iget-object v1, p0, Lgop$2;->a:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgop$2;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2262
    :cond_0
    :goto_0
    return-void

    .line 1429
    :cond_1
    if-nez p1, :cond_2

    .line 1430
    iget-object v0, p0, Lgop$2;->b:Lcma;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "get member failed"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1434
    :cond_2
    iget-object v1, p1, Lgio;->a:Ljava/lang/Boolean;

    .line 2022
    invoke-static {v1, v0}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 1434
    if-nez v1, :cond_4

    .line 1435
    iget-object v1, p0, Lgop$2;->b:Lcma;

    iget-object v2, p1, Lgio;->b:Ljava/lang/Integer;

    if-nez v2, :cond_3

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lgio;->c:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lgio;->b:Ljava/lang/Integer;

    .line 1436
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    .line 1440
    :cond_4
    iget-object v0, p1, Lgio;->d:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lgio;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_6

    .line 1441
    :cond_5
    iget-object v0, p0, Lgop$2;->b:Lcma;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 1445
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1447
    new-instance v1, Lfp;

    invoke-direct {v1}, Lfp;-><init>()V

    .line 1449
    iget-object v0, p1, Lgio;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgiq;

    .line 1450
    iget-object v4, v0, Lgiq;->a:Ljava/lang/Long;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1451
    iget-object v4, v0, Lgiq;->a:Ljava/lang/Long;

    .line 2044
    const-wide/16 v6, 0x0

    invoke-static {v4, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 1451
    iget-object v0, v0, Lgiq;->c:Ljava/lang/Integer;

    invoke-virtual {v1, v4, v5, v0}, Lfp;->b(JLjava/lang/Object;)V

    goto :goto_2

    .line 1454
    :cond_7
    new-instance v0, Lgop$2$1;

    invoke-direct {v0, p0, v1, p1}, Lgop$2$1;-><init>(Lgop$2;Lfp;Lgio;)V

    .line 1484
    const-class v1, Lcma;

    iget-object v2, p0, Lgop$2;->a:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcma;

    .line 1485
    invoke-static {}, Lgpq;->a()Lgpq;

    move-result-object v1

    iget-object v2, p0, Lgop$2;->a:Landroid/app/Activity;

    iget-wide v4, p0, Lgop$2;->d:J

    .line 2256
    if-eqz v6, :cond_0

    .line 2260
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 2261
    const/4 v0, 0x0

    invoke-virtual {v1, v0, v6}, Lgpq;->a(Ljava/util/List;Lcma;)V

    goto/16 :goto_0

    .line 2265
    :cond_8
    new-instance v0, Lgpq$3;

    invoke-direct/range {v0 .. v6}, Lgpq$3;-><init>(Lgpq;Landroid/content/Context;Ljava/util/List;JLcma;)V

    .line 2282
    if-eqz v2, :cond_9

    instance-of v1, v2, Landroid/app/Activity;

    if-eqz v1, :cond_9

    .line 2283
    const-class v1, Lcma;

    check-cast v2, Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2286
    :cond_9
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    goto/16 :goto_0
.end method
