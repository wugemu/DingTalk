.class public Lfxi;
.super Ljava/lang/Object;
.source "QuotaCenter.java"


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Lfxi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lfxi;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfxi;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lfxi;
    .locals 2

    .prologue
    .line 44
    const-class v1, Lfxi;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lfxi;->b:Lfxi;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lfxi;

    invoke-direct {v0}, Lfxi;-><init>()V

    sput-object v0, Lfxi;->b:Lfxi;

    .line 47
    :cond_0
    sget-object v0, Lfxi;->b:Lfxi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lfxi;Lcma;)V
    .locals 2
    .param p0, "x0"    # Lfxi;
    .param p1, "x1"    # Lcma;

    .prologue
    .line 32
    .line 3159
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v0

    new-instance v1, Lfxi$4;

    invoke-direct {v1, p0, p1}, Lfxi$4;-><init>(Lfxi;Lcma;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Lcmi;)V

    .line 32
    return-void
.end method

.method static synthetic a(Lfxi;Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;)V
    .locals 0
    .param p0, "x0"    # Lfxi;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;

    .prologue
    .line 32
    return-void
.end method

.method static synthetic a(Lfxi;Ljava/util/List;J)V
    .locals 2
    .param p0, "x0"    # Lfxi;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # J

    .prologue
    .line 32
    .line 3376
    const-string/jumbo v0, "THREAD"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 3377
    const-class v1, Lfxi;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 3378
    sget-object v1, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 3379
    new-instance v1, Lfxi$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lfxi$6;-><init>(Lfxi;Ljava/util/List;J)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 32
    return-void
.end method

.method static synthetic a(Lfxi;Ljava/util/List;Ljava/util/List;)Z
    .locals 9
    .param p0, "x0"    # Lfxi;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    const/4 v8, 0x6

    const/4 v2, 0x1

    .line 32
    .line 2388
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    .line 2389
    :cond_1
    :goto_0
    return v0

    .line 2393
    :cond_2
    const/4 v0, 0x0

    .line 2394
    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2395
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2396
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v1, v0

    .line 2399
    :goto_1
    const/4 v3, 0x0

    .line 2400
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;

    .line 2401
    if-eqz v0, :cond_3

    .line 2403
    if-eqz v1, :cond_4

    .line 2404
    iget v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2407
    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 2408
    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/QuotaObject;->lastTime:J

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2409
    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 2410
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2411
    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-eq v5, v0, :cond_3

    move v0, v2

    .line 2419
    :goto_2
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v2

    .line 2420
    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_2

    :cond_6
    move-object v1, v0

    goto :goto_1
.end method


# virtual methods
.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 53
    sget-object v0, Lfxi;->a:Ljava/lang/String;

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lfxi$1;

    invoke-direct {v1, p0}, Lfxi$1;-><init>(Lfxi;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 65
    return-void
.end method
