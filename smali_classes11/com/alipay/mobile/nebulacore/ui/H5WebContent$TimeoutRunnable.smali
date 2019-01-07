.class Lcom/alipay/mobile/nebulacore/ui/H5WebContent$TimeoutRunnable;
.super Ljava/lang/Object;
.source "H5WebContent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/ui/H5WebContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimeoutRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)V
    .locals 0

    .prologue
    .line 642
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$TimeoutRunnable;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 643
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 647
    const-string/jumbo v0, "H5WebContent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "TimeoutRunnable timeout,pullFreshTimeOut :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$TimeoutRunnable;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->access$1000(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$TimeoutRunnable;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->access$1000(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    const-string/jumbo v0, "H5WebContent"

    const-string/jumbo v1, "TimeoutRunnable timeout,invoke restorePullToRefresh"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$TimeoutRunnable;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->access$1100(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Lcom/alipay/mobile/nebula/view/H5Progress;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/view/H5Progress;->setVisibility(I)V

    .line 651
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$TimeoutRunnable;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->access$400(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->fitContent()V

    .line 652
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$TimeoutRunnable;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->access$1002(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;Z)Z

    .line 653
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$TimeoutRunnable;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->access$702(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;Z)Z

    .line 657
    :goto_0
    return-void

    .line 655
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$TimeoutRunnable;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->access$1002(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;Z)Z

    goto :goto_0
.end method
