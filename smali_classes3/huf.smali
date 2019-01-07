.class public final Lhuf;
.super Ljava/lang/Object;
.source "UTReqDataBuilder.java"


# static fields
.field private static a:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lhuf;->a:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Lhue;
    .locals 47
    .param p0, "URL"    # Ljava/lang/String;
    .param p1, "aContext"    # Landroid/content/Context;
    .param p3, "aTimestamp"    # J
    .param p5, "aPage"    # Ljava/lang/String;
    .param p6, "aEventId"    # I
    .param p7, "aArg1"    # Ljava/lang/Object;
    .param p8, "aArg2"    # Ljava/lang/Object;
    .param p9, "aArg3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lhue;"
        }
    .end annotation

    .prologue
    .line 66
    .local p2, "aData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p10, "extData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p6, :cond_0

    .line 67
    const/16 v31, 0x0

    .line 172
    :goto_0
    return-object v31

    .line 70
    :cond_0
    const-wide/16 v44, 0x0

    cmp-long v2, p3, v44

    if-lez v2, :cond_2

    move-wide/from16 v32, p3

    .line 71
    .local v32, "lTimestamp":J
    :goto_1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, v32

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 73
    .local v28, "lRecordTimestamp":Ljava/lang/String;
    invoke-static/range {p5 .. p5}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 74
    .local v27, "lPage":Ljava/lang/String;
    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 75
    .local v26, "lEventId":Ljava/lang/String;
    invoke-static/range {p7 .. p7}, Lhua;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 76
    .local v21, "lArg1":Ljava/lang/String;
    invoke-static/range {p8 .. p8}, Lhua;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 77
    .local v22, "lArg2":Ljava/lang/String;
    invoke-static/range {p9 .. p9}, Lhua;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 78
    .local v23, "lArg3":Ljava/lang/String;
    invoke-static/range {p10 .. p10}, Lhua;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 80
    .local v24, "lArgs":Ljava/lang/String;
    const-string/jumbo v2, "IMEI"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 81
    .local v19, "imei":Ljava/lang/String;
    const-string/jumbo v2, "IMSI"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 82
    .local v20, "imsi":Ljava/lang/String;
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v2}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 83
    .local v15, "brand":Ljava/lang/String;
    const-string/jumbo v2, "CPU"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    invoke-static/range {v19 .. v19}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v2}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 86
    .local v17, "deviceModel":Ljava/lang/String;
    const-string/jumbo v2, "RESOLUTION"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 87
    .local v40, "resolution":Ljava/lang/String;
    const-string/jumbo v2, "CARRIER"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 88
    .local v16, "carrier":Ljava/lang/String;
    const-string/jumbo v2, "ACCESS"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 89
    .local v12, "access":Ljava/lang/String;
    const-string/jumbo v2, "ACCESS_SUBTYPE"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 90
    .local v13, "accessSubType":Ljava/lang/String;
    const-string/jumbo v2, "APP_KEY"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 91
    .local v5, "appKey":Ljava/lang/String;
    const-string/jumbo v2, "APP_VERSION"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 92
    .local v7, "appVersion":Ljava/lang/String;
    const-string/jumbo v2, "CHANNEL"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, "channel":Ljava/lang/String;
    const-string/jumbo v2, "USERNICK"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 95
    .local v35, "longLoginUserNick":Ljava/lang/String;
    const-string/jumbo v2, "USERNICK"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 97
    .local v43, "userNick":Ljava/lang/String;
    const-string/jumbo v2, "COUNTRY"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    const-string/jumbo v2, "LANGUAGE"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 99
    .local v34, "language":Ljava/lang/String;
    const-string/jumbo v2, "APP_ID"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 102
    .local v14, "appId":Ljava/lang/String;
    const-string/jumbo v8, "a"

    .line 103
    .local v8, "os":Ljava/lang/String;
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v2}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 104
    .local v36, "osVersion":Ljava/lang/String;
    const-string/jumbo v42, "mini"

    .line 105
    .local v42, "sdkType":Ljava/lang/String;
    const-string/jumbo v41, "1.0"

    .line 106
    .local v41, "sdkReleaseVersion":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v44, Lhuf;->a:J

    move-wide/from16 v0, v44

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 107
    const-string/jumbo v2, "UTDID"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 108
    .local v10, "reserve2":Ljava/lang/String;
    const-string/jumbo v37, "-"

    .line 109
    .local v37, "reserve3":Ljava/lang/String;
    const-string/jumbo v38, "-"

    .line 110
    .local v38, "reserve4":Ljava/lang/String;
    const-string/jumbo v39, "-"

    .line 112
    .local v39, "reserve5":Ljava/lang/String;
    const-string/jumbo v25, ""

    .line 113
    .local v25, "lBundleVersion":Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lhua;->a(Ljava/lang/CharSequence;)Z

    .line 118
    if-eqz v14, :cond_1

    const-string/jumbo v2, "aliyunos"

    invoke-virtual {v14, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 119
    const-string/jumbo v8, "y"

    .line 122
    :cond_1
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 123
    .local v11, "aLogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->IMEI:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-interface {v11, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->IMSI:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-interface {v11, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->BRAND:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->DEVICE_MODEL:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-interface {v11, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->RESOLUTION:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v40

    invoke-interface {v11, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->CARRIER:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v11, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->ACCESS:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->ACCESS_SUBTYPE:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->CHANNEL:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->APPKEY:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->APPVERSION:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->LL_USERNICK:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v35

    invoke-interface {v11, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->USERNICK:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v43

    invoke-interface {v11, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->LL_USERID:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "-"

    invoke-interface {v11, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->USERID:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "-"

    invoke-interface {v11, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->LANGUAGE:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v34

    invoke-interface {v11, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->OS:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->OSVERSION:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-interface {v11, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->SDKVERSION:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v41

    invoke-interface {v11, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->START_SESSION_TIMESTAMP:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v44, Lhuf;->a:J

    move-wide/from16 v0, v44

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->UTDID:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->SDKTYPE:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v42

    invoke-interface {v11, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->RESERVE2:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->RESERVE3:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v37

    invoke-interface {v11, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->RESERVE4:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v38

    invoke-interface {v11, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->RESERVE5:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v39

    invoke-interface {v11, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->RESERVES:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "-"

    invoke-interface {v11, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->RECORD_TIMESTAMP:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-interface {v11, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->PAGE:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-interface {v11, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->EVENTID:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-interface {v11, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->ARG1:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-interface {v11, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->ARG2:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-interface {v11, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->ARG3:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-interface {v11, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v2, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->ARGS:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-interface {v11, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-static {v11}, Lhuf;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v29

    .line 1254
    .local v29, "lReqData":Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lhua;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1255
    const/4 v3, 0x0

    .line 161
    .local v3, "lBReqData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_2
    new-instance v31, Lhue;

    invoke-direct/range {v31 .. v31}, Lhue;-><init>()V

    .line 162
    .local v31, "lResult":Lhue;
    const-string/jumbo v9, ""

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    invoke-static/range {v2 .. v10}, Lhui;->a(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 2011
    .local v30, "lReqUrl":Ljava/lang/String;
    move-object/from16 v0, v30

    move-object/from16 v1, v31

    iput-object v0, v1, Lhue;->a:Ljava/lang/String;

    .line 2019
    move-object/from16 v0, v31

    iput-object v3, v0, Lhue;->b:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 169
    .end local v3    # "lBReqData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "appKey":Ljava/lang/String;
    .end local v6    # "channel":Ljava/lang/String;
    .end local v7    # "appVersion":Ljava/lang/String;
    .end local v8    # "os":Ljava/lang/String;
    .end local v10    # "reserve2":Ljava/lang/String;
    .end local v11    # "aLogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "access":Ljava/lang/String;
    .end local v13    # "accessSubType":Ljava/lang/String;
    .end local v14    # "appId":Ljava/lang/String;
    .end local v15    # "brand":Ljava/lang/String;
    .end local v16    # "carrier":Ljava/lang/String;
    .end local v17    # "deviceModel":Ljava/lang/String;
    .end local v19    # "imei":Ljava/lang/String;
    .end local v20    # "imsi":Ljava/lang/String;
    .end local v21    # "lArg1":Ljava/lang/String;
    .end local v22    # "lArg2":Ljava/lang/String;
    .end local v23    # "lArg3":Ljava/lang/String;
    .end local v24    # "lArgs":Ljava/lang/String;
    .end local v25    # "lBundleVersion":Ljava/lang/String;
    .end local v26    # "lEventId":Ljava/lang/String;
    .end local v27    # "lPage":Ljava/lang/String;
    .end local v28    # "lRecordTimestamp":Ljava/lang/String;
    .end local v29    # "lReqData":Ljava/lang/String;
    .end local v30    # "lReqUrl":Ljava/lang/String;
    .end local v31    # "lResult":Lhue;
    .end local v32    # "lTimestamp":J
    .end local v34    # "language":Ljava/lang/String;
    .end local v35    # "longLoginUserNick":Ljava/lang/String;
    .end local v36    # "osVersion":Ljava/lang/String;
    .end local v37    # "reserve3":Ljava/lang/String;
    .end local v38    # "reserve4":Ljava/lang/String;
    .end local v39    # "reserve5":Ljava/lang/String;
    .end local v40    # "resolution":Ljava/lang/String;
    .end local v41    # "sdkReleaseVersion":Ljava/lang/String;
    .end local v42    # "sdkType":Ljava/lang/String;
    .end local v43    # "userNick":Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 170
    .local v18, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "UTRestAPI buildTracePostReqDataObj catch!"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 70
    .end local v18    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    goto/16 :goto_1

    .line 1257
    .restart local v5    # "appKey":Ljava/lang/String;
    .restart local v6    # "channel":Ljava/lang/String;
    .restart local v7    # "appVersion":Ljava/lang/String;
    .restart local v8    # "os":Ljava/lang/String;
    .restart local v10    # "reserve2":Ljava/lang/String;
    .restart local v11    # "aLogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v12    # "access":Ljava/lang/String;
    .restart local v13    # "accessSubType":Ljava/lang/String;
    .restart local v14    # "appId":Ljava/lang/String;
    .restart local v15    # "brand":Ljava/lang/String;
    .restart local v16    # "carrier":Ljava/lang/String;
    .restart local v17    # "deviceModel":Ljava/lang/String;
    .restart local v19    # "imei":Ljava/lang/String;
    .restart local v20    # "imsi":Ljava/lang/String;
    .restart local v21    # "lArg1":Ljava/lang/String;
    .restart local v22    # "lArg2":Ljava/lang/String;
    .restart local v23    # "lArg3":Ljava/lang/String;
    .restart local v24    # "lArgs":Ljava/lang/String;
    .restart local v25    # "lBundleVersion":Ljava/lang/String;
    .restart local v26    # "lEventId":Ljava/lang/String;
    .restart local v27    # "lPage":Ljava/lang/String;
    .restart local v28    # "lRecordTimestamp":Ljava/lang/String;
    .restart local v29    # "lReqData":Ljava/lang/String;
    .restart local v32    # "lTimestamp":J
    .restart local v34    # "language":Ljava/lang/String;
    .restart local v35    # "longLoginUserNick":Ljava/lang/String;
    .restart local v36    # "osVersion":Ljava/lang/String;
    .restart local v37    # "reserve3":Ljava/lang/String;
    .restart local v38    # "reserve4":Ljava/lang/String;
    .restart local v39    # "reserve5":Ljava/lang/String;
    .restart local v40    # "resolution":Ljava/lang/String;
    .restart local v41    # "sdkReleaseVersion":Ljava/lang/String;
    .restart local v42    # "sdkType":Ljava/lang/String;
    .restart local v43    # "userNick":Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1258
    const-string/jumbo v4, "stm_x"

    move-object/from16 v0, v29

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    invoke-static {v2}, Lhuf;->b(Ljava/util/Map;)Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_2
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {p0}, Lhua;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 25
    const-string/jumbo p0, "-"

    .line 42
    .end local p0    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 27
    .restart local p0    # "value":Ljava/lang/String;
    :cond_1
    if-eqz p0, :cond_0

    const-string/jumbo v3, ""

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 32
    .local v2, "strNoBlank":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 33
    .local v1, "str":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_3

    .line 34
    aget-char v3, v1, v0

    const/16 v4, 0xa

    if-eq v3, v4, :cond_2

    aget-char v3, v1, v0

    const/16 v4, 0xd

    if-eq v3, v4, :cond_2

    aget-char v3, v1, v0

    const/16 v4, 0x9

    if-eq v3, v4, :cond_2

    aget-char v3, v1, v0

    const/16 v4, 0x7c

    if-eq v3, v4, :cond_2

    .line 37
    aget-char v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 40
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 14
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
    .line 183
    .local p0, "aLogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v5, p0

    .line 184
    .local v5, "lLogMapNew":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 185
    .local v7, "lSb":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->values()[Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    move-result-object v10

    array-length v11, v10

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v11, :cond_1

    aget-object v1, v10, v9

    .line 186
    .local v1, "lEnumKey":Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;
    sget-object v12, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->ARGS:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    if-eq v1, v12, :cond_1

    .line 190
    const/4 v8, 0x0

    .line 191
    .local v8, "lV":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 192
    invoke-virtual {v1}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lhua;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 193
    invoke-virtual {v1}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_0
    invoke-static {v8}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string/jumbo v13, "||"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 199
    .end local v1    # "lEnumKey":Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;
    .end local v8    # "lV":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x1

    .line 200
    .local v2, "lIsFirstArgFlag":Z
    sget-object v9, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->ARGS:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v9}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 201
    sget-object v9, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->ARGS:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v9}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lhua;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "lArgs":Ljava/lang/String;
    invoke-static {v0}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    sget-object v9, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->ARGS:Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;

    invoke-virtual {v9}, Lcom/alibaba/motu/crashreporter/utrestapi/UTFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const/4 v2, 0x0

    .line 207
    .end local v0    # "lArgs":Ljava/lang/String;
    :cond_2
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 208
    .local v3, "lItorKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 209
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 210
    .local v4, "lKey":Ljava/lang/String;
    const/4 v8, 0x0

    .line 211
    .restart local v8    # "lV":Ljava/lang/String;
    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 212
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lhua;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 215
    :cond_3
    if-eqz v2, :cond_5

    .line 216
    const-string/jumbo v9, "StackTrace"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 217
    const-string/jumbo v9, "StackTrace=====>"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    :goto_2
    const/4 v2, 0x0

    goto :goto_1

    .line 219
    :cond_4
    invoke-static {v4}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string/jumbo v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 224
    :cond_5
    const-string/jumbo v9, "StackTrace"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 225
    const-string/jumbo v9, ",StackTrace=====>"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 227
    :cond_6
    const-string/jumbo v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-static {v4}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string/jumbo v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 233
    .end local v4    # "lKey":Ljava/lang/String;
    .end local v8    # "lV":Ljava/lang/String;
    :cond_7
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 234
    .local v6, "lLogResult":Ljava/lang/String;
    invoke-static {v6}, Lhua;->a(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 235
    const-string/jumbo v9, "||"

    invoke-virtual {v6, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 236
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 239
    :cond_8
    return-object v6
.end method

.method public static b(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Lhue;
    .locals 57
    .param p0, "URL"    # Ljava/lang/String;
    .param p1, "aContext"    # Landroid/content/Context;
    .param p3, "aTimestamp"    # J
    .param p5, "aPage"    # Ljava/lang/String;
    .param p6, "aEventId"    # I
    .param p7, "aArg1"    # Ljava/lang/Object;
    .param p8, "aArg2"    # Ljava/lang/Object;
    .param p9, "aArg3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lhue;"
        }
    .end annotation

    .prologue
    .line 329
    .local p2, "aData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p10, "extData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p6, :cond_0

    .line 330
    const/16 v35, 0x0

    .line 441
    :goto_0
    return-object v35

    .line 333
    :cond_0
    const-wide/16 v54, 0x0

    cmp-long v2, p3, v54

    if-lez v2, :cond_2

    move-wide/from16 v38, p3

    .line 334
    .local v38, "lTimestamp":J
    :goto_1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, v38

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 335
    .local v32, "lRecordTimestamp":Ljava/lang/String;
    new-instance v49, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v49

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 336
    .local v49, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v49

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    .line 337
    .local v31, "lRecordDate":Ljava/lang/String;
    invoke-static/range {p5 .. p5}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 338
    .local v30, "lPage":Ljava/lang/String;
    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 339
    .local v29, "lEventId":Ljava/lang/String;
    invoke-static/range {p7 .. p7}, Lhua;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 340
    .local v24, "lArg1":Ljava/lang/String;
    invoke-static/range {p8 .. p8}, Lhua;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 341
    .local v25, "lArg2":Ljava/lang/String;
    invoke-static/range {p9 .. p9}, Lhua;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 342
    .local v26, "lArg3":Ljava/lang/String;
    invoke-static/range {p10 .. p10}, Lhua;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 343
    .local v27, "lArgs":Ljava/lang/String;
    const-string/jumbo v41, "5.0.1"

    .line 344
    .local v41, "ndkReleaseVersion":Ljava/lang/String;
    const-string/jumbo v2, "IMEI"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 345
    .local v22, "imei":Ljava/lang/String;
    const-string/jumbo v2, "IMSI"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 346
    .local v23, "imsi":Ljava/lang/String;
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v2}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 347
    .local v14, "brand":Ljava/lang/String;
    const-string/jumbo v2, "CPU"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 348
    .local v18, "cpu":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 349
    .local v19, "deviceId":Ljava/lang/String;
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v2}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 350
    .local v20, "deviceModel":Ljava/lang/String;
    const-string/jumbo v2, "RESOLUTION"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 351
    .local v48, "resolution":Ljava/lang/String;
    const-string/jumbo v2, "CARRIER"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 352
    .local v16, "carrier":Ljava/lang/String;
    const-string/jumbo v2, "ACCESS"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 353
    .local v11, "access":Ljava/lang/String;
    const-string/jumbo v2, "ACCESS_SUBTYPE"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 354
    .local v12, "accessSubType":Ljava/lang/String;
    const-string/jumbo v2, "APP_KEY"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 355
    .local v5, "appKey":Ljava/lang/String;
    const-string/jumbo v2, "APP_VERSION"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 356
    .local v7, "appVersion":Ljava/lang/String;
    const-string/jumbo v2, "CHANNEL"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 358
    .local v6, "channel":Ljava/lang/String;
    const-string/jumbo v2, "USERNICK"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 359
    .local v40, "longLoginUserNick":Ljava/lang/String;
    const-string/jumbo v2, "USERNICK"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 360
    .local v53, "userNick":Ljava/lang/String;
    const-string/jumbo v43, "-"

    .line 361
    .local v43, "phoneNumber":Ljava/lang/String;
    const-string/jumbo v2, "COUNTRY"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 362
    .local v17, "country":Ljava/lang/String;
    const-string/jumbo v2, "LANGUAGE"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 363
    .local v37, "language":Ljava/lang/String;
    const-string/jumbo v2, "APP_ID"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 364
    .local v13, "appId":Ljava/lang/String;
    const-string/jumbo v8, "Android"

    .line 366
    .local v8, "os":Ljava/lang/String;
    if-eqz v13, :cond_1

    const-string/jumbo v2, "aliyunos"

    invoke-virtual {v13, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 367
    const-string/jumbo v8, "aliyunos"

    .line 369
    :cond_1
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v2}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 370
    .local v42, "osVersion":Ljava/lang/String;
    const-string/jumbo v51, "mini"

    .line 371
    .local v51, "sdkType":Ljava/lang/String;
    const-string/jumbo v50, "1.0"

    .line 372
    .local v50, "sdkReleaseVersion":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v54, Lhuf;->a:J

    move-wide/from16 v0, v54

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    .line 373
    .local v44, "reserve1":Ljava/lang/String;
    const-string/jumbo v2, "UTDID"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lhuf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 374
    .local v10, "reserve2":Ljava/lang/String;
    const-string/jumbo v45, "-"

    .line 375
    .local v45, "reserve3":Ljava/lang/String;
    const-string/jumbo v46, "-"

    .line 376
    .local v46, "reserve4":Ljava/lang/String;
    const-string/jumbo v47, "-"

    .line 378
    .local v47, "reserve5":Ljava/lang/String;
    const-string/jumbo v28, ""

    .line 379
    .local v28, "lBundleVersion":Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Lhua;->a(Ljava/lang/CharSequence;)Z

    .line 383
    new-instance v36, Ljava/lang/StringBuffer;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuffer;-><init>()V

    .line 386
    .local v36, "lSb":Ljava/lang/StringBuffer;
    const-string/jumbo v52, "||"

    .line 387
    .local v52, "split":Ljava/lang/String;
    move-object/from16 v0, v36

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v52

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 388
    move-object/from16 v0, v36

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v52

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 389
    move-object/from16 v0, v36

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v52

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 390
    move-object/from16 v0, v36

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v52

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 391
    move-object/from16 v0, v36

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v52

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 392
    move-object/from16 v0, v36

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v52

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    move-object/from16 v0, v36

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v52

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 394
    move-object/from16 v0, v36

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v52

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 395
    move-object/from16 v0, v36

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v52

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 396
    move-object/from16 v0, v36

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v52

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 397
    move-object/from16 v0, v36

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v52

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 398
    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v52

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 399
    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v52

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 400
    move-object/from16 v0, v36

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v52

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 401
    move-object/from16 v0, v36

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v52

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 402
    move-object/from16 v0, v36

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v52

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 403
    move-object/from16 v0, v36

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v52

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 404
    move-object/from16 v0, v36

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v52

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 405
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v52

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 406
    move-object/from16 v0, v36

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v52

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 407
    move-object/from16 v0, v36

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v52

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 408
    move-object/from16 v0, v36

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v52

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 409
    move-object/from16 v0, v36

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v52

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 410
    move-object/from16 v0, v36

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v52

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 411
    move-object/from16 v0, v36

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v52

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 412
    move-object/from16 v0, v36

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v52

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 413
    move-object/from16 v0, v36

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v52

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 414
    move-object/from16 v0, v36

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v52

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 415
    const-string/jumbo v2, "-"

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v52

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 416
    move-object/from16 v0, v36

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v52

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 417
    move-object/from16 v0, v36

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v52

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 418
    move-object/from16 v0, v36

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v52

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 419
    move-object/from16 v0, v36

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v52

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 420
    move-object/from16 v0, v36

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v52

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 421
    move-object/from16 v0, v36

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v52

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    move-object/from16 v0, v36

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, v52

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 423
    move-object/from16 v0, v36

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 425
    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v33

    .line 426
    .local v33, "lReqData":Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 427
    .local v3, "lBReqData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    .line 428
    .local v15, "byteReqData":[B
    const-string/jumbo v2, "stm_x"

    invoke-interface {v3, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    new-instance v35, Lhue;

    invoke-direct/range {v35 .. v35}, Lhue;-><init>()V

    .line 431
    .local v35, "lResult":Lhue;
    const-string/jumbo v9, ""

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    invoke-static/range {v2 .. v10}, Lhui;->a(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 3011
    .local v34, "lReqUrl":Ljava/lang/String;
    move-object/from16 v0, v34

    move-object/from16 v1, v35

    iput-object v0, v1, Lhue;->a:Ljava/lang/String;

    .line 3019
    move-object/from16 v0, v35

    iput-object v3, v0, Lhue;->b:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 438
    .end local v3    # "lBReqData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "appKey":Ljava/lang/String;
    .end local v6    # "channel":Ljava/lang/String;
    .end local v7    # "appVersion":Ljava/lang/String;
    .end local v8    # "os":Ljava/lang/String;
    .end local v10    # "reserve2":Ljava/lang/String;
    .end local v11    # "access":Ljava/lang/String;
    .end local v12    # "accessSubType":Ljava/lang/String;
    .end local v13    # "appId":Ljava/lang/String;
    .end local v14    # "brand":Ljava/lang/String;
    .end local v15    # "byteReqData":[B
    .end local v16    # "carrier":Ljava/lang/String;
    .end local v17    # "country":Ljava/lang/String;
    .end local v18    # "cpu":Ljava/lang/String;
    .end local v19    # "deviceId":Ljava/lang/String;
    .end local v20    # "deviceModel":Ljava/lang/String;
    .end local v22    # "imei":Ljava/lang/String;
    .end local v23    # "imsi":Ljava/lang/String;
    .end local v24    # "lArg1":Ljava/lang/String;
    .end local v25    # "lArg2":Ljava/lang/String;
    .end local v26    # "lArg3":Ljava/lang/String;
    .end local v27    # "lArgs":Ljava/lang/String;
    .end local v28    # "lBundleVersion":Ljava/lang/String;
    .end local v29    # "lEventId":Ljava/lang/String;
    .end local v30    # "lPage":Ljava/lang/String;
    .end local v31    # "lRecordDate":Ljava/lang/String;
    .end local v32    # "lRecordTimestamp":Ljava/lang/String;
    .end local v33    # "lReqData":Ljava/lang/String;
    .end local v34    # "lReqUrl":Ljava/lang/String;
    .end local v35    # "lResult":Lhue;
    .end local v36    # "lSb":Ljava/lang/StringBuffer;
    .end local v37    # "language":Ljava/lang/String;
    .end local v38    # "lTimestamp":J
    .end local v40    # "longLoginUserNick":Ljava/lang/String;
    .end local v41    # "ndkReleaseVersion":Ljava/lang/String;
    .end local v42    # "osVersion":Ljava/lang/String;
    .end local v43    # "phoneNumber":Ljava/lang/String;
    .end local v44    # "reserve1":Ljava/lang/String;
    .end local v45    # "reserve3":Ljava/lang/String;
    .end local v46    # "reserve4":Ljava/lang/String;
    .end local v47    # "reserve5":Ljava/lang/String;
    .end local v48    # "resolution":Ljava/lang/String;
    .end local v49    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v50    # "sdkReleaseVersion":Ljava/lang/String;
    .end local v51    # "sdkType":Ljava/lang/String;
    .end local v52    # "split":Ljava/lang/String;
    .end local v53    # "userNick":Ljava/lang/String;
    :catch_0
    move-exception v21

    .line 439
    .local v21, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "UTRestAPI buildTracePostReqDataObj catch!"

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 441
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 333
    .end local v21    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v38

    goto/16 :goto_1
.end method

.method private static b(Ljava/util/Map;)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "lReqData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 269
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v11

    if-gtz v11, :cond_2

    :cond_0
    move-object v2, v10

    .line 307
    :cond_1
    :goto_0
    return-object v2

    .line 274
    :cond_2
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 275
    .local v2, "lBReqData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 276
    .local v8, "lRDKey":Ljava/lang/String;
    invoke-interface {p0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 277
    .local v9, "lRDValue":Ljava/lang/String;
    invoke-static {v8}, Lhua;->a(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    invoke-static {v9}, Lhua;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v12

    if-nez v12, :cond_3

    .line 278
    const/4 v3, 0x0

    .line 279
    .local v3, "lBaos":Ljava/io/ByteArrayOutputStream;
    const/4 v6, 0x0

    .line 282
    .local v6, "lOutputStream":Ljava/util/zip/GZIPOutputStream;
    :try_start_1
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 283
    .end local v3    # "lBaos":Ljava/io/ByteArrayOutputStream;
    .local v4, "lBaos":Ljava/io/ByteArrayOutputStream;
    :try_start_2
    new-instance v7, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v7, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 284
    .end local v6    # "lOutputStream":Ljava/util/zip/GZIPOutputStream;
    .local v7, "lOutputStream":Ljava/util/zip/GZIPOutputStream;
    :try_start_3
    const-string/jumbo v12, "UTF-8"

    invoke-virtual {v9, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 285
    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 286
    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 288
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 289
    .local v5, "lGZIPResult":[B
    invoke-static {}, Lhub;->b()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Lhtz;->a([BLjava/lang/String;)[B

    move-result-object v1

    .line 291
    .local v1, "lBRC4ReqContent":[B
    invoke-interface {v2, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 293
    .end local v1    # "lBRC4ReqContent":[B
    .end local v5    # "lGZIPResult":[B
    :catch_0
    move-exception v12

    move-object v6, v7

    .end local v7    # "lOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v6    # "lOutputStream":Ljava/util/zip/GZIPOutputStream;
    move-object v3, v4

    .end local v4    # "lBaos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "lBaos":Ljava/io/ByteArrayOutputStream;
    :goto_2
    if-eqz v6, :cond_4

    .line 294
    :try_start_4
    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 297
    :cond_4
    if-eqz v3, :cond_3

    .line 298
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 304
    .end local v2    # "lBReqData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "lBaos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "lOutputStream":Ljava/util/zip/GZIPOutputStream;
    .end local v8    # "lRDKey":Ljava/lang/String;
    .end local v9    # "lRDValue":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 305
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "buildPostRequestMap"

    invoke-static {v11, v0}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v10

    .line 307
    goto :goto_0

    .line 293
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "lBReqData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v3    # "lBaos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "lOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v8    # "lRDKey":Ljava/lang/String;
    .restart local v9    # "lRDValue":Ljava/lang/String;
    :catch_2
    move-exception v12

    goto :goto_2

    .end local v3    # "lBaos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "lBaos":Ljava/io/ByteArrayOutputStream;
    :catch_3
    move-exception v12

    move-object v3, v4

    .end local v4    # "lBaos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "lBaos":Ljava/io/ByteArrayOutputStream;
    goto :goto_2
.end method
