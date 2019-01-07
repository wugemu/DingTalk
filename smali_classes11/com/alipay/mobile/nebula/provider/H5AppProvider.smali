.class public interface abstract Lcom/alipay/mobile/nebula/provider/H5AppProvider;
.super Ljava/lang/Object;
.source "H5AppProvider.java"


# virtual methods
.method public abstract clearResourceAppCache()V
.end method

.method public abstract downloadApp(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract downloadApp(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;)V
.end method

.method public abstract downloadApp(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;Ljava/lang/String;)V
.end method

.method public abstract enableMultiProcess(Ljava/lang/String;Landroid/os/Bundle;)Z
.end method

.method public abstract getAppDesc(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getAppFromServerWhenAppIsEmpty(Ljava/lang/String;)V
.end method

.method public abstract getAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
.end method

.method public abstract getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
.end method

.method public abstract getAppName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getConfigExtra(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getDownloadLocalPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExtraJo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getH5AppCdnBaseUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getIconUrl(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getIconUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getInstallPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getLocalReport(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getPackageNick(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getPackageNick(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getPackageSize(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public abstract getScene(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSlogan(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSubUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getThirdPlatform(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getVersion(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getVhost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getWalletAppDesc(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getWalletAppName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getWalletConfigNebulaVersion(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getWalletIconUrl(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getWalletVersion(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getlaunchParams(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
.end method

.method public abstract hasPackage(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract installApp(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract installApp(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;)V
.end method

.method public abstract installApp(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract isAutoInstall(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract isAvailable(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract isH5App(Ljava/lang/String;)Z
.end method

.method public abstract isH5TinyApp(Ljava/lang/String;)Z
.end method

.method public abstract isInstalled(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract isNebulaApp(Ljava/lang/String;)Z
.end method

.method public abstract isOffline(Ljava/lang/String;)Z
.end method

.method public abstract isRNApp(Ljava/lang/String;)Z
.end method

.method public abstract isResourceApp(Ljava/lang/String;)Z
.end method

.method public abstract isSmallProgramFromOpenPlat(Ljava/lang/String;)Z
.end method

.method public abstract isUseAppX(Ljava/lang/String;)Z
.end method

.method public abstract isXiaoChengXu(Ljava/lang/String;)Z
.end method

.method public abstract makeAppReq(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;)Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
.end method

.method public abstract offlineFromOpenPlat(Ljava/lang/String;)V
.end method

.method public abstract queryAllH5AppVersionFromAppCenter()Ljava/util/Map;
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

.method public abstract showOfflinePage(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract syncAppManage()Ljava/util/Map;
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

.method public abstract updateApp(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;)V
.end method
