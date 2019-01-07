.class public Liqd;
.super Ljava/lang/Object;
.source "H5TinyAppProviderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handlerOnAppConfig(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 52
    return-void
.end method

.method public handlerOnPushWindowParam(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 140
    if-eqz p1, :cond_0

    .line 141
    const-string/jumbo v0, "pullRefresh"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const-string/jumbo v0, "pullRefresh"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 144
    const-string/jumbo v0, "H5TinyAppProviderImpl"

    const-string/jumbo v1, "handlerOnPushWindowParam remove pullRefresh"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_0
    return-void
.end method

.method public handlerOnShareData(Liop;)Lcom/alibaba/fastjson/JSONObject;
    .locals 4
    .param p1, "h5Page"    # Liop;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 124
    if-nez p1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-object v1

    .line 127
    :cond_1
    const-string/jumbo v2, "MINI-PROGRAM-WEB-VIEW-PAGE-TAG"

    invoke-interface {p1, v2}, Liop;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 129
    .local v0, "o":Ljava/lang/Object;
    instance-of v2, v0, Liop;

    if-eqz v2, :cond_0

    .line 130
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 131
    .local v1, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "webViewUrl"

    check-cast v0, Liop;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-interface {v0}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/webview/APWebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public handlerOnWorkLog(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "log"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 117
    invoke-static {p2}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;->sendWebWorkerLog(Ljava/lang/Object;)V

    .line 1151
    if-eqz p2, :cond_0

    instance-of v0, p2, Ljava/util/HashMap;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 1152
    check-cast v0, Ljava/util/HashMap;

    const-string/jumbo v1, "event"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, p2

    .line 1153
    check-cast v1, Ljava/util/HashMap;

    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1156
    const-string/jumbo v2, "OnReportException"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1157
    const-string/jumbo v0, "H5TinyAppProviderImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "reportErrorOnRender jsError "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 1159
    if-eqz v0, :cond_0

    .line 1160
    const-string/jumbo v2, "h5_reportErrorOnRender"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1161
    const-string/jumbo v2, "no"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1162
    new-instance v0, Liqd$1;

    invoke-direct {v0, v1, p2}, Liqd$1;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 120
    :cond_0
    return-void
.end method
