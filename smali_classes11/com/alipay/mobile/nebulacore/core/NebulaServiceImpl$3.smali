.class Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$3;
.super Ljava/lang/Object;
.source "NebulaServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;

    .prologue
    .line 812
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$3;->this$0:Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;

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

    .line 815
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInWallet()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 816
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager;->initConfig()V

    .line 821
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/web/H5BridgePolicy;->negotiate()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 827
    :goto_0
    const-class v7, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 828
    .local v4, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v4, :cond_2

    .line 829
    const-string/jumbo v7, "h5_preParse_CommApp"

    invoke-interface {v4, v7}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 830
    .local v6, "value":Ljava/lang/String;
    const-string/jumbo v7, "no"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 881
    .end local v6    # "value":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 822
    .end local v4    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :catch_0
    move-exception v5

    .line 823
    .local v5, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v7, "H5NebulaService"

    invoke-static {v7, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 835
    .end local v5    # "throwable":Ljava/lang/Throwable;
    .restart local v4    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 836
    const-string/jumbo v7, "H5NebulaService"

    const-string/jumbo v8, "preLoadInTinyProcess"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 839
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v7, "isTinyApp"

    invoke-virtual {v2, v7, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 840
    invoke-static {v2, v9}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5AppCenter;->initTinyAppRes(Landroid/os/Bundle;Z)V

    .line 843
    invoke-static {}, Lipg;->a()V

    .line 845
    invoke-static {}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader;->preloadPackage()V

    .line 847
    invoke-static {}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->startPreload()V

    .line 850
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 851
    const-string/jumbo v7, "h5LoadGlobalPkgForTiny"

    invoke-static {v7}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 853
    .restart local v6    # "value":Ljava/lang/String;
    const-string/jumbo v7, "yes"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 854
    const-string/jumbo v7, "H5NebulaService"

    const-string/jumbo v8, "not prepare 196 in tinyProcess"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 859
    .end local v6    # "value":Ljava/lang/String;
    :cond_4
    const-class v7, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    .line 860
    .local v3, "centerPresetProvider":Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;
    if-eqz v3, :cond_1

    .line 861
    invoke-interface {v3}, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;->getEnableDegradeApp()Ljava/util/Set;

    move-result-object v1

    .line 862
    .local v1, "appSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 864
    const-string/jumbo v7, "20000202"

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 867
    :cond_5
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 868
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 871
    .local v0, "appId":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->getInstance()Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->prepareContent(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 872
    :catch_1
    move-exception v5

    .line 873
    .restart local v5    # "throwable":Ljava/lang/Throwable;
    const-string/jumbo v8, "H5NebulaService"

    invoke-static {v8, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
