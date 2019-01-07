.class Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$2;
.super Ljava/lang/Object;
.source "NebulaServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->startPage(Lcom/alipay/mobile/h5container/api/H5Context;Linz;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$h5Context:Lcom/alipay/mobile/h5container/api/H5Context;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;Landroid/os/Bundle;Landroid/content/Context;Lcom/alipay/mobile/h5container/api/H5Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;

    .prologue
    .line 537
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$2;->this$0:Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$2;->val$bundle:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$2;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$2;->val$h5Context:Lcom/alipay/mobile/h5container/api/H5Context;

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
    .line 541
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$2;->val$bundle:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/Nebula;->commonParamParse(Landroid/os/Bundle;)V

    .line 542
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$2;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$2;->val$bundle:Landroid/os/Bundle;

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebulacore/Nebula;->commonStartActivity(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    .line 544
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5ActivityProvider;

    .line 545
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ActivityProvider;

    .line 546
    .local v0, "h5ActivityProvider":Lcom/alipay/mobile/nebula/provider/H5ActivityProvider;
    if-eqz v0, :cond_2

    .line 547
    const-string/jumbo v2, "H5NebulaService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "context "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$2;->val$context:Landroid/content/Context;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$2;->val$context:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 549
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 551
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$2;->val$context:Landroid/content/Context;

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/nebula/provider/H5ActivityProvider;->handlerStartActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 559
    :cond_1
    :goto_0
    return-void

    .line 555
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$2;->val$h5Context:Lcom/alipay/mobile/h5container/api/H5Context;

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->startActivity(Lcom/alipay/mobile/h5container/api/H5Context;Landroid/content/Intent;)V

    .line 556
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$2;->val$bundle:Landroid/os/Bundle;

    const-string/jumbo v3, "closeAllActivityAnimation"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 557
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$2;->val$h5Context:Lcom/alipay/mobile/h5container/api/H5Context;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$2;->val$bundle:Landroid/os/Bundle;

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->setActivityStart(Lcom/alipay/mobile/h5container/api/H5Context;Landroid/os/Bundle;)V

    goto :goto_0
.end method
