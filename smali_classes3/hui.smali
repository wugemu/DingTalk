.class public final Lhui;
.super Ljava/lang/Object;
.source "UTRestUrlWrapper.java"


# static fields
.field static a:Z

.field static b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lhui;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "aValue"    # Ljava/lang/String;

    .prologue
    .line 141
    if-nez p0, :cond_0

    .line 142
    const-string/jumbo p0, ""

    .line 149
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    return-object p0

    .line 145
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    :try_start_0
    const-string/jumbo v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .restart local v0    # "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 21
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "pUrlQueryStr"    # Ljava/lang/String;
    .param p2, "pSignQueryStr"    # Ljava/lang/String;
    .param p3, "pSignDataStr"    # Ljava/lang/String;
    .param p4, "aContext"    # Landroid/content/Context;
    .param p5, "aAppkey"    # Ljava/lang/String;
    .param p6, "aChannel"    # Ljava/lang/String;
    .param p7, "aAppVersion"    # Ljava/lang/String;
    .param p8, "aPlatform"    # Ljava/lang/String;
    .param p9, "aUtdid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 87
    move-object/from16 v4, p5

    .line 88
    .local v4, "lAppkey":Ljava/lang/String;
    move-object/from16 v5, p6

    .line 89
    .local v5, "lChannel":Ljava/lang/String;
    move-object/from16 v3, p7

    .line 90
    .local v3, "lAppVersion":Ljava/lang/String;
    move-object/from16 v7, p8

    .line 91
    .local v7, "lPlatform":Ljava/lang/String;
    const-string/jumbo v9, "4.1.0"

    .line 92
    .local v9, "lSdkVersion":Ljava/lang/String;
    move-object/from16 v12, p9

    .line 95
    .local v12, "lUtdid":Ljava/lang/String;
    const-string/jumbo v16, "3.0"

    .line 96
    .local v16, "v":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    .line 99
    .local v15, "t":Ljava/lang/String;
    const-string/jumbo v13, ""

    .line 100
    .local v13, "lisSecureflag":Ljava/lang/String;
    const-string/jumbo v10, ""

    .line 103
    .local v10, "lSignValue":Ljava/lang/String;
    sget-boolean v17, Lhui;->a:Z

    if-eqz v17, :cond_1

    sget-object v17, Lhui;->b:Landroid/content/Context;

    if-eqz v17, :cond_1

    .line 105
    :try_start_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    if-nez p3, :cond_0

    const-string/jumbo p3, ""

    .end local p3    # "pSignDataStr":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 109
    .local v14, "ltoBeSignedStr":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lhty;->a([B)Ljava/lang/String;

    move-result-object v14

    .line 110
    new-instance v8, Lhuj;

    sget-object v17, Lhui;->b:Landroid/content/Context;

    move-object/from16 v0, v17

    move-object/from16 v1, p5

    invoke-direct {v8, v0, v1}, Lhuj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    .local v8, "lRequestAuthentication":Lhuj;
    invoke-virtual {v8, v14}, Lhuj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 114
    invoke-static {v9}, Lhua;->b(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 115
    const-string/jumbo v13, "1"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v8    # "lRequestAuthentication":Lhuj;
    .end local v14    # "ltoBeSignedStr":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string/jumbo v11, ""

    .line 124
    .local v11, "lUrlQueryStr":Ljava/lang/String;
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lhua;->a(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 125
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "&"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 127
    :cond_2
    const-string/jumbo v17, "%s?%sak=%s&av=%s&c=%s&v=%s&s=%s&d=%s&sv=%s&p=%s&t=%s&u=%s&is=%s"

    const/16 v18, 0xd

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object p0, v18, v19

    const/16 v19, 0x1

    aput-object v11, v18, v19

    const/16 v19, 0x2

    .line 128
    invoke-static {v4}, Lhui;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x3

    invoke-static {v3}, Lhui;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x4

    invoke-static {v5}, Lhui;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x5

    invoke-static/range {v16 .. v16}, Lhui;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x6

    .line 129
    invoke-static {v10}, Lhui;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x7

    invoke-static {v12}, Lhui;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x8

    aput-object v9, v18, v19

    const/16 v19, 0x9

    aput-object v7, v18, v19

    const/16 v19, 0xa

    aput-object v15, v18, v19

    const/16 v19, 0xb

    const-string/jumbo v20, ""

    aput-object v20, v18, v19

    const/16 v19, 0xc

    aput-object v13, v18, v19

    .line 127
    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 131
    .local v6, "lNewUrl":Ljava/lang/String;
    return-object v6

    .line 117
    .end local v6    # "lNewUrl":Ljava/lang/String;
    .end local v11    # "lUrlQueryStr":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 118
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v17, "security sdk signed"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lhtj;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p0, "pUrl"    # Ljava/lang/String;
    .param p2, "aContext"    # Landroid/content/Context;
    .param p3, "aAppkey"    # Ljava/lang/String;
    .param p4, "aChannel"    # Ljava/lang/String;
    .param p5, "aAppVersion"    # Ljava/lang/String;
    .param p6, "aPlatform"    # Ljava/lang/String;
    .param p7, "aSdkVersion"    # Ljava/lang/String;
    .param p8, "aUtdid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "pDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, ""

    .line 51
    .local v4, "lSignDataStr":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 52
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    .line 54
    .local v12, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v1

    new-array v13, v1, [Ljava/lang/String;

    .line 55
    .local v13, "lKeysArr":[Ljava/lang/String;
    invoke-interface {v12, v13}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 57
    invoke-static {}, Lhuc;->a()Lhuc;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v13, v2}, Lhuc;->a([Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v13

    .line 59
    array-length v3, v13

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v11, v13, v2

    .line 60
    .local v11, "key":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v15, v1

    check-cast v15, [B

    .line 61
    .local v15, "lValue":[B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v15}, Lhty;->a([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 59
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 66
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13    # "lKeysArr":[Ljava/lang/String;
    .end local v15    # "lValue":[B
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    :try_start_0
    invoke-static/range {v1 .. v10}, Lhui;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 73
    .local v14, "lUrl":Ljava/lang/String;
    :goto_1
    return-object v14

    .line 70
    .end local v14    # "lUrl":Ljava/lang/String;
    :catch_0
    move-exception v1

    invoke-static {}, Lhub;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    invoke-static/range {v1 .. v10}, Lhui;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "lUrl":Ljava/lang/String;
    goto :goto_1
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    sput-boolean v0, Lhui;->a:Z

    .line 36
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    sput-object p0, Lhui;->b:Landroid/content/Context;

    .line 40
    return-void
.end method
