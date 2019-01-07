.class public Lorg/apache/http/impl/DefaultConnectionReuseStrategy;
.super Ljava/lang/Object;
.source "DefaultConnectionReuseStrategy.java"

# interfaces
.implements Lorg/apache/http/ConnectionReuseStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method


# virtual methods
.method protected createTokenIterator(Lorg/apache/http/HeaderIterator;)Lorg/apache/http/TokenIterator;
    .locals 1
    .param p1, "hit"    # Lorg/apache/http/HeaderIterator;

    .prologue
    .line 171
    new-instance v0, Lorg/apache/http/message/BasicTokenIterator;

    invoke-direct {v0, p1}, Lorg/apache/http/message/BasicTokenIterator;-><init>(Lorg/apache/http/HeaderIterator;)V

    return-object v0
.end method

.method public keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 12
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 71
    if-nez p1, :cond_0

    .line 72
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "HTTP response may not be null."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 75
    :cond_0
    if-nez p2, :cond_1

    .line 76
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "HTTP context may not be null."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 80
    :cond_1
    const-string/jumbo v7, "http.connection"

    invoke-interface {p2, v7}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpConnection;

    .line 83
    .local v0, "conn":Lorg/apache/http/HttpConnection;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/apache/http/HttpConnection;->isOpen()Z

    move-result v7

    if-nez v7, :cond_2

    .line 84
    const/4 v7, 0x0

    .line 157
    :goto_0
    return v7

    .line 89
    :cond_2
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 90
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v6

    .line 91
    .local v6, "ver":Lorg/apache/http/ProtocolVersion;
    if-eqz v1, :cond_4

    .line 92
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gez v7, :cond_4

    .line 93
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v7, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    invoke-virtual {v6, v7}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 97
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 105
    :cond_4
    const-string/jumbo v7, "Connection"

    invoke-interface {p1, v7}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    move-result-object v2

    .line 106
    .local v2, "hit":Lorg/apache/http/HeaderIterator;
    invoke-interface {v2}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_5

    .line 107
    const-string/jumbo v7, "Proxy-Connection"

    invoke-interface {p1, v7}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    move-result-object v2

    .line 132
    :cond_5
    invoke-interface {v2}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 134
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;->createTokenIterator(Lorg/apache/http/HeaderIterator;)Lorg/apache/http/TokenIterator;

    move-result-object v4

    .line 135
    .local v4, "ti":Lorg/apache/http/TokenIterator;
    const/4 v3, 0x0

    .line 136
    .local v3, "keepalive":Z
    :cond_6
    :goto_1
    invoke-interface {v4}, Lorg/apache/http/TokenIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 137
    invoke-interface {v4}, Lorg/apache/http/TokenIterator;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 138
    .local v5, "token":Ljava/lang/String;
    const-string/jumbo v7, "Close"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 139
    const/4 v7, 0x0

    goto :goto_0

    .line 140
    :cond_7
    const-string/jumbo v7, "Keep-Alive"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_6

    .line 142
    const/4 v3, 0x1

    goto :goto_1

    .line 145
    .end local v5    # "token":Ljava/lang/String;
    :cond_8
    if-eqz v3, :cond_9

    .line 146
    const/4 v7, 0x1

    goto :goto_0

    .line 152
    .end local v3    # "keepalive":Z
    .end local v4    # "ti":Lorg/apache/http/TokenIterator;
    :catch_0
    move-exception v7

    const/4 v7, 0x0

    goto :goto_0

    .line 157
    :cond_9
    sget-object v7, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    invoke-virtual {v6, v7}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result v7

    if-nez v7, :cond_a

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_0
.end method
