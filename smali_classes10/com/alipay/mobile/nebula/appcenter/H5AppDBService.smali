.class public interface abstract Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
.super Ljava/lang/Object;
.source "H5AppDBService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebula/appcenter/H5AppDBService$ClearTableCallback;
    }
.end annotation


# virtual methods
.method public abstract cleanAppLimit(Ljava/lang/String;Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract cleanFailedRequestAppList(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract clearAllTable(Lcom/alipay/mobile/nebula/appcenter/H5AppDBService$ClearTableCallback;)V
.end method

.method public abstract clearPresetMemory()V
.end method

.method public abstract clearUpdateTime(Ljava/lang/String;)V
.end method

.method public abstract createOrUpdateAppPoolLimit(I)V
.end method

.method public abstract createOrUpdateLimitReqRate(D)V
.end method

.method public abstract createOrUpdateNormalReqRate(D)V
.end method

.method public abstract deleteAppInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract deleteAppInstall(Ljava/lang/String;)V
.end method

.method public abstract findInstallAppVersion(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getAllApp()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getAllHighestAppInfo()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllHighestAppVersion()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllHighestLocalReportAppVersion()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
.end method

.method public abstract getAppInfoAsync(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/db/H5GetAppInfoListen;)V
.end method

.method public abstract getConfigExtra()Ljava/lang/String;
.end method

.method public abstract getFailedRequestAppList()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getHighestAppVersion(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getInstalledApp()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLastAllUpdateTime()Ljava/lang/String;
.end method

.method public abstract getLimitReqRate()D
.end method

.method public abstract getMatchHighestAppVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getNormalReqRate()D
.end method

.method public abstract getStrictReqRate()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getUpdateAppTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isLimitApp(Ljava/lang/String;Ljava/lang/String;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract markNoDeleteAppVersion(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSwitchAccount()V
.end method

.method public abstract rpcIsLimit()Z
.end method

.method public abstract saveAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Z)V
.end method

.method public abstract setFailedRequestAppList(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setRpcIsLimit(Z)V
.end method

.method public abstract unMarkNoDeleteAppVersion(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateAppLimit(Ljava/lang/String;Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract updateCurrentAppUpdateTime(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateUnavailableReason(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateUpdateTime(Ljava/lang/String;Ljava/lang/String;)V
.end method
