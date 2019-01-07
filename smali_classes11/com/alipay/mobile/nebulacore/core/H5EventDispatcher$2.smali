.class Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$2;
.super Ljava/lang/Object;
.source "H5EventDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;->dispatch(Lcom/alipay/mobile/h5container/api/H5Event;Liny;Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$Policy;)Lcom/alipay/mobile/h5container/api/H5Event$Error;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;

.field final synthetic val$context:Liny;

.field final synthetic val$event:Lcom/alipay/mobile/h5container/api/H5Event;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$2;->this$0:Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$2;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$2;->val$context:Liny;

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
    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$2;->this$0:Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$2;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher$2;->val$context:Liny;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;->access$000(Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    .line 90
    return-void
.end method
