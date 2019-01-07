.class public Lcom/alipay/mobile/nebula/schemeIntercept/H5SchemeInterceptUtil;
.super Ljava/lang/Object;
.source "H5SchemeInterceptUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCompetitiveListWarp()Lcom/alipay/mobile/nebula/schemeIntercept/H5SchemeIntercept;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 16
    const-class v4, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 17
    .local v0, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v0, :cond_1

    .line 18
    const-string/jumbo v4, "h5_newcompetitiveList"

    invoke-interface {v0, v4}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 19
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 20
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 21
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 22
    const-string/jumbo v4, "enableUse"

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 23
    .local v2, "use":Ljava/lang/String;
    const-string/jumbo v4, "YES"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 24
    new-instance v4, Lcom/alipay/mobile/nebula/schemeIntercept/H5SchemeIntercept;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Lcom/alipay/mobile/nebula/schemeIntercept/H5SchemeIntercept;-><init>(Ljava/lang/String;Z)V

    .line 32
    .end local v1    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "use":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 29
    .restart local v3    # "value":Ljava/lang/String;
    :cond_0
    new-instance v4, Lcom/alipay/mobile/nebula/schemeIntercept/H5SchemeIntercept;

    const-string/jumbo v5, "h5_competitiveList"

    .line 30
    invoke-interface {v0, v5}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v6}, Lcom/alipay/mobile/nebula/schemeIntercept/H5SchemeIntercept;-><init>(Ljava/lang/String;Z)V

    goto :goto_0

    .line 32
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    new-instance v4, Lcom/alipay/mobile/nebula/schemeIntercept/H5SchemeIntercept;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v6}, Lcom/alipay/mobile/nebula/schemeIntercept/H5SchemeIntercept;-><init>(Ljava/lang/String;Z)V

    goto :goto_0
.end method
