.class Lcom/taobao/weex/bridge/WXBridgeManager$12;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->destroyInstance(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$instanceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/bridge/WXBridgeManager;

    .prologue
    .line 1430
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$12;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$12;->val$instanceId:Ljava/lang/String;

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
    .line 1433
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$12;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$12;->val$instanceId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$700(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V

    .line 1434
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$12;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$12;->val$instanceId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$800(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V

    .line 1435
    return-void
.end method
