.class public Lcom/alipay/mobile/nebula/util/TestDataUtils;
.super Ljava/lang/Object;
.source "TestDataUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5TestDataUtils"

.field private static bridgeParams:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebula/util/TestDataUtils;->bridgeParams:Lcom/alibaba/fastjson/JSONObject;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized injectJSParams(Lcom/alipay/mobile/nebula/webview/APWebView;)V
    .locals 3
    .param p0, "webView"    # Lcom/alipay/mobile/nebula/webview/APWebView;

    .prologue
    .line 36
    const-class v1, Lcom/alipay/mobile/nebula/util/TestDataUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/nebula/util/TestDataUtils;->bridgeParams:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/nebula/util/TestDataUtils;->bridgeParams:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    const-string/jumbo v0, "H5TestDataUtils"

    const-string/jumbo v2, "will be inject into AlipayJSBridge.devPerformance"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "javascript:(function(){if(typeof AlipayJSBridge === \'object\'){AlipayJSBridge.devPerformance4Test=\'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/mobile/nebula/util/TestDataUtils;->bridgeParams:Lcom/alibaba/fastjson/JSONObject;

    .line 40
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\';}})();"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-interface {p0, v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->loadUrl(Ljava/lang/String;)V

    .line 41
    sget-object v0, Lcom/alipay/mobile/nebula/util/TestDataUtils;->bridgeParams:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_0
    monitor-exit v1

    return-void

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static storeJSParams(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 15
    sget-object v2, Lcom/alipay/mobile/nebula/util/TestDataUtils;->bridgeParams:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/alipay/mobile/nebula/util/TestDataUtils;->bridgeParams:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v2, p0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 16
    const-string/jumbo v2, "H5TestDataUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "store key "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    const-string/jumbo v2, "\\|"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, "keys":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    .line 19
    sget-object v2, Lcom/alipay/mobile/nebula/util/TestDataUtils;->bridgeParams:Lcom/alibaba/fastjson/JSONObject;

    aget-object v3, v0, v5

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 20
    sget-object v2, Lcom/alipay/mobile/nebula/util/TestDataUtils;->bridgeParams:Lcom/alibaba/fastjson/JSONObject;

    aget-object v3, v0, v5

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 21
    .local v1, "subObj":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v1, :cond_0

    .line 22
    aget-object v2, v0, v6

    invoke-virtual {v1, v2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .end local v0    # "keys":[Ljava/lang/String;
    .end local v1    # "subObj":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 25
    .restart local v0    # "keys":[Ljava/lang/String;
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 26
    .restart local v1    # "subObj":Lcom/alibaba/fastjson/JSONObject;
    aget-object v2, v0, v6

    invoke-virtual {v1, v2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v2, Lcom/alipay/mobile/nebula/util/TestDataUtils;->bridgeParams:Lcom/alibaba/fastjson/JSONObject;

    aget-object v3, v0, v5

    invoke-virtual {v2, v3, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 30
    .end local v1    # "subObj":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    sget-object v2, Lcom/alipay/mobile/nebula/util/TestDataUtils;->bridgeParams:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v2, p0, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
