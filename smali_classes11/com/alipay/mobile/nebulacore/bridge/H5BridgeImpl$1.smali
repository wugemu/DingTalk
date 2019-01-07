.class Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl$1;
.super Ljava/lang/Object;
.source "H5BridgeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->postNative(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;

.field final synthetic val$event:Lcom/alipay/mobile/h5container/api/H5Event;

.field final synthetic val$h5BridgeContext:Liny;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl$1;->this$0:Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl$1;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl$1;->val$h5BridgeContext:Liny;

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
    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl$1;->this$0:Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl$1;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl$1;->val$h5BridgeContext:Liny;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->access$000(Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    .line 134
    return-void
.end method
