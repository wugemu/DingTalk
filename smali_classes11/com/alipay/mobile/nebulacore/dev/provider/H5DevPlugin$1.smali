.class Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin$1;
.super Ljava/lang/Object;
.source "H5DevPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->access$000(Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;)Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->access$000(Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;)Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->getScheduler()Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;->access$000(Lcom/alipay/mobile/nebulacore/dev/provider/H5DevPlugin;)Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;->getScheduler()Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/util/batched/BatchedScheduler;->resume()V

    .line 195
    :cond_0
    return-void
.end method
