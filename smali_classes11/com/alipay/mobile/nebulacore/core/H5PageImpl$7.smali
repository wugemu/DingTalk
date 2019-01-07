.class Lcom/alipay/mobile/nebulacore/core/H5PageImpl$7;
.super Ljava/lang/Object;
.source "H5PageImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->initNetWorkListen(Linx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

.field final synthetic val$bridge:Linx;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;Linx;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .prologue
    .line 535
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$7;->this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$7;->val$bridge:Linx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkChanged(Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;)V
    .locals 3
    .param p1, "ot"    # Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;
    .param p2, "nt"    # Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 538
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$7;->this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->access$400(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "isTinyApp"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 539
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$7;->this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getSession()Lipc;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$7;->this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getSession()Lipc;

    move-result-object v0

    invoke-interface {v0}, Lipc;->getTopPage()Liop;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$7;->this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eq v0, v1, :cond_1

    .line 542
    :cond_0
    const-string/jumbo v0, "H5PageImpl"

    const-string/jumbo v1, "H5_NETWORK_CHANGE but do not send from non-top page in tiny"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    :goto_0
    return-void

    .line 545
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$7;->this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$7;->val$bridge:Linx;

    invoke-static {v0, p2, v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->access$500(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;Linx;)V

    goto :goto_0
.end method
