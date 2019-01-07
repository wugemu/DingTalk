.class public Lcom/alipay/rdssecuritysdk/v2/model/LocNodeModel;
.super Liqm;
.source "LocNodeModel.java"


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "active"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "bssid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "cid"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "omac"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "la"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "lac"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "lo"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "mcc"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "mnc"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "acc"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "ssid"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "strength"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "carrier"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "nettype"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "t"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/rdssecuritysdk/v2/model/LocNodeModel;->a:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Liqm;-><init>()V

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/rdssecuritysdk/v2/model/LocNodeModel;->b:Ljava/util/Map;

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Lcom/alipay/rdssecuritysdk/v2/model/LocNodeModel;-><init>()V

    .line 53
    invoke-static {}, Lito;->a()Lito;

    .line 54
    invoke-static {}, Litq;->a()Litq;

    .line 55
    invoke-static/range {p1 .. p1}, Litr;->a(Landroid/content/Context;)Litr;

    move-result-object v7

    .line 57
    .local v7, "locationInfo":Litr;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/rdssecuritysdk/v2/model/LocNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v16, "active"

    .line 1000
    iget-object v14, v7, Litr;->f:Ljava/lang/String;

    .line 57
    invoke-static {v14}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    const-string/jumbo v14, "false"

    :goto_0
    move-object/from16 v0, v16

    invoke-interface {v15, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2000
    iget-object v2, v7, Litr;->d:Ljava/lang/String;

    .line 3000
    .local v2, "bssid":Ljava/lang/String;
    iget-object v4, v7, Litr;->j:Ljava/lang/String;

    .line 4000
    .local v4, "cellId":Ljava/lang/String;
    iget-object v6, v7, Litr;->c:Ljava/lang/String;

    .line 5000
    .local v6, "latitude":Ljava/lang/String;
    iget-object v5, v7, Litr;->k:Ljava/lang/String;

    .line 6000
    .local v5, "lac":Ljava/lang/String;
    iget-object v8, v7, Litr;->b:Ljava/lang/String;

    .line 7000
    .local v8, "longitude":Ljava/lang/String;
    iget-object v9, v7, Litr;->h:Ljava/lang/String;

    .line 8000
    .local v9, "mcc":Ljava/lang/String;
    iget-object v10, v7, Litr;->i:Ljava/lang/String;

    .line 9000
    .local v10, "mnc":Ljava/lang/String;
    iget-object v12, v7, Litr;->e:Ljava/lang/String;

    .line 10000
    .local v12, "ssid":Ljava/lang/String;
    iget-object v13, v7, Litr;->g:Ljava/lang/String;

    .line 68
    .local v13, "wifiStrength":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lito;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, "carrier":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Litq;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 71
    .local v11, "nettype":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/rdssecuritysdk/v2/model/LocNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v15, "bssid"

    invoke-static {v2}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_0

    const-string/jumbo v2, ""

    .end local v2    # "bssid":Ljava/lang/String;
    :cond_0
    invoke-interface {v14, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/rdssecuritysdk/v2/model/LocNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v15, "cid"

    invoke-static {v4}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    const-string/jumbo v4, ""

    .end local v4    # "cellId":Ljava/lang/String;
    :cond_1
    invoke-interface {v14, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/rdssecuritysdk/v2/model/LocNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v15, "omac"

    new-instance v16, Lorg/json/JSONArray;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONArray;-><init>()V

    invoke-interface/range {v14 .. v16}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/rdssecuritysdk/v2/model/LocNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v15, "la"

    invoke-static {v6}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2

    const-string/jumbo v6, ""

    .end local v6    # "latitude":Ljava/lang/String;
    :cond_2
    invoke-interface {v14, v15, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/rdssecuritysdk/v2/model/LocNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v15, "lac"

    invoke-static {v5}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    const-string/jumbo v5, ""

    .end local v5    # "lac":Ljava/lang/String;
    :cond_3
    invoke-interface {v14, v15, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/rdssecuritysdk/v2/model/LocNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v15, "lo"

    invoke-static {v8}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_4

    const-string/jumbo v8, ""

    .end local v8    # "longitude":Ljava/lang/String;
    :cond_4
    invoke-interface {v14, v15, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/rdssecuritysdk/v2/model/LocNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v15, "mcc"

    invoke-static {v9}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_5

    const-string/jumbo v9, ""

    .end local v9    # "mcc":Ljava/lang/String;
    :cond_5
    invoke-interface {v14, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/rdssecuritysdk/v2/model/LocNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v15, "mnc"

    invoke-static {v10}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_6

    const-string/jumbo v10, ""

    .end local v10    # "mnc":Ljava/lang/String;
    :cond_6
    invoke-interface {v14, v15, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/rdssecuritysdk/v2/model/LocNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v15, "acc"

    const-string/jumbo v16, ""

    invoke-interface/range {v14 .. v16}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/rdssecuritysdk/v2/model/LocNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v15, "ssid"

    invoke-static {v12}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_7

    const-string/jumbo v12, ""

    .end local v12    # "ssid":Ljava/lang/String;
    :cond_7
    invoke-interface {v14, v15, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/rdssecuritysdk/v2/model/LocNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v15, "strength"

    invoke-static {v13}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_8

    const-string/jumbo v13, ""

    .end local v13    # "wifiStrength":Ljava/lang/String;
    :cond_8
    invoke-interface {v14, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/rdssecuritysdk/v2/model/LocNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v15, "carrier"

    invoke-static {v3}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_9

    const-string/jumbo v3, ""

    .end local v3    # "carrier":Ljava/lang/String;
    :cond_9
    invoke-interface {v14, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/rdssecuritysdk/v2/model/LocNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v15, "nettype"

    invoke-static {v11}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_a

    const-string/jumbo v11, ""

    .end local v11    # "nettype":Ljava/lang/String;
    :cond_a
    invoke-interface {v14, v15, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/rdssecuritysdk/v2/model/LocNodeModel;->b:Ljava/util/Map;

    const-string/jumbo v15, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-interface/range {v14 .. v16}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void

    .line 57
    :cond_b
    const-string/jumbo v14, "true"

    goto/16 :goto_0
.end method
