.class public Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;
.source "H5NebulaAppActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5NebulaAppActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const/4 v6, 0x0

    .line 40
    .local v6, "bundle":Landroid/os/Bundle;
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 45
    :goto_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl;->NEBULA_FALLBACK_APP_ID:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "appId":Ljava/lang/String;
    const-string/jumbo v0, "H5NebulaAppActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "appId "

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v4, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;-><init>(Landroid/app/Activity;)V

    .line 49
    .local v4, "h5LoadingDialog":Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->setCancelable(Z)V

    .line 50
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nebula/R$string;->h5_loading_txt:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 51
    .local v8, "title":Ljava/lang/String;
    invoke-virtual {v4, v8}, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->setMessage(Ljava/lang/String;)V

    .line 52
    new-instance v0, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$1;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity;)V

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 60
    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->show()V

    .line 63
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 64
    .local v3, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-nez v3, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity;->finish()V

    .line 125
    :goto_1
    return-void

    .line 41
    .end local v2    # "appId":Ljava/lang/String;
    .end local v3    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v4    # "h5LoadingDialog":Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;
    .end local v8    # "title":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 42
    .local v7, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v0, "H5NebulaAppActivity"

    invoke-static {v0, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 69
    .end local v7    # "throwable":Ljava/lang/Throwable;
    .restart local v2    # "appId":Ljava/lang/String;
    .restart local v3    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .restart local v4    # "h5LoadingDialog":Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;
    .restart local v8    # "title":Ljava/lang/String;
    :cond_0
    move-object v5, v6

    .line 70
    .local v5, "finalBundle":Landroid/os/Bundle;
    const-string/jumbo v0, "RPC"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v9

    new-instance v0, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity;Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5AppProvider;Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;Landroid/os/Bundle;)V

    invoke-virtual {v9, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1
.end method
