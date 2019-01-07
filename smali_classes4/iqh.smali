.class public final Liqh;
.super Ljava/lang/Object;
.source "H5WSUtils.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Liqh;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lcom/alipay/mobile/h5container/api/H5Event;)Ljava/lang/String;
    .locals 4
    .param p0, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .prologue
    .line 39
    .line 1081
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 39
    check-cast v1, Liop;

    .line 40
    .local v1, "h5page":Liop;
    invoke-interface {v1}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v2

    .line 41
    .local v2, "startParams":Landroid/os/Bundle;
    const-string/jumbo v3, "appId"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "appId":Ljava/lang/String;
    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "dataJson"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 106
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 130
    .end local p0    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 110
    .restart local p0    # "url":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .local v3, "urlBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "?"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_4

    .line 112
    const-string/jumbo v4, "&"

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 113
    const-string/jumbo v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 119
    .local v0, "dataEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 120
    .local v2, "key":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 123
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 127
    .end local v0    # "dataEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "urlBuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "H5WSUtils"

    const-string/jumbo v5, "appendQueryJson2Url error."

    invoke-static {v4, v5, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 116
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v3    # "urlBuilder":Ljava/lang/StringBuilder;
    :cond_4
    :try_start_1
    const-string/jumbo v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 125
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p0

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/fastjson/JSONObject;)Ljava/util/Map;
    .locals 8
    .param p0, "jSONObject"    # Lcom/alibaba/fastjson/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 79
    .local v2, "hashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string/jumbo v5, "header"

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 80
    .local v3, "headerJson":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 94
    .end local v3    # "headerJson":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    :goto_0
    return-object v2

    .line 84
    .restart local v3    # "headerJson":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 85
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 86
    .local v4, "key":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 89
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 91
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "headerJson":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "H5WSUtils"

    const-string/jumbo v6, "get header error, exception : "

    invoke-static {v5, v6, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static final a(Liny;Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;)V
    .locals 2
    .param p0, "bridgeContext"    # Liny;
    .param p1, "wsResultEnum"    # Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    .prologue
    .line 67
    invoke-virtual {p1}, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->getErrCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->getErrMsg()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Liny;->sendError(ILjava/lang/String;)V

    .line 68
    return-void
.end method

.method public static final a(Liny;Ljava/lang/String;)V
    .locals 1
    .param p0, "bridgeContext"    # Liny;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 63
    sget-object v0, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->UNKNOW_ERROR:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    invoke-virtual {v0}, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->getErrCode()I

    move-result v0

    invoke-interface {p0, v0, p1}, Liny;->sendError(ILjava/lang/String;)V

    .line 64
    return-void
.end method

.method public static final b(Lcom/alipay/mobile/h5container/api/H5Event;)Ljava/lang/String;
    .locals 5
    .param p0, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .prologue
    .line 47
    sget-object v1, Liqh;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    sget-object v1, Liqh;->a:Ljava/lang/String;

    .line 58
    :goto_0
    return-object v1

    .line 2081
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 51
    check-cast v0, Liop;

    .line 52
    .local v0, "h5page":Liop;
    if-eqz v0, :cond_1

    .line 53
    invoke-interface {v0}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    .line 54
    sput-object v1, Liqh;->a:Ljava/lang/String;

    goto :goto_0

    .line 57
    :cond_1
    const-string/jumbo v1, "Mozilla/Alipay (Linux; Android SDK %s; %s %s %s Build) AppleWebKit (KHTML, like Gecko) Mobile Safari"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 58
    sput-object v1, Liqh;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public static final b(Liny;Ljava/lang/String;)V
    .locals 2
    .param p0, "bridgeContext"    # Liny;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 71
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 72
    .local v0, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-interface {p0, v0}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 74
    return-void
.end method
