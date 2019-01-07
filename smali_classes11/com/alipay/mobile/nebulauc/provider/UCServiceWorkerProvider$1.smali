.class final Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider$1;
.super Ljava/lang/Object;
.source "UCServiceWorkerProvider.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider;->sendServiceWorkerPushMessage(Ljava/util/HashMap;Lioa;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lioa;

.field final synthetic b:Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider;Lioa;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider$1;->b:Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider;

    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider$1;->a:Lioa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 33
    if-eqz p1, :cond_0

    move-object v1, p1

    .line 34
    check-cast v1, Landroid/os/Bundle;

    .line 35
    .local v1, "info":Landroid/os/Bundle;
    const-string/jumbo v4, "appId"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "appid":Ljava/lang/String;
    const-string/jumbo v4, "messageId"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, "messageId":Ljava/lang/String;
    const-string/jumbo v4, "result"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 38
    .local v3, "ret":Ljava/lang/String;
    const-string/jumbo v4, "UCServiceWorkerProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "sendServiceWorkerPushMessage onReceiveValue appid="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", messageId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider$1;->a:Lioa;

    if-eqz v4, :cond_0

    .line 41
    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider$1;->a:Lioa;

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONObject(Landroid/os/Bundle;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    invoke-interface {v4, v5}, Lioa;->onCallBack(Lcom/alibaba/fastjson/JSONObject;)V

    .line 44
    .end local v0    # "appid":Ljava/lang/String;
    .end local v1    # "info":Landroid/os/Bundle;
    .end local v2    # "messageId":Ljava/lang/String;
    .end local v3    # "ret":Ljava/lang/String;
    :cond_0
    return-void
.end method
