.class Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin$1;
.super Ljava/lang/Object;
.source "H5ShareDataPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin;

.field final synthetic val$bridgeContext:Liny;

.field final synthetic val$event:Lcom/alipay/mobile/h5container/api/H5Event;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin$1;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin$1;->val$bridgeContext:Liny;

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
    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin$1;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin$1;->val$bridgeContext:Liny;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin;->access$000(Lcom/alipay/mobile/nebulacore/plugin/H5ShareDataPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    .line 37
    return-void
.end method
