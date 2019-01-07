.class public Lcom/alipay/mobile/nebulacore/plugin/H5PushBizWindowReceiver;
.super Landroid/content/BroadcastReceiver;
.source "H5PushBizWindowReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5PushBizWindowReceiver"


# instance fields
.field private h5BridgeContext:Liny;


# direct methods
.method public constructor <init>(Liny;)V
    .locals 0
    .param p1, "h5BridgeContext"    # Liny;

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PushBizWindowReceiver;->h5BridgeContext:Liny;

    .line 27
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 32
    if-eqz p2, :cond_0

    invoke-static {}, Lcom/alipay/mobile/nebulacore/pushbiz/H5PushBizUtil;->getH5BridgeContext()Liny;

    move-result-object v3

    if-nez v3, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    const-string/jumbo v3, "H5PushBizWindowReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "intent "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "action":Ljava/lang/String;
    sget-object v3, Lcom/alipay/mobile/nebulacore/pushbiz/H5PushBizPlugin;->pushBizWindowAction:Ljava/lang/String;

    .line 40
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 44
    invoke-static {v6}, Lcom/alipay/mobile/nebulacore/pushbiz/H5PushBizUtil;->setH5BridgeContext(Liny;)V

    .line 46
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/b;->c()Lcom/alipay/mobile/framework/c;

    move-result-object v3

    const-string/jumbo v4, "20001111"

    .line 47
    invoke-virtual {v3, v6, v4, v6}, Lcom/alipay/mobile/framework/c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 50
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PushBizWindowReceiver;->h5BridgeContext:Liny;

    if-eqz v3, :cond_2

    .line 51
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PushBizWindowReceiver;->h5BridgeContext:Liny;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONObject(Landroid/os/Bundle;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    invoke-interface {v3, v4}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 55
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    .line 56
    .local v2, "manager":Ldq;
    invoke-virtual {v2, p0}, Ldq;->a(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    .end local v2    # "manager":Ldq;
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "H5PushBizWindowReceiver"

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
