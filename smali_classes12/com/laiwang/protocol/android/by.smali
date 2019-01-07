.class public Lcom/laiwang/protocol/android/by;
.super Ljava/lang/Object;
.source "UploadTools.java"


# direct methods
.method public static a(Ljava/lang/String;[B)Lcom/laiwang/protocol/android/bw;
    .locals 6
    .param p0, "uResp"    # Ljava/lang/String;
    .param p1, "body"    # [B

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 22
    const/4 v2, 0x0

    .line 23
    .local v2, "upResponse":Lcom/laiwang/protocol/android/bw;
    if-eqz p0, :cond_0

    .line 24
    const-string/jumbo v3, "&"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 25
    .local v1, "respItems":[Ljava/lang/String;
    array-length v3, v1

    if-le v3, v4, :cond_0

    .line 26
    new-instance v2, Lcom/laiwang/protocol/android/bw;

    .end local v2    # "upResponse":Lcom/laiwang/protocol/android/bw;
    invoke-direct {v2}, Lcom/laiwang/protocol/android/bw;-><init>()V

    .line 27
    .restart local v2    # "upResponse":Lcom/laiwang/protocol/android/bw;
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Lcom/laiwang/protocol/android/bw;->a(Ljava/lang/String;)V

    .line 28
    aget-object v3, v1, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/laiwang/protocol/android/bw;->a(I)V

    .line 29
    array-length v3, v1

    if-le v3, v5, :cond_0

    aget-object v3, v1, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/laiwang/protocol/android/bw;->b(I)V

    .line 32
    .end local v1    # "respItems":[Ljava/lang/String;
    :cond_0
    if-eqz v2, :cond_4

    if-eqz p1, :cond_4

    array-length v3, p1

    if-lez v3, :cond_4

    .line 34
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 35
    .local v0, "jObj":Lorg/json/JSONObject;
    const-string/jumbo v3, "uri"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "uri"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/laiwang/protocol/android/bw;->b(Ljava/lang/String;)V

    .line 36
    :cond_1
    const-string/jumbo v3, "hd"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "hd"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/laiwang/protocol/android/bw;->c(Ljava/lang/String;)V

    .line 37
    :cond_2
    const-string/jumbo v3, "mediaId"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "mediaId"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/laiwang/protocol/android/bw;->d(Ljava/lang/String;)V

    .line 38
    :cond_3
    const-string/jumbo v3, "authMediaId"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "authMediaId"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/laiwang/protocol/android/bw;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .end local v0    # "jObj":Lorg/json/JSONObject;
    :cond_4
    :goto_0
    return-object v2

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lcom/laiwang/protocol/upload/MediaType;
    .locals 7
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 48
    :try_start_0
    invoke-static {p0}, Lcom/laiwang/protocol/android/by;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "ext":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 50
    invoke-static {p0}, Lcom/laiwang/protocol/android/by;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    :cond_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xa

    if-gt v4, v5, :cond_3

    .line 54
    invoke-static {}, Lcom/laiwang/protocol/upload/MediaType;->values()[Lcom/laiwang/protocol/upload/MediaType;

    move-result-object v2

    .line 55
    .local v2, "mediaTypes":[Lcom/laiwang/protocol/upload/MediaType;
    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v3, v2, v4

    .line 56
    .local v3, "mt":Lcom/laiwang/protocol/upload/MediaType;
    invoke-virtual {v3}, Lcom/laiwang/protocol/upload/MediaType;->getExt()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 66
    .end local v1    # "ext":Ljava/lang/String;
    .end local v2    # "mediaTypes":[Lcom/laiwang/protocol/upload/MediaType;
    .end local v3    # "mt":Lcom/laiwang/protocol/upload/MediaType;
    :goto_1
    return-object v3

    .line 55
    .restart local v1    # "ext":Ljava/lang/String;
    .restart local v2    # "mediaTypes":[Lcom/laiwang/protocol/upload/MediaType;
    .restart local v3    # "mt":Lcom/laiwang/protocol/upload/MediaType;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 60
    .end local v3    # "mt":Lcom/laiwang/protocol/upload/MediaType;
    :cond_2
    const-string/jumbo v4, "jpeg"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 61
    sget-object v3, Lcom/laiwang/protocol/upload/MediaType;->IMAGE_JPG:Lcom/laiwang/protocol/upload/MediaType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 63
    .end local v1    # "ext":Ljava/lang/String;
    .end local v2    # "mediaTypes":[Lcom/laiwang/protocol/upload/MediaType;
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "UploadTools getMediaType Exception"

    invoke-static {v4, v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    sget-object v3, Lcom/laiwang/protocol/upload/MediaType;->NORMAL_TXT:Lcom/laiwang/protocol/upload/MediaType;

    goto :goto_1
.end method

.method public static a(Lcom/laiwang/protocol/android/bw;)Lcom/laiwang/protocol/upload/UploadResult;
    .locals 2
    .param p0, "response"    # Lcom/laiwang/protocol/android/bw;

    .prologue
    .line 127
    if-nez p0, :cond_1

    .line 128
    const/4 v0, 0x0

    .line 140
    :cond_0
    :goto_0
    return-object v0

    .line 129
    :cond_1
    new-instance v0, Lcom/laiwang/protocol/upload/UploadResult;

    invoke-direct {v0}, Lcom/laiwang/protocol/upload/UploadResult;-><init>()V

    .line 130
    .local v0, "result":Lcom/laiwang/protocol/upload/UploadResult;
    invoke-virtual {p0}, Lcom/laiwang/protocol/android/bw;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 131
    invoke-virtual {p0}, Lcom/laiwang/protocol/android/bw;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/upload/UploadResult;->setMediaId(Ljava/lang/String;)V

    .line 137
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/laiwang/protocol/android/bw;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/laiwang/protocol/android/bw;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/upload/UploadResult;->setAuthMediaId(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_3
    invoke-virtual {p0}, Lcom/laiwang/protocol/android/bw;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 133
    invoke-virtual {p0}, Lcom/laiwang/protocol/android/bw;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/upload/UploadResult;->setMediaId(Ljava/lang/String;)V

    goto :goto_1

    .line 134
    :cond_4
    invoke-virtual {p0}, Lcom/laiwang/protocol/android/bw;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 135
    invoke-virtual {p0}, Lcom/laiwang/protocol/android/bw;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/upload/UploadResult;->setMediaId(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static a(Lcom/laiwang/protocol/android/ca;)Lcom/laiwang/protocol/upload/UploadResult;
    .locals 2
    .param p0, "commitResponse"    # Lcom/laiwang/protocol/android/ca;

    .prologue
    .line 118
    if-nez p0, :cond_0

    .line 119
    const/4 v0, 0x0

    .line 123
    :goto_0
    return-object v0

    .line 120
    :cond_0
    new-instance v0, Lcom/laiwang/protocol/upload/UploadResult;

    invoke-direct {v0}, Lcom/laiwang/protocol/upload/UploadResult;-><init>()V

    .line 121
    .local v0, "result":Lcom/laiwang/protocol/upload/UploadResult;
    iget-object v1, p0, Lcom/laiwang/protocol/android/ca;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/upload/UploadResult;->setMediaId(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/laiwang/protocol/android/ca;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/upload/UploadResult;->setAuthMediaId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a([BLjava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string/jumbo v2, "p"

    invoke-static {v2}, Ljad;->a(Ljava/lang/String;)Ljac;

    move-result-object v0

    .line 100
    .local v0, "cast":Ljac;
    :try_start_0
    invoke-interface {v0, p0, p1}, Ljac;->a([BLjava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 103
    :goto_0
    return-object v2

    .line 101
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "parse idl model exception"

    invoke-static {v2, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/laiwang/protocol/upload/UploadResult;)Ljava/util/Map;
    .locals 3
    .param p0, "result"    # Lcom/laiwang/protocol/upload/UploadResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laiwang/protocol/upload/UploadResult;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 145
    .local v0, "rets":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 151
    :goto_0
    return-object v0

    .line 148
    :cond_0
    const-string/jumbo v1, "up-uri"

    invoke-virtual {p0}, Lcom/laiwang/protocol/upload/UploadResult;->getMediaId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string/jumbo v1, "up-media"

    invoke-virtual {p0}, Lcom/laiwang/protocol/upload/UploadResult;->getMediaId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string/jumbo v1, "up-auth-media"

    invoke-virtual {p0}, Lcom/laiwang/protocol/upload/UploadResult;->getAuthMediaId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static a(Liyn;)[B
    .locals 3
    .param p0, "model"    # Liyn;

    .prologue
    .line 108
    new-instance v1, Liyp;

    invoke-direct {v1}, Liyp;-><init>()V

    .line 110
    .local v1, "write":Liyp;
    :try_start_0
    invoke-virtual {v1, p0}, Liyp;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1032
    :goto_0
    iget-object v2, v1, Liyp;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 114
    return-object v2

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "to msgPack bytes exception"

    invoke-static {v2, v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 75
    if-nez p0, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-object v1

    .line 77
    :cond_1
    const-string/jumbo v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 78
    .local v0, "pos":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_0

    .line 81
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 90
    if-nez p0, :cond_0

    .line 91
    const/4 v0, 0x0

    .line 94
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/laiwang/protocol/android/ci;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
