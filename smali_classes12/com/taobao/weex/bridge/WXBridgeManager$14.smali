.class Lcom/taobao/weex/bridge/WXBridgeManager$14;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->trackComponentAndModulesTime()V
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
    .line 1698
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$14;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

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
    .line 1701
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/taobao/weex/WXEnvironment;->sSDKInitStart:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/taobao/weex/WXEnvironment;->sComponentsAndModulesReadyTime:J

    .line 1702
    const-string/jumbo v0, "ComponentModulesReadyTime"

    sget-wide v2, Lcom/taobao/weex/WXEnvironment;->sComponentsAndModulesReadyTime:J

    invoke-static {v0, v2, v3}, Lcom/taobao/weex/utils/WXLogUtils;->renderPerformanceLog(Ljava/lang/String;J)V

    .line 1703
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ComponentModulesReadyTime "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v2, Lcom/taobao/weex/WXEnvironment;->sComponentsAndModulesReadyTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 1704
    return-void
.end method
