.class Lcom/alipay/mobile/nebulacore/ui/H5Activity$4;
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
    .line 480
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$4;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 483
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$4;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 484
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$4;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "fragmentManager "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$4;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->access$100(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$4;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .line 485
    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->access$200(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 484
    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$4;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->access$100(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    move-result-object v1

    if-nez v1, :cond_1

    .line 488
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v1

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 489
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 490
    .local v0, "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    if-eqz v0, :cond_0

    .line 491
    const-string/jumbo v1, "h5_wait_uc_init_timeout"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$4;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->access$300(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V

    .line 497
    .end local v0    # "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    :cond_1
    return-void
.end method
