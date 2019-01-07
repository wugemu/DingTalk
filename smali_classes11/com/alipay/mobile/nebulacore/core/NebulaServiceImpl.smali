.class public Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;
.super Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;
.source "NebulaServiceImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebulacore/api/NebulaService;


# static fields
.field public static final TAG:Ljava/lang/String; = "H5NebulaService"


# instance fields
.field private bugMeReceiver:Landroid/content/BroadcastReceiver;

.field private h5TaskScheduleProvider:Lcom/alipay/mobile/nebula/provider/H5TaskScheduleProvider;

.field private hasLoadDevHelp:Z

.field private idleTask:Lcom/alipay/mobile/nebulacore/api/H5UcInitTask;

.field private nebulaAppManager:Lcom/alipay/mobile/nebula/appcenter/listen/NebulaAppManager;

.field private nebulaCommonManager:Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonManager;

.field private pluginsInited:Z

.field private sessions:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lipc;",
            ">;"
        }
    .end annotation
.end field

.field private ssListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Liom;",
            ">;>;"
        }
    .end annotation
.end field

.field private ucIsReadyReceiver:Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;

.field private ucPageReadyReceiver:Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;

.field private webDriverHelper:Liph;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 132
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;-><init>()V

    .line 120
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->ucPageReadyReceiver:Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;

    .line 122
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->ucIsReadyReceiver:Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;

    .line 124
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->bugMeReceiver:Landroid/content/BroadcastReceiver;

    .line 133
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->ssListeners:Ljava/util/Map;

    .line 134
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->sessions:Ljava/util/Stack;

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->pluginsInited:Z

    .line 136
    const-string/jumbo v0, "H5NebulaService"

    const-string/jumbo v1, "init nebula service  "

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method private commonSet(Lcom/alipay/mobile/h5container/api/H5Context;Linz;Z)Landroid/os/Bundle;
    .locals 16
    .param p1, "h5Context"    # Lcom/alipay/mobile/h5container/api/H5Context;
    .param p2, "h5Bundle"    # Linz;
    .param p3, "createPage"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 597
    sget-boolean v9, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v9, :cond_0

    .line 601
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v12, "h5_dev_uc"

    invoke-static {v9, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getConfigBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    sput-boolean v9, Lcom/alipay/mobile/nebulacore/Nebula;->h5_dev_uc:Z

    .line 606
    :cond_0
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Linz;->a()Landroid/os/Bundle;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->fireUrgentUcInit(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->pluginsInited:Z

    if-nez v9, :cond_1

    .line 612
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->initPlugins()V

    .line 616
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v9

    if-nez v9, :cond_2

    .line 618
    const-class v9, Lcom/alipay/mobile/nebula/permission/H5PermissionManager;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/nebula/permission/H5PermissionManager;

    .line 619
    .local v7, "permissionManager":Lcom/alipay/mobile/nebula/permission/H5PermissionManager;
    if-eqz v7, :cond_2

    .line 620
    invoke-interface {v7}, Lcom/alipay/mobile/nebula/permission/H5PermissionManager;->setDefaultPermissionConfig()V

    .line 624
    .end local v7    # "permissionManager":Lcom/alipay/mobile/nebula/permission/H5PermissionManager;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Linz;->a()Landroid/os/Bundle;

    move-result-object v3

    .line 625
    .local v3, "bundle":Landroid/os/Bundle;
    const-string/jumbo v9, "appId"

    invoke-static {v3, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 627
    .local v2, "appId":Ljava/lang/String;
    const-string/jumbo v9, "sessionId"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 628
    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/nebulacore/Nebula;->initSession(Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/h5container/api/H5Context;)V

    .line 631
    :cond_3
    const-string/jumbo v9, "sessionId"

    invoke-static {v3, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 634
    .local v8, "sessionId":Ljava/lang/String;
    invoke-static {v3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->hasCheckParam(Landroid/os/Bundle;)Z

    move-result v5

    .line 636
    .local v5, "hasCheck":Z
    const-string/jumbo v9, "H5NebulaService"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "appId "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " hasCheck "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->clearTabDataByAppId(Ljava/lang/String;)V

    .line 639
    const/4 v9, 0x0

    sput-boolean v9, Lcom/alipay/mobile/nebulacore/Nebula;->isDSL:Z

    .line 641
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 642
    .local v10, "startTime":J
    invoke-static {v3, v5}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5AppCenter;->setupPage(Landroid/os/Bundle;Z)V

    .line 643
    const-string/jumbo v9, "H5NebulaService"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "startPage setupPage cost "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v10

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const-string/jumbo v9, "H5NebulaService"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, " session "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5026
    move-object/from16 v0, p2

    iget-object v6, v0, Linz;->a:Ljava/util/List;

    .line 647
    .local v6, "listeners":Ljava/util/List;, "Ljava/util/List<Liom;>;"
    if-eqz v6, :cond_4

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    .line 648
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->ssListeners:Ljava/util/Map;

    invoke-interface {v9, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    :cond_4
    const-string/jumbo v9, "offlineHost"

    invoke-static {v3, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string/jumbo v9, "local"

    :goto_1
    sput-object v9, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->currentPsd:Ljava/lang/String;

    .line 653
    const-string/jumbo v9, "ifCreatePage"

    move/from16 v0, p3

    invoke-virtual {v3, v9, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 654
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->logStart(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 655
    return-object v3

    .line 607
    .end local v2    # "appId":Ljava/lang/String;
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v5    # "hasCheck":Z
    .end local v6    # "listeners":Ljava/util/List;, "Ljava/util/List<Liom;>;"
    .end local v8    # "sessionId":Ljava/lang/String;
    .end local v10    # "startTime":J
    :catch_0
    move-exception v4

    .line 608
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "H5NebulaService"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "Urgent uc init:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 651
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "appId":Ljava/lang/String;
    .restart local v3    # "bundle":Landroid/os/Bundle;
    .restart local v5    # "hasCheck":Z
    .restart local v6    # "listeners":Ljava/util/List;, "Ljava/util/List<Liom;>;"
    .restart local v8    # "sessionId":Ljava/lang/String;
    .restart local v10    # "startTime":J
    :cond_5
    const-string/jumbo v9, "online"

    goto :goto_1
.end method

.method private enableStockTradeLog(Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 578
    if-nez p1, :cond_1

    .line 591
    :cond_0
    :goto_0
    return v2

    .line 582
    :cond_1
    :try_start_0
    const-string/jumbo v3, "h5_enableStockLogSwitch"

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 583
    .local v0, "enableStockSwitch":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v3, "YES"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 585
    const-string/jumbo v3, "NO"

    const-string/jumbo v4, "isStockTradeLog"

    invoke-static {p1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 586
    const/4 v2, 0x0

    goto :goto_0

    .line 588
    .end local v0    # "enableStockSwitch":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 589
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "H5NebulaService"

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private declared-synchronized fireIdleUcInit()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1031
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->idleTask:Lcom/alipay/mobile/nebulacore/api/H5UcInitTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 1051
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1035
    :cond_1
    :try_start_1
    const-string/jumbo v1, "H5NebulaService"

    const-string/jumbo v2, "fire idle task to init uc service"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    new-instance v1, Lcom/alipay/mobile/nebulacore/api/H5UcInitTask;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/alipay/mobile/nebulacore/api/H5UcInitTask;-><init>(ZLandroid/os/Bundle;)V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->idleTask:Lcom/alipay/mobile/nebulacore/api/H5UcInitTask;

    .line 1037
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1039
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->idleTask:Lcom/alipay/mobile/nebulacore/api/H5UcInitTask;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1041
    .local v0, "thread":Ljava/lang/Thread;
    const-string/jumbo v1, "h5_tiny_initUc_idleTask"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1042
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 1043
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1031
    .end local v0    # "thread":Ljava/lang/Thread;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1046
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->h5TaskScheduleProvider:Lcom/alipay/mobile/nebula/provider/H5TaskScheduleProvider;

    if-eqz v1, :cond_0

    .line 1047
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->h5TaskScheduleProvider:Lcom/alipay/mobile/nebula/provider/H5TaskScheduleProvider;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->idleTask:Lcom/alipay/mobile/nebulacore/api/H5UcInitTask;

    const-string/jumbo v3, "H5"

    const/16 v4, 0xa

    invoke-interface {v1, v2, v3, v4}, Lcom/alipay/mobile/nebula/provider/H5TaskScheduleProvider;->addIdleTask(Ljava/lang/Runnable;Ljava/lang/String;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private getFragmentCommon(Liop;)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "h5Page"    # Liop;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 357
    if-nez p1, :cond_1

    .line 367
    :cond_0
    :goto_0
    return-object v1

    .line 360
    :cond_1
    invoke-interface {p1}, Liop;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Liop;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 363
    invoke-interface {p1}, Liop;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 364
    .local v0, "activity":Landroid/app/Activity;
    instance-of v2, v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-eqz v2, :cond_0

    .line 367
    check-cast v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    goto :goto_0
.end method

.method private init()V
    .locals 6

    .prologue
    .line 806
    const/4 v1, 0x5

    .line 808
    .local v1, "time":I
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 809
    const/4 v1, 0x2

    .line 811
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->getDefaultScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    .line 812
    .local v0, "executor":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    new-instance v2, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$3;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$3;-><init>(Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;)V

    int-to-long v4, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 883
    return-void
.end method

.method private initPlugins()V
    .locals 10

    .prologue
    .line 140
    const-string/jumbo v5, "H5NebulaService"

    const-string/jumbo v8, "initPlugins"

    invoke-static {v5, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->pluginsInited:Z

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 143
    .local v6, "time":J
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->getPluginManager()Liow;

    move-result-object v4

    .line 145
    .local v4, "pluginManager":Liow;
    new-instance v5, Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin;-><init>()V

    invoke-interface {v4, v5}, Liow;->register(Liov;)Z

    .line 146
    new-instance v5, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkPlugin;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkPlugin;-><init>()V

    invoke-interface {v4, v5}, Liow;->register(Liov;)Z

    .line 147
    new-instance v5, Lcom/alipay/mobile/nebulacore/plugin/H5SystemPlugin;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulacore/plugin/H5SystemPlugin;-><init>()V

    invoke-interface {v4, v5}, Liow;->register(Liov;)Z

    .line 148
    new-instance v5, Lcom/alipay/mobile/nebulacore/plugin/H5SecurePlugin;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulacore/plugin/H5SecurePlugin;-><init>()V

    invoke-interface {v4, v5}, Liow;->register(Liov;)Z

    .line 149
    new-instance v5, Lcom/alipay/mobile/nebulacore/plugin/H5CookiePlugin;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulacore/plugin/H5CookiePlugin;-><init>()V

    invoke-interface {v4, v5}, Liow;->register(Liov;)Z

    .line 150
    new-instance v5, Lcom/alipay/mobile/nebulacore/plugin/H5ClipboardPlugin;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulacore/plugin/H5ClipboardPlugin;-><init>()V

    invoke-interface {v4, v5}, Liow;->register(Liov;)Z

    .line 151
    new-instance v5, Lcom/alipay/mobile/nebulacore/plugin/H5DefaultPlugin;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulacore/plugin/H5DefaultPlugin;-><init>()V

    invoke-interface {v4, v5}, Liow;->register(Liov;)Z

    .line 152
    new-instance v5, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin;-><init>()V

    invoke-interface {v4, v5}, Liow;->register(Liov;)Z

    .line 153
    new-instance v5, Lcom/alipay/mobile/nebulacore/plugin/H5ChannelPlugin;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulacore/plugin/H5ChannelPlugin;-><init>()V

    invoke-interface {v4, v5}, Liow;->register(Liov;)Z

    .line 155
    new-instance v5, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeSwitchPlugin;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeSwitchPlugin;-><init>()V

    invoke-interface {v4, v5}, Liow;->register(Liov;)Z

    .line 156
    new-instance v5, Lcom/alipay/mobile/nebulacore/pushbiz/H5PushBizPlugin;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulacore/pushbiz/H5PushBizPlugin;-><init>()V

    invoke-interface {v4, v5}, Liow;->register(Liov;)Z

    .line 157
    new-instance v5, Lcom/alipay/mobile/nebulacore/biz/H5BizPlugin;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulacore/biz/H5BizPlugin;-><init>()V

    invoke-interface {v4, v5}, Liow;->register(Liov;)Z

    .line 158
    new-instance v5, Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulacore/plugin/H5ErrorPagePlugin;-><init>()V

    invoke-interface {v4, v5}, Liow;->register(Liov;)Z

    .line 160
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;->getInstance()Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;

    move-result-object v2

    .line 161
    .local v2, "em":Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;
    const-string/jumbo v5, "service"

    invoke-virtual {v2, v5, v4}, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;->createPlugin(Ljava/lang/String;Liow;)Liov;

    move-result-object v3

    .line 162
    .local v3, "extServicePlugin":Liov;
    if-eqz v3, :cond_0

    .line 163
    invoke-interface {v4, v3}, Liow;->register(Liov;)Z

    .line 165
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v0, v8, v6

    .line 166
    .local v0, "delta":J
    const-string/jumbo v5, "H5NebulaService"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "initPlugins delta "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method private logStart(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 660
    const-string/jumbo v1, "H5_AL_SESSION_START"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "diagnose"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 661
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "appId"

    invoke-virtual {v1, v2, p2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "version"

    const-string/jumbo v3, "appVersion"

    .line 662
    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "publicId"

    const-string/jumbo v3, "publicId"

    .line 663
    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v2, "url"

    const-string/jumbo v3, "url"

    .line 664
    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 665
    .local v0, "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 666
    return-void
.end method

.method private registerH5BugMeStartUp()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 887
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->bugMeReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    .line 888
    new-instance v2, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$4;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$4;-><init>(Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;)V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->bugMeReceiver:Landroid/content/BroadcastReceiver;

    .line 919
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    .line 920
    .local v1, "manager":Ldq;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 921
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "h5bugMeStartUp"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 922
    const-string/jumbo v2, "H5NebulaService"

    const-string/jumbo v3, "register h5bugMeStartUp"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->bugMeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 925
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "manager":Ldq;
    :cond_0
    return-void
.end method


# virtual methods
.method public addPluginConfig(Lcom/alipay/mobile/nebula/config/H5PluginConfig;)V
    .locals 1
    .param p1, "config"    # Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    .prologue
    .line 935
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;->getInstance()Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;->addConfig(Lcom/alipay/mobile/nebula/config/H5PluginConfig;)V

    .line 936
    return-void
.end method

.method public addSession(Lipc;)Z
    .locals 5
    .param p1, "session"    # Lipc;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 669
    if-nez p1, :cond_0

    .line 683
    :goto_0
    return v1

    .line 673
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->sessions:Ljava/util/Stack;

    monitor-enter v2

    .line 674
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->sessions:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lipc;

    .line 675
    .local v0, "s":Lipc;
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 676
    monitor-exit v2

    goto :goto_0

    .line 682
    .end local v0    # "s":Lipc;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 680
    :cond_2
    :try_start_1
    invoke-interface {p1, p0}, Lipc;->setParent(Liob;)V

    .line 681
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->sessions:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 682
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 683
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public createPage(Lcom/alipay/mobile/h5container/api/H5Context;Linz;)Liop;
    .locals 12
    .param p1, "h5Context"    # Lcom/alipay/mobile/h5container/api/H5Context;
    .param p2, "h5Bundle"    # Linz;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 179
    .local v8, "timeMillis":J
    if-nez p2, :cond_0

    .line 180
    new-instance p2, Linz;

    .end local p2    # "h5Bundle":Linz;
    invoke-direct {p2}, Linz;-><init>()V

    .line 183
    .restart local p2    # "h5Bundle":Linz;
    :cond_0
    invoke-virtual {p2}, Linz;->a()Landroid/os/Bundle;

    move-result-object v10

    if-nez v10, :cond_1

    .line 184
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2043
    iput-object v10, p2, Linz;->b:Landroid/os/Bundle;

    .line 187
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v10

    if-nez v10, :cond_3

    .line 188
    :cond_2
    const-string/jumbo v10, "H5NebulaService"

    const-string/jumbo v11, "invalid h5 context!"

    invoke-static {v10, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v7

    .line 224
    :goto_0
    return-object v6

    .line 192
    :cond_3
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v10

    instance-of v10, v10, Landroid/app/Activity;

    if-nez v10, :cond_4

    .line 193
    const-string/jumbo v10, "H5NebulaService"

    const-string/jumbo v11, "not activity context!"

    invoke-static {v10, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v7

    .line 194
    goto :goto_0

    .line 197
    :cond_4
    invoke-virtual {p2}, Linz;->a()Landroid/os/Bundle;

    move-result-object v10

    const-string/jumbo v11, "appId"

    invoke-static {v10, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "appId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 199
    const-class v10, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 200
    .local v3, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-eqz v3, :cond_5

    .line 201
    invoke-interface {v3, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppFromServerWhenAppIsEmpty(Ljava/lang/String;)V

    .line 206
    .end local v3    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    :cond_5
    const/4 v10, 0x1

    invoke-direct {p0, p1, p2, v10}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->commonSet(Lcom/alipay/mobile/h5container/api/H5Context;Linz;Z)Landroid/os/Bundle;

    move-result-object v2

    .line 208
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 209
    .local v0, "activity":Landroid/app/Activity;
    new-instance v6, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-direct {v6, v0, v2, v7}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;)V

    .line 211
    .local v6, "page":Liop;
    sget-boolean v7, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v7, :cond_6

    .line 212
    const-string/jumbo v7, "H5NebulaService"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "h5_app_start createPage appId={"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "appId"

    .line 213
    invoke-static {v2, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "} params={"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 214
    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "}"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 212
    invoke-static {v7, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_6
    invoke-interface {v6}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v7

    invoke-interface {v7}, Lcom/alipay/mobile/nebula/webview/APWebView;->getView()Landroid/view/View;

    move-result-object v7

    .line 218
    invoke-interface {v6}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v10

    const-string/jumbo v11, "backgroundColor"

    invoke-static {v10, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v10

    .line 217
    invoke-virtual {v7, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v4, v10, v8

    .line 222
    .local v4, "cost":J
    const-string/jumbo v7, "H5NebulaService"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "createPage cost "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public createPageAsync(Lcom/alipay/mobile/h5container/api/H5Context;Linz;Liot;)V
    .locals 5
    .param p1, "h5Context"    # Lcom/alipay/mobile/h5container/api/H5Context;
    .param p2, "h5Bundle"    # Linz;
    .param p3, "h5PageReadyListener"    # Liot;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 231
    if-nez p2, :cond_0

    .line 232
    new-instance p2, Linz;

    .end local p2    # "h5Bundle":Linz;
    invoke-direct {p2}, Linz;-><init>()V

    .line 235
    .restart local p2    # "h5Bundle":Linz;
    :cond_0
    invoke-virtual {p2}, Linz;->a()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1

    .line 236
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3043
    iput-object v2, p2, Linz;->b:Landroid/os/Bundle;

    .line 239
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_4

    .line 240
    :cond_2
    const-string/jumbo v2, "H5NebulaService"

    const-string/jumbo v3, "invalid h5 context!"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_3
    :goto_0
    return-void

    .line 244
    :cond_4
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_5

    .line 245
    const-string/jumbo v2, "H5NebulaService"

    const-string/jumbo v3, "not activity context!"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :cond_5
    invoke-virtual {p2}, Linz;->a()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/env/H5WebViewChoose;->notNeedInitUc(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 250
    const-string/jumbo v2, "H5NebulaService"

    const-string/jumbo v3, "createPageAsync notNeedInitUc"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    if-eqz p3, :cond_3

    .line 252
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->createPage(Lcom/alipay/mobile/h5container/api/H5Context;Linz;)Liop;

    goto :goto_0

    .line 256
    :cond_6
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->ucPageReadyReceiver:Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;

    if-nez v2, :cond_7

    .line 257
    const-string/jumbo v2, "H5NebulaService"

    const-string/jumbo v3, "createPageAsync !notNeedInitUc init ucPageReadyReceiver"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    new-instance v2, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;-><init>(Z)V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->ucPageReadyReceiver:Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;

    .line 260
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->ucPageReadyReceiver:Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;

    invoke-virtual {v2, p2}, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->addH5Bundle(Linz;)V

    .line 261
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->ucPageReadyReceiver:Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;

    invoke-virtual {v2, p1}, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->addH5Context(Lcom/alipay/mobile/h5container/api/H5Context;)V

    .line 262
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->ucPageReadyReceiver:Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;

    invoke-virtual {v2, p3}, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->addH5PageReadyListener(Liot;)V

    .line 263
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 264
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "h5_action_uc_init_finish"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 265
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->ucPageReadyReceiver:Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;

    invoke-virtual {v2, v3, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 268
    :try_start_0
    invoke-virtual {p2}, Linz;->a()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->fireUrgentUcInit(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "H5NebulaService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Urgent uc init:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 274
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_7
    const-string/jumbo v2, "H5NebulaService"

    const-string/jumbo v3, "createPageAsync !notNeedInitUc add xxx"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->ucPageReadyReceiver:Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;

    invoke-virtual {v2, p2}, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->addH5Bundle(Linz;)V

    .line 276
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->ucPageReadyReceiver:Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;

    invoke-virtual {v2, p1}, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->addH5Context(Lcom/alipay/mobile/h5container/api/H5Context;)V

    .line 277
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->ucPageReadyReceiver:Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;

    invoke-virtual {v2, p3}, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->addH5PageReadyListener(Liot;)V

    goto/16 :goto_0
.end method

.method enableUseDevTool()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 967
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 968
    const-string/jumbo v4, "h5_dev_webDriver"

    invoke-static {v4, v2}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v2

    .line 986
    :cond_0
    :goto_0
    return v2

    .line 971
    :cond_1
    const-class v4, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 973
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 972
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 974
    .local v0, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    if-eqz v0, :cond_0

    .line 976
    :try_start_0
    const-class v4, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 977
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 978
    .local v1, "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    if-eqz v1, :cond_0

    .line 979
    const-string/jumbo v4, "h5_dev_webDriver"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Lcom/alipay/mobile/nebula/process/H5IpcServer;->getBooleanConfig(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 981
    .end local v1    # "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    :catch_0
    move-exception v3

    .line 982
    .local v3, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v4, "H5NebulaService"

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public exitService()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1064
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->sessions:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lipc;

    .line 1065
    .local v0, "session":Lipc;
    invoke-interface {v0}, Lipc;->exitSession()Z

    goto :goto_0

    .line 1067
    .end local v0    # "session":Lipc;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public fireUrgentUcInit()V
    .locals 1

    .prologue
    .line 487
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->fireUrgentUcInit(Landroid/os/Bundle;)V

    .line 488
    return-void
.end method

.method public declared-synchronized fireUrgentUcInit(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1054
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Liog;->a:Z

    if-nez v0, :cond_0

    .line 1055
    const-string/jumbo v0, "H5NebulaService"

    const-string/jumbo v1, "fire urgent task to init uc service"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    const-string/jumbo v0, "URGENT_DISPLAY"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/api/H5UcInitTask;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Lcom/alipay/mobile/nebulacore/api/H5UcInitTask;-><init>(ZLandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1060
    :goto_0
    monitor-exit p0

    return-void

    .line 1058
    :cond_0
    :try_start_1
    const-string/jumbo v0, "H5NebulaService"

    const-string/jumbo v1, "uc isReady"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1054
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBugMeManager()Lcom/alipay/mobile/nebula/dev/H5BugMeManager;
    .locals 1

    .prologue
    .line 316
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5BugMeManager()Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lioc;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->h5Data:Lioc;

    if-nez v0, :cond_0

    .line 1078
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5CacheProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lioc;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->h5Data:Lioc;

    .line 1080
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->h5Data:Lioc;

    return-object v0
.end method

.method public getH5PageByViewId(I)Liop;
    .locals 7
    .param p1, "viewId"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 321
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->sessions:Ljava/util/Stack;

    if-eqz v3, :cond_3

    .line 322
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->sessions:Ljava/util/Stack;

    monitor-enter v4

    .line 323
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->sessions:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lipc;

    .line 324
    .local v2, "session":Lipc;
    if-eqz v2, :cond_0

    .line 325
    invoke-interface {v2}, Lipc;->getPages()Ljava/util/Stack;

    move-result-object v1

    .line 326
    .local v1, "pageStack":Ljava/util/Stack;, "Ljava/util/Stack<Liop;>;"
    if-eqz v1, :cond_0

    .line 327
    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liop;

    .line 328
    .local v0, "page":Liop;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Liop;->getWebViewId()I

    move-result v6

    if-ne v6, p1, :cond_1

    .line 329
    monitor-exit v4

    .line 337
    .end local v0    # "page":Liop;
    .end local v1    # "pageStack":Ljava/util/Stack;, "Ljava/util/Stack<Liop;>;"
    .end local v2    # "session":Lipc;
    :goto_0
    return-object v0

    .line 335
    :cond_2
    monitor-exit v4

    .line 337
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 335
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getH5TaskScheduleProvider()Lcom/alipay/mobile/nebula/provider/H5TaskScheduleProvider;
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->h5TaskScheduleProvider:Lcom/alipay/mobile/nebula/provider/H5TaskScheduleProvider;

    return-object v0
.end method

.method public getNebulaAppManager()Lcom/alipay/mobile/nebula/appcenter/listen/NebulaAppManager;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->nebulaAppManager:Lcom/alipay/mobile/nebula/appcenter/listen/NebulaAppManager;

    if-nez v0, :cond_0

    .line 472
    new-instance v0, Lcom/alipay/mobile/nebulacore/manager/H5NebulaAppManager;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/manager/H5NebulaAppManager;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->nebulaAppManager:Lcom/alipay/mobile/nebula/appcenter/listen/NebulaAppManager;

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->nebulaAppManager:Lcom/alipay/mobile/nebula/appcenter/listen/NebulaAppManager;

    return-object v0
.end method

.method public getNebulaCommonManager()Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonManager;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->nebulaCommonManager:Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonManager;

    if-nez v0, :cond_0

    .line 480
    new-instance v0, Lcom/alipay/mobile/nebulacore/manager/H5NebulaCommonManager;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/manager/H5NebulaCommonManager;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->nebulaCommonManager:Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonManager;

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->nebulaCommonManager:Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonManager;

    return-object v0
.end method

.method public getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;
    .locals 1

    .prologue
    .line 940
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method public getSession(Ljava/lang/String;)Lipc;
    .locals 9
    .param p1, "sessionId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 687
    const/4 v1, 0x0

    .line 688
    .local v1, "h5Session":Lipc;
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->sessions:Ljava/util/Stack;

    monitor-enter v7

    .line 689
    :try_start_0
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->sessions:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lipc;

    .line 690
    .local v5, "session":Lipc;
    invoke-interface {v5}, Lipc;->getId()Ljava/lang/String;

    move-result-object v2

    .line 691
    .local v2, "id":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 692
    move-object v1, v5

    .line 696
    .end local v2    # "id":Ljava/lang/String;
    .end local v5    # "session":Lipc;
    :cond_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 699
    if-nez v1, :cond_2

    .line 700
    new-instance v1, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .end local v1    # "h5Session":Lipc;
    invoke-direct {v1}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;-><init>()V

    .line 701
    .restart local v1    # "h5Session":Lipc;
    invoke-interface {v1, p1}, Lipc;->setId(Ljava/lang/String;)V

    .line 702
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->addSession(Lipc;)Z

    .line 706
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->ssListeners:Ljava/util/Map;

    monitor-enter v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 707
    :try_start_2
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->ssListeners:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 708
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->ssListeners:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 709
    .local v4, "listeners":Ljava/util/List;, "Ljava/util/List<Liom;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Liom;

    .line 710
    .local v3, "l":Liom;
    invoke-interface {v1, v3}, Lipc;->addListener(Liom;)V

    goto :goto_0

    .line 713
    .end local v3    # "l":Liom;
    .end local v4    # "listeners":Ljava/util/List;, "Ljava/util/List<Liom;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 714
    :catch_0
    move-exception v0

    .line 715
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "H5NebulaService"

    invoke-static {v6, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 719
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v1

    .line 696
    :catchall_1
    move-exception v6

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v6

    .line 713
    :cond_3
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public getSessionByWorkerId(Ljava/lang/String;)Lipc;
    .locals 5
    .param p1, "workerId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 724
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->sessions:Ljava/util/Stack;

    if-eqz v2, :cond_2

    .line 725
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->sessions:Ljava/util/Stack;

    monitor-enter v3

    .line 726
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->sessions:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lipc;

    .line 727
    .local v1, "session":Lipc;
    if-eqz v1, :cond_0

    .line 728
    invoke-interface {v1}, Lipc;->getServiceWorkerID()Ljava/lang/String;

    move-result-object v0

    .line 729
    .local v0, "id":Ljava/lang/String;
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 730
    monitor-exit v3

    .line 736
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "session":Lipc;
    :goto_0
    return-object v1

    .line 734
    :cond_1
    monitor-exit v3

    .line 736
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 734
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getSessions()Ljava/util/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack",
            "<",
            "Lipc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->sessions:Ljava/util/Stack;

    return-object v0
.end method

.method public getTopH5BaseFragment()Linw;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->getTopH5Fragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 373
    .local v0, "topFragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    if-nez v1, :cond_1

    .line 374
    :cond_0
    const/4 v0, 0x0

    .line 376
    .end local v0    # "topFragment":Landroid/support/v4/app/Fragment;
    :goto_0
    return-object v0

    .restart local v0    # "topFragment":Landroid/support/v4/app/Fragment;
    :cond_1
    check-cast v0, Linw;

    goto :goto_0
.end method

.method public getTopH5BaseFragmentByViewId(I)Linw;
    .locals 8
    .param p1, "viewId"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 394
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->sessions:Ljava/util/Stack;

    if-eqz v4, :cond_3

    .line 395
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->sessions:Ljava/util/Stack;

    monitor-enter v5

    .line 396
    :try_start_0
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->sessions:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lipc;

    .line 397
    .local v2, "session":Lipc;
    if-eqz v2, :cond_0

    .line 398
    invoke-interface {v2}, Lipc;->getPages()Ljava/util/Stack;

    move-result-object v1

    .line 399
    .local v1, "pageStack":Ljava/util/Stack;, "Ljava/util/Stack<Liop;>;"
    if-eqz v1, :cond_0

    .line 400
    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liop;

    .line 401
    .local v0, "page":Liop;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Liop;->getWebViewId()I

    move-result v7

    if-ne v7, p1, :cond_1

    .line 402
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->getFragmentCommon(Liop;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 403
    .local v3, "topFragment":Landroid/support/v4/app/Fragment;
    if-eqz v3, :cond_1

    instance-of v7, v3, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    if-eqz v7, :cond_1

    .line 404
    check-cast v3, Linw;

    .end local v3    # "topFragment":Landroid/support/v4/app/Fragment;
    monitor-exit v5

    .line 413
    .end local v0    # "page":Liop;
    .end local v1    # "pageStack":Ljava/util/Stack;, "Ljava/util/Stack<Liop;>;"
    .end local v2    # "session":Lipc;
    :goto_0
    return-object v3

    .line 411
    :cond_2
    monitor-exit v5

    .line 413
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 411
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getTopH5BaseFragmentByWorkerId(Ljava/lang/String;)Linw;
    .locals 4
    .param p1, "workerId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 381
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->getSessionByWorkerId(Ljava/lang/String;)Lipc;

    move-result-object v0

    .line 382
    .local v0, "session":Lipc;
    if-nez v0, :cond_0

    move-object v1, v2

    .line 389
    :goto_0
    return-object v1

    .line 385
    :cond_0
    invoke-interface {v0}, Lipc;->getTopPage()Liop;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->getFragmentCommon(Liop;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 386
    .local v1, "topFragment":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_1

    instance-of v3, v1, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    if-nez v3, :cond_2

    :cond_1
    move-object v1, v2

    .line 387
    goto :goto_0

    .line 389
    :cond_2
    check-cast v1, Linw;

    goto :goto_0
.end method

.method public getTopH5Fragment()Landroid/support/v4/app/Fragment;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->getTopH5Page()Liop;

    move-result-object v0

    .line 353
    .local v0, "h5Page":Liop;
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->getFragmentCommon(Liop;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    return-object v1
.end method

.method public getTopH5Page()Liop;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->getTopSession()Lipc;

    move-result-object v0

    .line 343
    .local v0, "h5Session":Lipc;
    if-eqz v0, :cond_0

    .line 344
    invoke-interface {v0}, Lipc;->getTopPage()Liop;

    move-result-object v1

    .line 347
    :goto_0
    return-object v1

    .line 346
    :cond_0
    const-string/jumbo v1, "H5NebulaService"

    const-string/jumbo v2, "getTopH5Page h5Session == null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTopSession()Lipc;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 772
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->sessions:Ljava/util/Stack;

    monitor-enter v1

    .line 773
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->sessions:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    const/4 v0, 0x0

    monitor-exit v1

    .line 776
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->sessions:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lipc;

    monitor-exit v1

    goto :goto_0

    .line 777
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getWebDriverHelper()Liph;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 992
    sget-boolean v4, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->webDriverHelper:Liph;

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->hasLoadDevHelp:Z

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->enableUseDevTool()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 993
    iput-boolean v5, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->hasLoadDevHelp:Z

    .line 996
    :try_start_0
    const-string/jumbo v4, "android-phone-wallet-birdnestdevtools"

    const-string/jumbo v5, "com.alipay.archimedes.ArchimedesHelper"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 997
    .local v0, "clazz":Ljava/lang/Class;
    if-eqz v0, :cond_0

    .line 998
    const-string/jumbo v4, "sharedInstance"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 999
    .local v2, "f":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1000
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1001
    .local v3, "o":Ljava/lang/Object;
    instance-of v4, v3, Liph;

    if-eqz v4, :cond_0

    .line 1002
    const-string/jumbo v4, "H5NebulaService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getWebDriverHelper "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    check-cast v3, Liph;

    .end local v3    # "o":Ljava/lang/Object;
    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->webDriverHelper:Liph;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1011
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v2    # "f":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->webDriverHelper:Liph;

    if-nez v4, :cond_1

    sget-object v4, Liph;->a:Liph;

    :goto_1
    return-object v4

    .line 1007
    :catch_0
    move-exception v1

    .line 1008
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "H5NebulaService"

    invoke-static {v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1011
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_1
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->webDriverHelper:Liph;

    goto :goto_1
.end method

.method public initServicePlugin()V
    .locals 1

    .prologue
    .line 464
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->pluginsInited:Z

    if-nez v0, :cond_0

    .line 465
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->initPlugins()V

    .line 467
    :cond_0
    return-void
.end method

.method public isAliDomain(Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 946
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 947
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_0

    .line 948
    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->isAliDomains(Ljava/lang/String;)Z

    move-result v1

    .line 951
    :goto_0
    return v1

    .line 950
    :cond_0
    const-string/jumbo v1, "H5NebulaService"

    const-string/jumbo v2, "not implement H5ConfigProvider."

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 783
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->fireIdleUcInit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 788
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 789
    .local v4, "time":J
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->setContext(Landroid/content/Context;)V

    .line 791
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->getInstance()Lcom/alipay/mobile/nebula/util/H5NetworkUtil;

    move-result-object v3

    .line 792
    .local v3, "h5NetworkUtil":Lcom/alipay/mobile/nebula/util/H5NetworkUtil;
    invoke-virtual {v3, p1}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->init(Landroid/content/Context;)V

    .line 794
    sget-boolean v6, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 795
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->registerH5BugMeStartUp()V

    .line 798
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->init()V

    .line 800
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v4

    .line 801
    .local v0, "delta":J
    const-string/jumbo v6, "H5NebulaService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "onCrate delta "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    return-void

    .line 784
    .end local v0    # "delta":J
    .end local v3    # "h5NetworkUtil":Lcom/alipay/mobile/nebula/util/H5NetworkUtil;
    .end local v4    # "time":J
    :catch_0
    move-exception v2

    .line 785
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "H5NebulaService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ui init "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRelease()V
    .locals 0

    .prologue
    .line 171
    invoke-super {p0}, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->onRelease()V

    .line 172
    return-void
.end method

.method public parseRNPkg(Ljava/lang/String;)I
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 455
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    const/4 v0, 0x1

    .line 458
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParserRn;->parseRNPackage(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public permitLocation(Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 957
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 958
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_0

    .line 959
    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->permitLocation(Ljava/lang/String;)Z

    move-result v1

    .line 962
    :goto_0
    return v1

    .line 961
    :cond_0
    const-string/jumbo v1, "H5NebulaService"

    const-string/jumbo v2, "not implement H5ConfigProvider."

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public prepareRNApp(Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "h5UpdateAppCallback"    # Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 420
    const-string/jumbo v0, "URGENT"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$1;-><init>(Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 451
    return-void
.end method

.method public removeSession(Ljava/lang/String;)Z
    .locals 6
    .param p1, "sessionId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 741
    :try_start_0
    const-string/jumbo v4, "H5NebulaService"

    const-string/jumbo v5, "unregisterReceiver in removeSession"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->ucIsReadyReceiver:Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;

    .line 743
    invoke-virtual {v4, v5}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 744
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->ucPageReadyReceiver:Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;

    .line 745
    invoke-virtual {v4, v5}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 746
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->ucIsReadyReceiver:Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;

    .line 747
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->ucPageReadyReceiver:Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 768
    :goto_1
    return v3

    .line 748
    :catch_0
    move-exception v0

    .line 749
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "H5NebulaService"

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 755
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->sessions:Ljava/util/Stack;

    monitor-enter v4

    .line 756
    :try_start_1
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->sessions:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 757
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lipc;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 758
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lipc;

    .line 759
    .local v2, "s":Lipc;
    invoke-interface {v2}, Lipc;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 760
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->ssListeners:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 762
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lipc;->setParent(Liob;)V

    .line 763
    invoke-interface {v2}, Lipc;->onRelease()V

    .line 764
    const/4 v3, 0x1

    monitor-exit v4

    goto :goto_1

    .line 767
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lipc;>;"
    .end local v2    # "s":Lipc;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lipc;>;"
    :cond_2
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public sendEvent(Lcom/alipay/mobile/h5container/api/H5Event;)Z
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 930
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getDispatcher()Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;->dispatch(Lcom/alipay/mobile/h5container/api/H5Event;)Lcom/alipay/mobile/h5container/api/H5Event$Error;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Event$Error;->NONE:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setH5TaskScheduleProvider(Lcom/alipay/mobile/nebula/provider/H5TaskScheduleProvider;)V
    .locals 0
    .param p1, "taskScheduleProvider"    # Lcom/alipay/mobile/nebula/provider/H5TaskScheduleProvider;

    .prologue
    .line 1021
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->h5TaskScheduleProvider:Lcom/alipay/mobile/nebula/provider/H5TaskScheduleProvider;

    .line 1022
    return-void
.end method

.method public setWebDriverHelper(Liph;)V
    .locals 0
    .param p1, "helper"    # Liph;

    .prologue
    .line 1016
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->webDriverHelper:Liph;

    .line 1017
    return-void
.end method

.method public startPage(Lcom/alipay/mobile/h5container/api/H5Context;Linz;)Z
    .locals 9
    .param p1, "h5Context"    # Lcom/alipay/mobile/h5container/api/H5Context;
    .param p2, "h5Bundle"    # Linz;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 494
    if-nez p2, :cond_0

    .line 495
    const-string/jumbo v6, "H5NebulaService"

    const-string/jumbo v7, "invalid start page parameters!"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    :goto_0
    return v5

    .line 498
    :cond_0
    invoke-virtual {p2}, Linz;->a()Landroid/os/Bundle;

    move-result-object v7

    if-nez v7, :cond_1

    .line 499
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 4043
    iput-object v7, p2, Linz;->b:Landroid/os/Bundle;

    .line 503
    :cond_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 504
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 509
    .local v2, "context":Landroid/content/Context;
    :goto_1
    invoke-virtual {p2}, Linz;->a()Landroid/os/Bundle;

    move-result-object v3

    .line 512
    .local v3, "params":Landroid/os/Bundle;
    const-string/jumbo v7, "preRpc"

    invoke-static {v3, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 513
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v7

    const-class v8, Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;

    .line 514
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;

    .line 515
    .local v4, "preRpcProvider":Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;
    if-eqz v4, :cond_2

    .line 516
    invoke-interface {v4, v3}, Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;->setStartParams(Landroid/os/Bundle;)V

    .line 517
    invoke-interface {v4}, Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;->preRpc()V

    .line 522
    .end local v4    # "preRpcProvider":Lcom/alipay/mobile/nebula/provider/H5PreRpcProvider;
    :cond_2
    invoke-direct {p0, p1, p2, v5}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->commonSet(Lcom/alipay/mobile/h5container/api/H5Context;Linz;Z)Landroid/os/Bundle;

    move-result-object v1

    .line 525
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->enableStockTradeLog(Landroid/os/Bundle;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 526
    sput-boolean v5, Liog;->e:Z

    .line 531
    :goto_2
    const-string/jumbo v5, "asyncIndex"

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 532
    .local v0, "asyncIndex":Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder;->hasPageParam(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 534
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder;->deliveryPageParam(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 564
    :goto_3
    sget-boolean v5, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v5, :cond_3

    .line 565
    const-string/jumbo v5, "H5NebulaService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "h5_app_start startPage appId={"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "appId"

    .line 566
    invoke-static {v1, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "} params={"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 567
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "}"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 565
    invoke-static {v5, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move v5, v6

    .line 569
    goto/16 :goto_0

    .line 506
    .end local v0    # "asyncIndex":Ljava/lang/String;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "params":Landroid/os/Bundle;
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v2

    .restart local v2    # "context":Landroid/content/Context;
    goto/16 :goto_1

    .line 528
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "params":Landroid/os/Bundle;
    :cond_5
    sput-boolean v6, Liog;->e:Z

    goto :goto_2

    .line 537
    .restart local v0    # "asyncIndex":Ljava/lang/String;
    :cond_6
    new-instance v5, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$2;

    invoke-direct {v5, p0, v1, v2, p1}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$2;-><init>(Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;Landroid/os/Bundle;Landroid/content/Context;Lcom/alipay/mobile/h5container/api/H5Context;)V

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    goto :goto_3
.end method

.method public ucIsReady(Lipf;)V
    .locals 5
    .param p1, "h5UcReadyCallBack"    # Lipf;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 284
    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/env/H5WebViewChoose;->notNeedInitUc(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 285
    const-string/jumbo v2, "H5NebulaService"

    const-string/jumbo v3, "ucIsReady notNeedInitUc"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    if-eqz p1, :cond_0

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->ucIsReadyReceiver:Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;

    if-nez v2, :cond_2

    .line 291
    const-string/jumbo v2, "H5NebulaService"

    const-string/jumbo v3, "ucIsReady !notNeedInitUc init ucIsReadyReceiver"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    new-instance v2, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;-><init>(Z)V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->ucIsReadyReceiver:Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;

    .line 294
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->ucIsReadyReceiver:Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;

    invoke-virtual {v2, p1}, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->addH5UcReadyCallBack(Lipf;)V

    .line 295
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 296
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "h5_action_uc_init_finish"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->ucIsReadyReceiver:Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;

    .line 298
    invoke-virtual {v2, v3, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 300
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->fireUrgentUcInit(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "H5NebulaService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " ucIsReady Urgent uc init:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 307
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_2
    const-string/jumbo v2, "H5NebulaService"

    const-string/jumbo v3, "ucIsReady !notNeedInitUc add xxx"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->ucIsReadyReceiver:Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;

    invoke-virtual {v2, p1}, Lcom/alipay/mobile/nebulacore/api/H5UcInitReceiver;->addH5UcReadyCallBack(Lipf;)V

    goto :goto_0
.end method
