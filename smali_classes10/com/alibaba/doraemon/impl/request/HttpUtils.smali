.class public Lcom/alibaba/doraemon/impl/request/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCharset(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 7
    .param p0, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 19
    const-string/jumbo v5, "Content-Type"

    invoke-interface {p0, v5}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 20
    .local v1, "header":Lorg/apache/http/Header;
    if-eqz v1, :cond_1

    .line 21
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "contentType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 23
    const-string/jumbo v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 24
    .local v4, "params":[Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_1

    .line 25
    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 26
    .local v3, "pair":[Ljava/lang/String;
    array-length v5, v3

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 27
    const/4 v5, 0x0

    aget-object v5, v3, v5

    const-string/jumbo v6, "charset"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 28
    const/4 v5, 0x1

    aget-object v5, v3, v5

    .line 34
    .end local v0    # "contentType":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "pair":[Ljava/lang/String;
    .end local v4    # "params":[Ljava/lang/String;
    :goto_1
    return-object v5

    .line 24
    .restart local v0    # "contentType":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "pair":[Ljava/lang/String;
    .restart local v4    # "params":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 34
    .end local v0    # "contentType":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "pair":[Ljava/lang/String;
    .end local v4    # "params":[Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static getHeader(Lorg/apache/http/HttpResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "response"    # Lorg/apache/http/HttpResponse;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-interface {p0, p1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 39
    .local v0, "header":Lorg/apache/http/Header;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static isGzipContent(Lorg/apache/http/HttpResponse;)Z
    .locals 2
    .param p0, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 52
    const-string/jumbo v0, "Content-Encoding"

    invoke-static {p0, v0}, Lcom/alibaba/doraemon/impl/request/HttpUtils;->getHeader(Lorg/apache/http/HttpResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "gzip"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isSupportRange(Lorg/apache/http/HttpResponse;)Z
    .locals 4
    .param p0, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    const/4 v1, 0x1

    .line 43
    const-string/jumbo v2, "Accept-Ranges"

    invoke-static {p0, v2}, Lcom/alibaba/doraemon/impl/request/HttpUtils;->getHeader(Lorg/apache/http/HttpResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "bytes"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v1

    .line 46
    :cond_1
    const-string/jumbo v2, "Content-Range"

    invoke-static {p0, v2}, Lcom/alibaba/doraemon/impl/request/HttpUtils;->getHeader(Lorg/apache/http/HttpResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string/jumbo v2, "bytes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
