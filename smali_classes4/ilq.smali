.class public final Lilq;
.super Ljava/lang/Object;
.source "LogStrategyManager.java"


# static fields
.field public static final a:J

.field public static final b:J

.field public static c:J

.field private static h:Lilq;

.field private static final i:J

.field private static final j:J


# instance fields
.field public d:Landroid/content/Context;

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lilp;",
            ">;"
        }
    .end annotation
.end field

.field public f:J

.field public g:I

.field private k:Lcom/alipay/mobile/common/logging/ContextInfo;

.field private l:Z

.field private m:I

.field private n:I

.field private o:I

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 98
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lilq;->a:J

    .line 100
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lilq;->i:J

    .line 102
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lilq;->j:J

    .line 104
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lilq;->b:J

    .line 106
    sget-wide v0, Lilq;->i:J

    sput-wide v0, Lilq;->c:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/common/logging/ContextInfo;)V
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lilq;->e:Ljava/util/Map;

    .line 138
    iput-object p1, p0, Lilq;->d:Landroid/content/Context;

    .line 139
    iput-object p2, p0, Lilq;->k:Lcom/alipay/mobile/common/logging/ContextInfo;

    .line 140
    return-void
.end method

.method public static a()Lilq;
    .locals 2

    .prologue
    .line 131
    sget-object v0, Lilq;->h:Lilq;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "need createInstance before use"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    sget-object v0, Lilq;->h:Lilq;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/alipay/mobile/common/logging/ContextInfo;)Lilq;
    .locals 2

    .prologue
    .line 124
    const-class v1, Lilq;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lilq;->h:Lilq;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lilq;

    invoke-direct {v0, p0, p1}, Lilq;-><init>(Landroid/content/Context;Lcom/alipay/mobile/common/logging/ContextInfo;)V

    sput-object v0, Lilq;->h:Lilq;

    .line 127
    :cond_0
    sget-object v0, Lilq;->h:Lilq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lilq;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/16 v8, 0xc8

    .line 39
    .line 1532
    invoke-static {}, Lika;->d()Likq;

    move-result-object v0

    const-string/jumbo v1, "LogStrategyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "syncRequestLogConfig: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Likq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    :try_start_0
    invoke-static {}, Lika;->b()Lijz;

    move-result-object v0

    invoke-interface {v0}, Lijz;->s()Ljava/lang/String;

    move-result-object v0

    .line 1535
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1536
    invoke-static {}, Lika;->d()Likq;

    move-result-object v0

    const-string/jumbo v1, "LogStrategyManager"

    const-string/jumbo v2, "syncRequestLogConfig: host is none"

    invoke-interface {v0, v1, v2}, Likq;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    :cond_0
    :goto_0
    return-void

    .line 1540
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1541
    const-string/jumbo v1, "actionType"

    invoke-interface {v3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1542
    const-string/jumbo v1, "userId"

    iget-object v4, p0, Lilq;->k:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v4}, Lcom/alipay/mobile/common/logging/ContextInfo;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1543
    const-string/jumbo v1, "productId"

    iget-object v4, p0, Lilq;->k:Lcom/alipay/mobile/common/logging/ContextInfo;

    .line 2107
    iget-object v4, v4, Lcom/alipay/mobile/common/logging/ContextInfo;->e:Ljava/lang/String;

    .line 1543
    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1544
    const-string/jumbo v1, "productVersion"

    iget-object v4, p0, Lilq;->k:Lcom/alipay/mobile/common/logging/ContextInfo;

    .line 2111
    iget-object v4, v4, Lcom/alipay/mobile/common/logging/ContextInfo;->f:Ljava/lang/String;

    .line 1544
    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1545
    const-string/jumbo v1, "processName"

    invoke-static {}, Lika;->a()Likh;

    move-result-object v4

    invoke-interface {v4}, Likh;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/loggw/logConfig.do"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1548
    new-instance v7, Lilb;

    iget-object v0, p0, Lilq;->d:Landroid/content/Context;

    invoke-direct {v7, v1, v0}, Lilb;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 1550
    const-string/jumbo v0, ""
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1552
    :try_start_1
    invoke-virtual {v7, v3}, Lilb;->a(Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 1557
    :goto_1
    if-nez v2, :cond_2

    .line 1558
    :try_start_2
    invoke-virtual {v7}, Lilb;->e()V

    .line 1559
    invoke-static {}, Lika;->d()Likq;

    move-result-object v1

    const-string/jumbo v2, "LogStrategyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "syncRequestLogConfig: response is NULL, network error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Likq;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1581
    :catch_0
    move-exception v0

    .line 1582
    invoke-static {}, Lika;->d()Likq;

    move-result-object v1

    const-string/jumbo v2, "LogStrategyManager"

    const-string/jumbo v3, "syncRequestLogConfig"

    invoke-interface {v1, v2, v3, v0}, Likq;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1553
    :catch_1
    move-exception v0

    .line 1554
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1563
    :cond_2
    invoke-virtual {p0}, Lilq;->d()V

    .line 1565
    invoke-virtual {v7}, Lilb;->d()J

    move-result-wide v4

    .line 1566
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;->MONITOR:Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;

    const-wide/16 v2, 0x0

    const-string/jumbo v6, "strategy"

    invoke-static/range {v0 .. v6}, Likm;->a(Lcom/alipay/mobile/common/logging/api/monitor/DataflowID;Ljava/lang/String;JJLjava/lang/String;)Likm;

    move-result-object v0

    invoke-virtual {v0}, Likm;->b()V

    .line 1568
    invoke-virtual {v7}, Lilb;->b()I

    move-result v4

    .line 1569
    invoke-virtual {v7}, Lilb;->c()Ljava/lang/String;

    move-result-object v0

    .line 1570
    invoke-virtual {v7}, Lilb;->e()V

    .line 1572
    if-ne v4, v8, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1573
    :cond_3
    invoke-static {}, Lika;->d()Likq;

    move-result-object v0

    const-string/jumbo v1, "LogStrategyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "syncRequestLogConfig: response is none, or responseCode is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Likq;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    invoke-static {}, Lika;->e()Likn;

    move-result-object v0

    const-string/jumbo v1, "LogStrategy"

    const-string/jumbo v2, "LogConfig"

    const-string/jumbo v3, "ResponseCode"

    .line 1576
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "or response is none"

    const/4 v6, 0x0

    .line 1575
    invoke-interface/range {v0 .. v6}, Likn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 2588
    :cond_4
    :try_start_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2589
    const-string/jumbo v2, "code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2590
    if-eq v2, v8, :cond_5

    .line 2591
    invoke-static {}, Lika;->d()Likq;

    move-result-object v1

    const-string/jumbo v2, "LogStrategyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "syncRequestLogConfig: serverLogicCode is not 200, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Likq;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 2669
    :catch_2
    move-exception v0

    .line 2670
    :try_start_5
    invoke-static {}, Lika;->d()Likq;

    move-result-object v1

    const-string/jumbo v2, "LogStrategyManager"

    const-string/jumbo v3, "syncLogConfig"

    invoke-interface {v1, v2, v3, v0}, Likq;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 2598
    :cond_5
    :try_start_6
    const-string/jumbo v0, "diagnose"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2599
    invoke-static {}, Lika;->d()Likq;

    move-result-object v0

    const-string/jumbo v2, "LogStrategyManager"

    const-string/jumbo v3, "syncRequestLogConfig: has diagnose tasks"

    invoke-interface {v0, v2, v3}, Likq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2600
    const-string/jumbo v0, "diagnose"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 2601
    if-eqz v0, :cond_6

    .line 2603
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2604
    iget-object v3, p0, Lilq;->d:Landroid/content/Context;

    const-string/jumbo v4, "com.alipay.mobile.logmonitor.ClientMonitorService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 2605
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lilq;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".push.action.MONITOR_RECEIVED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2606
    const-string/jumbo v3, "config_msg_tasks"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2607
    const-string/jumbo v0, "config_msg_userid"

    iget-object v3, p0, Lilq;->k:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/logging/ContextInfo;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 2609
    :try_start_7
    iget-object v0, p0, Lilq;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    .line 2613
    :goto_2
    :try_start_8
    iget-object v0, p0, Lilq;->d:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_6

    .line 2614
    invoke-static {}, Lika;->d()Likq;

    move-result-object v0

    const-string/jumbo v2, "LogStrategyManager"

    const-string/jumbo v3, "syncRequestLogConfig: start service for diagnose occured error"

    invoke-interface {v0, v2, v3}, Likq;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    .line 2625
    :cond_6
    :goto_3
    :try_start_9
    const-string/jumbo v0, "content"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2626
    invoke-static {}, Lika;->d()Likq;

    move-result-object v0

    const-string/jumbo v2, "LogStrategyManager"

    const-string/jumbo v3, "syncRequestLogConfig: has configs"

    invoke-interface {v0, v2, v3}, Likq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2627
    const-string/jumbo v0, "content"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2630
    invoke-virtual {p0, v0}, Lilq;->a(Ljava/lang/String;)V

    .line 2633
    invoke-static {}, Lika;->a()Likh;

    move-result-object v1

    invoke-interface {v1}, Likh;->f()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2634
    const-string/jumbo v1, "com.alipay.mobile.logmonitor.ClientMonitorService"

    invoke-direct {p0, v1, v0}, Lilq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2637
    invoke-virtual {p0}, Lilq;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2638
    const-string/jumbo v1, "com.alipay.mobile.common.logging.process.LogServiceInToolsProcess"

    invoke-direct {p0, v1, v0}, Lilq;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_0

    .line 2666
    :catch_3
    move-exception v0

    .line 2667
    :try_start_a
    invoke-static {}, Lika;->d()Likq;

    move-result-object v1

    const-string/jumbo v2, "LogStrategyManager"

    const-string/jumbo v3, "syncRequestLogConfig"

    invoke-interface {v1, v2, v3, v0}, Likq;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 2619
    :catch_4
    move-exception v0

    .line 2620
    invoke-static {}, Lika;->d()Likq;

    move-result-object v2

    const-string/jumbo v3, "LogStrategyManager"

    const-string/jumbo v4, "syncRequestLogConfig"

    invoke-interface {v2, v3, v4, v0}, Likq;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_3

    .line 2643
    :cond_7
    :try_start_b
    invoke-static {}, Lika;->a()Likh;

    move-result-object v1

    invoke-interface {v1}, Likh;->g()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2645
    invoke-virtual {p0}, Lilq;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2646
    const-string/jumbo v1, "com.alipay.mobile.common.logging.process.LogServiceInToolsProcess"

    invoke-direct {p0, v1, v0}, Lilq;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2651
    :cond_8
    invoke-static {}, Lika;->a()Likh;

    move-result-object v0

    invoke-interface {v0}, Likh;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2655
    invoke-static {}, Lika;->a()Likh;

    move-result-object v0

    invoke-interface {v0}, Likh;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2661
    invoke-static {}, Lika;->d()Likq;

    move-result-object v0

    const-string/jumbo v1, "LogStrategyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "syncRequestLogConfig, error: unknown process "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2663
    invoke-static {}, Lika;->a()Likh;

    move-result-object v3

    invoke-interface {v3}, Likh;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2661
    invoke-interface {v0, v1, v2}, Likq;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_0

    :catch_5
    move-exception v0

    goto/16 :goto_2
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 675
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 695
    :cond_0
    :goto_0
    return-void

    .line 678
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 679
    iget-object v1, p0, Lilq;->d:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 680
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lilq;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".monitor.action.UPDATE_LOG_STRATEGY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 681
    const-string/jumbo v1, "strategy"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 683
    :try_start_0
    iget-object v1, p0, Lilq;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 688
    :goto_1
    :try_start_1
    iget-object v1, p0, Lilq;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 689
    invoke-static {}, Lika;->d()Likq;

    move-result-object v0

    const-string/jumbo v1, "LogStrategyManager"

    const-string/jumbo v2, "notifyOtherProcessToUpdateLogStrategy: start service occured error"

    invoke-interface {v0, v1, v2}, Likq;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 692
    :catch_0
    move-exception v0

    .line 693
    invoke-static {}, Lika;->d()Likq;

    move-result-object v1

    const-string/jumbo v2, "LogStrategyManager"

    const-string/jumbo v3, "notifyOtherProcessToUpdateLogStrategy"

    invoke-interface {v1, v2, v3, v0}, Likq;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)V
    .locals 23

    .prologue
    .line 730
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 956
    :goto_0
    return-void

    .line 734
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lilq;->d:Landroid/content/Context;

    invoke-static {v2}, Lima;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 735
    invoke-static {}, Lika;->d()Likq;

    move-result-object v2

    const-string/jumbo v3, "LogStrategyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "parseLogStrategy: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Likq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    :cond_1
    new-instance v13, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 740
    invoke-virtual {v13}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v14

    .line 741
    const/4 v7, 0x0

    .line 742
    const/4 v6, 0x0

    .line 743
    const/4 v5, 0x0

    .line 744
    const/4 v4, 0x0

    .line 745
    const/4 v3, 0x0

    .line 746
    const/4 v2, 0x0

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    .line 748
    :cond_2
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 750
    :try_start_0
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 751
    const/4 v9, 0x0

    .line 754
    :try_start_1
    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    move-object v12, v9

    .line 758
    :goto_2
    if-eqz v12, :cond_2

    .line 762
    :try_start_2
    const-string/jumbo v9, "positiveDiagnoseLog"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 763
    const-string/jumbo v2, "event"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 764
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lilq;->g:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 767
    :try_start_3
    const-string/jumbo v2, "send"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 768
    const-string/jumbo v2, "send"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 769
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v2, v10, :cond_3

    .line 770
    invoke-virtual {v9, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 772
    const-string/jumbo v11, "none"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 773
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lilq;->g:I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 787
    :cond_3
    :goto_4
    :try_start_4
    move-object/from16 v0, p0

    iget v2, v0, Lilq;->g:I

    const/4 v9, 0x1

    if-eq v2, v9, :cond_5

    const-string/jumbo v2, "upInterval"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 788
    const-string/jumbo v2, "upInterval"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v16, 0x1

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v16

    mul-long v10, v10, v16

    .line 789
    sput-wide v10, Lilq;->c:J

    const-wide/16 v16, 0x0

    cmp-long v2, v10, v16

    if-gtz v2, :cond_8

    .line 790
    sget-wide v10, Lilq;->i:J

    sput-wide v10, Lilq;->c:J
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 796
    :cond_4
    :goto_5
    const/4 v7, 0x1

    :cond_5
    move v2, v7

    .line 805
    :goto_6
    const/4 v7, 0x1

    move v8, v7

    move v7, v2

    .line 806
    goto/16 :goto_1

    :catch_0
    move-exception v10

    move-object v12, v9

    goto :goto_2

    .line 776
    :cond_6
    :try_start_5
    const-string/jumbo v11, "wifi"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 777
    const/4 v10, 0x2

    move-object/from16 v0, p0

    iput v10, v0, Lilq;->g:I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    .line 769
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 782
    :catch_1
    move-exception v2

    .line 783
    :try_start_6
    const-string/jumbo v9, "LogStrategyManager"

    invoke-static {v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    .line 915
    :catch_2
    move-exception v2

    .line 916
    invoke-static {}, Lika;->d()Likq;

    move-result-object v9

    const-string/jumbo v10, "LogStrategyManager"

    const-string/jumbo v11, "parseLogStrategy"

    invoke-interface {v9, v10, v11, v2}, Likq;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 791
    :cond_8
    :try_start_7
    sget-wide v10, Lilq;->c:J

    sget-wide v16, Lilq;->b:J

    cmp-long v2, v10, v16

    if-gez v2, :cond_9

    .line 792
    sget-wide v10, Lilq;->b:J

    sput-wide v10, Lilq;->c:J
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_5

    .line 798
    :catch_3
    move-exception v2

    .line 799
    :try_start_8
    const-string/jumbo v9, "LogStrategyManager"

    invoke-static {v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    move v2, v7

    .line 800
    goto :goto_6

    .line 793
    :cond_9
    :try_start_9
    sget-wide v10, Lilq;->c:J

    sget-wide v16, Lilq;->j:J

    cmp-long v2, v10, v16

    if-lez v2, :cond_4

    .line 794
    sget-wide v10, Lilq;->j:J

    sput-wide v10, Lilq;->c:J
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_5

    .line 803
    :cond_a
    const/4 v2, 0x1

    :try_start_a
    move-object/from16 v0, p0

    iput v2, v0, Lilq;->g:I

    move v2, v7

    goto :goto_6

    .line 809
    :cond_b
    const-string/jumbo v9, "zipAndSevenZip"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 810
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lilq;->m:I

    .line 811
    const/4 v2, 0x1

    move v6, v2

    .line 812
    goto/16 :goto_1

    .line 815
    :cond_c
    const-string/jumbo v9, "disableToolsProcess"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 816
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lilq;->n:I

    .line 817
    const/4 v2, 0x1

    move v5, v2

    .line 818
    goto/16 :goto_1

    .line 821
    :cond_d
    const-string/jumbo v9, "enableTrafficLimit"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 822
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lilq;->o:I

    .line 823
    const/4 v2, 0x1

    move v4, v2

    .line 824
    goto/16 :goto_1

    .line 827
    :cond_e
    const-string/jumbo v9, "disable_nolock_log"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 828
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lilq;->p:I

    .line 829
    const/4 v2, 0x1

    move v3, v2

    .line 830
    goto/16 :goto_1

    .line 832
    :cond_f
    const-string/jumbo v9, "config"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 833
    invoke-virtual {v12}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v15

    .line 834
    :cond_10
    :goto_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2

    move-result v2

    if-eqz v2, :cond_2

    .line 837
    :try_start_b
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_7

    .line 838
    const/4 v9, 0x0

    .line 840
    :try_start_c
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4

    move-result-object v2

    move-object v11, v2

    .line 844
    :goto_8
    if-eqz v11, :cond_10

    .line 848
    :try_start_d
    invoke-virtual {v11}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v16

    .line 849
    :goto_9
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_7

    move-result v2

    if-eqz v2, :cond_10

    .line 851
    :try_start_e
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 852
    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .line 854
    new-instance v18, Lilp;

    invoke-direct/range {v18 .. v18}, Lilp;-><init>()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_6

    .line 856
    :try_start_f
    const-string/jumbo v9, "yes"

    const-string/jumbo v10, "write"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    move-object/from16 v0, v18

    iput-boolean v9, v0, Lilp;->a:Z
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_b

    .line 862
    :try_start_10
    const-string/jumbo v9, "level"

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, v18

    iput v9, v0, Lilp;->c:I
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_a

    .line 868
    :try_start_11
    const-string/jumbo v9, "send"

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v19

    .line 869
    const/4 v10, 0x0

    .line 870
    const/4 v9, 0x0

    move/from16 v22, v9

    move v9, v10

    move/from16 v10, v22

    :goto_a
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v10, v0, :cond_13

    .line 871
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 872
    move-object/from16 v0, v18

    iget-object v0, v0, Lilp;->d:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 873
    const-string/jumbo v21, "2g"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_11

    const-string/jumbo v21, "3g"

    .line 874
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_11

    const-string/jumbo v21, "4g"

    .line 875
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_12

    .line 876
    :cond_11
    const/4 v9, 0x1

    .line 870
    :cond_12
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    :catch_4
    move-exception v2

    move-object v11, v9

    goto/16 :goto_8

    .line 879
    :cond_13
    if-eqz v9, :cond_14

    .line 880
    move-object/from16 v0, v18

    iget-object v9, v0, Lilp;->d:Ljava/util/List;

    const-string/jumbo v10, "mobile"

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_9

    .line 887
    :cond_14
    :goto_b
    :try_start_12
    const-string/jumbo v9, "event"

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 888
    const/4 v9, 0x0

    :goto_c
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_15

    .line 889
    invoke-virtual {v10, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 890
    move-object/from16 v0, v18

    iget-object v0, v0, Lilp;->e:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_5

    .line 888
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :catch_5
    move-exception v9

    .line 897
    :cond_15
    :try_start_13
    const-string/jumbo v9, "maxLogCount"

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, v18

    iput v9, v0, Lilp;->b:I
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_8

    .line 902
    :goto_d
    :try_start_14
    move-object/from16 v0, p0

    iget-object v9, v0, Lilq;->e:Ljava/util/Map;

    move-object/from16 v0, v18

    invoke-interface {v9, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_6

    goto/16 :goto_9

    .line 905
    :catch_6
    move-exception v2

    goto/16 :goto_9

    .line 920
    :cond_16
    if-nez v8, :cond_17

    .line 921
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lilq;->g:I

    .line 923
    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Lilq;->g:I

    const/4 v8, 0x1

    if-eq v2, v8, :cond_18

    if-nez v7, :cond_19

    .line 924
    :cond_18
    sget-wide v8, Lilq;->i:J

    sput-wide v8, Lilq;->c:J

    .line 926
    :cond_19
    if-nez v6, :cond_1a

    .line 927
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lilq;->m:I

    .line 929
    :cond_1a
    if-nez v5, :cond_1b

    .line 930
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lilq;->n:I

    .line 932
    :cond_1b
    if-nez v4, :cond_1c

    .line 933
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lilq;->o:I

    .line 935
    :cond_1c
    if-nez v3, :cond_1d

    .line 936
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lilq;->p:I

    .line 939
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lilq;->d:Landroid/content/Context;

    const-string/jumbo v3, "LogStrategyConfig"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 940
    const-string/jumbo v3, "PositiveDiagnose"

    move-object/from16 v0, p0

    iget v4, v0, Lilq;->g:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 941
    const-string/jumbo v3, "CurrentRequestTimeSpan"

    sget-wide v4, Lilq;->c:J

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 942
    const-string/jumbo v3, "ZipAndSevenZip"

    move-object/from16 v0, p0

    iget v4, v0, Lilq;->m:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 943
    const-string/jumbo v3, "DisableToolsProcess"

    move-object/from16 v0, p0

    iget v4, v0, Lilq;->n:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 944
    const-string/jumbo v3, "EnableTrafficLimit"

    move-object/from16 v0, p0

    iget v4, v0, Lilq;->o:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 945
    const-string/jumbo v3, "Disable_NoLock_Log"

    move-object/from16 v0, p0

    iget v4, v0, Lilq;->p:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 946
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 948
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "parseLogStrategy"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 949
    const-string/jumbo v3, ", positiveDiagnoseTag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lilq;->g:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 950
    const-string/jumbo v3, ", CURRENT_REQUEST_TIME_SPAN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lilq;->c:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 951
    const-string/jumbo v3, ", zipAndSevenZipTag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lilq;->m:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 952
    const-string/jumbo v3, ", disableToolsProcessTag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lilq;->n:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 953
    const-string/jumbo v3, ", enableTrafficLimitTag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lilq;->o:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 954
    const-string/jumbo v3, ", disableNoLockLog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lilq;->p:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 955
    invoke-static {}, Lika;->d()Likq;

    move-result-object v3

    const-string/jumbo v4, "LogStrategyManager"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Likq;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 910
    :catch_7
    move-exception v2

    goto/16 :goto_7

    :catch_8
    move-exception v9

    goto/16 :goto_d

    :catch_9
    move-exception v9

    goto/16 :goto_b

    :catch_a
    move-exception v2

    goto/16 :goto_9

    :catch_b
    move-exception v2

    goto/16 :goto_9
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 714
    invoke-virtual {p0}, Lilq;->b()V

    .line 716
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    :goto_0
    return-void

    .line 719
    :cond_0
    iget-object v0, p0, Lilq;->d:Landroid/content/Context;

    const-string/jumbo v1, "LogStrategyConfig"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 720
    const-string/jumbo v1, "StrategConfigContent2nd"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 723
    :try_start_0
    invoke-direct {p0, p1}, Lilq;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 724
    :catch_0
    move-exception v0

    .line 725
    invoke-static {}, Lika;->d()Likq;

    move-result-object v1

    const-string/jumbo v2, "LogStrategyManager"

    invoke-interface {v1, v2, v0}, Likq;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;ILijz;)Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 382
    invoke-virtual {p0}, Lilq;->b()V

    .line 384
    const/16 v0, 0x64

    .line 386
    const-string/jumbo v1, "dataflow"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "battery"

    .line 387
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 389
    :cond_0
    const/16 v0, 0xc8

    move v1, v0

    .line 410
    :goto_0
    iget-object v0, p0, Lilq;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lilp;

    .line 411
    if-eqz v0, :cond_1

    iget v3, v0, Lilp;->b:I

    if-lez v3, :cond_1

    .line 412
    iget v1, v0, Lilp;->b:I

    .line 415
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateSize_"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lijz;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 418
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 420
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "threshold = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    :cond_2
    :goto_1
    if-lt p2, v1, :cond_8

    :goto_2
    return v2

    .line 391
    :cond_3
    const-string/jumbo v1, "userbehavor"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "autouserbehavor"

    .line 392
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "exception"

    .line 393
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lijy;->c:Ljava/lang/String;

    .line 394
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 396
    :cond_4
    const/16 v0, 0x32

    move v1, v0

    goto :goto_0

    .line 398
    :cond_5
    const-string/jumbo v1, "alivereport"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 399
    const/16 v0, 0xa

    move v1, v0

    goto :goto_0

    .line 401
    :cond_6
    const-string/jumbo v1, "crash"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "apm"

    .line 402
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lijy;->g:Ljava/lang/String;

    .line 403
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_7
    move v1, v2

    .line 406
    goto/16 :goto_0

    .line 423
    :catch_0
    move-exception v0

    .line 424
    invoke-static {}, Lika;->d()Likq;

    move-result-object v3

    const-string/jumbo v4, "LogStrategyManager"

    invoke-interface {v3, v4, v0}, Likq;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 428
    :cond_8
    const/4 v2, 0x0

    goto :goto_2

    :cond_9
    move v1, v0

    goto/16 :goto_0
.end method

.method public b()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 143
    iget-boolean v0, p0, Lilq;->l:Z

    if-eqz v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 149
    monitor-enter p0

    .line 150
    :try_start_0
    iget-boolean v0, p0, Lilq;->l:Z

    if-eqz v0, :cond_1

    .line 151
    monitor-exit p0

    goto :goto_0

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 154
    :cond_1
    const/4 v0, -0x1

    .line 155
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    if-eq v1, v4, :cond_2

    .line 156
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v0

    .line 157
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    .line 158
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/Thread;->setPriority(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    move v1, v0

    .line 162
    :try_start_2
    iget-object v0, p0, Lilq;->d:Landroid/content/Context;

    const-string/jumbo v4, "LogStrategyConfig"

    const/4 v5, 0x4

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 164
    const-string/jumbo v4, "StrategConfigContent2nd"

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-direct {p0, v0}, Lilq;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    :goto_1
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lilq;->l:Z

    .line 172
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    if-eq v0, v4, :cond_3

    .line 173
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 175
    :cond_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 177
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    .line 178
    invoke-static {}, Lika;->d()Likq;

    move-result-object v2

    const-string/jumbo v3, "LogStrategyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, " readAndParseStrategy END. spend: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Likq;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    :try_start_4
    invoke-static {}, Lika;->d()Likq;

    move-result-object v4

    const-string/jumbo v5, "LogStrategyManager"

    const-string/jumbo v6, "readAndParseStrategy"

    invoke-interface {v4, v5, v6, v0}, Likq;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public final c()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 983
    invoke-virtual {p0}, Lilq;->b()V

    .line 985
    iget v1, p0, Lilq;->n:I

    if-nez v1, :cond_0

    .line 986
    iget-object v1, p0, Lilq;->d:Landroid/content/Context;

    const-string/jumbo v2, "LogStrategyConfig"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 987
    const-string/jumbo v2, "DisableToolsProcess"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lilq;->n:I

    .line 989
    :cond_0
    iget v1, p0, Lilq;->n:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x4

    .line 1016
    iget-object v0, p0, Lilq;->d:Landroid/content/Context;

    const-string/jumbo v1, "LogStrategyConfig"

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1017
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1018
    const-string/jumbo v1, "PreviousRequestTime"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1469
    invoke-virtual {p0}, Lilq;->b()V

    .line 1471
    invoke-static {}, Lika;->d()Likq;

    move-result-object v0

    const-string/jumbo v1, "LogStrategyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "revertRequestSpanToNormal: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v4, Lilq;->c:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Likq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    iget-object v0, p0, Lilq;->d:Landroid/content/Context;

    const-string/jumbo v1, "LogStrategyConfig"

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1473
    const-string/jumbo v1, "CurrentRequestTimeSpan"

    sget-wide v2, Lilq;->c:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1021
    return-void
.end method
