.class public Lorg/apache/http/impl/entity/LaxContentLengthStrategy;
.super Ljava/lang/Object;
.source "LaxContentLengthStrategy.java"

# interfaces
.implements Lorg/apache/http/entity/ContentLengthStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method


# virtual methods
.method public determineLength(Lorg/apache/http/HttpMessage;)J
    .locals 18
    .param p1, "message"    # Lorg/apache/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 63
    if-nez p1, :cond_0

    .line 64
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v16, "HTTP message may not be null"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 67
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpMessage;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v11

    .line 68
    .local v11, "params":Lorg/apache/http/params/HttpParams;
    const-string/jumbo v15, "http.protocol.strict-transfer-encoding"

    invoke-interface {v11, v15}, Lorg/apache/http/params/HttpParams;->isParameterTrue(Ljava/lang/String;)Z

    move-result v13

    .line 70
    .local v13, "strict":Z
    const-string/jumbo v15, "Transfer-Encoding"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lorg/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v14

    .line 71
    .local v14, "transferEncodingHeader":Lorg/apache/http/Header;
    const-string/jumbo v15, "Content-Length"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lorg/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 74
    .local v2, "contentLengthHeader":Lorg/apache/http/Header;
    if-eqz v14, :cond_7

    .line 77
    :try_start_0
    invoke-interface {v14}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 83
    .local v6, "encodings":[Lorg/apache/http/HeaderElement;
    if-eqz v13, :cond_2

    .line 85
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v15, v6

    if-ge v9, v15, :cond_2

    .line 86
    aget-object v15, v6, v9

    invoke-interface {v15}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "encoding":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_1

    const-string/jumbo v15, "chunked"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_1

    const-string/jumbo v15, "identity"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 90
    new-instance v15, Lorg/apache/http/ProtocolException;

    new-instance v16, Ljava/lang/StringBuffer;

    const-string/jumbo v17, "Unsupported transfer encoding: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 78
    .end local v3    # "encoding":Ljava/lang/String;
    .end local v6    # "encodings":[Lorg/apache/http/HeaderElement;
    .end local v9    # "i":I
    :catch_0
    move-exception v12

    .line 79
    .local v12, "px":Lorg/apache/http/ParseException;
    new-instance v15, Lorg/apache/http/ProtocolException;

    new-instance v16, Ljava/lang/StringBuffer;

    const-string/jumbo v17, "Invalid Transfer-Encoding header value: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v12}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15

    .line 85
    .end local v12    # "px":Lorg/apache/http/ParseException;
    .restart local v3    # "encoding":Ljava/lang/String;
    .restart local v6    # "encodings":[Lorg/apache/http/HeaderElement;
    .restart local v9    # "i":I
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 95
    .end local v3    # "encoding":Ljava/lang/String;
    .end local v9    # "i":I
    :cond_2
    array-length v10, v6

    .line 96
    .local v10, "len":I
    const-string/jumbo v15, "identity"

    invoke-interface {v14}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 97
    const-wide/16 v4, -0x1

    .line 131
    .end local v6    # "encodings":[Lorg/apache/http/HeaderElement;
    .end local v10    # "len":I
    :cond_3
    :goto_1
    return-wide v4

    .line 98
    .restart local v6    # "encodings":[Lorg/apache/http/HeaderElement;
    .restart local v10    # "len":I
    :cond_4
    if-lez v10, :cond_5

    const-string/jumbo v15, "chunked"

    add-int/lit8 v16, v10, -0x1

    aget-object v16, v6, v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 100
    const-wide/16 v4, -0x2

    goto :goto_1

    .line 102
    :cond_5
    if-eqz v13, :cond_6

    .line 103
    new-instance v15, Lorg/apache/http/ProtocolException;

    const-string/jumbo v16, "Chunk-encoding must be the last one applied"

    invoke-direct/range {v15 .. v16}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 105
    :cond_6
    const-wide/16 v4, -0x1

    goto :goto_1

    .line 107
    .end local v6    # "encodings":[Lorg/apache/http/HeaderElement;
    .end local v10    # "len":I
    :cond_7
    if-eqz v2, :cond_b

    .line 108
    const-wide/16 v4, -0x1

    .line 109
    .local v4, "contentlen":J
    const-string/jumbo v15, "Content-Length"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lorg/apache/http/HttpMessage;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v8

    .line 110
    .local v8, "headers":[Lorg/apache/http/Header;
    if-eqz v13, :cond_8

    array-length v15, v8

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_8

    .line 111
    new-instance v15, Lorg/apache/http/ProtocolException;

    const-string/jumbo v16, "Multiple content length headers"

    invoke-direct/range {v15 .. v16}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 113
    :cond_8
    array-length v15, v8

    add-int/lit8 v9, v15, -0x1

    .restart local v9    # "i":I
    :goto_2
    if-ltz v9, :cond_9

    .line 114
    aget-object v7, v8, v9

    .line 116
    .local v7, "header":Lorg/apache/http/Header;
    :try_start_1
    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v4

    .line 125
    .end local v7    # "header":Lorg/apache/http/Header;
    :cond_9
    const-wide/16 v16, 0x0

    cmp-long v15, v4, v16

    if-gez v15, :cond_3

    .line 128
    const-wide/16 v4, -0x1

    goto :goto_1

    .line 119
    .restart local v7    # "header":Lorg/apache/http/Header;
    :catch_1
    move-exception v15

    if-eqz v13, :cond_a

    .line 120
    new-instance v15, Lorg/apache/http/ProtocolException;

    new-instance v16, Ljava/lang/StringBuffer;

    const-string/jumbo v17, "Invalid content length: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 113
    :cond_a
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 131
    .end local v4    # "contentlen":J
    .end local v7    # "header":Lorg/apache/http/Header;
    .end local v8    # "headers":[Lorg/apache/http/Header;
    .end local v9    # "i":I
    :cond_b
    const-wide/16 v4, -0x1

    goto/16 :goto_1
.end method
