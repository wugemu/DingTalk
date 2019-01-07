.class public Lcom/cmic/sso/sdk/b/d;
.super Ljava/lang/Object;
.source "TelephonyUtils.java"


# direct methods
.method public static a(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method

.method public static a(Landroid/net/ConnectivityManager;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 69
    :try_start_0
    const-class v0, Landroid/net/ConnectivityManager;

    const-string/jumbo v2, "getMobileDataEnabled"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 70
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 71
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 72
    sget-object v2, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    if-eqz v2, :cond_0

    .line 73
    sget-object v2, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    const-string/jumbo v3, "TelephonyUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "isDataOn="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/cmic/sso/sdk/auth/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :cond_0
    :goto_0
    return v0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    sget-object v2, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    if-eqz v2, :cond_1

    .line 79
    sget-object v2, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    const-string/jumbo v3, "TelephonyUtils"

    const-string/jumbo v4, "have exception: data is on ----\u53cd\u5c04\u51fa\u9519"

    invoke-interface {v2, v3, v4, v0}, Lcom/cmic/sso/sdk/auth/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    move v0, v1

    .line 83
    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 38
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "connectivity"

    .line 39
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 40
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 41
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move v0, v2

    .line 64
    :goto_0
    return v0

    .line 44
    :cond_1
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 45
    if-ne v3, v1, :cond_4

    .line 46
    const-string/jumbo v1, "android.permission.CHANGE_NETWORK_STATE"

    invoke-static {p0, v1}, Lcom/cmic/sso/sdk/b/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 47
    sget-object v3, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    if-eqz v3, :cond_2

    .line 48
    sget-object v3, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    const-string/jumbo v4, "TelephonyUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "CHANGE_NETWORK_STATE="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/cmic/sso/sdk/auth/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_2
    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/cmic/sso/sdk/b/d;->a(Landroid/net/ConnectivityManager;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    .line 52
    const/4 v0, 0x3

    goto :goto_0

    .line 54
    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    .line 56
    :cond_4
    if-nez v3, :cond_5

    move v0, v1

    .line 57
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    sget-object v1, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    if-eqz v1, :cond_5

    .line 61
    sget-object v1, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    const-string/jumbo v3, "TelephonyUtils"

    const-string/jumbo v4, "have exception"

    invoke-interface {v1, v3, v4, v0}, Lcom/cmic/sso/sdk/auth/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    move v0, v2

    .line 64
    goto :goto_0
.end method
