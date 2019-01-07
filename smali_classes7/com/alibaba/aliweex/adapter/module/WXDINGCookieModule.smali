.class public Lcom/alibaba/aliweex/adapter/module/WXDINGCookieModule;
.super Lcom/alibaba/lightapp/runtime/weex/DDWXModule;
.source "WXDINGCookieModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/DDWXModule;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 25
    invoke-static {}, Lcom/uc/webview/export/CookieManager;->getInstance()Lcom/uc/webview/export/CookieManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/aliweex/adapter/module/WXDINGCookieModule;->getDomainUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/uc/webview/export/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "cookies":Ljava/lang/String;
    const-string/jumbo v1, "WXCookieModule"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "get cookie :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-object v0
.end method

.method public getAllObjects()Ljava/util/ArrayList;
    .locals 13
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v12, 0x1

    .line 59
    invoke-static {}, Lcom/uc/webview/export/CookieManager;->getInstance()Lcom/uc/webview/export/CookieManager;

    move-result-object v10

    invoke-virtual {p0}, Lcom/alibaba/aliweex/adapter/module/WXDINGCookieModule;->getDomainUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/uc/webview/export/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "cookies":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 61
    const-string/jumbo v10, "\""

    const-string/jumbo v11, "\\\\\""

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "cookieData":Ljava/lang/String;
    const-string/jumbo v10, ";"

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "cookiesArray":[Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v8, "resultValues":Ljava/util/ArrayList;
    array-length v7, v3

    .line 66
    .local v7, "length":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v7, :cond_1

    .line 67
    aget-object v0, v3, v6

    .line 68
    .local v0, "cookie":Ljava/lang/String;
    const-string/jumbo v10, "="

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, "datas":[Ljava/lang/String;
    if-eqz v4, :cond_0

    array-length v10, v4

    if-le v10, v12, :cond_0

    .line 71
    :try_start_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 72
    .local v5, "e":Ljava/util/HashMap;
    const-string/jumbo v10, "name"

    const/4 v11, 0x0

    aget-object v11, v4, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string/jumbo v10, "value"

    const/4 v11, 0x1

    aget-object v11, v4, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v5    # "e":Ljava/util/HashMap;
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 75
    :catch_0
    move-exception v9

    .line 76
    .local v9, "var10":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 81
    .end local v0    # "cookie":Ljava/lang/String;
    .end local v4    # "datas":[Ljava/lang/String;
    .end local v9    # "var10":Ljava/lang/Exception;
    :cond_1
    const-string/jumbo v10, "WXCookieModule"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "get cookies :"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/taobao/weex/utils/WXLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .end local v1    # "cookieData":Ljava/lang/String;
    .end local v3    # "cookiesArray":[Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "length":I
    .end local v8    # "resultValues":Ljava/util/ArrayList;
    :goto_2
    return-object v8

    :cond_2
    const/4 v8, 0x0

    goto :goto_2
.end method

.method public getAllObjectsAsync(Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/alibaba/aliweex/adapter/module/WXDINGCookieModule;->getAllObjects()Ljava/util/ArrayList;

    move-result-object v0

    .line 93
    .local v0, "data":Ljava/util/ArrayList;
    if-eqz p1, :cond_0

    .line 94
    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    .line 96
    :cond_0
    return-void
.end method

.method public getAsync(Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/alibaba/aliweex/adapter/module/WXDINGCookieModule;->get()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "cookies":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 36
    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    .line 38
    :cond_0
    return-void
.end method
