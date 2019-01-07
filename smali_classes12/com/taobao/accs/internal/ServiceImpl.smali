.class public Lcom/taobao/accs/internal/ServiceImpl;
.super Ljit;
.source "ServiceImpl.java"


# static fields
.field private static final ALIPAY_PACKAGE:Ljava/lang/String; = "com.eg.android.AlipayGphone"

.field private static final IPP_ACTION:Ljava/lang/String; = "org.rome.android.IPP_CALL"

.field private static final PING_ALIPAY_CLASS:Ljava/lang/String; = "org.rome.android.ipp.binder.IppService"

.field private static final STATISTICS_TIME_INTERVAL:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "ServiceImpl"

.field private static eudemonManager:Ljis;


# instance fields
.field private lastStatisticsTime:J

.field private mBaseService:Landroid/app/Service;

.field private mClientManager:Ljil;

.field private mConnection:Ljiu;

.field private mContext:Landroid/content/Context;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLastNetWorkType:Ljava/lang/String;

.field private mMessageHandler:Ljip;

.field private mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final messageServiceBinder:Lkpn$a;

.field private startTime:J


# direct methods
.method public constructor <init>(Landroid/app/Service;)V
    .locals 1
    .param p1, "service"    # Landroid/app/Service;

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1}, Ljit;-><init>(Landroid/app/Service;)V

    .line 51
    iput-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->mBaseService:Landroid/app/Service;

    .line 55
    iput-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->mConnection:Ljiu;

    .line 76
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->mLastNetWorkType:Ljava/lang/String;

    .line 422
    new-instance v0, Lcom/taobao/accs/internal/ServiceImpl$2;

    invoke-direct {v0, p0}, Lcom/taobao/accs/internal/ServiceImpl$2;-><init>(Lcom/taobao/accs/internal/ServiceImpl;)V

    iput-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->messageServiceBinder:Lkpn$a;

    .line 84
    iput-object p1, p0, Lcom/taobao/accs/internal/ServiceImpl;->mBaseService:Landroid/app/Service;

    .line 85
    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/accs/internal/ServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/accs/internal/ServiceImpl;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/taobao/accs/internal/ServiceImpl;->initUt()V

    return-void
.end method

