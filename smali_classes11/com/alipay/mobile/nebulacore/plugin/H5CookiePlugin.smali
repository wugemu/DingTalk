.class public Lcom/alipay/mobile/nebulacore/plugin/H5CookiePlugin;
.super Lipd;
.source "H5CookiePlugin.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5CookiePlugin"


# instance fields
.field private h5Page:Liop;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lipd;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5CookiePlugin;->h5Page:Liop;

    return-void
.end method

.method private getCookie(Liny;)V
    .locals 8
    .param p1, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 53
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5CookiePlugin;->h5Page:Liop;

    invoke-interface {v5}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "appId"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "appId":Ljava/lang/String;
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5CookiePlugin;->h5Page:Liop;

    invoke-interface {v5}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "isH5app"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v3

    .line 55
    .local v3, "isH5app":Z
    const-string/jumbo v5, "H5CookiePlugin"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "appId:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " isH5App:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    if-nez v3, :cond_0

    .line 57
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/plugin/H5CookiePlugin;->setError(Liny;)V

    .line 75
    :goto_0
    return-void

    .line 61
    :cond_0
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 62
    .local v4, "result":Lcom/alibaba/fastjson/JSONObject;
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5CookiePlugin;->h5Page:Liop;

    invoke-interface {v5}, Liop;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "currentUrl":Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5CookieUtil;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "cookieStr":Ljava/lang/String;
    const-string/jumbo v5, "H5CookiePlugin"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "host:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " cookieStr:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 66
    const-string/jumbo v5, "success"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string/jumbo v5, "cookie"

    invoke-virtual {v4, v5, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-interface {p1, v4}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto :goto_0

    .line 71
    :cond_1
    const-string/jumbo v5, "error"

    const/16 v6, 0xb

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string/jumbo v5, "errorMessage"

    .line 73
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/alipay/mobile/nebula/R$string;->h5_not_get_value:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 72
    invoke-virtual {v4, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-interface {p1, v4}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto :goto_0
.end method

.method private getMtopToken(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 12
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 87
    .line 2121
    iget-object v4, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 88
    .local v4, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v8, ".taobao.com"

    .line 89
    .local v8, "url":Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string/jumbo v9, "domain"

    invoke-virtual {v4, v9}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string/jumbo v9, "domain"

    .line 90
    invoke-virtual {v4, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 91
    const-string/jumbo v9, "domain"

    invoke-virtual {v4, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 94
    :cond_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 95
    .local v1, "cookieManager":Landroid/webkit/CookieManager;
    invoke-virtual {v1, v8}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "cookie":Ljava/lang/String;
    const-string/jumbo v7, ""

    .line 98
    .local v7, "token":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 101
    const-string/jumbo v9, "; "

    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 102
    .local v5, "pattern":Ljava/util/regex/Pattern;
    if-eqz v5, :cond_1

    .line 103
    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "pairs":[Ljava/lang/String;
    array-length v10, v3

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v10, :cond_1

    aget-object v2, v3, v9

    .line 105
    .local v2, "pair":Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string/jumbo v11, "_m_h5_tk="

    invoke-virtual {v2, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 106
    const-string/jumbo v9, "_m_h5_tk="

    const-string/jumbo v10, ""

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 113
    .end local v2    # "pair":Ljava/lang/String;
    .end local v3    # "pairs":[Ljava/lang/String;
    .end local v5    # "pattern":Ljava/util/regex/Pattern;
    :cond_1
    new-instance v6, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v6}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 114
    .local v6, "result":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v9, "token"

    invoke-virtual {v6, v9, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-interface {p2, v6}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 116
    return-void

    .line 104
    .end local v6    # "result":Lcom/alibaba/fastjson/JSONObject;
    .restart local v2    # "pair":Ljava/lang/String;
    .restart local v3    # "pairs":[Ljava/lang/String;
    .restart local v5    # "pattern":Ljava/util/regex/Pattern;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method private setError(Liny;)V
    .locals 4
    .param p1, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 78
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/nebula/R$string;->h5_norightinvoke:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "prompt":Ljava/lang/String;
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 80
    .local v1, "result":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "error"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string/jumbo v2, "errorMessage"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-interface {p1, v1}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 83
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 3
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 36
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 37
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "getMtopToken"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 39
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5CookiePlugin;->getMtopToken(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 40
    :catch_0
    move-exception v1

    .line 41
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v2, "H5CookiePlugin"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 43
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :cond_1
    const-string/jumbo v2, "getCookie"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1081
    iget-object v2, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 44
    instance-of v2, v2, Liop;

    if-eqz v2, :cond_0

    .line 2081
    iget-object v2, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 45
    check-cast v2, Liop;

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5CookiePlugin;->h5Page:Liop;

    .line 46
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5CookiePlugin;->getCookie(Liny;)V

    goto :goto_0
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 30
    const-string/jumbo v0, "getMtopToken"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 31
    const-string/jumbo v0, "getCookie"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 32
    return-void
.end method
