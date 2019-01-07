.class public Lcom/alipay/mobile/tinyappcommon/embedview/H5WebViewMessagePlugin;
.super Lipd;
.source "H5WebViewMessagePlugin.java"


# static fields
.field public static final GET_EMBED_WEBVIEW_ENV:Ljava/lang/String; = "getEmbedWebViewEnv"

.field public static final POST_WEBVIEW_MESSAGE:Ljava/lang/String; = "postWebViewMessage"

.field protected static final TAG:Ljava/lang/String; = "H5WebViewMessagePlugin"


# instance fields
.field private a:Liop;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lipd;-><init>()V

    return-void
.end method

.method private a()Liop;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/embedview/H5WebViewMessagePlugin;->a:Liop;

    .line 121
    .local v0, "mainDOMPage":Liop;
    iget-object v2, p0, Lcom/alipay/mobile/tinyappcommon/embedview/H5WebViewMessagePlugin;->a:Liop;

    const-string/jumbo v3, "MINI-PROGRAM-WEB-VIEW-PAGE-TAG"

    invoke-interface {v2, v3}, Liop;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 122
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Liop;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 123
    check-cast v0, Liop;

    .line 125
    :cond_0
    return-object v0
.end method

.method private static a(ZLiny;)V
    .locals 3
    .param p0, "isMiniProgramEnv"    # Z
    .param p1, "context"    # Liny;

    .prologue
    .line 165
    if-nez p1, :cond_0

    .line 170
    :goto_0
    return-void

    .line 167
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 168
    .local v0, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "miniprogram"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-interface {p1, v0}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto :goto_0
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 8
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 49
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->b()Liop;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/tinyappcommon/embedview/H5WebViewMessagePlugin;->a:Liop;

    .line 51
    const-string/jumbo v0, "postWebViewMessage"

    .line 1065
    iget-object v3, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 51
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2061
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/embedview/H5WebViewMessagePlugin;->a:Liop;

    if-nez v0, :cond_1

    .line 2062
    const-string/jumbo v0, "H5WebViewMessagePlugin"

    const-string/jumbo v2, "postWebViewMessage...h5Page is null"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_0
    :goto_0
    return v1

    .line 2121
    :cond_1
    :try_start_0
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 2067
    const-string/jumbo v2, "type"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2069
    const-string/jumbo v2, "H5WebViewMessagePlugin"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "postWebViewMessage...type="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2071
    const-string/jumbo v2, "message"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2073
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 3121
    iget-object v2, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 2074
    const-string/jumbo v3, "detail"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 2075
    const-string/jumbo v3, "detail"

    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2076
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "message"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2078
    iget-object v2, p0, Lcom/alipay/mobile/tinyappcommon/embedview/H5WebViewMessagePlugin;->a:Liop;

    invoke-interface {v2}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "element"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2079
    const-string/jumbo v3, "element"

    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2082
    invoke-direct {p0}, Lcom/alipay/mobile/tinyappcommon/embedview/H5WebViewMessagePlugin;->a()Liop;

    move-result-object v2

    invoke-interface {v2}, Liop;->getBridge()Linx;

    move-result-object v2

    const-string/jumbo v3, "nbcomponent.webview.onFromMessage"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4}, Linx;->sendDataWarpToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2110
    :catch_0
    move-exception v0

    .line 2111
    const-string/jumbo v2, "H5WebViewMessagePlugin"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "postWebViewMessage...e="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2084
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/tinyappcommon/embedview/H5WebViewMessagePlugin;->a:Liop;

    invoke-interface {v2}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "MINI-PROGRAM-WEB-VIEW-TAG"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2086
    invoke-virtual {p0, v2, v0}, Lcom/alipay/mobile/tinyappcommon/embedview/H5WebViewMessagePlugin;->shouldInterceptPostWebViewAction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2087
    const-string/jumbo v2, "H5WebViewMessagePlugin"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "postWebViewMessage...type:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " will-be-intercepted"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2092
    :cond_3
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 4121
    iget-object v3, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 2094
    const-string/jumbo v4, "callback"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v3

    .line 5121
    iget-object v4, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 2095
    const-string/jumbo v5, "param"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 2097
    iget-object v5, p0, Lcom/alipay/mobile/tinyappcommon/embedview/H5WebViewMessagePlugin;->a:Liop;

    invoke-interface {v5}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "viewId"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2098
    iget-object v6, p0, Lcom/alipay/mobile/tinyappcommon/embedview/H5WebViewMessagePlugin;->a:Liop;

    invoke-interface {v6}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "element"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2100
    const-string/jumbo v7, "viewId"

    invoke-virtual {v2, v7, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2101
    const-string/jumbo v5, "element"

    invoke-virtual {v2, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2102
    const-string/jumbo v5, "type"

    invoke-virtual {v2, v5, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2103
    const-string/jumbo v0, "callback"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2104
    const-string/jumbo v0, "param"

    invoke-virtual {v2, v0, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2107
    invoke-direct {p0}, Lcom/alipay/mobile/tinyappcommon/embedview/H5WebViewMessagePlugin;->a()Liop;

    move-result-object v0

    invoke-interface {v0}, Liop;->getBridge()Linx;

    move-result-object v0

    const-string/jumbo v3, "nbcomponent.webview.onFromMessage"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v2, v4}, Linx;->sendDataWarpToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 53
    :cond_4
    const-string/jumbo v0, "getEmbedWebViewEnv"

    .line 6065
    iget-object v3, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 53
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6148
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/embedview/H5WebViewMessagePlugin;->a:Liop;

    if-eqz v0, :cond_5

    .line 6149
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/embedview/H5WebViewMessagePlugin;->a:Liop;

    invoke-interface {v0}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "MINI-PROGRAM-WEB-VIEW-TAG"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6150
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_1
    invoke-static {v0, p2}, Lcom/alipay/mobile/tinyappcommon/embedview/H5WebViewMessagePlugin;->a(ZLiny;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 6155
    :cond_5
    :goto_2
    invoke-static {v2, p2}, Lcom/alipay/mobile/tinyappcommon/embedview/H5WebViewMessagePlugin;->a(ZLiny;)V

    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 6150
    goto :goto_1

    .line 6152
    :catch_1
    move-exception v0

    .line 6153
    const-string/jumbo v3, "H5WebViewMessagePlugin"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getEnv...e="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lipd;->onPrepare(Liof;)V

    .line 38
    const-string/jumbo v0, "postWebViewMessage"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 39
    const-string/jumbo v0, "getEmbedWebViewEnv"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public onRelease()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/tinyappcommon/embedview/H5WebViewMessagePlugin;->a:Liop;

    .line 45
    return-void
.end method

.method protected shouldInterceptPostWebViewAction(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method
