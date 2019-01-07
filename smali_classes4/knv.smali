.class public final Lknv;
.super Ljava/lang/Object;
.source "BridgeInterceptor.java"

# interfaces
.implements Lkmx;


# instance fields
.field private final a:Lkmp;


# direct methods
.method public constructor <init>(Lkmp;)V
    .locals 0
    .param p1, "cookieJar"    # Lkmp;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lknv;->a:Lkmp;

    .line 45
    return-void
.end method


# virtual methods
.method public final a(Lkmx$a;)Lkne;
    .locals 21
    .param p1, "chain"    # Lkmx$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-interface/range {p1 .. p1}, Lkmx$a;->a()Lknc;

    move-result-object v13

    .line 49
    .local v13, "userRequest":Lknc;
    invoke-virtual {v13}, Lknc;->c()Lknc$a;

    move-result-object v8

    .line 1069
    .local v8, "requestBuilder":Lknc$a;
    iget-object v2, v13, Lknc;->d:Lknd;

    .line 52
    .local v2, "body":Lknd;
    if-eqz v2, :cond_1

    .line 53
    invoke-virtual {v2}, Lknd;->contentType()Lkmy;

    move-result-object v3

    .line 54
    .local v3, "contentType":Lkmy;
    if-eqz v3, :cond_0

    .line 55
    const-string/jumbo v14, "Content-Type"

    invoke-virtual {v3}, Lkmy;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Lknc$a;->a(Ljava/lang/String;Ljava/lang/String;)Lknc$a;

    .line 58
    :cond_0
    invoke-virtual {v2}, Lknd;->contentLength()J

    move-result-wide v4

    .line 59
    .local v4, "contentLength":J
    const-wide/16 v14, -0x1

    cmp-long v14, v4, v14

    if-eqz v14, :cond_6

    .line 60
    const-string/jumbo v14, "Content-Length"

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Lknc$a;->a(Ljava/lang/String;Ljava/lang/String;)Lknc$a;

    .line 61
    const-string/jumbo v14, "Transfer-Encoding"

    invoke-virtual {v8, v14}, Lknc$a;->b(Ljava/lang/String;)Lknc$a;

    .line 68
    .end local v3    # "contentType":Lkmy;
    .end local v4    # "contentLength":J
    :cond_1
    :goto_0
    const-string/jumbo v14, "Host"

    invoke-virtual {v13, v14}, Lknc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_2

    .line 69
    const-string/jumbo v14, "Host"

    .line 2049
    iget-object v15, v13, Lknc;->a:Lkmw;

    .line 69
    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lknj;->a(Lkmw;Z)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Lknc$a;->a(Ljava/lang/String;Ljava/lang/String;)Lknc$a;

    .line 72
    :cond_2
    const-string/jumbo v14, "Connection"

    invoke-virtual {v13, v14}, Lknc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_3

    .line 73
    const-string/jumbo v14, "Connection"

    const-string/jumbo v15, "Keep-Alive"

    invoke-virtual {v8, v14, v15}, Lknc$a;->a(Ljava/lang/String;Ljava/lang/String;)Lknc$a;

    .line 78
    :cond_3
    const/4 v12, 0x0

    .line 79
    .local v12, "transparentGzip":Z
    const-string/jumbo v14, "Accept-Encoding"

    invoke-virtual {v13, v14}, Lknc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_4

    const-string/jumbo v14, "Range"

    invoke-virtual {v13, v14}, Lknc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_4

    .line 80
    const/4 v12, 0x1

    .line 81
    const-string/jumbo v14, "Accept-Encoding"

    const-string/jumbo v15, "gzip"

    invoke-virtual {v8, v14, v15}, Lknc$a;->a(Ljava/lang/String;Ljava/lang/String;)Lknc$a;

    .line 84
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lknv;->a:Lkmp;

    invoke-interface {v14}, Lkmp;->b()Ljava/util/List;

    move-result-object v6

    .line 85
    .local v6, "cookies":Ljava/util/List;, "Ljava/util/List<Lkmo;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_8

    .line 86
    const-string/jumbo v16, "Cookie"

    .line 2118
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 2119
    const/4 v14, 0x0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v18

    move v15, v14

    :goto_1
    move/from16 v0, v18

    if-ge v15, v0, :cond_7

    .line 2120
    if-lez v15, :cond_5

    .line 2121
    const-string/jumbo v14, "; "

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2123
    :cond_5
    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lkmo;

    .line 3098
    iget-object v0, v14, Lkmo;->a:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 2124
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x3d

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3103
    iget-object v14, v14, Lkmo;->b:Ljava/lang/String;

    .line 2124
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2119
    add-int/lit8 v14, v15, 0x1

    move v15, v14

    goto :goto_1

    .line 63
    .end local v6    # "cookies":Ljava/util/List;, "Ljava/util/List<Lkmo;>;"
    .end local v12    # "transparentGzip":Z
    .restart local v3    # "contentType":Lkmy;
    .restart local v4    # "contentLength":J
    :cond_6
    const-string/jumbo v14, "Transfer-Encoding"

    const-string/jumbo v15, "chunked"

    invoke-virtual {v8, v14, v15}, Lknc$a;->a(Ljava/lang/String;Ljava/lang/String;)Lknc$a;

    .line 64
    const-string/jumbo v14, "Content-Length"

    invoke-virtual {v8, v14}, Lknc$a;->b(Ljava/lang/String;)Lknc$a;

    goto/16 :goto_0

    .line 2126
    .end local v3    # "contentType":Lkmy;
    .end local v4    # "contentLength":J
    .restart local v6    # "cookies":Ljava/util/List;, "Ljava/util/List<Lkmo;>;"
    .restart local v12    # "transparentGzip":Z
    :cond_7
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 86
    move-object/from16 v0, v16

    invoke-virtual {v8, v0, v14}, Lknc$a;->a(Ljava/lang/String;Ljava/lang/String;)Lknc$a;

    .line 89
    :cond_8
    const-string/jumbo v14, "User-Agent"

    invoke-virtual {v13, v14}, Lknc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_9

    .line 90
    const-string/jumbo v14, "User-Agent"

    .line 4020
    const-string/jumbo v15, "okhttp/3.11.0"

    .line 90
    invoke-virtual {v8, v14, v15}, Lknc$a;->a(Ljava/lang/String;Ljava/lang/String;)Lknc$a;

    .line 93
    :cond_9
    invoke-virtual {v8}, Lknc$a;->a()Lknc;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lkmx$a;->a(Lknc;)Lkne;

    move-result-object v7

    .line 95
    .local v7, "networkResponse":Lkne;
    move-object/from16 v0, p0

    iget-object v14, v0, Lknv;->a:Lkmp;

    .line 4049
    iget-object v15, v13, Lknc;->a:Lkmw;

    .line 4136
    iget-object v0, v7, Lkne;->f:Lkmv;

    move-object/from16 v16, v0

    .line 95
    invoke-static/range {v14 .. v16}, Lknz;->a(Lkmp;Lkmw;Lkmv;)V

    .line 97
    invoke-virtual {v7}, Lkne;->e()Lkne$a;

    move-result-object v10

    .line 4332
    iput-object v13, v10, Lkne$a;->a:Lknc;

    .line 100
    .local v10, "responseBuilder":Lkne$a;
    if-eqz v12, :cond_a

    const-string/jumbo v14, "gzip"

    const-string/jumbo v15, "Content-Encoding"

    .line 101
    invoke-virtual {v7, v15}, Lkne;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 102
    invoke-static {v7}, Lknz;->b(Lkne;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 103
    new-instance v9, Lokio/GzipSource;

    .line 5177
    iget-object v14, v7, Lkne;->g:Lknf;

    .line 103
    invoke-virtual {v14}, Lknf;->c()Lokio/BufferedSource;

    move-result-object v14

    invoke-direct {v9, v14}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    .line 6136
    .local v9, "responseBody":Lokio/GzipSource;
    iget-object v14, v7, Lkne;->f:Lkmv;

    .line 104
    invoke-virtual {v14}, Lkmv;->a()Lkmv$a;

    move-result-object v14

    const-string/jumbo v15, "Content-Encoding"

    .line 105
    invoke-virtual {v14, v15}, Lkmv$a;->a(Ljava/lang/String;)Lkmv$a;

    move-result-object v14

    const-string/jumbo v15, "Content-Length"

    .line 106
    invoke-virtual {v14, v15}, Lkmv$a;->a(Ljava/lang/String;)Lkmv$a;

    move-result-object v14

    .line 107
    invoke-virtual {v14}, Lkmv$a;->a()Lkmv;

    move-result-object v11

    .line 108
    .local v11, "strippedHeaders":Lkmv;
    invoke-virtual {v10, v11}, Lkne$a;->a(Lkmv;)Lkne$a;

    .line 109
    const-string/jumbo v14, "Content-Type"

    invoke-virtual {v7, v14}, Lkne;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "contentType":Ljava/lang/String;
    new-instance v14, Lkoc;

    const-wide/16 v16, -0x1

    invoke-static {v9}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v15

    move-wide/from16 v0, v16

    invoke-direct {v14, v3, v0, v1, v15}, Lkoc;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V

    .line 6386
    iput-object v14, v10, Lkne$a;->g:Lknf;

    .line 113
    .end local v3    # "contentType":Ljava/lang/String;
    .end local v9    # "responseBody":Lokio/GzipSource;
    .end local v11    # "strippedHeaders":Lkmv;
    :cond_a
    invoke-virtual {v10}, Lkne$a;->a()Lkne;

    move-result-object v14

    return-object v14
.end method
