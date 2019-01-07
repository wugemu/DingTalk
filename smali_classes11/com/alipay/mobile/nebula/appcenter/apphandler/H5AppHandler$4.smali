.class final Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$4;
.super Ljava/lang/Object;
.source "H5AppHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->updateNebulaAppAsync(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$copyParam:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 674
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$4;->val$appId:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$4;->val$copyParam:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 677
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 678
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v5, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 679
    .local v1, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-eqz v1, :cond_0

    .line 680
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;-><init>()V

    .line 681
    .local v0, "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    const-string/jumbo v5, "async"

    iput-object v5, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->reqmode:Ljava/lang/String;

    .line 682
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$4;->val$appId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 683
    iget-object v5, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$4;->val$appId:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;

    move-result-object v6

    iget-object v7, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$4;->val$appId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppList;->getDevInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5DevAppInfo;->nbsv:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    iget-object v5, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$4;->val$appId:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->access$800(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)V

    .line 693
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->access$200()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "updateNebulaAppAsync appId:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$4;->val$appId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->newBuilder()Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v5

    const/4 v6, 0x1

    .line 697
    invoke-virtual {v5, v6}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setDownLoadAmr(Z)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v5

    .line 698
    invoke-virtual {v5, v2}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setAppMap(Ljava/util/Map;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v5

    .line 699
    invoke-virtual {v5, v0}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setAppReq(Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v5

    .line 700
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setStartTime(J)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$4;->val$copyParam:Landroid/os/Bundle;

    .line 701
    invoke-static {v6}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->access$900(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setResPackageList(Ljava/util/List;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v5

    .line 702
    invoke-virtual {v5}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->build()Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;

    move-result-object v3

    .line 703
    .local v3, "updateAppParam":Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;
    invoke-interface {v1, v3}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->updateApp(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;)V

    .line 706
    .end local v0    # "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    .end local v3    # "updateAppParam":Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;
    :cond_0
    return-void

    .line 687
    .restart local v0    # "appReq":Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    :cond_1
    iget-object v5, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$4;->val$appId:Ljava/lang/String;

    .line 688
    invoke-interface {v1, v5}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getWalletConfigNebulaVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 689
    .local v4, "walletConfigNebulaVersion":Ljava/lang/String;
    iget-object v5, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$4;->val$appId:Ljava/lang/String;

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
