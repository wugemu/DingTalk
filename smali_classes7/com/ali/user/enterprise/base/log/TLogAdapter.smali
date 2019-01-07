.class public Lcom/ali/user/enterprise/base/log/TLogAdapter;
.super Ljava/lang/Object;
.source "TLogAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getDataProvider()Lcom/ali/user/enterprise/base/provider/IDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/ali/user/enterprise/base/provider/IDataProvider;->getLogService()Lcom/ali/user/enterprise/base/log/LogService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getDataProvider()Lcom/ali/user/enterprise/base/provider/IDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/ali/user/enterprise/base/provider/IDataProvider;->getLogService()Lcom/ali/user/enterprise/base/log/LogService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/ali/user/enterprise/base/log/LogService;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getDataProvider()Lcom/ali/user/enterprise/base/provider/IDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/ali/user/enterprise/base/provider/IDataProvider;->getLogService()Lcom/ali/user/enterprise/base/log/LogService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getDataProvider()Lcom/ali/user/enterprise/base/provider/IDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/ali/user/enterprise/base/provider/IDataProvider;->getLogService()Lcom/ali/user/enterprise/base/log/LogService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/ali/user/enterprise/base/log/LogService;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 30
    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getDataProvider()Lcom/ali/user/enterprise/base/provider/IDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/ali/user/enterprise/base/provider/IDataProvider;->getLogService()Lcom/ali/user/enterprise/base/log/LogService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getDataProvider()Lcom/ali/user/enterprise/base/provider/IDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/ali/user/enterprise/base/provider/IDataProvider;->getLogService()Lcom/ali/user/enterprise/base/log/LogService;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/ali/user/enterprise/base/log/LogService;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    :goto_0
    return-void

    .line 34
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 56
    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getDataProvider()Lcom/ali/user/enterprise/base/provider/IDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/ali/user/enterprise/base/provider/IDataProvider;->getLogService()Lcom/ali/user/enterprise/base/log/LogService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getDataProvider()Lcom/ali/user/enterprise/base/provider/IDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/ali/user/enterprise/base/provider/IDataProvider;->getLogService()Lcom/ali/user/enterprise/base/log/LogService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/ali/user/enterprise/base/log/LogService;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    :goto_0
    return-void

    .line 60
    :cond_0
    const-string/jumbo v0, ""

    invoke-static {p0, v0, p1}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getDataProvider()Lcom/ali/user/enterprise/base/provider/IDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/ali/user/enterprise/base/provider/IDataProvider;->getLogService()Lcom/ali/user/enterprise/base/log/LogService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16
    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getDataProvider()Lcom/ali/user/enterprise/base/provider/IDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/ali/user/enterprise/base/provider/IDataProvider;->getLogService()Lcom/ali/user/enterprise/base/log/LogService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/ali/user/enterprise/base/log/LogService;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getDataProvider()Lcom/ali/user/enterprise/base/provider/IDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/ali/user/enterprise/base/provider/IDataProvider;->getLogService()Lcom/ali/user/enterprise/base/log/LogService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getDataProvider()Lcom/ali/user/enterprise/base/provider/IDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/ali/user/enterprise/base/provider/IDataProvider;->getLogService()Lcom/ali/user/enterprise/base/log/LogService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/ali/user/enterprise/base/log/LogService;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 83
    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getDataProvider()Lcom/ali/user/enterprise/base/provider/IDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/ali/user/enterprise/base/provider/IDataProvider;->getLogService()Lcom/ali/user/enterprise/base/log/LogService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getDataProvider()Lcom/ali/user/enterprise/base/provider/IDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/ali/user/enterprise/base/provider/IDataProvider;->getLogService()Lcom/ali/user/enterprise/base/log/LogService;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/ali/user/enterprise/base/log/LogService;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
