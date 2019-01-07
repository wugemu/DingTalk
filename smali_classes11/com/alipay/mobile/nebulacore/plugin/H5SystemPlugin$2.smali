.class Lcom/alipay/mobile/nebulacore/plugin/H5SystemPlugin$2;
.super Ljava/lang/Object;
.source "H5SystemPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5SystemPlugin;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/plugin/H5SystemPlugin;

.field final synthetic val$bridgeContext:Liny;

.field final synthetic val$event:Lcom/alipay/mobile/h5container/api/H5Event;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5SystemPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5SystemPlugin;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SystemPlugin$2;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5SystemPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SystemPlugin$2;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SystemPlugin$2;->val$bridgeContext:Liny;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SystemPlugin$2;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5SystemPlugin;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SystemPlugin$2;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SystemPlugin$2;->val$bridgeContext:Liny;

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebulacore/plugin/H5SystemPlugin;->access$100(Lcom/alipay/mobile/nebulacore/plugin/H5SystemPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v1, "H5SystemPlugin"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
