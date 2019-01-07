.class Lcom/alipay/mobile/nebulacore/ui/H5Fragment$2$1;
.super Ljava/lang/Object;
.source "H5Fragment.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/ui/H5Fragment$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/nebulacore/ui/H5Fragment$2;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5Fragment$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulacore/ui/H5Fragment$2;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$2$1;->this$1:Lcom/alipay/mobile/nebulacore/ui/H5Fragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 299
    const-string/jumbo v0, "H5Fragment"

    const-string/jumbo v1, "queueIdle"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$2$1;->this$1:Lcom/alipay/mobile/nebulacore/ui/H5Fragment$2;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$2;->val$preRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 301
    const/4 v0, 0x0

    return v0
.end method
