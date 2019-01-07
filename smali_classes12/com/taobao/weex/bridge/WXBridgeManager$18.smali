.class final Lcom/taobao/weex/bridge/WXBridgeManager$18;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->updateGlobalConfig(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2124
    sget-object v1, Lcom/taobao/weex/bridge/WXBridgeManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    if-eqz v1, :cond_0

    .line 2125
    sget-object v1, Lcom/taobao/weex/bridge/WXBridgeManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$1600(Lcom/taobao/weex/bridge/WXBridgeManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2126
    sget-object v1, Lcom/taobao/weex/bridge/WXBridgeManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$1700(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/common/IWXBridge;

    move-result-object v1

    instance-of v1, v1, Lcom/taobao/weex/bridge/WXBridge;

    if-eqz v1, :cond_0

    .line 2127
    sget-object v1, Lcom/taobao/weex/bridge/WXBridgeManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$1700(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/common/IWXBridge;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/bridge/WXBridge;

    .line 2128
    .local v0, "bridge":Lcom/taobao/weex/bridge/WXBridge;
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$1800()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/bridge/WXBridge;->nativeUpdateGlobalConfig(Ljava/lang/String;)V

    .line 2132
    .end local v0    # "bridge":Lcom/taobao/weex/bridge/WXBridge;
    :cond_0
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$1800()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wson_off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2133
    const/4 v1, 0x0

    sput-boolean v1, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->USE_WSON:Z

    .line 2137
    :goto_0
    return-void

    .line 2135
    :cond_1
    const/4 v1, 0x1

    sput-boolean v1, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->USE_WSON:Z

    goto :goto_0
.end method
