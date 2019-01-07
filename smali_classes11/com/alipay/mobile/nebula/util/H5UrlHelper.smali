.class public Lcom/alipay/mobile/nebula/util/H5UrlHelper;
.super Ljava/lang/Object;
.source "H5UrlHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5UrlHelper"

.field private static sCachedPurifyUrlMap:Lfq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfq",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sCachedUriMap:Lfq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfq",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x14

    .line 14
    new-instance v0, Lfq;

    invoke-direct {v0, v1}, Lfq;-><init>(I)V

    sput-object v0, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->sCachedUriMap:Lfq;

    .line 15
    new-instance v0, Lfq;

    invoke-direct {v0, v1}, Lfq;-><init>(I)V

    sput-object v0, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->sCachedPurifyUrlMap:Lfq;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 113
    const/4 v0, 0x0

    .line 115
    .local v0, "decoded":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v2, "utf-8"

    invoke-static {p0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 119
    :goto_0
    return-object v0

    .line 116
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "H5UrlHelper"

    const-string/jumbo v3, "Exception"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static final encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 103
    const/4 v1, 0x0

    .line 105
    .local v1, "encoded":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v2, "utf-8"

    invoke-static {p0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 109
    :goto_0
    return-object v1

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "H5UrlHelper"

    const-string/jumbo v3, "Exception"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 69
    .local v1, "uri":Landroid/net/Uri;
    const/4 v0, 0x0

    .line 70
    .local v0, "host":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 73
    :cond_0
    return-object v0
.end method

.method public static getOnlineHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-object v0

    .line 126
    :cond_1
    const-string/jumbo v1, "file:///"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "data:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getParam(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 86
    if-nez p0, :cond_0

    .line 99
    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 89
    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .line 91
    .local v1, "value":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 96
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    move-object v1, p2

    :cond_1
    move-object p2, v1

    .line 99
    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "H5UrlHelper"

    const-string/jumbo v3, "Exception"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 78
    .local v1, "uri":Landroid/net/Uri;
    const/4 v0, 0x0

    .line 79
    .local v0, "path":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 82
    :cond_0
    return-object v0
.end method

.method public static isUrlInDomainArray(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 9
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "domainArray"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 134
    const/4 v3, 0x0

    .line 135
    .local v3, "isIn":Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz p1, :cond_0

    array-length v6, p1

    if-nez v6, :cond_1

    .line 163
    :cond_0
    :goto_0
    return v5

    .line 139
    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 140
    .local v4, "uri":Landroid/net/Uri;
    if-nez v4, :cond_2

    .line 141
    const-string/jumbo v6, "H5UrlHelper"

    const-string/jumbo v7, "parse auto url failed!"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_2
    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "host":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 147
    const-string/jumbo v6, "H5UrlHelper"

    const-string/jumbo v7, "can\'t get url host"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 153
    :try_start_0
    array-length v6, p1

    :goto_1
    if-ge v5, v6, :cond_5

    aget-object v0, p1, v5

    .line 154
    .local v0, "domain":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "."

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 155
    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_6

    .line 156
    :cond_4
    const/4 v3, 0x1

    .end local v0    # "domain":Ljava/lang/String;
    :cond_5
    :goto_2
    move v5, v3

    .line 163
    goto :goto_0

    .line 153
    .restart local v0    # "domain":Ljava/lang/String;
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 160
    .end local v0    # "domain":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 161
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "H5UrlHelper"

    const-string/jumbo v6, "match auto login exception."

    invoke-static {v5, v6, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static parseUrl(Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    const/4 v1, 0x0

    .line 64
    :cond_0
    :goto_0
    return-object v1

    .line 54
    :cond_1
    sget-object v2, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->sCachedUriMap:Lfq;

    invoke-virtual {v2, p0}, Lfq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 55
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 59
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 60
    sget-object v2, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->sCachedUriMap:Lfq;

    invoke-virtual {v2, p0, v1}, Lfq;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "H5UrlHelper"

    const-string/jumbo v3, "parse url exception."

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static purifyUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 18
    sget-object v4, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->sCachedPurifyUrlMap:Lfq;

    invoke-virtual {v4, p0}, Lfq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 20
    .local v2, "result":Ljava/lang/String;
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 44
    .end local v2    # "result":Ljava/lang/String;
    .local v3, "result":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 24
    .end local v3    # "result":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/String;
    :cond_0
    move-object v2, p0

    .line 26
    :try_start_0
    const-string/jumbo v4, "#"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 27
    .local v0, "pageHashIndex":I
    if-eq v0, v5, :cond_1

    .line 28
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 31
    :cond_1
    const-string/jumbo v4, "??"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 32
    sget-object v4, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->sCachedPurifyUrlMap:Lfq;

    invoke-virtual {v4, p0, v2}, Lfq;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v2

    .line 33
    .end local v2    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_0

    .line 36
    .end local v3    # "result":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "?"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 37
    .local v1, "queryParamIndex":I
    if-eq v1, v5, :cond_3

    .line 38
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 40
    :cond_3
    sget-object v4, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->sCachedPurifyUrlMap:Lfq;

    invoke-virtual {v4, p0, v2}, Lfq;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v2

    .line 41
    .end local v2    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_0

    .line 43
    .end local v0    # "pageHashIndex":I
    .end local v1    # "queryParamIndex":I
    .end local v3    # "result":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/String;
    :catch_0
    move-exception v4

    sget-object v4, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->sCachedPurifyUrlMap:Lfq;

    invoke-virtual {v4, p0, v2}, Lfq;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v2

    .line 44
    .end local v2    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public static stripAnchor(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 170
    const/16 v2, 0x23

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 171
    .local v1, "anchorIndex":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 172
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "afterUrl":Ljava/lang/String;
    const-string/jumbo v2, "H5UrlHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "stripAnchor url:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " afterUrl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .end local v0    # "afterUrl":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method
