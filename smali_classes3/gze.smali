.class public final Lgze;
.super Ljava/lang/Object;
.source "BizErrorBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgze$a;,
        Lgze$c;,
        Lgze$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    return-void
.end method

.method public static a(J)Ljava/lang/String;
    .locals 4
    .param p0, "timestamp"    # J

    .prologue
    .line 527
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMddHHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 528
    .local v1, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    const-string/jumbo v2, "GMT+8"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 529
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 533
    .end local v1    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v2

    .line 530
    :catch_0
    move-exception v0

    .line 531
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "MotuCrashAdapter"

    const-string/jumbo v3, "getGMT8Time"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 533
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 516
    if-eqz p0, :cond_0

    const-string/jumbo v0, "_"

    const-string/jumbo v1, "&#95;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lgzh;)Lgzi;
    .locals 16
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "exceptionModule"    # Lgzh;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 51
    new-instance v12, Lgzi;

    invoke-direct {v12}, Lgzi;-><init>()V

    .line 53
    .local v12, "sendModule":Lgzi;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 54
    .local v8, "timestamp":J
    const-string/jumbo v13, "catch"

    .line 55
    .local v13, "tag":Ljava/lang/String;
    const-string/jumbo v10, "BUSINESS"

    .line 56
    .local v10, "type":Ljava/lang/String;
    invoke-static {}, Lhul;->a()Lhul;

    move-result-object v4

    iget-object v4, v4, Lhul;->c:Ljava/lang/String;

    .line 57
    invoke-static {}, Lhul;->a()Lhul;

    move-result-object v5

    iget-object v5, v5, Lhul;->e:Ljava/lang/String;

    .line 1493
    invoke-static {v5}, Lgze;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1494
    invoke-static {v13}, Lgze;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1496
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "BizErrorReporterSDK_1.0.0.0_df_df_df_df_"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v14, "_"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1504
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1505
    invoke-static {v8, v9}, Lgze;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "df"

    .line 1506
    invoke-static {v6, v5}, Lhvb;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 61
    .local v7, "reportName":Ljava/lang/String;
    new-instance v3, Lgze$a;

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    invoke-direct/range {v3 .. v10}, Lgze$a;-><init>(Lgze;Lgzh;Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V

    .line 64
    .local v3, "reportBuilder":Lgze$b;
    :try_start_0
    invoke-virtual {v3}, Lgze$b;->b()Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "content":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lhux;->a([B)[B

    move-result-object v4

    invoke-static {v4}, Lhuu;->a([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v12, Lgzi;->a:Ljava/lang/String;

    .line 66
    move-object/from16 v0, p2

    iget-object v4, v0, Lgzh;->b:Lcom/alibaba/ha/bizerrorreporter/module/AggregationType;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v12, Lgzi;->c:Ljava/lang/String;

    .line 67
    move-object/from16 v0, p2

    iget-object v4, v0, Lgzh;->a:Ljava/lang/String;

    iput-object v4, v12, Lgzi;->b:Ljava/lang/String;

    .line 68
    sget-object v4, Lgzf;->a:Ljava/lang/Integer;

    iput-object v4, v12, Lgzi;->d:Ljava/lang/Integer;

    .line 69
    const-string/jumbo v4, "MOTU_REPORTER_SDK_3.0.0_PRIVATE_COMPRESS"

    iput-object v4, v12, Lgzi;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v2    # "content":Ljava/lang/String;
    .end local v12    # "sendModule":Lgzi;
    :goto_0
    return-object v12

    .line 72
    .restart local v12    # "sendModule":Lgzi;
    :catch_0
    move-exception v11

    .line 73
    .local v11, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "MotuCrashAdapter"

    const-string/jumbo v5, "base64 and gzip err"

    invoke-static {v4, v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    const/4 v12, 0x0

    goto :goto_0
.end method
