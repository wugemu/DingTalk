.class public interface abstract Lcom/ali/user/enterprise/base/provider/IDataProvider;
.super Ljava/lang/Object;
.source "IDataProvider.java"


# virtual methods
.method public abstract getAppkey()Ljava/lang/String;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getEnvType()I
.end method

.method public abstract getLogService()Lcom/ali/user/enterprise/base/log/LogService;
.end method

.method public abstract getLoginService()Lcom/ali/user/enterprise/base/rpc/LoginService;
.end method

.method public abstract getMaxSessionSize()I
.end method

.method public abstract getSite()I
.end method

.method public abstract getTTID()Ljava/lang/String;
.end method

.method public abstract getThreadService()Lcom/ali/user/enterprise/base/coordinator/ThreadService;
.end method

.method public abstract isAccountChangeDegrade()Z
.end method

.method public abstract setAppkey(Ljava/lang/String;)V
.end method

.method public abstract setContext(Landroid/content/Context;)V
.end method

.method public abstract setEnvType(I)V
.end method

.method public abstract setLogService(Lcom/ali/user/enterprise/base/log/LogService;)V
.end method

.method public abstract setLoginService(Lcom/ali/user/enterprise/base/rpc/LoginService;)V
.end method

.method public abstract setMaxSessionSize(I)V
.end method

.method public abstract setSite(I)V
.end method

.method public abstract setTTID(Ljava/lang/String;)V
.end method

.method public abstract setThreadService(Lcom/ali/user/enterprise/base/coordinator/ThreadService;)V
.end method

.method public abstract setUseSeparateThreadPool(Z)V
.end method

.method public abstract useSeparateThreadPool()Z
.end method
