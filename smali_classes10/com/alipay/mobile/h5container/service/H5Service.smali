.class public abstract Lcom/alipay/mobile/h5container/service/H5Service;
.super Lcom/alipay/mobile/nebula/wallet/H5ExternalService;
.source "H5Service.java"


# static fields
.field public static final H5APP_ENGINE_TYPE:Ljava/lang/String; = "H5App"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/wallet/H5ExternalService;-><init>()V

    .line 51
    return-void
.end method


# virtual methods
.method public abstract H5IApplicationInstaller()Linm;
.end method

.method public abstract addEmbedViewConfig(Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;)V
.end method

.method public abstract addEmbedViewConfig(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addH5PluginConfigList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebula/config/H5PluginConfig;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addPluginConfig(Lcom/alipay/mobile/nebula/config/H5PluginConfig;)V
.end method

.method public abstract clearServiceWorker(Ljava/lang/String;)V
.end method

.method public abstract clearServiceWorkerSync(Ljava/lang/String;Lioa;)V
.end method

.method public abstract createPage(Landroid/app/Activity;Linz;)Liop;
.end method

.method public abstract createPageAsync(Landroid/app/Activity;Linz;Liot;)V
.end method

.method public abstract createPlugin(Ljava/lang/String;Liop;Liow;)Liov;
.end method

.method public abstract createPlugin(Ljava/lang/String;Liow;)Liov;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract createPluginManager(Liob;)Liow;
.end method

.method public abstract generatePackInfoReq(Ljava/util/List;)Liqk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Liqk;"
        }
    .end annotation
.end method

.method public abstract getBugMeManager()Lcom/alipay/mobile/nebula/dev/H5BugMeManager;
.end method

.method public abstract getH5GlobalDegradePkg(Ljava/lang/String;)[B
.end method

.method public abstract getH5PageByViewId(I)Liop;
.end method

.method public abstract getItsOwnNode()Liob;
.end method

.method public abstract getNebulaAppManager()Lcom/alipay/mobile/nebula/appcenter/listen/NebulaAppManager;
.end method

.method public abstract getNebulaCommonManager()Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonManager;
.end method

.method public abstract getPluginManager()Liow;
.end method

.method public abstract getProcessH5Activity()[Ljava/lang/Class;
.end method

.method public abstract getProcessH5TransActivity()[Ljava/lang/Class;
.end method

.method public abstract getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;
.end method

.method public abstract getSessionByWorkerId(Ljava/lang/String;)Lipc;
.end method

.method public abstract getSessions()Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack",
            "<",
            "Lipc;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSharedData(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getTopH5BaseFragment()Linw;
.end method

.method public abstract getTopH5BaseFragmentByViewId(I)Linw;
.end method

.method public abstract getTopH5BaseFragmentByWorkerId(Ljava/lang/String;)Linw;
.end method

.method public abstract getTopH5Fragment()Landroid/support/v4/app/Fragment;
.end method

.method public abstract getTopH5Page()Liop;
.end method

.method public abstract getTopSession()Lipc;
.end method

.method public abstract getUcInitTask()Ljava/lang/Runnable;
.end method

.method public abstract getWebDriverHelper()Liph;
.end method

.method public abstract initServicePlugin()V
.end method

.method public abstract isAliDomain(Ljava/lang/String;)Z
.end method

.method public abstract parseRNPkg(Ljava/lang/String;)I
.end method

.method public abstract permitLocation(Ljava/lang/String;)Z
.end method

.method public abstract preLoadInTinyProcess()V
.end method

.method public abstract prepareApp(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;)V
.end method

.method public abstract prepareRNApp(Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract removeSharedData(Ljava/lang/String;)V
.end method

.method public abstract savePackJson(Ljava/lang/String;)V
.end method

.method public abstract sendEvent(Lcom/alipay/mobile/h5container/api/H5Event;)Z
.end method

.method public abstract sendEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
.end method

.method public abstract sendServiceWorkerPushMessage(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendServiceWorkerPushMessage(Ljava/util/HashMap;Lioa;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lioa;",
            ")V"
        }
    .end annotation
.end method

.method public abstract sendToWebFromMainProcess(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
.end method

.method public abstract setSharedData(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setWebDriverHelper(Liph;)V
.end method

.method public abstract startPage(Linn;Linz;)V
.end method

.method public abstract startPageFromActivity(Landroid/app/Activity;Linz;)V
.end method

.method public abstract startWebActivity(Linn;Landroid/os/Bundle;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract startWebActivity(Linn;Landroid/os/Bundle;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linn;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract ucIsReady(Lipf;)V
.end method
