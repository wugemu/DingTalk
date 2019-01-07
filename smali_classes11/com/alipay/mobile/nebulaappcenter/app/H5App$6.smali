.class Lcom/alipay/mobile/nebulaappcenter/app/H5App$6;
.super Ljava/lang/Object;
.source "H5App.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappcenter/app/H5App;->onFinish(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulaappcenter/app/H5App;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappcenter/app/H5App;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App$6;->this$0:Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x1

    .line 379
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App$6;->this$0:Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    invoke-static {v5}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->access$500(Lcom/alipay/mobile/nebulaappcenter/app/H5App;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 381
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App$6;->this$0:Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    invoke-static {v5}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->access$200(Lcom/alipay/mobile/nebulaappcenter/app/H5App;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "h5PatchFail to installApp"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App$6;->this$0:Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->installApp()Z

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    const-string/jumbo v5, "yes"

    const-string/jumbo v6, "h5_enablePreInstallOld"

    invoke-static {v6}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 388
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App$6;->this$0:Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App$6;->this$0:Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    invoke-static {v6}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->access$300(Lcom/alipay/mobile/nebulaappcenter/app/H5App;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->access$600(Lcom/alipay/mobile/nebulaappcenter/app/H5App;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 389
    .local v3, "path":Ljava/lang/String;
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App$6;->this$0:Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    invoke-static {v5}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->access$200(Lcom/alipay/mobile/nebulaappcenter/app/H5App;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "pre install app : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App$6;->this$0:Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    invoke-static {v7}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->access$300(Lcom/alipay/mobile/nebulaappcenter/app/H5App;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " getLastPkgPath:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 391
    const-class v5, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 392
    .local v1, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-eqz v1, :cond_2

    .line 393
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App$6;->this$0:Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    invoke-static {v5}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->access$300(Lcom/alipay/mobile/nebulaappcenter/app/H5App;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-interface {v1, v5}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "currentVersion":Ljava/lang/String;
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App$6;->this$0:Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    invoke-static {v5}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->access$300(Lcom/alipay/mobile/nebulaappcenter/app/H5App;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-ne v5, v8, :cond_2

    .line 396
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App$6;->this$0:Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    invoke-static {v5}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->access$200(Lcom/alipay/mobile/nebulaappcenter/app/H5App;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "currentVersion "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " > appInfo.version:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App$6;->this$0:Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    invoke-static {v7}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->access$300(Lcom/alipay/mobile/nebulaappcenter/app/H5App;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " not to preInstall"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-class v5, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 398
    .local v2, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v2, :cond_2

    .line 399
    const-string/jumbo v5, "h5_preInstall_compare_version"

    invoke-interface {v2, v5}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 400
    .local v4, "value":Ljava/lang/String;
    const-string/jumbo v5, "no"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 406
    .end local v0    # "currentVersion":Ljava/lang/String;
    .end local v2    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v4    # "value":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App$6;->this$0:Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    invoke-static {v5, v8}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->access$402(Lcom/alipay/mobile/nebulaappcenter/app/H5App;Z)Z

    .line 407
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App$6;->this$0:Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->installApp()Z

    goto/16 :goto_0
.end method