.method static synthetic access$100(Lcom/taobao/accs/internal/ServiceImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/accs/internal/ServiceImpl;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/taobao/accs/internal/ServiceImpl;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/accs/internal/ServiceImpl;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/taobao/accs/internal/ServiceImpl;->onPingIpp(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/taobao/accs/internal/ServiceImpl;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/accs/internal/ServiceImpl;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method private getVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "pack"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 531
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 532
    const-string/jumbo v2, "null"

    .line 543
    :cond_0
    :goto_0
    return-object v2

    .line 534
    :cond_1
    iget-object v3, p0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 535
    .local v1, "manager":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 536
    .local v0, "info":Landroid/content/pm/PackageInfo;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 537
    .local v2, "version":Ljava/lang/String;
    sget-object v3, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v3}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 538
    const-string/jumbo v3, "ServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getVersion###\u7248\u672c\u53f7\u4e3a : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 543
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    .end local v1    # "manager":Landroid/content/pm/PackageManager;
    .end local v2    # "version":Ljava/lang/String;
    :catch_0
    move-exception v3

    const-string/jumbo v2, "null"

    goto :goto_0
.end method

.method private handleCommand(Landroid/content/Intent;)V
    .locals 36
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 260
    const-string/jumbo v4, "command"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 261
    .local v21, "command":I
    const-string/jumbo v4, "ServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "command:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    const-string/jumbo v4, "packageName"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 264
    .local v24, "packageName":Ljava/lang/String;
    const-string/jumbo v4, "serviceId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 266
    .local v14, "serviceId":Ljava/lang/String;
    const-string/jumbo v4, "userInfo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 268
    .local v13, "userId":Ljava/lang/String;
    const-string/jumbo v4, "appKey"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 270
    .local v20, "appkey":Ljava/lang/String;
    const-string/jumbo v4, "ttid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 271
    .local v28, "ttid":Ljava/lang/String;
    const-string/jumbo v4, "sid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 272
    .local v26, "sid":Ljava/lang/String;
    const-string/jumbo v4, "anti_brush_cookie"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 273
    .local v11, "cookie":Ljava/lang/String;
    const/16 v4, 0xc9

    move/from16 v0, v21

    if-ne v0, v4, :cond_2

    .line 274
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/internal/ServiceImpl;->mConnection:Ljiu;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/taobao/accs/data/Message;->BuildPing(ZI)Lcom/taobao/accs/data/Message;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljiu;->b(Lcom/taobao/accs/data/Message;Z)V

    .line 275
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/internal/ServiceImpl;->mConnection:Ljiu;

    invoke-virtual {v4}, Ljiu;->d()Ljjd;

    move-result-object v23

    .line 277
    .local v23, "monitorInfo":Ljjd;
    if-eqz v23, :cond_2

    .line 278
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/taobao/accs/internal/ServiceImpl;->startTime:J

    move-object/from16 v0, v23

    iput-wide v4, v0, Ljjd;->i:J

    .line 2031
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    .line 2032
    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2033
    const-string/jumbo v4, "MonitorStatistic"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "commitUT interval:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    iget-wide v6, v0, Ljjd;->a:J

    sub-long v6, v32, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " interval1:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    iget-wide v6, v0, Ljjd;->i:J

    sub-long v6, v32, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2036
    :cond_0
    move-object/from16 v0, v23

    iget-wide v4, v0, Ljjd;->a:J

    sub-long v4, v32, v4

    const-wide/32 v6, 0x124f80

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    move-object/from16 v0, v23

    iget-wide v4, v0, Ljjd;->i:J

    sub-long v4, v32, v4

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 2039
    const/4 v7, 0x0

    .line 2040
    const/4 v8, 0x0

    .line 2041
    const/4 v9, 0x0

    .line 2042
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 2044
    :try_start_0
    move-object/from16 v0, v23

    iget v4, v0, Ljjd;->e:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 2045
    move-object/from16 v0, v23

    iget v4, v0, Ljjd;->f:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 2046
    const-string/jumbo v9, "213"

    .line 2048
    const-string/jumbo v4, "connStatus"

    move-object/from16 v0, v23

    iget v5, v0, Ljjd;->b:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v10, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2049
    const-string/jumbo v4, "connType"

    move-object/from16 v0, v23

    iget v5, v0, Ljjd;->c:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v10, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2050
    const-string/jumbo v4, "tcpConnected"

    move-object/from16 v0, v23

    iget-boolean v5, v0, Ljjd;->d:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v10, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2051
    const-string/jumbo v4, "proxy"

    move-object/from16 v0, v23

    iget-object v5, v0, Ljjd;->g:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v10, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2052
    const-string/jumbo v4, "startServiceTime"

    move-object/from16 v0, v23

    iget-wide v0, v0, Ljjd;->i:J

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v10, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2053
    const-string/jumbo v4, "commitTime"

    invoke-static/range {v32 .. v33}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v10, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2054
    const-string/jumbo v4, "networkAvailable"

    move-object/from16 v0, v23

    iget-boolean v5, v0, Ljjd;->j:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v10, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2055
    const-string/jumbo v4, "threadIsalive"

    move-object/from16 v0, v23

    iget-boolean v5, v0, Ljjd;->k:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v10, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2056
    const-string/jumbo v4, "url"

    move-object/from16 v0, v23

    iget-object v5, v0, Ljjd;->h:Ljava/lang/String;

    invoke-interface {v10, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2057
    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2058
    const-string/jumbo v4, "MonitorStatistic"

    const v5, 0x101d1

    invoke-static {v5, v7, v8, v9, v10}, Ljjo;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2061
    :cond_1
    invoke-static {}, Ljjo;->a()Ljjo;

    move-result-object v4

    const v5, 0x101d1

    const-string/jumbo v6, "MONITOR"

    invoke-virtual/range {v4 .. v10}, Ljjo;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)V

    .line 2062
    move-wide/from16 v0, v32

    move-object/from16 v2, v23

    iput-wide v0, v2, Ljjd;->a:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    .end local v23    # "monitorInfo":Ljjd;
    :cond_2
    :goto_0
    if-lez v21, :cond_4

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 283
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 284
    const/16 v22, 0x0

    .line 285
    .local v22, "message":Lcom/taobao/accs/data/Message;
    const/4 v4, 0x1

    move/from16 v0, v21

    if-ne v0, v4, :cond_5

    .line 286
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "appVersion"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v5, v20

    move-object/from16 v6, v24

    move-object/from16 v7, v28

    move-object/from16 v9, v26

    move-object v10, v13

    invoke-static/range {v4 .. v11}, Lcom/taobao/accs/data/Message;->buildBindApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v22

    .line 297
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 298
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-static {v4, v0, v5, v1}, Lcom/taobao/accs/utl/UtilityImpl;->setAppInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/internal/ServiceImpl;->mClientManager:Ljil;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljil;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string/jumbo v4, "fouce_bind"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_7

    .line 305
    const-string/jumbo v4, "ServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " isAppBinded"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/internal/ServiceImpl;->mMessageHandler:Ljip;

    const/16 v5, 0xc8

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v5}, Ljip;->a(Lcom/taobao/accs/data/Message;I)V

    .line 402
    .end local v22    # "message":Lcom/taobao/accs/data/Message;
    :cond_4
    :goto_1
    return-void

    .line 2063
    .restart local v23    # "monitorInfo":Ljjd;
    :catch_0
    move-exception v4

    .line 2064
    const-string/jumbo v5, "MonitorStatistic"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v31, 0x101d1

    move/from16 v0, v31

    invoke-static {v0, v7, v8, v9, v10}, Ljjo;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v4, v6}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 310
    .end local v23    # "monitorInfo":Ljjd;
    .restart local v22    # "message":Lcom/taobao/accs/data/Message;
    :cond_5
    const/4 v4, 0x2

    move/from16 v0, v21

    if-ne v0, v4, :cond_6

    .line 311
    const-string/jumbo v4, "ServiceImpl"

    const-string/jumbo v5, "onHostStartCommand COMMAND_UNBIND_APP"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v4, v0, v1, v13, v11}, Lcom/taobao/accs/data/Message;->buildUnbindApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v22

    .line 313
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/internal/ServiceImpl;->mClientManager:Ljil;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljil;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 314
    const-string/jumbo v4, "ServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " isAppUnbinded"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/internal/ServiceImpl;->mMessageHandler:Ljip;

    const/16 v5, 0xc8

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v5}, Ljip;->a(Lcom/taobao/accs/data/Message;I)V

    goto/16 :goto_1

    .line 319
    :cond_6
    const/4 v4, 0x5

    move/from16 v0, v21

    if-ne v0, v4, :cond_9

    .line 320
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v6, v24

    move-object/from16 v7, v20

    move-object v8, v14

    move-object/from16 v9, v26

    move-object v10, v13

    invoke-static/range {v5 .. v11}, Lcom/taobao/accs/data/Message;->buildBindService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v22

    .line 384
    :cond_7
    :goto_2
    if-eqz v22, :cond_10

    .line 385
    const-string/jumbo v4, "ServiceImpl"

    const-string/jumbo v5, "try send message"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 386
    invoke-virtual/range {v22 .. v22}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 387
    invoke-virtual/range {v22 .. v22}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onSend()V

    .line 389
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/internal/ServiceImpl;->mConnection:Ljiu;

    const/4 v5, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v5}, Ljiu;->b(Lcom/taobao/accs/data/Message;Z)V

    goto/16 :goto_1

    .line 322
    :cond_9
    const/4 v4, 0x6

    move/from16 v0, v21

    if-ne v0, v4, :cond_a

    .line 323
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v6, v24

    move-object/from16 v7, v20

    move-object v8, v14

    move-object/from16 v9, v26

    move-object v10, v13

    invoke-static/range {v5 .. v11}, Lcom/taobao/accs/data/Message;->buildUnbindService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v22

    goto :goto_2

    .line 325
    :cond_a
    const/4 v4, 0x3

    move/from16 v0, v21

    if-ne v0, v4, :cond_b

    .line 326
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v7, v24

    move-object/from16 v8, v20

    move-object/from16 v9, v26

    move-object v10, v13

    invoke-static/range {v6 .. v11}, Lcom/taobao/accs/data/Message;->buildBindUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v22

    .line 328
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/internal/ServiceImpl;->mClientManager:Ljil;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0, v13}, Ljil;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string/jumbo v4, "fouce_bind"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_7

    .line 334
    const-string/jumbo v4, "ServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " isUserBinded"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    if-eqz v22, :cond_4

    .line 337
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/internal/ServiceImpl;->mMessageHandler:Ljip;

    const/16 v5, 0xc8

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v5}, Ljip;->a(Lcom/taobao/accs/data/Message;I)V

    goto/16 :goto_1

    .line 342
    :cond_b
    const/4 v4, 0x4

    move/from16 v0, v21

    if-ne v0, v4, :cond_c

    .line 343
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v7, v24

    move-object/from16 v8, v20

    move-object/from16 v9, v26

    move-object v10, v13

    invoke-static/range {v6 .. v11}, Lcom/taobao/accs/data/Message;->buildUnbindUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v22

    goto/16 :goto_2

    .line 345
    :cond_c
    const/16 v4, 0x64

    move/from16 v0, v21

    if-ne v0, v4, :cond_e

    .line 346
    const-string/jumbo v4, "data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v15

    .line 348
    .local v15, "data":[B
    const-string/jumbo v4, "dataId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 350
    .local v16, "dataid":Ljava/lang/String;
    const-string/jumbo v4, "target"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 352
    .local v17, "target":Ljava/lang/String;
    const-string/jumbo v4, "businessId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 353
    .local v19, "businessId":Ljava/lang/String;
    const-string/jumbo v4, "extTag"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 354
    .local v27, "tag":Ljava/lang/String;
    const/16 v29, 0x0

    .line 356
    .local v29, "type":Lcom/taobao/accs/data/Message$ReqType;
    :try_start_1
    const-string/jumbo v4, "send_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/taobao/accs/data/Message$ReqType;

    move-object/from16 v29, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 360
    :goto_3
    if-eqz v15, :cond_7

    .line 361
    const/16 v18, 0x0

    .line 363
    .local v18, "url":Ljava/net/URL;
    :try_start_2
    new-instance v30, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "https://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Ljiu;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .end local v18    # "url":Ljava/net/URL;
    .local v30, "url":Ljava/net/URL;
    move-object/from16 v18, v30

    .line 367
    .end local v30    # "url":Ljava/net/URL;
    .restart local v18    # "url":Ljava/net/URL;
    :goto_4
    new-instance v12, Lcom/taobao/accs/ACCSManager$AccsRequest;

    invoke-direct/range {v12 .. v19}, Lcom/taobao/accs/ACCSManager$AccsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 368
    .local v12, "dataInfo":Lcom/taobao/accs/ACCSManager$AccsRequest;
    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Lcom/taobao/accs/ACCSManager$AccsRequest;->setTag(Ljava/lang/String;)V

    .line 369
    if-nez v29, :cond_d

    .line 370
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-static {v4, v0, v1, v12, v5}, Lcom/taobao/accs/data/Message;->buildSendData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/ACCSManager$AccsRequest;Z)Lcom/taobao/accs/data/Message;

    move-result-object v22

    goto/16 :goto_2

    .line 371
    :cond_d
    sget-object v4, Lcom/taobao/accs/data/Message$ReqType;->REQ:Lcom/taobao/accs/data/Message$ReqType;

    move-object/from16 v0, v29

    if-ne v0, v4, :cond_7

    .line 372
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-static {v4, v0, v1, v12, v5}, Lcom/taobao/accs/data/Message;->buildRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/ACCSManager$AccsRequest;Z)Lcom/taobao/accs/data/Message;

    move-result-object v22

    goto/16 :goto_2

    .line 375
    .end local v12    # "dataInfo":Lcom/taobao/accs/ACCSManager$AccsRequest;
    .end local v15    # "data":[B
    .end local v16    # "dataid":Ljava/lang/String;
    .end local v17    # "target":Ljava/lang/String;
    .end local v18    # "url":Ljava/net/URL;
    .end local v19    # "businessId":Ljava/lang/String;
    .end local v27    # "tag":Ljava/lang/String;
    .end local v29    # "type":Lcom/taobao/accs/data/Message$ReqType;
    :cond_e
    const/16 v4, 0x69

    move/from16 v0, v21

    if-ne v0, v4, :cond_f

    .line 376
    const-string/jumbo v4, "packs"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v25

    check-cast v25, Ljava/util/Map;

    .line 377
    .local v25, "packs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static/range {v24 .. v25}, Lcom/taobao/accs/data/Message;->buildElection(Ljava/lang/String;Ljava/util/Map;)Lcom/taobao/accs/data/Message;

    move-result-object v22

    .line 378
    goto/16 :goto_2

    .end local v25    # "packs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_f
    const/16 v4, 0x6a

    move/from16 v0, v21

    if-ne v0, v4, :cond_7

    .line 379
    const-string/jumbo v4, "com.taobao.accs.intent.action.RECEIVE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    const-string/jumbo v4, "command"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 381
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Ljiq;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 391
    :cond_10
    const-string/jumbo v4, "ServiceImpl"

    const-string/jumbo v5, "message is null"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 392
    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/taobao/accs/data/Message;->buildParameterError(Ljava/lang/String;I)Lcom/taobao/accs/data/Message;

    move-result-object v22

    .line 394
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/accs/internal/ServiceImpl;->mMessageHandler:Ljip;

    const/4 v5, -0x2

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v5}, Ljip;->a(Lcom/taobao/accs/data/Message;I)V

    goto/16 :goto_1

    .restart local v15    # "data":[B
    .restart local v16    # "dataid":Ljava/lang/String;
    .restart local v17    # "target":Ljava/lang/String;
    .restart local v18    # "url":Ljava/net/URL;
    .restart local v19    # "businessId":Ljava/lang/String;
    .restart local v27    # "tag":Ljava/lang/String;
    .restart local v29    # "type":Lcom/taobao/accs/data/Message$ReqType;
    :catch_1
    move-exception v4

    goto/16 :goto_4

    .end local v18    # "url":Ljava/net/URL;
    :catch_2
    move-exception v4

    goto/16 :goto_3
