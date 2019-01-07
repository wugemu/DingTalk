.class Lcom/alipay/mobile/nebulacore/ui/H5Activity$3$1;
.super Ljava/lang/Object;
.source "H5Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/ui/H5Activity$3;->onPageParam(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/nebulacore/ui/H5Activity$3;

.field final synthetic val$bundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity$3;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulacore/ui/H5Activity$3;

    .prologue
    .line 434
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$3$1;->this$1:Lcom/alipay/mobile/nebulacore/ui/H5Activity$3;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$3$1;->val$bundle:Landroid/os/Bundle;

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
    .line 437
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$3$1;->this$1:Lcom/alipay/mobile/nebulacore/ui/H5Activity$3;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$3;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$3$1;->val$bundle:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->access$000(Lcom/alipay/mobile/nebulacore/ui/H5Activity;Landroid/os/Bundle;)V

    .line 438
    return-void
.end method
