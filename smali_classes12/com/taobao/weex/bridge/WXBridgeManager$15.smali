.class Lcom/taobao/weex/bridge/WXBridgeManager$15;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->registerModules(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$modules:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/bridge/WXBridgeManager;

    .prologue
    .line 1826
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$15;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$15;->val$modules:Ljava/util/Map;

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
    .line 1829
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$15;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$15;->val$modules:Ljava/util/Map;

    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$15;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$1000(Lcom/taobao/weex/bridge/WXBridgeManager;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$1100(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/util/Map;Ljava/util/List;)V

    .line 1830
    return-void
.end method
