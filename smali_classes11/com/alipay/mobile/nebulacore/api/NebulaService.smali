.class public interface abstract Lcom/alipay/mobile/nebulacore/api/NebulaService;
.super Ljava/lang/Object;
.source "NebulaService.java"

# interfaces
.implements Liob;


# virtual methods
.method public abstract addPluginConfig(Lcom/alipay/mobile/nebula/config/H5PluginConfig;)V
.end method

.method public abstract addSession(Lipc;)Z
.end method

.method public abstract createPage(Lcom/alipay/mobile/h5container/api/H5Context;Linz;)Liop;
.end method

.method public abstract createPageAsync(Lcom/alipay/mobile/h5container/api/H5Context;Linz;Liot;)V
.end method

.method public abstract exitService()Z
.end method

.method public abstract fireUrgentUcInit()V
.end method

.method public abstract getBugMeManager()Lcom/alipay/mobile/nebula/dev/H5BugMeManager;
.end method

.method public abstract getH5PageByViewId(I)Liop;
.end method

.method public abstract getH5TaskScheduleProvider()Lcom/alipay/mobile/nebula/provider/H5TaskScheduleProvider;
.end method

.method public abstract getNebulaAppManager()Lcom/alipay/mobile/nebula/appcenter/listen/NebulaAppManager;
.end method

.method public abstract getNebulaCommonManager()Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonManager;
.end method

.method public abstract getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;
.end method

.method public abstract getSession(Ljava/lang/String;)Lipc;
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

.method public abstract getWebDriverHelper()Liph;
.end method

.method public abstract initServicePlugin()V
.end method

.method public abstract isAliDomain(Ljava/lang/String;)Z
.end method

.method public abstract onCreate(Landroid/content/Context;)V
.end method

.method public abstract parseRNPkg(Ljava/lang/String;)I
.end method

.method public abstract permitLocation(Ljava/lang/String;)Z
.end method

.method public abstract prepareRNApp(Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;)V
.end method

.method public abstract removeSession(Ljava/lang/String;)Z
.end method

.method public abstract sendEvent(Lcom/alipay/mobile/h5container/api/H5Event;)Z
.end method

.method public abstract setH5TaskScheduleProvider(Lcom/alipay/mobile/nebula/provider/H5TaskScheduleProvider;)V
.end method

.method public abstract setWebDriverHelper(Liph;)V
.end method

.method public abstract startPage(Lcom/alipay/mobile/h5container/api/H5Context;Linz;)Z
.end method

.method public abstract ucIsReady(Lipf;)V
.end method
