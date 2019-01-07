.class Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager$1;
.super Lcom/taobao/weex/devtools/inspector/helper/PeersRegisteredListener;
.source "NetworkPeerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;


# direct methods
.method constructor <init>(Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager$1;->this$0:Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;

    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/helper/PeersRegisteredListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFirstPeerRegistered()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 64
    invoke-static {}, Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinterExecutorHolder;->ensureInitialized()V

    .line 65
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager$1;->this$0:Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;

    invoke-static {v0}, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;->access$000(Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;)Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinterRegistry;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager$1;->this$0:Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;

    invoke-static {v0}, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;->access$100(Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;)Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinterInitializer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager$1;->this$0:Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;

    new-instance v1, Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinterRegistry;

    invoke-direct {v1}, Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinterRegistry;-><init>()V

    invoke-static {v0, v1}, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;->access$002(Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinterRegistry;)Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinterRegistry;

    .line 67
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager$1;->this$0:Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;

    invoke-static {v0}, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;->access$100(Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;)Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinterInitializer;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager$1;->this$0:Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;

    invoke-static {v1}, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;->access$000(Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;)Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinterRegistry;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinterInitializer;->populatePrettyPrinters(Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinterRegistry;)V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager$1;->this$0:Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;

    invoke-static {v0}, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;->access$200(Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;)Lcom/taobao/weex/devtools/inspector/network/ResponseBodyFileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/devtools/inspector/network/ResponseBodyFileManager;->cleanupFiles()V

    .line 70
    return-void
.end method

.method protected onLastPeerUnregistered()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager$1;->this$0:Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;

    invoke-static {v0}, Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;->access$200(Lcom/taobao/weex/devtools/inspector/network/NetworkPeerManager;)Lcom/taobao/weex/devtools/inspector/network/ResponseBodyFileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/devtools/inspector/network/ResponseBodyFileManager;->cleanupFiles()V

    .line 75
    invoke-static {}, Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinterExecutorHolder;->shutdown()V

    .line 76
    return-void
.end method
