.class public Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDataPlugin;
.super Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniBasePlugin;
.source "MiniDataPlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniBasePlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 8
    .param p1, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "h5BridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 33
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 35
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "requestTemplateData"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2044
    invoke-static {p1, p2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDataPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Ljava/lang/String;

    move-result-object v3

    .line 2121
    iget-object v1, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 2045
    const-string/jumbo v4, "codeType"

    invoke-static {v1, v4, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v4

    .line 2046
    const-string/jumbo v1, "MiniDataPlugin"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "requestTemplateData.call"

    aput-object v6, v5, v7

    const-string/jumbo v6, "miniAppId="

    aput-object v6, v5, v2

    const/4 v6, 0x2

    aput-object v3, v5, v6

    const/4 v6, 0x3

    const-string/jumbo v7, "codeType="

    aput-object v7, v5, v6

    const/4 v6, 0x4

    .line 2047
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 3093
    const-string/jumbo v6, "mini_data"

    invoke-static {v6, v1, v5}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2049
    if-eqz v3, :cond_0

    .line 2050
    const-class v1, Lcom/alibaba/lightapp/runtime/miniapp/rpc/OpenAppAuthIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/lightapp/runtime/miniapp/rpc/OpenAppAuthIService;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDataPlugin$1;

    invoke-direct {v5, p0, p2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDataPlugin$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDataPlugin;Liny;)V

    invoke-interface {v1, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/miniapp/rpc/OpenAppAuthIService;->getUserAppMsgCode(Ljava/lang/String;Ljava/lang/Integer;Liyv;)V

    :cond_0
    move v1, v2

    .line 40
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniBasePlugin;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 28
    const-string/jumbo v0, "requestTemplateData"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 29
    return-void
.end method
