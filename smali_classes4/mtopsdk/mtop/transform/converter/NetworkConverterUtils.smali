.class public Lmtopsdk/mtop/transform/converter/NetworkConverterUtils;
.super Ljava/lang/Object;
.source "NetworkConverterUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.NetworkConverterUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createParamQueryStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lli;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "params":Ljava/util/List;, "Ljava/util/List<Lli;>;"
    if-eqz p0, :cond_3

    .line 56
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 57
    const-string/jumbo p1, "utf-8"

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v6, 0x40

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 60
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lli;>;"
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 61
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lli;

    .line 63
    .local v4, "param":Lli;
    :try_start_0
    invoke-interface {v4}, Lli;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v4}, Lli;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 67
    const-string/jumbo v6, "&"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "mtopsdk.NetworkConverterUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "[createParamQueryStr]getQueryStr error ---"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v4    # "param":Lli;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 75
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lli;>;"
    :goto_1
    return-object v6

    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public static initUrl(Ljava/lang/String;Ljava/util/List;)Ljava/net/URL;
    .locals 7
    .param p0, "baseUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lli;",
            ">;)",
            "Ljava/net/URL;"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "queryParams":Ljava/util/List;, "Ljava/util/List<Lli;>;"
    const/4 v3, 0x0

    .line 25
    .local v3, "url":Ljava/net/URL;
    invoke-static {p0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 26
    const-string/jumbo v5, "mtopsdk.NetworkConverterUtils"

    const-string/jumbo v6, "[initUrl]  baseUrl is blank, initUrl error"

    invoke-static {v5, v6}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const/4 v5, 0x0

    .line 43
    :goto_0
    return-object v5

    .line 31
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .local v1, "fullUrl":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_1

    .line 33
    const-string/jumbo v5, "utf-8"

    invoke-static {p1, v5}, Lmtopsdk/mtop/transform/converter/NetworkConverterUtils;->createParamQueryStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, "queryStr":Ljava/lang/String;
    invoke-static {v2}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "?"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 35
    const-string/jumbo v5, "?"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .end local v2    # "queryStr":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/net/URL;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "url":Ljava/net/URL;
    .local v4, "url":Ljava/net/URL;
    move-object v3, v4

    .end local v1    # "fullUrl":Ljava/lang/StringBuilder;
    .end local v4    # "url":Ljava/net/URL;
    .restart local v3    # "url":Ljava/net/URL;
    :goto_1
    move-object v5, v3

    .line 43
    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "mtopsdk.NetworkConverterUtils"

    const-string/jumbo v6, "[initUrl]initUrl new URL error"

    invoke-static {v5, v6, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
