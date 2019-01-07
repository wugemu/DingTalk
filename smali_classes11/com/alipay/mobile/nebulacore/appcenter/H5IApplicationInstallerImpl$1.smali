.class Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl$1;
.super Ljava/lang/Object;
.source "H5IApplicationInstallerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl;->installApplication(Ljava/lang/String;Linm$a;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$iApplicationInstallCallback:Linm$a;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl;Landroid/os/Bundle;Ljava/lang/String;Linm$a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl$1;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl$1;->val$bundle:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl$1;->val$appId:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl$1;->val$iApplicationInstallCallback:Linm$a;

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
    .line 39
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl$1;->val$bundle:Landroid/os/Bundle;

    .line 40
    .local v3, "start":Landroid/os/Bundle;
    const-class v4, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 41
    .local v1, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-eqz v1, :cond_0

    .line 43
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl$1;->val$appId:Ljava/lang/String;

    invoke-interface {v1, v4}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 44
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v0, :cond_1

    .line 45
    const-string/jumbo v4, "H5IApplicationInstallerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, " appId "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl$1;->val$appId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is install"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl$1;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl$1;->val$appId:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl;->access$000(Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl;Ljava/lang/String;)V

    .line 60
    .end local v0    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_0
    :goto_0
    return-void

    .line 50
    .restart local v0    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    .local v2, "intent":Landroid/content/Intent;
    if-nez v3, :cond_2

    .line 52
    new-instance v3, Landroid/os/Bundle;

    .end local v3    # "start":Landroid/os/Bundle;
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 54
    .restart local v3    # "start":Landroid/os/Bundle;
    :cond_2
    sget-object v4, Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl;->NEBULA_FALLBACK_APP_ID:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl$1;->val$appId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 56
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 57
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
