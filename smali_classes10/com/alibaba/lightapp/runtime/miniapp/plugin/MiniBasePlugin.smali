.class public Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniBasePlugin;
.super Lipd;
.source "MiniBasePlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lipd;-><init>()V

    return-void
.end method

.method protected static a(Lcom/alipay/mobile/h5container/api/H5Event;)Landroid/content/Context;
    .locals 1
    .param p0, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .prologue
    .line 41
    if-nez p0, :cond_0

    .line 42
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    .locals 2
    .param p0, "errorCode"    # Ljava/lang/String;
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 48
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 49
    .local v0, "err":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "error"

    invoke-virtual {v0, v1, p0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string/jumbo v1, "errorMessage"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-object v0
.end method

.method protected static a(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Ljava/lang/String;
    .locals 5
    .param p0, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p1, "h5BridgeContext"    # Liny;

    .prologue
    const/4 v0, 0x0

    .line 24
    if-nez p0, :cond_1

    .line 37
    :cond_0
    :goto_0
    return-object v0

    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Event;->b()Liop;

    move-result-object v1

    .line 29
    .local v1, "page":Liop;
    if-nez v1, :cond_2

    .line 30
    if-eqz p1, :cond_0

    .line 31
    const/16 v3, 0x2715

    const-string/jumbo v4, "page is null"

    invoke-interface {p1, v3, v4}, Liny;->sendError(ILjava/lang/String;)V

    goto :goto_0

    .line 35
    :cond_2
    invoke-interface {v1}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v2

    .line 36
    .local v2, "params":Landroid/os/Bundle;
    const-string/jumbo v3, "appId"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "miniAppId":Ljava/lang/String;
    goto :goto_0
.end method
