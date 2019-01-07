.class Lcom/alipay/mobile/nebulacore/ui/H5Fragment$2;
.super Ljava/lang/Object;
.source "H5Fragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->postPreRenderRunnable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

.field final synthetic val$finalTime:I

.field final synthetic val$preRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;ILjava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$2;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    iput p2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$2;->val$finalTime:I

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$2;->val$preRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 293
    const-string/jumbo v0, "H5Fragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "runOnMain "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$2;->val$finalTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$2$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$2$1;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5Fragment$2;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 304
    return-void
.end method
