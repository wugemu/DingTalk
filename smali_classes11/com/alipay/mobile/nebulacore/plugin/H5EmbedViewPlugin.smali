.class public Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;
.super Lipd;
.source "H5EmbedViewPlugin.java"


# static fields
.field private static final NB_RENDER:Ljava/lang/String; = "NBComponent.render"

.field private static final NB_SENDMSG:Ljava/lang/String; = "NBComponent.sendMessage"

.field private static final TAG:Ljava/lang/String; = "H5EmbedViewPlugin"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lipd;-><init>()V

    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 12
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v11, 0x0

    .line 33
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 34
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v9, "NBComponent.render"

    invoke-static {v0, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "NBComponent.sendMessage"

    invoke-static {v0, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1121
    :cond_0
    iget-object v7, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 36
    .local v7, "params":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v9, "element"

    invoke-static {v7, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2081
    .local v3, "elementId":Ljava/lang/String;
    iget-object v6, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 37
    check-cast v6, Liop;

    .line 38
    .local v6, "h5Page":Liop;
    if-eqz v6, :cond_3

    .line 39
    invoke-interface {v6}, Liop;->getEmbededViewProvider()Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;

    move-result-object v5

    .line 40
    .local v5, "embededViewProvider":Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;
    if-eqz v5, :cond_3

    .line 42
    invoke-interface {v5, v3}, Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;->getEmbedViewWrapperById(Ljava/lang/String;)Lcom/alipay/mobile/nebula/view/IH5EmbedView;

    move-result-object v4

    .line 43
    .local v4, "embedViewWrapper":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    const-string/jumbo v9, "NBComponent.render"

    invoke-static {v0, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 44
    const-string/jumbo v9, "H5EmbedViewPlugin"

    const-string/jumbo v10, "NB_RENDER"

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    if-eqz v4, :cond_2

    .line 46
    const-string/jumbo v9, "props"

    invoke-static {v7, v9, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    .line 47
    .local v8, "props":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v9, "data"

    invoke-static {v7, v9, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 48
    .local v2, "data":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    .line 49
    invoke-virtual {v2, v8}, Lcom/alibaba/fastjson/JSONObject;->putAll(Ljava/util/Map;)V

    .line 51
    :cond_1
    const-string/jumbo v9, "element"

    invoke-virtual {v2, v9, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-interface {v4, v2, p2}, Lcom/alipay/mobile/nebula/view/IH5EmbedView;->onReceivedRender(Lcom/alibaba/fastjson/JSONObject;Liny;)V

    .line 55
    .end local v2    # "data":Lcom/alibaba/fastjson/JSONObject;
    .end local v8    # "props":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    const-string/jumbo v9, "NBComponent.sendMessage"

    invoke-static {v0, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 56
    const-string/jumbo v9, "H5EmbedViewPlugin"

    const-string/jumbo v10, "NB_SENDMSG"

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    if-eqz v4, :cond_3

    .line 58
    const-string/jumbo v9, "actionType"

    invoke-static {v7, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "actionType":Ljava/lang/String;
    const-string/jumbo v9, "data"

    invoke-static {v7, v9, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 60
    .restart local v2    # "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v9, "element"

    invoke-virtual {v2, v9, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-interface {v4, v1, v2, p2}, Lcom/alipay/mobile/nebula/view/IH5EmbedView;->onReceivedMessage(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Liny;)V

    .line 66
    .end local v1    # "actionType":Ljava/lang/String;
    .end local v2    # "data":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "embedViewWrapper":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    .end local v5    # "embededViewProvider":Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;
    :cond_3
    const/4 v9, 0x1

    .line 68
    .end local v3    # "elementId":Ljava/lang/String;
    .end local v6    # "h5Page":Liop;
    .end local v7    # "params":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    return v9

    :cond_4
    invoke-super {p0, p1, p2}, Lipd;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v9

    goto :goto_0
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 27
    const-string/jumbo v0, "NBComponent.render"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 28
    const-string/jumbo v0, "NBComponent.sendMessage"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 29
    return-void
.end method
