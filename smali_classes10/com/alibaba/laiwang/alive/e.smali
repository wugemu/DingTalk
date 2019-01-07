.class public Lcom/alibaba/laiwang/alive/e;
.super Ljava/lang/Object;
.source "XpnDeviceRpc.java"


# direct methods
.method public static a(Ljava/lang/String;ILjava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 2
    .param p0, "deviceToken"    # Ljava/lang/String;
    .param p1, "xpnType"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    :cond_0
    if-eqz p3, :cond_1

    .line 21
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR"

    invoke-interface {p3, v0, v1}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_1
    :goto_0
    return-void

    .line 26
    :cond_2
    invoke-static {}, Lcom/alibaba/wukong/WKManager;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/alibaba/laiwang/alive/e$1;

    invoke-direct {v1, p3, p0, p1, p2}, Lcom/alibaba/laiwang/alive/e$1;-><init>(Lcom/alibaba/wukong/Callback;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 2
    .param p0, "deviceToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    if-eqz p1, :cond_0

    .line 43
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR"

    invoke-interface {p1, v0, v1}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    invoke-static {}, Lcom/alibaba/wukong/WKManager;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/alibaba/laiwang/alive/e$2;

    invoke-direct {v1, p1, p0}, Lcom/alibaba/laiwang/alive/e$2;-><init>(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
