.class Lcom/alipay/mobile/nebulacore/ui/H5Activity$5;
.super Ljava/lang/Object;
.source "H5Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/ui/H5Activity;->onPageParamReady(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .prologue
    .line 500
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$5;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 504
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$5;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->access$100(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$5;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .line 505
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 506
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getUcService()Lcom/alipay/mobile/h5container/service/UcService;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "none"

    .line 507
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getServiceDownGradeMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$5;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initPageContent because of UcService not found"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    new-instance v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$5$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity$5$1;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity$5;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 520
    :cond_0
    return-void
.end method
