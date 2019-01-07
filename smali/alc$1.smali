.class public final Lalc$1;
.super Ljava/lang/Object;
.source "TimeStampAdjustMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lalc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lalc;


# direct methods
.method public constructor <init>(Lalc;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lalc$1;->a:Lalc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    .prologue
    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 37
    .local v6, "now":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lalc$1;->a:Lalc;

    invoke-static {v14}, Lalc;->a(Lalc;)Ljava/lang/String;

    move-result-object v4

    .line 38
    .local v4, "host":Ljava/lang/String;
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v14

    .line 1305
    iget-object v14, v14, Lajw;->c:Landroid/content/Context;

    .line 38
    const-string/jumbo v15, "time_adjust_host"

    invoke-static {v14, v15}, Land;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 39
    .local v13, "userSettingHost":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 40
    move-object v4, v13

    .line 42
    :cond_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lalc$1;->a:Lalc;

    invoke-static {v15}, Lalc;->b(Lalc;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lalc$1;->a:Lalc;

    invoke-static {v15}, Lalc;->c(Lalc;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 43
    .local v12, "url":Ljava/lang/String;
    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v14, v12, v15, v0}, Lamr;->a(ILjava/lang/String;Ljava/util/Map;Z)Lamr$a;

    move-result-object v8

    .line 44
    .local v8, "response":Lamr$a;
    const-string/jumbo v14, "TimeStampAdjustMgr"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string/jumbo v17, "url"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object v12, v15, v16

    const/16 v16, 0x2

    const-string/jumbo v17, "response"

    aput-object v17, v15, v16

    const/16 v16, 0x3

    aput-object v8, v15, v16

    invoke-static {v14, v15}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    iget-object v14, v8, Lamr$a;->b:[B

    if-eqz v14, :cond_1

    .line 47
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    new-instance v14, Ljava/lang/String;

    iget-object v15, v8, Lamr$a;->b:[B

    const/16 v16, 0x0

    iget-object v0, v8, Lamr$a;->b:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    invoke-direct/range {v14 .. v17}, Ljava/lang/String;-><init>([BII)V

    invoke-direct {v5, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 48
    .local v5, "object":Lorg/json/JSONObject;
    const-string/jumbo v14, "data"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 49
    .local v2, "data":Lorg/json/JSONObject;
    if-eqz v2, :cond_1

    .line 50
    const-string/jumbo v14, "t"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 51
    .local v9, "tString":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    if-nez v14, :cond_1

    .line 53
    :try_start_1
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 54
    .local v10, "time":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lalc$1;->a:Lalc;

    sub-long v16, v10, v6

    move-wide/from16 v0, v16

    invoke-static {v14, v0, v1}, Lalc;->a(Lalc;J)J

    .line 55
    move-object/from16 v0, p0

    iget-object v14, v0, Lalc$1;->a:Lalc;

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lalc;->a(Lalc;Z)Z

    .line 56
    const-string/jumbo v14, "TimeStampAdjustMgr"

    const/4 v15, 0x6

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string/jumbo v17, "t"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object v9, v15, v16

    const/16 v16, 0x2

    const-string/jumbo v17, "now"

    aput-object v17, v15, v16

    const/16 v16, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    const-string/jumbo v17, "diff"

    aput-object v17, v15, v16

    const/16 v16, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lalc$1;->a:Lalc;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lalc;->d(Lalc;)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 66
    .end local v2    # "data":Lorg/json/JSONObject;
    .end local v5    # "object":Lorg/json/JSONObject;
    .end local v9    # "tString":Ljava/lang/String;
    .end local v10    # "time":J
    :cond_1
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v3

    .line 63
    .local v3, "e":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .end local v3    # "e":Ljava/lang/Throwable;
    .restart local v2    # "data":Lorg/json/JSONObject;
    .restart local v5    # "object":Lorg/json/JSONObject;
    .restart local v9    # "tString":Ljava/lang/String;
    :catch_1
    move-exception v14

    goto :goto_0
.end method