.end method

.method private initUt()V
    .locals 0

    .prologue
    .line 490
    return-void
.end method

.method private final onPingIpp(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 499
    :try_start_0
    const-string/jumbo v2, "ServiceImpl"

    const-string/jumbo v3, "ippConnection [bind]"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 500
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 501
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "org.rome.android.IPP_CALL"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    const-string/jumbo v2, "com.eg.android.AlipayGphone"

    const-string/jumbo v3, "org.rome.android.ipp.binder.IppService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 503
    const-string/jumbo v2, "packageName"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    const-string/jumbo v2, "com.eg.android.AlipayGphone"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 506
    :catch_0
    move-exception v1

    .line 507
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "ServiceImpl"

    const-string/jumbo v3, "ippConnection"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private shouldStopSelf(Z)V
    .locals 3
    .param p1, "kill"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 513
    const-string/jumbo v0, "ServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "shouldStopSelf, kill:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 514
    iget-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->mBaseService:Landroid/app/Service;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->mBaseService:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    .line 517
    :cond_0
    if-eqz p1, :cond_1

    .line 518
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 520
    :cond_1
    return-void
.end method

.method private declared-synchronized tryConnect()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 523
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->mConnection:Ljiu;

    if-nez v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljiu;->a(Landroid/content/Context;I)Ljiu;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->mConnection:Ljiu;

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->mConnection:Ljiu;

    invoke-virtual {v0}, Ljiu;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    monitor-exit p0

    return-void

    .line 523
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 406
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "ServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "accs probeTaoBao begin......action="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 408
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "org.agoo.android.intent.action.PING_V4"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 411
    const-string/jumbo v2, "source"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 413
    .local v1, "source":Ljava/lang/String;
    invoke-static {}, Ljjo;->a()Ljjo;

    const v2, 0x101d1

    const-string/jumbo v3, "probeChannelService"

    iget-object v4, p0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v1}, Ljjo;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 414
    iget-object v2, p0, Lcom/taobao/accs/internal/ServiceImpl;->messageServiceBinder:Lkpn$a;

    .line 416
    .end local v1    # "source":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 90
    invoke-super {p0}, Ljit;->onCreate()V

    .line 91
    iget-object v1, p0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Ljim;->a(Landroid/content/Context;)Ljim;

    .line 92
    sget-object v1, Ljik;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 93
    iget-object v1, p0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Ljip;->a(Landroid/content/Context;)Ljip;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/accs/internal/ServiceImpl;->mMessageHandler:Ljip;

    .line 94
    iget-object v1, p0, Lcom/taobao/accs/internal/ServiceImpl;->mMessageHandler:Ljip;

    iput v5, v1, Ljip;->e:I

    .line 95
    iget-object v1, p0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Ljil;->a(Landroid/content/Context;)Ljil;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/accs/internal/ServiceImpl;->mClientManager:Ljil;

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/taobao/accs/internal/ServiceImpl;->startTime:J

    .line 97
    iget-wide v2, p0, Lcom/taobao/accs/internal/ServiceImpl;->startTime:J

    iput-wide v2, p0, Lcom/taobao/accs/internal/ServiceImpl;->lastStatisticsTime:J

    .line 98
    iget-object v1, p0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/accs/utl/UtilityImpl;->getNetworkTypeExt(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/accs/internal/ServiceImpl;->mLastNetWorkType:Ljava/lang/String;

    .line 100
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v1, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v1, p0, Lcom/taobao/accs/internal/ServiceImpl;->mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 102
    iget-object v1, p0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lkph;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Ljis;->a(Landroid/content/Context;)V

    .line 105
    iget-object v1, p0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    const/16 v2, 0x258

    invoke-static {v1, v2, v5}, Ljis;->a(Landroid/content/Context;IZ)Ljis;

    move-result-object v1

    .line 106
    sput-object v1, Lcom/taobao/accs/internal/ServiceImpl;->eudemonManager:Ljis;

    if-eqz v1, :cond_0

    .line 107
    sget-object v1, Lcom/taobao/accs/internal/ServiceImpl;->eudemonManager:Ljis;

    .line 1463
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 1464
    iput v5, v2, Landroid/os/Message;->what:I

    .line 1465
    iget-object v1, v1, Ljis;->c:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 113
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/taobao/accs/internal/ServiceImpl;->mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lcom/taobao/accs/internal/ServiceImpl$1;

    invoke-direct {v2, p0}, Lcom/taobao/accs/internal/ServiceImpl$1;-><init>(Lcom/taobao/accs/internal/ServiceImpl;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    sget-object v1, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v1}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    const-string/jumbo v1, "ServiceImpl"

    const-string/jumbo v2, "ServiceImpl onCreate"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "ClassLoader"

    aput-object v4, v3, v5

    const/4 v4, 0x1

    const-class v5, Lcom/taobao/accs/internal/ServiceImpl;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string/jumbo v4, "sdkv"

    aput-object v4, v3, v6

    const/4 v4, 0x3

    const/16 v5, 0xd5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "procStart"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    sget-object v5, Ljik;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    :cond_1
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "ServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "serviceImpl init task fail:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 468
    invoke-super {p0}, Ljit;->onDestroy()V

    .line 469
    const-string/jumbo v0, "ServiceImpl"

    const-string/jumbo v1, "Service onDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    iget-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "service_end"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/taobao/accs/utl/UtilityImpl;->setServiceTime(Landroid/content/Context;Ljava/lang/String;J)V

    .line 471
    iput-object v4, p0, Lcom/taobao/accs/internal/ServiceImpl;->mBaseService:Landroid/app/Service;

    .line 472
    iput-object v4, p0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    .line 473
    invoke-static {}, Ljip;->a()V

    .line 474
    iget-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->mConnection:Ljiu;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->mConnection:Ljiu;

    invoke-virtual {v0}, Ljiu;->f()V

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 478
    iget-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 480
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 481
    return-void
.end method

.method public onHostStartCommand(Landroid/content/Intent;II)I
    .locals 19
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 149
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/taobao/accs/utl/UtilityImpl;->getServiceEnabled(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 150
    const-string/jumbo v13, "ServiceImpl"

    const-string/jumbo v14, "service disabled!"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v13, v14, v15}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/taobao/accs/internal/ServiceImpl;->shouldStopSelf(Z)V

    .line 152
    const/4 v8, 0x2

    .line 254
    :goto_0
    return v8

    .line 154
    :cond_0
    sget-object v13, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v13}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 155
    const-string/jumbo v13, "ServiceImpl"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "onHostStartCommand:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v13, v14, v15}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    :cond_1
    const/4 v8, 0x1

    .line 159
    .local v8, "result":I
    :try_start_0
    sget-object v13, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v13}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 160
    if-eqz p1, :cond_2

    .line 161
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 162
    .local v3, "bundle":Landroid/os/Bundle;
    if-eqz v3, :cond_2

    .line 163
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 164
    .local v10, "str":Ljava/lang/String;
    const-string/jumbo v13, "ServiceImpl"

    const-string/jumbo v14, "key"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v10, v15, v16

    const/16 v16, 0x1

    const-string/jumbo v17, " value"

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 248
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v10    # "str":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 249
    .local v11, "t":Ljava/lang/Throwable;
    :try_start_1
    const-string/jumbo v13, "ServiceImpl"

    const-string/jumbo v14, "onHostStartCommand"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v13, v14, v11, v15}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 250
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    sget-object v13, Ljik;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0

    .line 169
    .end local v11    # "t":Ljava/lang/Throwable;
    :cond_2
    :try_start_2
    invoke-static {}, Ljjk;->c()I

    move-result v12

    .line 170
    .local v12, "times":I
    const/4 v13, 0x3

    if-le v12, v13, :cond_3

    .line 171
    const/4 v8, 0x2

    .line 172
    const-string/jumbo v13, "ServiceImpl"

    const-string/jumbo v14, "load SO fail 4 times, don\'t auto restart"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v13, v14, v15}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    const-string/jumbo v13, "accs"

    const-string/jumbo v14, "sofail"

    invoke-static {v12}, Lcom/taobao/accs/utl/UtilityImpl;->int2String(I)Ljava/lang/String;

    move-result-object v15

    const-wide/16 v16, 0x0

    invoke-static/range {v13 .. v17}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 176
    :cond_3
    if-nez p1, :cond_5

    const/4 v2, 0x0

    .line 179
    .local v2, "action":Ljava/lang/String;
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    const-string/jumbo v13, "org.agoo.android.intent.action.PING_V4"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 180
    const-string/jumbo v13, "source"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 181
    .local v9, "source":Ljava/lang/String;
    const-string/jumbo v13, "ServiceImpl"

    const-string/jumbo v14, "org.agoo.android.intent.action.PING_V4,start channel by brothers"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string/jumbo v17, "serviceStart"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    sget-object v17, Ljik;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "source"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    const-string/jumbo v13, "accs"

    const-string/jumbo v14, "startChannel"

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v13, v14, v9, v0, v1}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 183
    invoke-static {}, Ljik;->a()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 184
    const-string/jumbo v13, "accs"

    const-string/jumbo v14, "createChannel"

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v13, v14, v9, v0, v1}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 189
    .end local v9    # "source":Ljava/lang/String;
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 190
    invoke-direct/range {p0 .. p0}, Lcom/taobao/accs/internal/ServiceImpl;->tryConnect()V

    .line 191
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/taobao/accs/internal/ServiceImpl;->mConnection:Ljiu;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Ljiu;->a(ZZ)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 252
    sget-object v13, Ljik;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto/16 :goto_0

    .line 176
    .end local v2    # "action":Ljava/lang/String;
    :cond_5
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 200
    .restart local v2    # "action":Ljava/lang/String;
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/taobao/accs/internal/ServiceImpl;->tryConnect()V

    .line 202
    const-string/jumbo v13, "android.intent.action.PACKAGE_REMOVED"

    invoke-static {v2, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 211
    const-string/jumbo v13, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {v2, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 213
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/taobao/accs/utl/UtilityImpl;->getNetworkTypeExt(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 215
    .local v7, "networkType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/taobao/accs/utl/UtilityImpl;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v6

    .line 217
    .local v6, "isConnected":Z
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "network change:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/taobao/accs/internal/ServiceImpl;->mLastNetWorkType:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 219
    .local v4, "changeInfo":Ljava/lang/String;
    const-string/jumbo v13, "ServiceImpl"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v4, v14}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    if-eqz v6, :cond_7

    .line 221
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/taobao/accs/internal/ServiceImpl;->mLastNetWorkType:Ljava/lang/String;

    .line 222
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/taobao/accs/internal/ServiceImpl;->mConnection:Ljiu;

    invoke-virtual {v13}, Ljiu;->c()V

    .line 223
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/taobao/accs/internal/ServiceImpl;->mConnection:Ljiu;

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Ljiu;->a(ZZ)V

    .line 224
    invoke-static {}, Ljjo;->a()Ljjo;

    const v13, 0x101d1

    const-string/jumbo v14, "CONNECTIVITY_CHANGE"

    invoke-static {}, Lcom/taobao/accs/utl/UtilityImpl;->getProxy()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "0"

    move-object/from16 v0, v16

    invoke-static {v13, v14, v7, v15, v0}, Ljjo;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 229
    :cond_7
    const-string/jumbo v13, "unknown"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 230
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/taobao/accs/internal/ServiceImpl;->mConnection:Ljiu;

    invoke-virtual {v13}, Ljiu;->c()V

    .line 231
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/taobao/accs/internal/ServiceImpl;->mLastNetWorkType:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 252
    .end local v4    # "changeInfo":Ljava/lang/String;
    .end local v6    # "isConnected":Z
    .end local v7    # "networkType":Ljava/lang/String;
    :cond_8
    :goto_3
    sget-object v13, Ljik;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto/16 :goto_0

    .line 234
    :cond_9
    :try_start_4
    const-string/jumbo v13, "android.intent.action.BOOT_COMPLETED"

    invoke-static {v2, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 236
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/taobao/accs/internal/ServiceImpl;->mConnection:Ljiu;

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Ljiu;->a(ZZ)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 252
    .end local v2    # "action":Ljava/lang/String;
    .end local v12    # "times":I
    :catchall_0
    move-exception v13

    sget-object v14, Ljik;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    throw v13

    .line 237
    .restart local v2    # "action":Ljava/lang/String;
    .restart local v12    # "times":I
    :cond_a
    :try_start_5
    const-string/jumbo v13, "android.intent.action.USER_PRESENT"

    invoke-static {v2, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 239
    const-string/jumbo v13, "ServiceImpl"

    const-string/jumbo v14, "action android.intent.action.USER_PRESENT"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v13, v14, v15}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/taobao/accs/internal/ServiceImpl;->mConnection:Ljiu;

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Ljiu;->a(ZZ)V

    goto :goto_3

    .line 241
    :cond_b
    const-string/jumbo v13, "com.taobao.accs.intent.action.COMMAND"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 242
    invoke-direct/range {p0 .. p1}, Lcom/taobao/accs/internal/ServiceImpl;->handleCommand(Landroid/content/Intent;)V

    goto :goto_3

    .line 243
    :cond_c
    const-string/jumbo v13, "com.taobao.accs.intent.action.START_FROM_AGOO"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 244
    const-string/jumbo v13, "ServiceImpl"

    const-string/jumbo v14, "ACTION_START_FROM_AGOO"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v13, v14, v15}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 463
    const/4 v0, 0x0

    return v0
.end method

.method public onVotedHost()V
    .locals 0

    .prologue
    .line 560
    invoke-virtual {p0}, Lcom/taobao/accs/internal/ServiceImpl;->startConnect()V

    .line 561
    return-void
.end method

.method public startConnect()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 548
    const-string/jumbo v1, "ServiceImpl"

    const-string/jumbo v2, "startConnect"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 550
    :try_start_0
    invoke-direct {p0}, Lcom/taobao/accs/internal/ServiceImpl;->tryConnect()V

    .line 551
    iget-object v1, p0, Lcom/taobao/accs/internal/ServiceImpl;->mConnection:Ljiu;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljiu;->a(ZZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    :goto_0
    return-void

    .line 552
    :catch_0
    move-exception v0

    .line 553
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "ServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "tryConnect is error,e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
