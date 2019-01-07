.class public Lcom/alibaba/doraemon/impl/request/HttpHeaderParser;
.super Ljava/lang/Object;
.source "HttpHeaderParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseCacheHeaders(Ljava/util/Map;)Lcom/alibaba/doraemon/impl/request/Cache$Entry;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/doraemon/impl/request/Cache$Entry;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 42
    .local v8, "now":J
    const-wide/16 v10, 0x0

    .line 43
    .local v10, "serverDate":J
    const-wide/16 v14, 0x0

    .line 44
    .local v14, "serverExpires":J
    const-wide/16 v16, 0x0

    .line 45
    .local v16, "softExpire":J
    const-wide/16 v6, 0x0

    .line 46
    .local v6, "maxAge":J
    const/4 v3, 0x0

    .line 48
    .local v3, "hasCacheControl":Z
    const/4 v12, 0x0

    .line 49
    .local v12, "serverEtag":Ljava/lang/String;
    const/4 v4, 0x0

    .line 51
    .local v4, "headerValue":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 52
    const-string/jumbo v19, "Date"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "headerValue":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 53
    .restart local v4    # "headerValue":Ljava/lang/String;
    :cond_0
    if-eqz v4, :cond_1

    .line 54
    invoke-static {v4}, Lcom/alibaba/doraemon/impl/request/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    move-result-wide v10

    .line 56
    :cond_1
    if-eqz p0, :cond_2

    .line 57
    const-string/jumbo v19, "Cache-Control"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "headerValue":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 58
    .restart local v4    # "headerValue":Ljava/lang/String;
    :cond_2
    if-eqz v4, :cond_8

    .line 59
    const/4 v3, 0x1

    .line 60
    const-string/jumbo v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 61
    .local v18, "tokens":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v5, v0, :cond_8

    .line 62
    aget-object v19, v18, v5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 63
    .local v13, "token":Ljava/lang/String;
    const-string/jumbo v19, "no-cache"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3

    const-string/jumbo v19, "no-store"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 64
    :cond_3
    const/4 v2, 0x0

    .line 101
    .end local v5    # "i":I
    .end local v13    # "token":Ljava/lang/String;
    .end local v18    # "tokens":[Ljava/lang/String;
    :goto_1
    return-object v2

    .line 65
    .restart local v5    # "i":I
    .restart local v13    # "token":Ljava/lang/String;
    .restart local v18    # "tokens":[Ljava/lang/String;
    :cond_4
    const-string/jumbo v19, "max-age="

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 67
    const/16 v19, 0x8

    :try_start_0
    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 61
    :cond_5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 70
    :cond_6
    const-string/jumbo v19, "must-revalidate"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    const-string/jumbo v19, "proxy-revalidate"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 71
    :cond_7
    const-wide/16 v6, 0x0

    goto :goto_2

    .line 75
    .end local v5    # "i":I
    .end local v13    # "token":Ljava/lang/String;
    .end local v18    # "tokens":[Ljava/lang/String;
    :cond_8
    if-eqz p0, :cond_9

    .line 76
    const-string/jumbo v19, "Expires"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "headerValue":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 77
    .restart local v4    # "headerValue":Ljava/lang/String;
    :cond_9
    if-eqz v4, :cond_a

    .line 78
    invoke-static {v4}, Lcom/alibaba/doraemon/impl/request/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    move-result-wide v14

    .line 81
    :cond_a
    if-eqz p0, :cond_b

    .line 82
    const-string/jumbo v19, "ETag"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "serverEtag":Ljava/lang/String;
    check-cast v12, Ljava/lang/String;

    .line 86
    .restart local v12    # "serverEtag":Ljava/lang/String;
    :cond_b
    if-eqz v3, :cond_d

    .line 87
    const-wide/16 v20, 0x3e8

    mul-long v20, v20, v6

    add-long v16, v8, v20

    .line 93
    :cond_c
    :goto_3
    new-instance v2, Lcom/alibaba/doraemon/impl/request/Cache$Entry;

    invoke-direct {v2}, Lcom/alibaba/doraemon/impl/request/Cache$Entry;-><init>()V

    .line 95
    .local v2, "entry":Lcom/alibaba/doraemon/impl/request/Cache$Entry;
    iput-object v12, v2, Lcom/alibaba/doraemon/impl/request/Cache$Entry;->etag:Ljava/lang/String;

    .line 96
    move-wide/from16 v0, v16

    iput-wide v0, v2, Lcom/alibaba/doraemon/impl/request/Cache$Entry;->softTtl:J

    .line 97
    iget-wide v0, v2, Lcom/alibaba/doraemon/impl/request/Cache$Entry;->softTtl:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    iput-wide v0, v2, Lcom/alibaba/doraemon/impl/request/Cache$Entry;->ttl:J

    .line 98
    iput-wide v10, v2, Lcom/alibaba/doraemon/impl/request/Cache$Entry;->serverDate:J

    .line 99
    move-object/from16 v0, p0

    iput-object v0, v2, Lcom/alibaba/doraemon/impl/request/Cache$Entry;->responseHeaders:Ljava/util/Map;

    goto :goto_1

    .line 88
    .end local v2    # "entry":Lcom/alibaba/doraemon/impl/request/Cache$Entry;
    :cond_d
    const-wide/16 v20, 0x0

    cmp-long v19, v10, v20

    if-lez v19, :cond_c

    cmp-long v19, v14, v10

    if-ltz v19, :cond_c

    .line 90
    sub-long v20, v14, v10

    add-long v16, v8, v20

    goto :goto_3

    .line 69
    .restart local v5    # "i":I
    .restart local v13    # "token":Ljava/lang/String;
    .restart local v18    # "tokens":[Ljava/lang/String;
    :catch_0
    move-exception v19

    goto :goto_2
.end method

.method public static parseCharset(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "Content-Type"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 123
    .local v0, "contentType":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 124
    const-string/jumbo v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "params":[Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 126
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "pair":[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 128
    const/4 v4, 0x0

    aget-object v4, v2, v4

    const-string/jumbo v5, "charset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 129
    const/4 v4, 0x1

    aget-object v4, v2, v4

    .line 135
    .end local v1    # "i":I
    .end local v2    # "pair":[Ljava/lang/String;
    .end local v3    # "params":[Ljava/lang/String;
    :goto_1
    return-object v4

    .line 125
    .restart local v1    # "i":I
    .restart local v2    # "pair":[Ljava/lang/String;
    .restart local v3    # "params":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    .end local v1    # "i":I
    .end local v2    # "pair":[Ljava/lang/String;
    .end local v3    # "params":[Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "ISO-8859-1"

    goto :goto_1
.end method

.method public static parseDateAsEpoch(Ljava/lang/String;)J
    .locals 2
    .param p0, "dateStr"    # Ljava/lang/String;

    .prologue
    .line 110
    :try_start_0
    invoke-static {p0}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 113
    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_0
.end method
