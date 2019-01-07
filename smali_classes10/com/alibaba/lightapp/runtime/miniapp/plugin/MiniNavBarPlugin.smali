.class public Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniNavBarPlugin;
.super Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniBasePlugin;
.source "MiniNavBarPlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniBasePlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 5
    .param p1, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "h5BridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 28
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 30
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "setShowSystemMenu"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2039
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->b()Liop;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2040
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->b()Liop;

    move-result-object v2

    invoke-interface {v2}, Liop;->getH5TitleBar()Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2121
    iget-object v2, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 2041
    const-string/jumbo v3, "showSystemMenu"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    .line 2042
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 2043
    const-string/jumbo v4, "showSystemMenu"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2045
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->b()Liop;

    move-result-object v2

    invoke-interface {v2}, Liop;->getH5TitleBar()Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-result-object v2

    .line 2046
    invoke-interface {v2, v3}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setOptionMenu(Lcom/alibaba/fastjson/JSONObject;)V

    .line 2048
    invoke-interface {p2}, Liny;->sendSuccess()V

    .line 35
    :goto_0
    return v1

    .line 2051
    :cond_0
    const/16 v2, 0x2710

    const-string/jumbo v3, "either page or titlebar is null"

    invoke-interface {p2, v2, v3}, Liny;->sendError(ILjava/lang/String;)V

    goto :goto_0

    .line 35
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniBasePlugin;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 23
    const-string/jumbo v0, "setShowSystemMenu"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 24
    return-void
.end method
