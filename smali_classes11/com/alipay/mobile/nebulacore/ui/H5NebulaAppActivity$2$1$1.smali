.class Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2$1$1;
.super Ljava/lang/Object;
.source "H5NebulaAppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2$1;->onResult(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2$1;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2$1;Z)V
    .locals 0
    .param p1, "this$2"    # Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2$1;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2$1$1;->this$2:Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2$1;

    iput-boolean p2, p0, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2$1$1;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 85
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2$1$1;->this$2:Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2$1;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2$1;->this$1:Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    :goto_0
    return-void

    .line 89
    :cond_0
    const-string/jumbo v1, "H5NebulaAppActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "update result:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2$1$1;->val$success:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2$1$1;->this$2:Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2$1;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2$1;->this$1:Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2;->val$h5AppProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2$1$1;->this$2:Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2$1;

    iget-object v2, v2, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2$1;->this$1:Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2;

    iget-object v2, v2, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2;->val$appId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 91
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v0, :cond_2

    .line 92
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2$1$1;->this$2:Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2$1;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2$1;->this$1:Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2;->val$h5LoadingDialog:Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;

    if-eqz v1, :cond_1

    .line 93
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2$1$1;->this$2:Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2$1;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2$1;->this$1:Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2;->val$h5LoadingDialog:Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->dismiss()V

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2$1$1;->this$2:Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2$1;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2$1;->this$1:Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2;->val$finalBundle:Landroid/os/Bundle;

    sget-object v2, Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl;->NEBULA_FALLBACK_APP_ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/b;->c()Lcom/alipay/mobile/framework/c;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2$1$1;->this$2:Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2$1;

    iget-object v3, v3, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2$1;->this$1:Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2;

    iget-object v3, v3, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2;->val$appId:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2$1$1;->this$2:Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2$1;

    iget-object v4, v4, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2$1;->this$1:Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2;

    iget-object v4, v4, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2;->val$finalBundle:Landroid/os/Bundle;

    .line 97
    invoke-virtual {v1, v2, v3, v4}, Lcom/alipay/mobile/framework/c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 98
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2$1$1;->this$2:Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2$1;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2$1;->this$1:Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity;->finish()V

    goto :goto_0

    .line 100
    :cond_2
    new-instance v1, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2$1$1$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2$1$1$1;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2$1$1;)V

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
