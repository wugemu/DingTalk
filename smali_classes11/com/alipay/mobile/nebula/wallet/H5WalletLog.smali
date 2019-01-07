.class public Lcom/alipay/mobile/nebula/wallet/H5WalletLog;
.super Ljava/lang/Object;
.source "H5WalletLog.java"


# static fields
.field private static appLogProvider:Lcom/alipay/mobile/nebula/provider/H5AppLogProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 47
    sget-object v0, Lcom/alipay/mobile/nebula/wallet/H5WalletLog;->appLogProvider:Lcom/alipay/mobile/nebula/provider/H5AppLogProvider;

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Lcom/alipay/mobile/nebula/wallet/H5WalletLog;->appLogProvider:Lcom/alipay/mobile/nebula/provider/H5AppLogProvider;

    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/nebula/provider/H5AppLogProvider;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 20
    sget-object v0, Lcom/alipay/mobile/nebula/wallet/H5WalletLog;->appLogProvider:Lcom/alipay/mobile/nebula/provider/H5AppLogProvider;

    if-eqz v0, :cond_1

    .line 21
    sget-object v0, Lcom/alipay/mobile/nebula/wallet/H5WalletLog;->appLogProvider:Lcom/alipay/mobile/nebula/provider/H5AppLogProvider;

    invoke-interface {v0, p0, p1}, Lcom/alipay/mobile/nebula/provider/H5AppLogProvider;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_0
    :goto_0
    return-void

    .line 24
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 30
    sget-object v0, Lcom/alipay/mobile/nebula/wallet/H5WalletLog;->appLogProvider:Lcom/alipay/mobile/nebula/provider/H5AppLogProvider;

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lcom/alipay/mobile/nebula/wallet/H5WalletLog;->appLogProvider:Lcom/alipay/mobile/nebula/provider/H5AppLogProvider;

    invoke-interface {v0, p0, p1, p2}, Lcom/alipay/mobile/nebula/provider/H5AppLogProvider;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    :goto_0
    return-void

    .line 34
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setAppLogProvider(Lcom/alipay/mobile/nebula/provider/H5AppLogProvider;)V
    .locals 0
    .param p0, "logProvider"    # Lcom/alipay/mobile/nebula/provider/H5AppLogProvider;

    .prologue
    .line 16
    sput-object p0, Lcom/alipay/mobile/nebula/wallet/H5WalletLog;->appLogProvider:Lcom/alipay/mobile/nebula/provider/H5AppLogProvider;

    .line 17
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 38
    sget-object v0, Lcom/alipay/mobile/nebula/wallet/H5WalletLog;->appLogProvider:Lcom/alipay/mobile/nebula/provider/H5AppLogProvider;

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Lcom/alipay/mobile/nebula/wallet/H5WalletLog;->appLogProvider:Lcom/alipay/mobile/nebula/provider/H5AppLogProvider;

    invoke-interface {v0, p0, p1, p2}, Lcom/alipay/mobile/nebula/provider/H5AppLogProvider;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
