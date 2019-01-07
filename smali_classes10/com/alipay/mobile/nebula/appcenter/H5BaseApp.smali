.class public interface abstract Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
.super Ljava/lang/Object;
.source "H5BaseApp.java"


# virtual methods
.method public abstract downloadApp()V
.end method

.method public abstract downloadApp(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;)V
.end method

.method public abstract downloadApp(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;Ljava/lang/String;)V
.end method

.method public abstract getAppVersion()Ljava/lang/String;
.end method

.method public abstract getDownloadLocalPath()Ljava/lang/String;
.end method

.method public abstract getDownloadUrl()Ljava/lang/String;
.end method

.method public abstract getInstalledPath()Ljava/lang/String;
.end method

.method public abstract installApp()Z
.end method

.method public abstract installApp(Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;)Z
.end method

.method public abstract installApp(Z)Z
.end method

.method public abstract isAvailable()Z
.end method

.method public abstract isDownloading()Z
.end method

.method public abstract isInstalled()Z
.end method

.method public abstract setAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V
.end method
