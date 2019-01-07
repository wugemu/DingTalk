.class Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$4;
.super Ljava/lang/Object;
.source "H5WebViewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->addResourcePackage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

.field final synthetic val$pkgList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    .prologue
    .line 796
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$4;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$4;->val$pkgList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x1

    .line 800
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$4;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v6}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$100(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lior;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 801
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$4;->val$pkgList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 802
    .local v0, "appId":Ljava/lang/String;
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$4;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v7}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$100(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lior;

    move-result-object v7

    .line 1870
    iget-object v7, v7, Lior;->ak:Ljava/lang/String;

    .line 802
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 803
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$4;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v7}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$100(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lior;

    move-result-object v7

    .line 2870
    iget-object v7, v7, Lior;->ak:Ljava/lang/String;

    .line 803
    const/4 v8, 0x0

    invoke-static {v7, v0, v9, v8}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->addResourcePackage(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 810
    .end local v0    # "appId":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v6

    const-class v7, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 811
    .local v2, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-eqz v2, :cond_3

    .line 813
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 814
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$4;->val$pkgList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 815
    .restart local v0    # "appId":Ljava/lang/String;
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$4;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v7}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$600(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 816
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->enableResDegrade()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 817
    const-string/jumbo v7, "*"

    invoke-interface {v3, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    :goto_2
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$4;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v7}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$600(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 822
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$4;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    iget-object v7, v7, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "resourcePkgIdList add : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 839
    .end local v0    # "appId":Ljava/lang/String;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v5

    .line 840
    .local v5, "throwable":Ljava/lang/Throwable;
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$4;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    iget-object v6, v6, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 843
    .end local v5    # "throwable":Ljava/lang/Throwable;
    :cond_3
    :goto_3
    return-void

    .line 819
    .restart local v0    # "appId":Ljava/lang/String;
    .restart local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    :try_start_1
    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getWalletConfigNebulaVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 825
    .end local v0    # "appId":Ljava/lang/String;
    :cond_5
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 826
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$4;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    iget-object v6, v6, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "map.isEmpty , don\'t sent rpc"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 829
    :cond_6
    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;-><init>()V

    .line 830
    .local v1, "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    const-string/jumbo v6, "NO"

    iput-object v6, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->stableRpc:Ljava/lang/String;

    .line 832
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->newBuilder()Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v6

    const/4 v7, 0x1

    .line 833
    invoke-virtual {v6, v7}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setDownLoadAmr(Z)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v6

    .line 834
    invoke-virtual {v6, v3}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setAppMap(Ljava/util/Map;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v6

    .line 835
    invoke-virtual {v6, v1}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setAppReq(Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$4;->val$pkgList:Ljava/util/List;

    .line 836
    invoke-virtual {v6, v7}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setResPackageList(Ljava/util/List;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v6

    .line 837
    invoke-virtual {v6}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->build()Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;

    move-result-object v4

    .line 838
    .local v4, "param":Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;
    invoke-interface {v2, v4}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->updateApp(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
