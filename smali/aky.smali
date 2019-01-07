.class public final Laky;
.super Ljava/lang/Object;
.source "LogAssemble.java"


# static fields
.field private static volatile a:Ljava/lang/String;

.field private static volatile b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    sput-object v0, Laky;->a:Ljava/lang/String;

    .line 36
    sput-object v0, Laky;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "aContext"    # Landroid/content/Context;

    .prologue
    .line 438
    :try_start_0
    const-string/jumbo v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 439
    .local v1, "wifi":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 440
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 442
    .end local v0    # "info":Landroid/net/wifi/WifiInfo;
    .end local v1    # "wifi":Landroid/net/wifi/WifiManager;
    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "page"    # Ljava/lang/String;
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # Ljava/lang/String;
    .param p6, "logIndex"    # Ljava/lang/String;
    .param p7, "time"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 461
    .local p5, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 462
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p5, :cond_0

    .line 463
    invoke-virtual {v0, p5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 465
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 466
    sget-object v1, Lcom/alibaba/analytics/core/model/LogField;->PAGE:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    :cond_1
    sget-object v1, Lcom/alibaba/analytics/core/model/LogField;->EVENTID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 471
    sget-object v1, Lcom/alibaba/analytics/core/model/LogField;->ARG1:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 474
    sget-object v1, Lcom/alibaba/analytics/core/model/LogField;->ARG2:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    :cond_3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 477
    sget-object v1, Lcom/alibaba/analytics/core/model/LogField;->ARG3:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    :cond_4
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 481
    sget-object v1, Lcom/alibaba/analytics/core/model/LogField;->RECORD_TIMESTAMP:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    :cond_5
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 484
    sget-object v1, Lcom/alibaba/analytics/core/model/LogField;->RESERVE3:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    :cond_6
    invoke-static {v0}, Laky;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "aLogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_36

    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->size()I

    move-result v28

    if-lez v28, :cond_36

    .line 76
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v28

    .line 1305
    move-object/from16 v0, v28

    iget-object v7, v0, Lajw;->c:Landroid/content/Context;

    .line 77
    .local v7, "context":Landroid/content/Context;
    if-nez v7, :cond_0

    .line 78
    invoke-static {}, Lajs;->b()Landroid/app/Application;

    move-result-object v28

    if-eqz v28, :cond_0

    .line 79
    invoke-static {}, Lajs;->b()Landroid/app/Application;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 82
    :cond_0
    const/4 v14, 0x0

    .line 83
    .local v14, "lHostPackageImei":Ljava/lang/String;
    const/4 v15, 0x0

    .line 84
    .local v15, "lHostPackageImsi":Ljava/lang/String;
    invoke-static {v7}, Lakt;->a(Landroid/content/Context;)Laku;

    move-result-object v8

    .line 85
    .local v8, "device":Laku;
    if-eqz v8, :cond_1

    .line 2055
    iget-object v14, v8, Laku;->a:Ljava/lang/String;

    .line 2068
    iget-object v15, v8, Laku;->b:Ljava/lang/String;

    .line 90
    :cond_1
    if-eqz v14, :cond_2

    if-eqz v15, :cond_2

    .line 91
    sget-object v28, Lcom/alibaba/analytics/core/model/LogField;->IMEI:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    if-nez v28, :cond_2

    sget-object v28, Lcom/alibaba/analytics/core/model/LogField;->IMSI:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    if-nez v28, :cond_2

    .line 92
    sget-object v28, Lcom/alibaba/analytics/core/model/LogField;->IMEI:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v28, Lcom/alibaba/analytics/core/model/LogField;->IMSI:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_2
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v28

    .line 2373
    move-object/from16 v0, v28

    iget-object v0, v0, Lajw;->h:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 3205
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    .line 97
    if-nez v28, :cond_3

    .line 98
    sget-object v28, Lcom/alibaba/analytics/core/model/LogField;->USERNICK:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v29

    .line 3373
    move-object/from16 v0, v29

    iget-object v0, v0, Lajw;->h:Ljava/lang/String;

    move-object/from16 v29, v0

    .line 98
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_3
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v28

    .line 4355
    move-object/from16 v0, v28

    iget-object v0, v0, Lajw;->i:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 5205
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    .line 101
    if-nez v28, :cond_4

    .line 102
    sget-object v28, Lcom/alibaba/analytics/core/model/LogField;->LL_USERNICK:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v29

    .line 5355
    move-object/from16 v0, v29

    iget-object v0, v0, Lajw;->i:Ljava/lang/String;

    move-object/from16 v29, v0

    .line 102
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_4
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v28

    .line 5377
    move-object/from16 v0, v28

    iget-object v0, v0, Lajw;->j:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 6205
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    .line 104
    if-nez v28, :cond_5

    .line 105
    sget-object v28, Lcom/alibaba/analytics/core/model/LogField;->USERID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v29

    .line 6377
    move-object/from16 v0, v29

    iget-object v0, v0, Lajw;->j:Ljava/lang/String;

    move-object/from16 v29, v0

    .line 105
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_5
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v28

    .line 7359
    move-object/from16 v0, v28

    iget-object v0, v0, Lajw;->k:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 8205
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    .line 108
    if-nez v28, :cond_6

    .line 109
    sget-object v28, Lcom/alibaba/analytics/core/model/LogField;->LL_USERID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v29

    .line 8359
    move-object/from16 v0, v29

    iget-object v0, v0, Lajw;->k:Ljava/lang/String;

    move-object/from16 v29, v0

    .line 109
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_6
    sget-object v28, Lcom/alibaba/analytics/core/model/LogField;->SDKVERSION:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_7

    .line 113
    sget-object v28, Lcom/alibaba/analytics/core/model/LogField;->SDKVERSION:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static {}, Lanl;->a()Lanl;

    invoke-static {}, Lanl;->b()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_7
    sget-object v28, Lcom/alibaba/analytics/core/model/LogField;->APPKEY:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_8

    .line 117
    sget-object v28, Lcom/alibaba/analytics/core/model/LogField;->APPKEY:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v29

    .line 9309
    move-object/from16 v0, v29

    iget-object v0, v0, Lajw;->d:Ljava/lang/String;

    move-object/from16 v29, v0

    .line 117
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_8
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lajw;->f()Ljava/lang/String;

    move-result-object v28

    .line 10205
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    .line 120
    if-nez v28, :cond_9

    .line 121
    sget-object v28, Lcom/alibaba/analytics/core/model/LogField;->CHANNEL:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lajw;->f()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_9
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lajw;->e()Ljava/lang/String;

    move-result-object v28

    .line 11205
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    .line 124
    if-nez v28, :cond_a

    .line 125
    sget-object v28, Lcom/alibaba/analytics/core/model/LogField;->APPVERSION:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lajw;->e()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_a
    sget-object v28, Lcom/alibaba/analytics/core/model/LogField;->RECORD_TIMESTAMP:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1e

    .line 129
    sget-object v28, Lcom/alibaba/analytics/core/model/LogField;->RECORD_TIMESTAMP:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 130
    .local v26, "recordTimestamp":Ljava/lang/String;
    sget-object v28, Lcom/alibaba/analytics/core/model/LogField;->RECORD_TIMESTAMP:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lalc;->a()Lalc;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lalc;->a(Ljava/lang/String;)J

    move-result-wide v30

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .end local v26    # "recordTimestamp":Ljava/lang/String;
    :goto_0
    sget-object v28, Lcom/alibaba/analytics/core/model/LogField;->START_SESSION_TIMESTAMP:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_b

    .line 136
    sget-object v28, Lcom/alibaba/analytics/core/model/LogField;->START_SESSION_TIMESTAMP:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lalb;->a()Lalb;

    move-result-object v30

    .line 13044
    move-object/from16 v0, v30

    iget-wide v0, v0, Lalb;->a:J

    move-wide/from16 v30, v0

    .line 136
    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_b
    sget-object v28, Lcom/alibaba/analytics/core/model/LogField;->SDKTYPE:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_c

    .line 140
    sget-object v28, Lcom/alibaba/analytics/core/model/LogField;->SDKTYPE:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static {}, Lajv;->a()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_c
    invoke-static {v7}, Lani;->b(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v13

    .line 144
    .local v13, "lDeviceInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v13, :cond_36

    .line 151
    move-object/from16 v16, p0

    .line 13057
    .local v16, "lLogMapNew":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v28, Lcom/alibaba/analytics/core/model/LogField;->BRAND:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v28

    sget-object v29, Lcom/alibaba/analytics/core/model/LogField;->BRAND:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13058
    sget-object v28, Lcom/alibaba/analytics/core/model/LogField;->DEVICE_MODEL:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v28

    sget-object v29, Lcom/alibaba/analytics/core/model/LogField;->DEVICE_MODEL:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13059
    sget-object v28, Lcom/alibaba/analytics/core/model/LogField;->RESOLUTION:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v28

    sget-object v29, Lcom/alibaba/analytics/core/model/LogField;->RESOLUTION:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13060
    sget-object v28, Lcom/alibaba/analytics/core/model/LogField;->OS:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v28

    sget-object v29, Lcom/alibaba/analytics/core/model/LogField;->OS:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13061
    sget-object v28, Lcom/alibaba/analytics/core/model/LogField;->OSVERSION:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v28

    sget-object v29, Lcom/alibaba/analytics/core/model/LogField;->OSVERSION:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13062
    sget-object v28, Lcom/alibaba/analytics/core/model/LogField;->UTDID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v28

    sget-object v29, Lcom/alibaba/analytics/core/model/LogField;->UTDID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13064
    sget-object v28, Lcom/alibaba/analytics/core/model/LogField;->IMEI:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-static {v0, v1, v13}, Laky;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 13065
    sget-object v28, Lcom/alibaba/analytics/core/model/LogField;->IMSI:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-static {v0, v1, v13}, Laky;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 13066
    sget-object v28, Lcom/alibaba/analytics/core/model/LogField;->APPVERSION:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-static {v0, v1, v13}, Laky;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 13067
    sget-object v28, Lcom/alibaba/analytics/core/model/UTMCLogFields;->DEVICE_ID:Lcom/alibaba/analytics/core/model/UTMCLogFields;

    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/analytics/core/model/UTMCLogFields;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-static {v0, v1, v13}, Laky;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 13068
    sget-object v28, Lcom/alibaba/analytics/core/model/LogField;->LANGUAGE:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-static {v0, v1, v13}, Laky;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 13069
    sget-object v28, Lcom/alibaba/analytics/core/model/LogField;->ACCESS:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-static {v0, v1, v13}, Laky;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 13070
    sget-object v28, Lcom/alibaba/analytics/core/model/LogField;->ACCESS_SUBTYPE:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-static {v0, v1, v13}, Laky;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 13071
    sget-object v28, Lcom/alibaba/analytics/core/model/LogField;->CARRIER:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-static {v0, v1, v13}, Laky;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 153
    sget-object v28, Lcom/alibaba/analytics/core/model/UTMCLogFields;->ALIYUN_PLATFORM_FLAG:Lcom/alibaba/analytics/core/model/UTMCLogFields;

    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/analytics/core/model/UTMCLogFields;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_d

    .line 154
    sget-object v28, Lcom/alibaba/analytics/core/model/LogField;->OS:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v28

    const-string/jumbo v29, "y"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_d
    sget-object v28, Lcom/alibaba/analytics/core/model/LogField;->RESERVES:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 13205
    .local v19, "lReserves":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    .line 159
    if-nez v28, :cond_1f

    .line 160
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .local v18, "lRerservesBuilder":Ljava/lang/StringBuilder;
    :goto_1
    sget-object v28, Laky;->b:Ljava/lang/String;

    .line 14205
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    .line 165
    if-eqz v28, :cond_e

    if-eqz v7, :cond_e

    .line 168
    :try_start_0
    const-string/jumbo v28, "android.permission.ACCESS_WIFI_STATE"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v17

    .line 170
    .local v17, "lPermission":I
    if-nez v17, :cond_e

    .line 171
    invoke-static {v7}, Lalg;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v28

    sput-object v28, Laky;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .end local v17    # "lPermission":I
    :cond_e
    :goto_2
    sget-object v28, Laky;->b:Ljava/lang/String;

    if-eqz v28, :cond_f

    .line 179
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v28

    if-lez v28, :cond_20

    .line 180
    const-string/jumbo v28, ",_mac="

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, Laky;->b:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :goto_3
    const-string/jumbo v28, "_mac"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_f
    sget-object v28, Lcom/alibaba/analytics/core/model/UTMCLogFields;->DEVICE_ID:Lcom/alibaba/analytics/core/model/UTMCLogFields;

    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/analytics/core/model/UTMCLogFields;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 188
    .local v12, "lDeviceId":Ljava/lang/String;
    if-eqz v12, :cond_10

    .line 189
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v28

    if-lez v28, :cond_21

    .line 190
    const-string/jumbo v28, ",_did="

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    :goto_4
    sget-object v28, Lcom/alibaba/analytics/core/model/UTMCLogFields;->DEVICE_ID:Lcom/alibaba/analytics/core/model/UTMCLogFields;

    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/analytics/core/model/UTMCLogFields;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_10
    invoke-static {v7}, Lakz;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v27

    .line 198
    .local v27, "umidStr":Ljava/lang/String;
    if-eqz v27, :cond_12

    .line 199
    sget-object v28, Lcom/alibaba/analytics/core/model/LogField;->UTDID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_11

    .line 200
    sget-object v28, Lcom/alibaba/analytics/core/model/LogField;->UTDID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_11

    .line 201
    const-string/jumbo v27, "utdid"

    .line 204
    :cond_11
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v28

    if-lez v28, :cond_22

    .line 205
    const-string/jumbo v28, ",_umid="

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :cond_12
    :goto_5
    sget-object v28, Laky;->a:Ljava/lang/String;

    if-nez v28, :cond_13

    .line 212
    invoke-static {v7}, Laky;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 213
    .local v4, "bssID":Ljava/lang/String;
    if-nez v4, :cond_23

    .line 214
    const-string/jumbo v28, ""

    sput-object v28, Laky;->a:Ljava/lang/String;

    .line 220
    .end local v4    # "bssID":Ljava/lang/String;
    :cond_13
    :goto_6
    sget-object v28, Laky;->a:Ljava/lang/String;

    .line 15205
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    .line 220
    if-nez v28, :cond_14

    .line 221
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v28

    if-lez v28, :cond_24

    .line 222
    const-string/jumbo v28, ",_bssid="

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, Laky;->a:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    :cond_14
    :goto_7
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v28

    .line 15400
    move-object/from16 v0, v28

    iget-boolean v0, v0, Lajw;->t:Z

    move/from16 v29, v0

    if-nez v29, :cond_15

    move-object/from16 v0, v28

    iget-object v0, v0, Lajw;->c:Landroid/content/Context;

    move-object/from16 v29, v0

    if-eqz v29, :cond_15

    .line 15401
    move-object/from16 v0, v28

    iget-object v0, v0, Lajw;->c:Landroid/content/Context;

    move-object/from16 v29, v0

    const-string/jumbo v30, "UTCommon"

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v29

    .line 15402
    const-string/jumbo v30, "_isolddevice"

    const/16 v31, 0x0

    invoke-interface/range {v29 .. v31}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lajw;->t:Z

    .line 15404
    :cond_15
    move-object/from16 v0, v28

    iget-boolean v0, v0, Lajw;->t:Z

    move/from16 v28, v0

    .line 228
    if-eqz v28, :cond_16

    .line 229
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v28

    if-lez v28, :cond_25

    .line 230
    const-string/jumbo v28, ",_io=1"

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    :cond_16
    :goto_8
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v28

    .line 15633
    move-object/from16 v0, v28

    iget-boolean v0, v0, Lajw;->v:Z

    move/from16 v29, v0

    if-nez v29, :cond_27

    .line 16305
    move-object/from16 v0, v28

    iget-object v0, v0, Lajw;->c:Landroid/content/Context;

    move-object/from16 v29, v0

    .line 15637
    if-nez v29, :cond_26

    .line 15638
    const/16 v28, 0x0

    .line 235
    :goto_9
    if-eqz v28, :cond_17

    .line 236
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v28

    .line 16650
    move-object/from16 v0, v28

    iget-boolean v0, v0, Lajw;->x:Z

    move/from16 v29, v0

    if-eqz v29, :cond_28

    .line 16651
    move-object/from16 v0, v28

    iget-object v5, v0, Lajw;->w:Ljava/lang/String;

    .line 237
    .local v5, "buildid":Ljava/lang/String;
    :goto_a
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_17

    .line 238
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v28

    if-lez v28, :cond_2a

    .line 239
    const-string/jumbo v28, ",_buildid="

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .end local v5    # "buildid":Ljava/lang/String;
    :cond_17
    :goto_b
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v28

    if-lez v28, :cond_2c

    .line 247
    const-string/jumbo v28, ",_timeAdjust="

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static {}, Lalc;->a()Lalc;

    move-result-object v28

    .line 18090
    move-object/from16 v0, v28

    iget-boolean v0, v0, Lalc;->b:Z

    move/from16 v28, v0

    .line 247
    if-eqz v28, :cond_2b

    const-string/jumbo v28, "1"

    :goto_c
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    :goto_d
    sget-object v28, Lcom/alibaba/analytics/core/model/LogField;->APPKEY:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 253
    .local v22, "logAppkey":Ljava/lang/String;
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v28

    .line 19309
    move-object/from16 v0, v28

    iget-object v0, v0, Lajw;->d:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 255
    .local v23, "mainAppkey":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_18

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_18

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_18

    .line 256
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v28

    if-lez v28, :cond_2e

    .line 257
    const-string/jumbo v28, ",_mak="

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :cond_18
    :goto_e
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v28

    .line 20305
    move-object/from16 v0, v28

    iget-object v0, v0, Lajw;->c:Landroid/content/Context;

    move-object/from16 v28, v0

    .line 263
    invoke-static/range {v28 .. v28}, Lani;->c(Landroid/content/Context;)Z

    move-result v28

    if-eqz v28, :cond_2f

    const-string/jumbo v25, "1"

    .line 264
    .local v25, "phoneOrPad":Ljava/lang/String;
    :goto_f
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v28

    if-lez v28, :cond_30

    .line 265
    const-string/jumbo v28, ",_pad="

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    :goto_10
    invoke-static {v7}, Laml;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 271
    .local v6, "channel2":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_19

    .line 272
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v28

    if-lez v28, :cond_31

    .line 273
    const-string/jumbo v28, ",_channel2="

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :cond_19
    :goto_11
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v28

    .line 20381
    move-object/from16 v0, v28

    iget-object v0, v0, Lajw;->b:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 21205
    .local v24, "openid":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    .line 280
    if-nez v28, :cond_1a

    .line 281
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v28

    if-lez v28, :cond_32

    .line 282
    const-string/jumbo v28, ",_openid="

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    :cond_1a
    :goto_12
    invoke-static {v7}, Lamz;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 290
    .local v10, "imeiBySystem":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_1b

    .line 291
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v28

    if-lez v28, :cond_33

    .line 292
    const-string/jumbo v28, ",_ie="

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    :cond_1b
    :goto_13
    invoke-static {v7}, Lamz;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 298
    .local v11, "imsiBySystem":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_1c

    .line 299
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v28

    if-lez v28, :cond_34

    .line 300
    const-string/jumbo v28, ",_is="

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    :cond_1c
    :goto_14
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lajw;->h()Ljava/util/Map;

    move-result-object v20

    .line 307
    .local v20, "lSessionProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v20, :cond_1d

    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->size()I

    move-result v28

    if-lez v28, :cond_1d

    .line 308
    invoke-static/range {v20 .. v20}, Lane;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v21

    .line 22205
    .local v21, "lSessionPropertiesStr":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    .line 309
    if-nez v28, :cond_1d

    .line 310
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v28

    if-lez v28, :cond_35

    .line 311
    const-string/jumbo v28, ","

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .end local v21    # "lSessionPropertiesStr":Ljava/lang/String;
    :cond_1d
    :goto_15
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 318
    sget-object v28, Lcom/alibaba/analytics/core/model/LogField;->RESERVES:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    invoke-static/range {v16 .. v16}, Laky;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v28

    .line 322
    .end local v6    # "channel2":Ljava/lang/String;
    .end local v7    # "context":Landroid/content/Context;
    .end local v8    # "device":Laku;
    .end local v10    # "imeiBySystem":Ljava/lang/String;
    .end local v11    # "imsiBySystem":Ljava/lang/String;
    .end local v12    # "lDeviceId":Ljava/lang/String;
    .end local v13    # "lDeviceInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "lHostPackageImei":Ljava/lang/String;
    .end local v15    # "lHostPackageImsi":Ljava/lang/String;
    .end local v16    # "lLogMapNew":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v18    # "lRerservesBuilder":Ljava/lang/StringBuilder;
    .end local v19    # "lReserves":Ljava/lang/String;
    .end local v20    # "lSessionProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "logAppkey":Ljava/lang/String;
    .end local v23    # "mainAppkey":Ljava/lang/String;
    .end local v24    # "openid":Ljava/lang/String;
    .end local v25    # "phoneOrPad":Ljava/lang/String;
    .end local v27    # "umidStr":Ljava/lang/String;
    :goto_16
    return-object v28

    .line 132
    .restart local v7    # "context":Landroid/content/Context;
    .restart local v8    # "device":Laku;
    .restart local v14    # "lHostPackageImei":Ljava/lang/String;
    .restart local v15    # "lHostPackageImsi":Ljava/lang/String;
    :cond_1e
    sget-object v28, Lcom/alibaba/analytics/core/model/LogField;->RECORD_TIMESTAMP:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lalc;->a()Lalc;

    move-result-object v30

    .line 12071
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    move-object/from16 v0, v30

    iget-wide v0, v0, Lalc;->a:J

    move-wide/from16 v30, v0

    add-long v30, v30, v32

    .line 132
    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 162
    .restart local v13    # "lDeviceInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v16    # "lLogMapNew":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v19    # "lReserves":Ljava/lang/String;
    :cond_1f
    new-instance v18, Ljava/lang/StringBuilder;

    const/16 v28, 0x64

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .restart local v18    # "lRerservesBuilder":Ljava/lang/StringBuilder;
    goto/16 :goto_1

    .line 173
    :catch_0
    move-exception v9

    .line 174
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 182
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_20
    const-string/jumbo v28, "_mac="

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, Laky;->b:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 192
    .restart local v12    # "lDeviceId":Ljava/lang/String;
    :cond_21
    const-string/jumbo v28, "_did="

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 207
    .restart local v27    # "umidStr":Ljava/lang/String;
    :cond_22
    const-string/jumbo v28, "_umid="

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 216
    .restart local v4    # "bssID":Ljava/lang/String;
    :cond_23
    sput-object v4, Laky;->a:Ljava/lang/String;

    goto/16 :goto_6

    .line 224
    .end local v4    # "bssID":Ljava/lang/String;
    :cond_24
    const-string/jumbo v28, "_bssid="

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, Laky;->a:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 232
    :cond_25
    const-string/jumbo v28, "_io=1"

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 15640
    :cond_26
    const-string/jumbo v30, "package_type"

    invoke-static/range {v29 .. v30}, Laml;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 15641
    const-string/jumbo v30, "1"

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_27

    .line 15642
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lajw;->u:Z

    .line 15643
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lajw;->v:Z

    .line 15645
    :cond_27
    move-object/from16 v0, v28

    iget-boolean v0, v0, Lajw;->u:Z

    move/from16 v28, v0

    goto/16 :goto_9

    .line 17305
    :cond_28
    move-object/from16 v0, v28

    iget-object v0, v0, Lajw;->c:Landroid/content/Context;

    move-object/from16 v29, v0

    .line 16654
    if-nez v29, :cond_29

    .line 16655
    const/4 v5, 0x0

    goto/16 :goto_a

    .line 16657
    :cond_29
    const-string/jumbo v30, "build_id"

    invoke-static/range {v29 .. v30}, Laml;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lajw;->w:Ljava/lang/String;

    .line 16658
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lajw;->x:Z

    .line 16659
    move-object/from16 v0, v28

    iget-object v5, v0, Lajw;->w:Ljava/lang/String;

    goto/16 :goto_a

    .line 241
    .restart local v5    # "buildid":Ljava/lang/String;
    :cond_2a
    const-string/jumbo v28, "_buildid="

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 247
    .end local v5    # "buildid":Ljava/lang/String;
    :cond_2b
    const-string/jumbo v28, "0"

    goto/16 :goto_c

    .line 249
    :cond_2c
    const-string/jumbo v28, "_timeAdjust="

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static {}, Lalc;->a()Lalc;

    move-result-object v28

    .line 19090
    move-object/from16 v0, v28

    iget-boolean v0, v0, Lalc;->b:Z

    move/from16 v28, v0

    .line 249
    if-eqz v28, :cond_2d

    const-string/jumbo v28, "1"

    :goto_17
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :cond_2d
    const-string/jumbo v28, "0"

    goto :goto_17

    .line 259
    .restart local v22    # "logAppkey":Ljava/lang/String;
    .restart local v23    # "mainAppkey":Ljava/lang/String;
    :cond_2e
    const-string/jumbo v28, "_mak="

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    .line 263
    :cond_2f
    const-string/jumbo v25, "0"

    goto/16 :goto_f

    .line 267
    .restart local v25    # "phoneOrPad":Ljava/lang/String;
    :cond_30
    const-string/jumbo v28, "_pad="

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 275
    .restart local v6    # "channel2":Ljava/lang/String;
    :cond_31
    const-string/jumbo v28, "_channel2="

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    .line 284
    .restart local v24    # "openid":Ljava/lang/String;
    :cond_32
    const-string/jumbo v28, "_openid="

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_12

    .line 294
    .restart local v10    # "imeiBySystem":Ljava/lang/String;
    :cond_33
    const-string/jumbo v28, "_ie="

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_13

    .line 302
    .restart local v11    # "imsiBySystem":Ljava/lang/String;
    :cond_34
    const-string/jumbo v28, "_is="

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_14

    .line 313
    .restart local v20    # "lSessionProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v21    # "lSessionPropertiesStr":Ljava/lang/String;
    :cond_35
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_15

    .line 322
    .end local v6    # "channel2":Ljava/lang/String;
    .end local v7    # "context":Landroid/content/Context;
    .end local v8    # "device":Laku;
    .end local v10    # "imeiBySystem":Ljava/lang/String;
    .end local v11    # "imsiBySystem":Ljava/lang/String;
    .end local v12    # "lDeviceId":Ljava/lang/String;
    .end local v13    # "lDeviceInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "lHostPackageImei":Ljava/lang/String;
    .end local v15    # "lHostPackageImsi":Ljava/lang/String;
    .end local v16    # "lLogMapNew":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v18    # "lRerservesBuilder":Ljava/lang/StringBuilder;
    .end local v19    # "lReserves":Ljava/lang/String;
    .end local v20    # "lSessionProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "lSessionPropertiesStr":Ljava/lang/String;
    .end local v22    # "logAppkey":Ljava/lang/String;
    .end local v23    # "mainAppkey":Ljava/lang/String;
    .end local v24    # "openid":Ljava/lang/String;
    .end local v25    # "phoneOrPad":Ljava/lang/String;
    .end local v27    # "umidStr":Ljava/lang/String;
    :cond_36
    const/16 v28, 0x0

    goto/16 :goto_16
.end method

.method public static a(Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .param p0, "pLogContent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 402
    .line 23205
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 402
    if-nez v7, :cond_1

    .line 403
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 404
    .local v2, "lDResult":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v7, 0x22

    invoke-static {p0, v7}, Laky;->a(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 405
    .local v5, "lSplitResult":[Ljava/lang/String;
    if-eqz v5, :cond_2

    array-length v7, v5

    if-lez v7, :cond_2

    .line 406
    const/4 v4, 0x0

    .line 407
    .local v4, "lLIndex":I
    invoke-static {}, Lcom/alibaba/analytics/core/model/LogField;->values()[Lcom/alibaba/analytics/core/model/LogField;

    move-result-object v0

    .local v0, "arr$":[Lcom/alibaba/analytics/core/model/LogField;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v6, :cond_2

    aget-object v3, v0, v1

    .line 408
    .local v3, "lEnumKey":Lcom/alibaba/analytics/core/model/LogField;
    array-length v7, v5

    if-ge v4, v7, :cond_0

    aget-object v7, v5, v4

    if-eqz v7, :cond_0

    .line 409
    invoke-virtual {v3}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v7

    aget-object v8, v5, v4

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 407
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 416
    .end local v0    # "arr$":[Lcom/alibaba/analytics/core/model/LogField;
    .end local v1    # "i$":I
    .end local v2    # "lDResult":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "lEnumKey":Lcom/alibaba/analytics/core/model/LogField;
    .end local v4    # "lLIndex":I
    .end local v5    # "lSplitResult":[Ljava/lang/String;
    .end local v6    # "len$":I
    :cond_1
    const/4 v2, 0x0

    :cond_2
    return-object v2
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .param p0, "aKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "aLogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "aDeviceInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_0
    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 8
    .param p1, "field"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "lLogMapNew":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const v7, 0xa000

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 490
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 491
    .local v0, "logField":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v7, :cond_1

    :cond_0
    move v1, v2

    .line 497
    :goto_0
    return v1

    .line 495
    :cond_1
    const-string/jumbo v3, "LogAssemble truncLog"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "field"

    aput-object v5, v4, v2

    aput-object p1, v4, v1

    const/4 v5, 0x2

    const-string/jumbo v6, "length"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lamu;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 496
    invoke-virtual {v0, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 6
    .param p0, "aLogContent"    # Ljava/lang/String;
    .param p1, "aSplitNumber"    # I

    .prologue
    const/16 v5, 0x21

    .line 420
    const/16 v4, 0x22

    new-array v3, v4, [Ljava/lang/String;

    .line 421
    .local v3, "result":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 422
    .local v2, "lastIndexPos":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 423
    const-string/jumbo v4, "||"

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 424
    .local v0, "findIndexPos":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 425
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 432
    .end local v0    # "findIndexPos":I
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 433
    return-object v3

    .line 428
    .restart local v0    # "findIndexPos":I
    :cond_1
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 430
    add-int/lit8 v2, v0, 0x2

    .line 422
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "pField"    # Ljava/lang/String;

    .prologue
    .line 41
    .line 1205
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    const-string/jumbo p0, "-"

    .line 44
    .end local p0    # "pField":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private static b(Ljava/util/Map;)Ljava/lang/String;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 327
    .local p0, "aLogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p0 .. p0}, Lakx;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v17

    .line 329
    .local v17, "lLogMapNew":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v2, Lcom/alibaba/analytics/core/model/LogField;->ARG1:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v2}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Laky;->a(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v11

    .line 330
    .local v11, "isTrunc":Z
    sget-object v2, Lcom/alibaba/analytics/core/model/LogField;->ARG2:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v2}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Laky;->a(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v11, :cond_3

    :cond_0
    const/4 v11, 0x1

    .line 331
    :goto_0
    sget-object v2, Lcom/alibaba/analytics/core/model/LogField;->ARG3:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v2}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Laky;->a(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v11, :cond_4

    :cond_1
    const/4 v11, 0x1

    .line 333
    :goto_1
    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    .line 334
    .local v24, "stringBufferLog":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/alibaba/analytics/core/model/LogField;->values()[Lcom/alibaba/analytics/core/model/LogField;

    move-result-object v9

    .local v9, "arr$":[Lcom/alibaba/analytics/core/model/LogField;
    array-length v0, v9

    move/from16 v19, v0

    .local v19, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_2
    move/from16 v0, v19

    if-ge v10, v0, :cond_5

    aget-object v13, v9, v10

    .line 335
    .local v13, "lEnumKey":Lcom/alibaba/analytics/core/model/LogField;
    sget-object v2, Lcom/alibaba/analytics/core/model/LogField;->ARGS:Lcom/alibaba/analytics/core/model/LogField;

    if-eq v13, v2, :cond_5

    .line 338
    const/16 v18, 0x0

    .line 339
    .local v18, "lV":Ljava/lang/String;
    invoke-virtual {v13}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 340
    invoke-virtual {v13}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lane;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 341
    invoke-virtual {v13}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    :cond_2
    invoke-static/range {v18 .. v18}, Laky;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, "||"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 334
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 330
    .end local v9    # "arr$":[Lcom/alibaba/analytics/core/model/LogField;
    .end local v10    # "i$":I
    .end local v13    # "lEnumKey":Lcom/alibaba/analytics/core/model/LogField;
    .end local v18    # "lV":Ljava/lang/String;
    .end local v19    # "len$":I
    .end local v24    # "stringBufferLog":Ljava/lang/StringBuffer;
    :cond_3
    const/4 v11, 0x0

    goto :goto_0

    .line 331
    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    .line 346
    .restart local v9    # "arr$":[Lcom/alibaba/analytics/core/model/LogField;
    .restart local v10    # "i$":I
    .restart local v19    # "len$":I
    .restart local v24    # "stringBufferLog":Ljava/lang/StringBuffer;
    :cond_5
    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    .line 347
    .local v22, "stringBufferArgs":Ljava/lang/StringBuffer;
    const/4 v14, 0x1

    .line 348
    .local v14, "lIsFirstArgFlag":Z
    sget-object v2, Lcom/alibaba/analytics/core/model/LogField;->ARGS:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v2}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 349
    sget-object v2, Lcom/alibaba/analytics/core/model/LogField;->ARGS:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v2}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lane;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 350
    .local v12, "lArgs":Ljava/lang/String;
    invoke-static {v12}, Laky;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 351
    sget-object v2, Lcom/alibaba/analytics/core/model/LogField;->ARGS:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v2}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    const/4 v14, 0x0

    .line 355
    .end local v12    # "lArgs":Ljava/lang/String;
    :cond_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 356
    .local v15, "lItorKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 357
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 358
    .local v16, "lKey":Ljava/lang/String;
    const/16 v18, 0x0

    .line 359
    .restart local v18    # "lV":Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 360
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lane;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 362
    :cond_7
    if-eqz v14, :cond_9

    .line 363
    const-string/jumbo v2, "StackTrace"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 364
    const-string/jumbo v2, "StackTrace=====>"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 368
    :goto_4
    const/4 v14, 0x0

    goto :goto_3

    .line 366
    :cond_8
    invoke-static/range {v16 .. v16}, Laky;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 371
    :cond_9
    const-string/jumbo v2, "StackTrace"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 372
    const-string/jumbo v2, ",StackTrace=====>"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 374
    :cond_a
    const-string/jumbo v2, ","

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static/range {v16 .. v16}, Laky;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 380
    .end local v16    # "lKey":Ljava/lang/String;
    .end local v18    # "lV":Ljava/lang/String;
    :cond_b
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->length()I

    move-result v23

    .line 381
    .local v23, "stringBufferArgsLength":I
    if-gtz v23, :cond_d

    .line 382
    const-string/jumbo v20, "-"

    .line 391
    .local v20, "logArgs":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 392
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    .line 394
    .local v21, "logResult":Ljava/lang/String;
    if-eqz v11, :cond_c

    .line 22504
    invoke-static {}, Laki;->a()Laki;

    move-result-object v2

    const/16 v3, 0x4e1f

    const-string/jumbo v4, "TRUNC_LOG"

    invoke-virtual {v2, v3, v4}, Laki;->a(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 22505
    const-string/jumbo v2, "sendTruncLogEvent"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "TRUNC_LOG is discarded!"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 398
    :cond_c
    :goto_6
    return-object v21

    .line 383
    .end local v20    # "logArgs":Ljava/lang/String;
    .end local v21    # "logResult":Ljava/lang/String;
    :cond_d
    const v2, 0xa000

    move/from16 v0, v23

    if-le v0, v2, :cond_e

    .line 384
    const-string/jumbo v2, "LogAssemble truncLog"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "field"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/alibaba/analytics/core/model/LogField;->ARGS:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v5}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "length"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lamu;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    const/4 v2, 0x0

    const v3, 0xa000

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 386
    .restart local v20    # "logArgs":Ljava/lang/String;
    const/4 v11, 0x1

    goto :goto_5

    .line 388
    .end local v20    # "logArgs":Ljava/lang/String;
    :cond_e
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    .restart local v20    # "logArgs":Ljava/lang/String;
    goto :goto_5

    .line 22509
    .restart local v21    # "logResult":Ljava/lang/String;
    :cond_f
    invoke-static/range {v21 .. v21}, Laky;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    .line 22510
    if-eqz v8, :cond_c

    .line 22514
    sget-object v2, Lcom/alibaba/analytics/core/model/LogField;->PAGE:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v2}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 22515
    sget-object v3, Lcom/alibaba/analytics/core/model/LogField;->EVENTID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v3}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 22517
    sget-object v4, Lcom/alibaba/analytics/core/model/LogField;->ARG1:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v4}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 22518
    sget-object v5, Lcom/alibaba/analytics/core/model/LogField;->ARG2:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v5}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 22519
    sget-object v6, Lcom/alibaba/analytics/core/model/LogField;->ARG3:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v6}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 22520
    sget-object v7, Lcom/alibaba/analytics/core/model/LogField;->ARGS:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v7}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 22522
    sget-object v25, Lcom/alibaba/analytics/core/model/LogField;->RESERVE3:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v25 .. v25}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 22524
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    .line 22525
    const-string/jumbo v26, "PN"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22526
    const-string/jumbo v2, "EID"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22527
    const-string/jumbo v2, "A1"

    invoke-static {v4}, Laky;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22528
    const-string/jumbo v2, "A2"

    invoke-static {v5}, Laky;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22529
    const-string/jumbo v2, "A3"

    invoke-static {v6}, Laky;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22530
    const-string/jumbo v2, "AS"

    invoke-static {v7}, Laky;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22531
    const-string/jumbo v2, "R3"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22532
    invoke-static/range {v25 .. v25}, Lamw;->b(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    .line 22534
    new-instance v2, Lald;

    const-string/jumbo v3, "UT_ANALYTICS"

    const-string/jumbo v4, "19999"

    const-string/jumbo v5, "TRUNC_LOG"

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    invoke-direct/range {v2 .. v8}, Lald;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 22535
    invoke-static {}, Lalu;->a()Lalu;

    move-result-object v3

    invoke-virtual {v3, v2}, Lalu;->a(Lald;)V

    goto/16 :goto_6
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "truncString"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x400

    .line 539
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v1, :cond_1

    .line 543
    .end local p0    # "truncString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "truncString":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
