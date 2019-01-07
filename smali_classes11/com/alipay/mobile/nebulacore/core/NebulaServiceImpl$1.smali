.class Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$1;
.super Ljava/lang/Object;
.source "NebulaServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->prepareRNApp(Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$h5UpdateAppCallback:Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;

    .prologue
    .line 420
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$1;->this$0:Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$1;->val$appId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$1;->val$h5UpdateAppCallback:Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 423
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 425
    .local v0, "appMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v4

    const-class v5, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 426
    .local v1, "nebulaAppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-nez v1, :cond_0

    .line 427
    const-string/jumbo v4, "H5NebulaService"

    const-string/jumbo v5, "nebulaAppProvider==null"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :goto_0
    return-void

    .line 431
    :cond_0
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$1;->val$appId:Ljava/lang/String;

    .line 432
    invoke-interface {v1, v4}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getWalletConfigNebulaVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 433
    .local v3, "walletConfigNebulaVersion":Ljava/lang/String;
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$1;->val$appId:Ljava/lang/String;

    invoke-interface {v1, v4}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 434
    .local v2, "version":Ljava/lang/String;
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$1;->val$appId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 436
    const-string/jumbo v4, "H5NebulaService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "prepareApp: send rpc appId:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$1;->val$appId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " walletConfigNebulaVersion:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " version:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$1;->val$appId:Ljava/lang/String;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->newBuilder()Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v4

    const/4 v5, 0x1

    .line 441
    invoke-virtual {v4, v5}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setDownLoadAmr(Z)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v4

    .line 442
    invoke-virtual {v4, v0}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setAppMap(Ljava/util/Map;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$1;->val$h5UpdateAppCallback:Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;

    .line 443
    invoke-virtual {v4, v5}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setUpdateCallback(Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v4

    .line 444
    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->build()Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;

    move-result-object v4

    .line 440
    invoke-interface {v1, v4}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->updateApp(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;)V

    .line 446
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$1;->val$appId:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Lcom/alipay/mobile/nebulacore/Nebula;->prepare(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;)V

    goto :goto_0
.end method
