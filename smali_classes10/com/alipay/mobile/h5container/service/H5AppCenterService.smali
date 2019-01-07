.class public abstract Lcom/alipay/mobile/h5container/service/H5AppCenterService;
.super Lcom/alipay/mobile/nebula/wallet/H5ExternalService;
.source "H5AppCenterService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/wallet/H5ExternalService;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public abstract clearAppAmrPackage()V
.end method

.method public abstract clearAppUnzipPackage(J)V
.end method

.method public abstract getAppDBService()Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
.end method

.method public abstract getH5App()Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
.end method

.method public abstract getSDKVersion()Ljava/lang/String;
.end method

.method public abstract loadPresetApp(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Liox;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loadPresetAppList(Ljava/io/InputStream;)V
.end method

.method public abstract loadPresetAppNow(Ljava/util/List;Lcom/alipay/mobile/nebula/appcenter/api/H5LoadPresetListen;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Liox;",
            ">;",
            "Lcom/alipay/mobile/nebula/appcenter/api/H5LoadPresetListen;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Z)V
.end method

.method public abstract setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;ZZ)V
.end method

.method public abstract setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;ZZZ)V
.end method

.method public abstract setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppRes;Z)V
.end method

.method public abstract setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppRes;ZZ)V
.end method

.method public abstract setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppRes;ZZZ)V
.end method

.method public abstract setUpInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppRes;ZZZLjava/lang/String;)V
.end method
