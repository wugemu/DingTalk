.class public Lcom/alipay/mobile/nebula/util/H5DomainUtil;
.super Ljava/lang/Object;
.source "H5DomainUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5DomainUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNewDomainSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 18
    .local v1, "uri":Landroid/net/Uri;
    const/4 v0, 0x0

    .line 19
    .local v0, "newDomainSuffix":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 22
    :cond_0
    return-object v0
.end method

.method public static isInDomain(Ljava/lang/String;Ljava/util/List;)Z
    .locals 5
    .param p0, "domainSuffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "regexArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 46
    if-nez p0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v2

    .line 50
    :cond_1
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 51
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 52
    .local v0, "match":Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->matchRegex(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    .line 53
    const/4 v2, 0x1

    goto :goto_0

    .line 57
    .end local v0    # "match":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 58
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "H5DomainUtil"

    const-string/jumbo v4, "exception detail."

    invoke-static {v3, v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static isSomeDomainInternal(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "domainSuffix"    # Ljava/lang/String;
    .param p1, "regexArray"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 26
    if-nez p0, :cond_1

    .line 42
    :cond_0
    :goto_0
    return v4

    .line 30
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 31
    .local v0, "domainArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v0, :cond_0

    .line 32
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 33
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "domainRegex":Ljava/lang/String;
    invoke-static {v1, p0}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->matchRegex(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    .line 35
    const/4 v4, 0x1

    goto :goto_0

    .line 32
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 39
    .end local v0    # "domainArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v1    # "domainRegex":Ljava/lang/String;
    .end local v2    # "i":I
    :catch_0
    move-exception v3

    .line 40
    .local v3, "t":Ljava/lang/Throwable;
    const-string/jumbo v5, "H5DomainUtil"

    const-string/jumbo v6, "exception detail."

    invoke-static {v5, v6, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
