.class Lcom/taobao/weex/bridge/WXBridgeManager$1;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->setSandBoxContext(Z)V
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
    .line 238
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$1;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

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
    .line 241
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$1;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$000(Lcom/taobao/weex/bridge/WXBridgeManager;Z)V

    .line 242
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->resetAllModuleState()V

    .line 244
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$100()Z

    move-result v1

    if-nez v1, :cond_0

    .line 245
    const-string/jumbo v1, "main.js"

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXFileUtils;->loadAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "jsf":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$1;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v1, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$200(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V

    .line 250
    invoke-static {}, Lcom/taobao/weex/bridge/WXServiceManager;->reload()V

    .line 251
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->reload()V

    .line 252
    invoke-static {}, Lcom/taobao/weex/ui/WXComponentRegistry;->reload()V

    .line 253
    return-void

    .line 247
    .end local v0    # "jsf":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "weex-main-jsfm.js"

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXFileUtils;->loadAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "jsf":Ljava/lang/String;
    goto :goto_0
.end method
