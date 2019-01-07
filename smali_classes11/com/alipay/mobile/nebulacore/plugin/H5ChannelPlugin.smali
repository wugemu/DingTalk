.class public Lcom/alipay/mobile/nebulacore/plugin/H5ChannelPlugin;
.super Lipd;
.source "H5ChannelPlugin.java"


# static fields
.field private static final POST_MESSAGE:Ljava/lang/String; = "postMessage"

.field private static final TAG:Ljava/lang/String; = "H5ChannelPlugin"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lipd;-><init>()V

    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 14
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 33
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 34
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v10, "postMessage"

    invoke-static {v0, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1121
    iget-object v7, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 2081
    .local v7, "params":Lcom/alibaba/fastjson/JSONObject;
    iget-object v2, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 37
    check-cast v2, Liop;

    .line 38
    .local v2, "h5Page":Liop;
    if-eqz v2, :cond_0

    .line 39
    invoke-interface {v2}, Liop;->getSession()Lipc;

    move-result-object v4

    .line 40
    .local v4, "h5Session":Lipc;
    if-eqz v4, :cond_0

    .line 41
    invoke-interface {v4}, Lipc;->getServiceWorkerID()Ljava/lang/String;

    move-result-object v9

    .line 42
    .local v9, "workId":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 43
    const-string/jumbo v10, "H5ChannelPlugin"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "postMessage workId "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v3

    .line 45
    .local v3, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v3, :cond_0

    .line 47
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 48
    .local v1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v10, "appId"

    invoke-virtual {v1, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 50
    .local v5, "jo":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v10, "pageId"

    invoke-interface {v2}, Liop;->getPageId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string/jumbo v10, "viewId"

    invoke-interface {v2}, Liop;->getWebViewId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string/jumbo v10, "data"

    invoke-virtual {v5, v10, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v6

    .line 54
    .local v6, "message":Ljava/lang/String;
    const-string/jumbo v10, "message"

    invoke-virtual {v1, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string/jumbo v10, "messageId"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-virtual {v3, v1}, Lcom/alipay/mobile/h5container/service/H5Service;->sendServiceWorkerPushMessage(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v1    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    .end local v4    # "h5Session":Lipc;
    .end local v5    # "jo":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "message":Ljava/lang/String;
    .end local v9    # "workId":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v10, 0x1

    .line 66
    .end local v2    # "h5Page":Liop;
    .end local v7    # "params":Lcom/alibaba/fastjson/JSONObject;
    :goto_1
    return v10

    .line 57
    .restart local v2    # "h5Page":Liop;
    .restart local v3    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    .restart local v4    # "h5Session":Lipc;
    .restart local v7    # "params":Lcom/alibaba/fastjson/JSONObject;
    .restart local v9    # "workId":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 58
    .local v8, "t":Ljava/lang/Throwable;
    const-string/jumbo v10, "H5ChannelPlugin"

    const-string/jumbo v11, "catch exception "

    invoke-static {v10, v11, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 66
    .end local v2    # "h5Page":Liop;
    .end local v3    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    .end local v4    # "h5Session":Lipc;
    .end local v7    # "params":Lcom/alibaba/fastjson/JSONObject;
    .end local v8    # "t":Ljava/lang/Throwable;
    .end local v9    # "workId":Ljava/lang/String;
    :cond_1
    invoke-super/range {p0 .. p2}, Lipd;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v10

    goto :goto_1
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 28
    const-string/jumbo v0, "postMessage"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 29
    return-void
.end method
