.class Lcom/taobao/weex/bridge/WXBridgeManager$10;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->createInstance(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/bridge/WXBridgeManager;

    .prologue
    .line 1180
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$10;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

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
    .line 1183
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$10;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$200(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V

    .line 1184
    return-void
.end method
