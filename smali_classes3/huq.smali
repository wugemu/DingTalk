.class public final Lhuq;
.super Ljava/lang/Object;
.source "RestReqDataBuilder.java"


# static fields
.field private static a:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lhuq;->a:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-static {p0}, Lhvb;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 33
    const-string/jumbo p0, "-"

    .line 50
    .end local p0    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 35
    .restart local p0    # "value":Ljava/lang/String;
    :cond_1
    if-eqz p0, :cond_0

    const-string/jumbo v3, ""

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 40
    .local v2, "strNoBlank":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 41
    .local v1, "str":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_3

    .line 42
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

    .line 45
    aget-char v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 48
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;
    .locals 49
    .param p0, "userAppKey"    # Ljava/lang/String;
    .param p1, "aTimestamp"    # J
    .param p3, "aPage"    # Ljava/lang/String;
    .param p4, "aEventId"    # I
    .param p5, "aArg1"    # Ljava/lang/Object;
    .param p6, "aArg2"    # Ljava/lang/Object;
    .param p7, "aArg3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
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
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 64
    .local p8, "extData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p4, :cond_0

    .line 65
    const/16 v44, 0x0

    .line 175
    :goto_0
    return-object v44

    .line 69
    :cond_0
    :try_start_0
    invoke-static {}, Lhul;->a()Lhul;

    move-result-object v44

    move-object/from16 v0, v44

    iget-object v0, v0, Lhul;->a:Landroid/content/Context;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lhuw;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v43

    .line 70
    .local v43, "utdid":Ljava/lang/String;
    if-nez v43, :cond_1

    .line 71
    const-string/jumbo v44, "get utdid failure, so build report failure, now return"

    .line 1029
    const-string/jumbo v45, "RestApi"

    move-object/from16 v0, v45

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/16 v44, 0x0

    goto :goto_0

    .line 75
    :cond_1
    invoke-static {}, Lhul;->a()Lhul;

    move-result-object v44

    move-object/from16 v0, v44

    iget-object v0, v0, Lhul;->a:Landroid/content/Context;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lhuw;->b(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v31

    .line 76
    .local v31, "networkStatus":[Ljava/lang/String;
    const/16 v44, 0x0

    aget-object v6, v31, v44

    .line 77
    .local v6, "accessName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 78
    .local v8, "accessSubTypeName":Ljava/lang/String;
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v44, v0

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-le v0, v1, :cond_2

    if-eqz v6, :cond_2

    const-string/jumbo v44, "Wi-Fi"

    move-object/from16 v0, v44

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-nez v44, :cond_2

    .line 79
    const/16 v44, 0x1

    aget-object v8, v31, v44

    .line 82
    :cond_2
    const-wide/16 v44, 0x0

    cmp-long v44, p1, v44

    if-lez v44, :cond_4

    move-wide/from16 v28, p1

    .line 83
    .local v28, "lTimestamp":J
    :goto_1
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v44

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 85
    .local v26, "lRecordTimestamp":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lhuq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 86
    .local v25, "lPage":Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lhuq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 87
    .local v24, "lEventId":Ljava/lang/String;
    invoke-static/range {p5 .. p5}, Lhvb;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lhuq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 88
    .local v19, "lArg1":Ljava/lang/String;
    invoke-static/range {p6 .. p6}, Lhvb;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lhuq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 89
    .local v20, "lArg2":Ljava/lang/String;
    invoke-static/range {p7 .. p7}, Lhvb;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lhuq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 90
    .local v21, "lArg3":Ljava/lang/String;
    invoke-static/range {p8 .. p8}, Lhvb;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lhuq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 92
    .local v22, "lArgs":Ljava/lang/String;
    invoke-static {}, Lhul;->a()Lhul;

    move-result-object v44

    move-object/from16 v0, v44

    iget-object v0, v0, Lhul;->a:Landroid/content/Context;

    move-object/from16 v44, v0

    invoke-static {}, Lhuw;->e()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lhuq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 93
    .local v17, "imei":Ljava/lang/String;
    invoke-static {}, Lhul;->a()Lhul;

    move-result-object v44

    move-object/from16 v0, v44

    iget-object v0, v0, Lhul;->a:Landroid/content/Context;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lhuw;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lhuq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 94
    .local v18, "imsi":Ljava/lang/String;
    sget-object v44, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static/range {v44 .. v44}, Lhuq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 95
    .local v12, "brand":Ljava/lang/String;
    invoke-static {}, Lhuw;->a()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lhuq;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    invoke-static/range {v17 .. v17}, Lhuq;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    sget-object v44, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static/range {v44 .. v44}, Lhuq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 98
    .local v15, "deviceModel":Ljava/lang/String;
    invoke-static {}, Lhuw;->d()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lhuq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 99
    .local v39, "resolution":Ljava/lang/String;
    invoke-static {}, Lhul;->a()Lhul;

    move-result-object v44

    move-object/from16 v0, v44

    iget-object v0, v0, Lhul;->a:Landroid/content/Context;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lhuw;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lhuq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 100
    .local v13, "carrier":Ljava/lang/String;
    invoke-static {v6}, Lhuq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 101
    .local v5, "access":Ljava/lang/String;
    invoke-static {v8}, Lhuq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 102
    .local v7, "accessSubType":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lhuq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 103
    .local v10, "appKey":Ljava/lang/String;
    invoke-static {}, Lhul;->a()Lhul;

    move-result-object v44

    move-object/from16 v0, v44

    iget-object v0, v0, Lhul;->e:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lhuq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 104
    .local v11, "appVersion":Ljava/lang/String;
    invoke-static {}, Lhul;->a()Lhul;

    move-result-object v44

    move-object/from16 v0, v44

    iget-object v0, v0, Lhul;->f:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lhuq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 106
    .local v14, "channel":Ljava/lang/String;
    invoke-static {}, Lhul;->a()Lhul;

    move-result-object v44

    move-object/from16 v0, v44

    iget-object v0, v0, Lhul;->g:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lhuq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 107
    .local v30, "longLoginUserNick":Ljava/lang/String;
    invoke-static {}, Lhul;->a()Lhul;

    move-result-object v44

    move-object/from16 v0, v44

    iget-object v0, v0, Lhul;->g:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lhuq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 109
    .local v42, "userNick":Ljava/lang/String;
    invoke-static {}, Lhuw;->c()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lhuq;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    invoke-static {}, Lhuw;->b()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lhuq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 111
    .local v27, "language":Ljava/lang/String;
    invoke-static {}, Lhul;->a()Lhul;

    move-result-object v44

    move-object/from16 v0, v44

    iget-object v9, v0, Lhul;->b:Ljava/lang/String;

    .line 114
    .local v9, "appId":Ljava/lang/String;
    const-string/jumbo v32, "a"

    .line 115
    .local v32, "os":Ljava/lang/String;
    sget-object v44, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static/range {v44 .. v44}, Lhuq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 116
    .local v33, "osVersion":Ljava/lang/String;
    const-string/jumbo v41, "mini"

    .line 117
    .local v41, "sdkType":Ljava/lang/String;
    const-string/jumbo v40, "1.0"

    .line 118
    .local v40, "sdkReleaseVersion":Ljava/lang/String;
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v46, Lhuq;->a:J

    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 119
    invoke-static/range {v43 .. v43}, Lhuq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 120
    .local v34, "reserve2":Ljava/lang/String;
    const-string/jumbo v35, "-"

    .line 121
    .local v35, "reserve3":Ljava/lang/String;
    const-string/jumbo v36, "-"

    .line 122
    .local v36, "reserve4":Ljava/lang/String;
    const-string/jumbo v37, "-"

    .line 123
    .local v37, "reserve5":Ljava/lang/String;
    invoke-static {}, Lhul;->a()Lhul;

    move-result-object v44

    move-object/from16 v0, v44

    iget-object v0, v0, Lhul;->j:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Lhuq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 125
    .local v38, "reserves":Ljava/lang/String;
    const-string/jumbo v23, ""

    .line 126
    .local v23, "lBundleVersion":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lhvb;->a(Ljava/lang/CharSequence;)Z

    .line 131
    if-eqz v9, :cond_3

    const-string/jumbo v44, "aliyunos"

    move-object/from16 v0, v44

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v44

    if-eqz v44, :cond_3

    .line 132
    const-string/jumbo v32, "y"

    .line 135
    :cond_3
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 136
    .local v4, "aLogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v44, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->IMEI:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual/range {v44 .. v44}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v17

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v44, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->IMSI:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual/range {v44 .. v44}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v18

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v44, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->BRAND:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual/range {v44 .. v44}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-interface {v4, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v44, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->DEVICE_MODEL:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual/range {v44 .. v44}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-interface {v4, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v44, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->RESOLUTION:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual/range {v44 .. v44}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v39

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v44, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->CARRIER:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual/range {v44 .. v44}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-interface {v4, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v44, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->ACCESS:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual/range {v44 .. v44}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v44, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->ACCESS_SUBTYPE:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual/range {v44 .. v44}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-interface {v4, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v44, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->CHANNEL:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual/range {v44 .. v44}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-interface {v4, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v44, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->APPKEY:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual/range {v44 .. v44}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-interface {v4, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v44, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->APPVERSION:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual/range {v44 .. v44}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-interface {v4, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v44, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->LL_USERNICK:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual/range {v44 .. v44}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v30

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v44, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->USERNICK:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual/range {v44 .. v44}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v42

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v44, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->LL_USERID:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual/range {v44 .. v44}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v44

    const-string/jumbo v45, "-"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v44, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->USERID:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual/range {v44 .. v44}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v44

    const-string/jumbo v45, "-"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v44, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->LANGUAGE:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual/range {v44 .. v44}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v27

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v44, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->OS:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual/range {v44 .. v44}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v32

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v44, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->OSVERSION:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual/range {v44 .. v44}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v33

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v44, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->SDKVERSION:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual/range {v44 .. v44}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v40

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v44, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->START_SESSION_TIMESTAMP:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual/range {v44 .. v44}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v44

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v46, Lhuq;->a:J

    invoke-virtual/range {v45 .. v47}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v44, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->UTDID:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual/range {v44 .. v44}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v34

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v44, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->SDKTYPE:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual/range {v44 .. v44}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v41

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v44, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->RESERVE2:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual/range {v44 .. v44}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v34

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v44, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->RESERVE3:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual/range {v44 .. v44}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v35

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v44, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->RESERVE4:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual/range {v44 .. v44}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v36

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v44, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->RESERVE5:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual/range {v44 .. v44}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v37

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v44, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->RESERVES:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual/range {v44 .. v44}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v38

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v44, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->RECORD_TIMESTAMP:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual/range {v44 .. v44}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v26

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v44, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->PAGE:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual/range {v44 .. v44}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v25

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v44, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->EVENTID:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual/range {v44 .. v44}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v24

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v44, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->ARG1:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual/range {v44 .. v44}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v44, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->ARG2:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual/range {v44 .. v44}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v20

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v44, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->ARG3:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual/range {v44 .. v44}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v21

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v44, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->ARGS:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual/range {v44 .. v44}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v22

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-static {v4}, Lhuq;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v44

    goto/16 :goto_0

    .line 82
    .end local v4    # "aLogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "access":Ljava/lang/String;
    .end local v7    # "accessSubType":Ljava/lang/String;
    .end local v9    # "appId":Ljava/lang/String;
    .end local v10    # "appKey":Ljava/lang/String;
    .end local v11    # "appVersion":Ljava/lang/String;
    .end local v12    # "brand":Ljava/lang/String;
    .end local v13    # "carrier":Ljava/lang/String;
    .end local v14    # "channel":Ljava/lang/String;
    .end local v15    # "deviceModel":Ljava/lang/String;
    .end local v17    # "imei":Ljava/lang/String;
    .end local v18    # "imsi":Ljava/lang/String;
    .end local v19    # "lArg1":Ljava/lang/String;
    .end local v20    # "lArg2":Ljava/lang/String;
    .end local v21    # "lArg3":Ljava/lang/String;
    .end local v22    # "lArgs":Ljava/lang/String;
    .end local v23    # "lBundleVersion":Ljava/lang/String;
    .end local v24    # "lEventId":Ljava/lang/String;
    .end local v25    # "lPage":Ljava/lang/String;
    .end local v26    # "lRecordTimestamp":Ljava/lang/String;
    .end local v27    # "language":Ljava/lang/String;
    .end local v28    # "lTimestamp":J
    .end local v30    # "longLoginUserNick":Ljava/lang/String;
    .end local v32    # "os":Ljava/lang/String;
    .end local v33    # "osVersion":Ljava/lang/String;
    .end local v34    # "reserve2":Ljava/lang/String;
    .end local v35    # "reserve3":Ljava/lang/String;
    .end local v36    # "reserve4":Ljava/lang/String;
    .end local v37    # "reserve5":Ljava/lang/String;
    .end local v38    # "reserves":Ljava/lang/String;
    .end local v39    # "resolution":Ljava/lang/String;
    .end local v40    # "sdkReleaseVersion":Ljava/lang/String;
    .end local v41    # "sdkType":Ljava/lang/String;
    .end local v42    # "userNick":Ljava/lang/String;
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v28

    goto/16 :goto_1

    .line 172
    .end local v6    # "accessName":Ljava/lang/String;
    .end local v8    # "accessSubTypeName":Ljava/lang/String;
    .end local v31    # "networkStatus":[Ljava/lang/String;
    .end local v43    # "utdid":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 173
    .local v16, "e":Ljava/lang/Exception;
    const-string/jumbo v44, "UTRestAPI buildTracePostReqDataObj catch!"

    move-object/from16 v0, v44

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lhuy;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    const-string/jumbo v44, ""

    goto/16 :goto_0
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
    .line 186
    .local p0, "aLogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v5, p0

    .line 187
    .local v5, "lLogMapNew":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 188
    .local v7, "lSb":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->values()[Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    move-result-object v10

    array-length v11, v10

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v11, :cond_1

    aget-object v1, v10, v9

    .line 189
    .local v1, "lEnumKey":Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;
    sget-object v12, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->ARGS:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    if-eq v1, v12, :cond_1

    .line 193
    const/4 v8, 0x0

    .line 194
    .local v8, "lV":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 195
    invoke-virtual {v1}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lhvb;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 196
    invoke-virtual {v1}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_0
    invoke-static {v8}, Lhuq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string/jumbo v13, "||"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 202
    .end local v1    # "lEnumKey":Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;
    .end local v8    # "lV":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x1

    .line 203
    .local v2, "lIsFirstArgFlag":Z
    sget-object v9, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->ARGS:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual {v9}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 204
    sget-object v9, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->ARGS:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual {v9}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lhvb;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "lArgs":Ljava/lang/String;
    invoke-static {v0}, Lhuq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 206
    sget-object v9, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->ARGS:Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;

    invoke-virtual {v9}, Lcom/alibaba/motu/tbrest/rest/RestFieldsScheme;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const/4 v2, 0x0

    .line 210
    .end local v0    # "lArgs":Ljava/lang/String;
    :cond_2
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 211
    .local v3, "lItorKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 212
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 213
    .local v4, "lKey":Ljava/lang/String;
    const/4 v8, 0x0

    .line 214
    .restart local v8    # "lV":Ljava/lang/String;
    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 215
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lhvb;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 218
    :cond_3
    if-eqz v2, :cond_5

    .line 219
    const-string/jumbo v9, "StackTrace"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 220
    const-string/jumbo v9, "StackTrace=====>"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    :goto_2
    const/4 v2, 0x0

    goto :goto_1

    .line 222
    :cond_4
    invoke-static {v4}, Lhuq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string/jumbo v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 227
    :cond_5
    const-string/jumbo v9, "StackTrace"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 228
    const-string/jumbo v9, ",StackTrace=====>"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 230
    :cond_6
    const-string/jumbo v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-static {v4}, Lhuq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string/jumbo v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 236
    .end local v4    # "lKey":Ljava/lang/String;
    .end local v8    # "lV":Ljava/lang/String;
    :cond_7
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 237
    .local v6, "lLogResult":Ljava/lang/String;
    invoke-static {v6}, Lhvb;->a(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 238
    const-string/jumbo v9, "||"

    invoke-virtual {v6, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 239
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 242
    :cond_8
    return-object v6
.end method
