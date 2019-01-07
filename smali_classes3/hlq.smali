.class public final Lhlq;
.super Ljava/lang/Object;
.source "MiniAppTaskManager.java"


# static fields
.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile e:Lhlq;


# instance fields
.field public a:Landroid/app/Activity;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 66
    sput-object v0, Lhlq;->b:Ljava/util/Map;

    const-class v1, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity1;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity1;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lhlq;->b:Ljava/util/Map;

    const-class v1, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity2;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity2;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lhlq;->b:Ljava/util/Map;

    const-class v1, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity3;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity3;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lhlq;->b:Ljava/util/Map;

    const-class v1, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity4;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity4;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lhlq;->b:Ljava/util/Map;

    const-class v1, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity5;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity5;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lhlq;->c:Ljava/util/Map;

    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lhlq;->d:Ljava/util/Map;

    .line 85
    return-void
.end method

.method public static declared-synchronized a()Lhlq;
    .locals 4

    .prologue
    .line 76
    const-class v1, Lhlq;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lhlq;->e:Lhlq;

    if-nez v0, :cond_0

    .line 77
    new-instance v2, Lhlq;

    invoke-direct {v2}, Lhlq;-><init>()V

    .line 78
    sput-object v2, Lhlq;->e:Lhlq;

    .line 1441
    const-string/jumbo v0, "LIFECYCLE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 1442
    if-eqz v0, :cond_0

    .line 1443
    new-instance v3, Lhlq$2;

    invoke-direct {v3, v2}, Lhlq$2;-><init>(Lhlq;)V

    invoke-interface {v0, v3}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->registerAppStateListener(Lcom/alibaba/doraemon/lifecycle/APPStateListener;)V

    .line 81
    :cond_0
    sget-object v0, Lhlq;->e:Lhlq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/util/List;)Lhmu;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lhmu;",
            ">;)",
            "Lhmu;"
        }
    .end annotation

    .prologue
    .line 263
    .local p0, "miniAppTaskModels":Ljava/util/List;, "Ljava/util/List<Lhmu;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 264
    :cond_0
    const/4 v2, 0x0

    .line 278
    :cond_1
    return-object v2

    .line 267
    :cond_2
    const/4 v2, 0x0

    .line 268
    .local v2, "miniAppTaskModel":Lhmu;
    const-wide v0, 0x7fffffffffffffffL

    .line 269
    .local v0, "launchTime":J
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhmu;

    .line 270
    .local v3, "tempModel":Lhmu;
    if-eqz v3, :cond_3

    .line 6057
    iget-wide v6, v3, Lhmu;->e:J

    .line 271
    cmp-long v5, v6, v0

    if-gez v5, :cond_3

    .line 7057
    iget-wide v0, v3, Lhmu;->e:J

    .line 273
    move-object v2, v3

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 282
    sget-object v0, Lhlq;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public static a(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 254
    const/4 v0, 0x0

    .line 255
    .local v0, "key":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 256
    const-string/jumbo v1, "appId"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    :cond_0
    return-object v0
.end method

.method public static a(Landroid/app/Activity;Z)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "minimize"    # Z

    .prologue
    const/4 v3, 0x1

    .line 406
    const-string/jumbo v1, "enable_mini_anim"

    invoke-static {v1, v3}, Lhdo;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    if-eqz p0, :cond_0

    .line 409
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    .line 408
    invoke-static {v1, v2, v3}, Lhom;->a(Landroid/content/Intent;ZI)Landroid/util/Pair;

    move-result-object v0

    .line 410
    .local v0, "animPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 411
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 415
    .end local v0    # "animPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_0
    return-void
.end method

.method static synthetic a(Lhlq;)V
    .locals 13
    .param p0, "x0"    # Lhlq;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 41
    .line 9464
    iget-object v0, p0, Lhlq;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9465
    const-string/jumbo v0, "MiniAppTaskManager"

    new-array v1, v12, [Ljava/lang/Object;

    const-string/jumbo v2, "finishDelayTimeoutActivity"

    aput-object v2, v1, v9

    const-string/jumbo v2, "mRunningMiniActivities size="

    aput-object v2, v1, v10

    iget-object v2, p0, Lhlq;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v11

    .line 10082
    const-string/jumbo v2, "mini_task"

    invoke-static {v2, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9466
    iget-object v0, p0, Lhlq;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 9468
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhlq;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 9469
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 9470
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhmu;

    .line 9471
    if-eqz v0, :cond_0

    .line 11041
    iget-object v3, v0, Lhmu;->c:Ljava/lang/String;

    .line 9472
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11057
    iget-wide v4, v0, Lhmu;->e:J

    .line 9474
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    .line 9475
    const-string/jumbo v3, "MiniAppTaskManager"

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "finishDelayTimeoutActivity"

    aput-object v7, v6, v9

    const-string/jumbo v7, "duration="

    aput-object v7, v6, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v11

    const-string/jumbo v7, "activityName="

    aput-object v7, v6, v12

    const/4 v7, 0x4

    .line 12041
    iget-object v8, v0, Lhmu;->c:Ljava/lang/String;

    .line 9476
    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-string/jumbo v8, "miniAppId="

    aput-object v8, v6, v7

    const/4 v7, 0x6

    .line 12049
    iget-object v8, v0, Lhmu;->d:Ljava/lang/String;

    .line 9476
    aput-object v8, v6, v7

    .line 12082
    const-string/jumbo v7, "mini_task"

    invoke-static {v7, v3, v6}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9477
    const-wide/32 v6, 0x493e0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 13033
    iget-object v0, v0, Lhmu;->b:Landroid/app/Activity;

    .line 9478
    invoke-direct {p0, v0}, Lhlq;->c(Landroid/app/Activity;)V

    goto :goto_0

    .line 41
    :cond_1
    return-void
.end method

.method static synthetic a(Lhlq;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lhlq;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lhlq;->c(Landroid/app/Activity;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;ZZ)Z
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "nonRoot"    # Z
    .param p2, "exclude"    # Z

    .prologue
    .line 418
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lhrf;->a(Landroid/app/Activity;ZZ)Z

    move-result v0

    .line 419
    .local v0, "isMoveTaskToBackSuccess":Z
    invoke-static {}, Lhlq;->a()Lhlq;

    invoke-static {p0}, Lhlq;->b(Landroid/app/Activity;)V

    .line 420
    return v0
.end method

.method static synthetic a(Lhlq;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "x0"    # Lhlq;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 41
    .line 8225
    invoke-static {}, Lhlq;->a()Lhlq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhlq;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 8227
    const/4 v1, 0x0

    .line 8229
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhmu;

    .line 8230
    if-eqz v0, :cond_0

    .line 9033
    iget-object v0, v0, Lhmu;->b:Landroid/app/Activity;

    .line 8232
    if-eqz v0, :cond_0

    .line 8233
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lhlq;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 8234
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8235
    const/4 v0, 0x1

    .line 41
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    sget-object v0, Lhlq;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    sget-object v0, Lhlq;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 289
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 390
    const-string/jumbo v1, "enable_mini_anim"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lhdo;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    if-eqz p0, :cond_0

    .line 393
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 392
    invoke-static {v1, v3, v3}, Lhom;->a(Landroid/content/Intent;ZI)Landroid/util/Pair;

    move-result-object v0

    .line 394
    .local v0, "animPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 395
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 399
    .end local v0    # "animPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_0
    return-void
.end method

.method public static c()I
    .locals 1

    .prologue
    .line 293
    sget-object v0, Lhlq;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method private c(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 246
    if-eqz p1, :cond_0

    .line 4303
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4304
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 4305
    invoke-virtual {p0, v0}, Lhlq;->b(Ljava/lang/String;)Z

    move-result v0

    .line 246
    :goto_0
    if-nez v0, :cond_0

    .line 247
    const-string/jumbo v0, "MiniAppTaskManager"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "!isActivityForeground"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string/jumbo v3, "activityName="

    aput-object v3, v2, v1

    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 5082
    const-string/jumbo v1, "mini_task"

    invoke-static {v1, v0, v2}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    invoke-static {p1}, Lhrf;->b(Landroid/app/Activity;)V

    .line 250
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 4307
    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lhmu;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    new-instance v12, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 97
    .local v12, "miniAppTaskModels":Ljava/util/List;, "Ljava/util/List<Lhmu;>;"
    if-nez p1, :cond_1

    .line 141
    :cond_0
    return-object v12

    .line 101
    :cond_1
    const-string/jumbo v15, "activity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    .line 102
    .local v5, "activityManager":Landroid/app/ActivityManager;
    if-eqz v5, :cond_0

    .line 105
    const/16 v15, 0x64

    invoke-virtual {v5, v15}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v14

    .line 106
    .local v14, "runningTaskInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v14, :cond_0

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_0

    .line 107
    sget-object v15, Lhlq;->b:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 108
    .local v9, "miniActivitySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 109
    .local v8, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 110
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 111
    .local v13, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v13, :cond_2

    .line 112
    iget v7, v13, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 113
    .local v7, "id":I
    iget-object v15, v13, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v15, :cond_2

    .line 114
    iget-object v15, v13, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 115
    .local v6, "baseActivity":Ljava/lang/String;
    if-eqz v9, :cond_2

    invoke-interface {v9, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 116
    new-instance v11, Lhmu;

    invoke-direct {v11}, Lhmu;-><init>()V

    .line 2029
    .local v11, "miniAppTaskModel":Lhmu;
    iput v7, v11, Lhmu;->a:I

    .line 2045
    iput-object v6, v11, Lhmu;->c:Ljava/lang/String;

    .line 121
    move-object/from16 v0, p0

    iget-object v15, v0, Lhlq;->c:Ljava/util/Map;

    invoke-interface {v15, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    .line 122
    .local v4, "activity":Landroid/app/Activity;
    if-eqz v4, :cond_3

    .line 3037
    iput-object v4, v11, Lhmu;->b:Landroid/app/Activity;

    .line 124
    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    if-eqz v15, :cond_3

    .line 125
    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    const-string/jumbo v18, "appId"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3053
    .local v10, "miniAppId":Ljava/lang/String;
    iput-object v10, v11, Lhmu;->d:Ljava/lang/String;

    .line 127
    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    .line 3069
    iput-object v15, v11, Lhmu;->f:Landroid/os/Bundle;

    .line 129
    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    const-string/jumbo v18, "MINI_EXTRA_KEY_KEEP_ALIVE_FROM_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    .line 4061
    .local v16, "startKeepAliveTime":J
    move-wide/from16 v0, v16

    iput-wide v0, v11, Lhmu;->e:J

    .line 134
    .end local v10    # "miniAppId":Ljava/lang/String;
    .end local v16    # "startKeepAliveTime":J
    :cond_3
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 199
    invoke-static {}, Lhhp;->a()Lhhp;

    const-string/jumbo v0, "DISABLE_ENTER_PAGE_UPDATE_TASK_V437"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lhhp;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    if-eqz p1, :cond_0

    .line 207
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v0

    new-instance v1, Lhlq$1;

    invoke-direct {v1, p0, p1}, Lhlq$1;-><init>(Lhlq;Landroid/app/Activity;)V

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Lcaa;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "miniAppId"    # Ljava/lang/String;
    .param p2, "isLoading"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 378
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    :goto_0
    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lhlq;->d:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 383
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lhlq;->d:Ljava/util/Map;

    .line 386
    :cond_1
    iget-object v0, p0, Lhlq;->d:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 2
    .param p1, "className"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 311
    .line 7344
    iget-object v0, p0, Lhlq;->a:Landroid/app/Activity;

    .line 312
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 313
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 315
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
