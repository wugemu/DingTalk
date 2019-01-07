.class public Lcom/alipay/mobile/nebula/util/H5ResourceCORSUtil;
.super Ljava/lang/Object;
.source "H5ResourceCORSUtil.java"


# static fields
.field private static sWhiteListHosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebula/util/H5ResourceCORSUtil;->sWhiteListHosts:Ljava/util/List;

    .line 23
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ResourceCORSUtil;->initConfig()V

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCORSUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "pageUrl"    # Ljava/lang/String;

    .prologue
    .line 84
    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 85
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 87
    .end local v0    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static initConfig()V
    .locals 10

    .prologue
    .line 27
    const-class v8, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 28
    .local v5, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-nez v5, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    const-string/jumbo v8, "h5_CORSWhiteList"

    invoke-interface {v5, v8}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "configText":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 36
    :try_start_0
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 37
    .local v0, "array":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 38
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    sput-object v8, Lcom/alipay/mobile/nebula/util/H5ResourceCORSUtil;->sWhiteListHosts:Ljava/util/List;

    .line 39
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    .line 40
    .local v6, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v6, :cond_0

    .line 42
    :try_start_1
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 43
    .local v4, "pattern":Ljava/util/regex/Pattern;
    if-eqz v4, :cond_2

    .line 44
    sget-object v8, Lcom/alipay/mobile/nebula/util/H5ResourceCORSUtil;->sWhiteListHosts:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 40
    .end local v4    # "pattern":Ljava/util/regex/Pattern;
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 46
    :catch_0
    move-exception v2

    .line 48
    .local v2, "e":Ljava/util/regex/PatternSyntaxException;
    :try_start_2
    const-string/jumbo v8, "H5ResourceCORSUtil"

    const-string/jumbo v9, "pattern error"

    invoke-static {v8, v9, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 52
    .end local v0    # "array":Lcom/alibaba/fastjson/JSONArray;
    .end local v2    # "e":Ljava/util/regex/PatternSyntaxException;
    .end local v3    # "i":I
    .end local v6    # "size":I
    :catch_1
    move-exception v7

    .line 53
    .local v7, "t":Ljava/lang/Throwable;
    const-string/jumbo v8, "H5ResourceCORSUtil"

    const-string/jumbo v9, "parse config error"

    invoke-static {v8, v9, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static needAddHeader(Ljava/lang/String;)Z
    .locals 7
    .param p0, "resourceUrl"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 60
    :try_start_0
    sget-object v5, Lcom/alipay/mobile/nebula/util/H5ResourceCORSUtil;->sWhiteListHosts:Ljava/util/List;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/alipay/mobile/nebula/util/H5ResourceCORSUtil;->sWhiteListHosts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v4

    .line 64
    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 65
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 66
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "host":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 68
    sget-object v5, Lcom/alipay/mobile/nebula/util/H5ResourceCORSUtil;->sWhiteListHosts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/regex/Pattern;

    .line 69
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 70
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_2

    .line 71
    const/4 v4, 0x1

    goto :goto_0

    .line 78
    .end local v0    # "host":Ljava/lang/String;
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v2    # "p":Ljava/util/regex/Pattern;
    .end local v3    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v5

    goto :goto_0
.end method
