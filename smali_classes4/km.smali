.class final Lkm;
.super Ljava/lang/Object;
.source "DispatchSecurityUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 53
    const-string/jumbo v7, ""

    .line 55
    .local v7, "ret":Ljava/lang/String;
    const/4 v6, 0x0

    .line 56
    .local v6, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lic;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const-string/jumbo v0, "awcn.DispatchSecurityUtil"

    const-string/jumbo v1, "getAppSign appkey null"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-object v6, v9

    .line 74
    .end local v6    # "result":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 61
    .restart local v6    # "result":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-static {}, Ljn;->a()Ljm;

    move-result-object v0

    invoke-static {}, Lic;->a()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "HMAC_SHA1"

    invoke-static {}, Lic;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lic;->e()Ljava/lang/String;

    move-result-object v5

    move-object v4, p0

    invoke-interface/range {v0 .. v5}, Ljm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_0

    .line 66
    :catch_0
    move-exception v8

    .line 67
    .local v8, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v0, "awcn.DispatchSecurityUtil"

    const-string/jumbo v1, "getAppSign"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v8, v3}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 70
    .end local v8    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v8

    .line 71
    .restart local v8    # "t":Ljava/lang/Throwable;
    const-string/jumbo v0, "awcn.DispatchSecurityUtil"

    const-string/jumbo v1, "getSign"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v0, v1, v9, v8, v2}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move-object v6, v7

    .line 74
    goto :goto_0
.end method
