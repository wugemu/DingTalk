.class public abstract Lorg/apache/http/impl/io/AbstractMessageParser;
.super Ljava/lang/Object;
.source "AbstractMessageParser.java"

# interfaces
.implements Lorg/apache/http/io/HttpMessageParser;


# static fields
.field private static final HEADERS:I = 0x1

.field private static final HEAD_LINE:I


# instance fields
.field private final headerLines:Ljava/util/List;

.field protected final lineParser:Lorg/apache/http/message/LineParser;

.field private final maxHeaderCount:I

.field private final maxLineLen:I

.field private message:Lorg/apache/http/HttpMessage;

.field private final sessionBuffer:Lorg/apache/http/io/SessionInputBuffer;

.field private state:I


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/message/LineParser;Lorg/apache/http/params/HttpParams;)V
    .locals 2
    .param p1, "buffer"    # Lorg/apache/http/io/SessionInputBuffer;
    .param p2, "parser"    # Lorg/apache/http/message/LineParser;
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    const/4 v1, -0x1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    if-nez p1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Session input buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    if-nez p3, :cond_1

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_1
    iput-object p1, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->sessionBuffer:Lorg/apache/http/io/SessionInputBuffer;

    .line 93
    const-string/jumbo v0, "http.connection.max-header-count"

    invoke-interface {p3, v0, v1}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->maxHeaderCount:I

    .line 95
    const-string/jumbo v0, "http.connection.max-line-length"

    invoke-interface {p3, v0, v1}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->maxLineLen:I

    .line 97
    if-eqz p2, :cond_2

    .end local p2    # "parser":Lorg/apache/http/message/LineParser;
    :goto_0
    iput-object p2, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->lineParser:Lorg/apache/http/message/LineParser;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->headerLines:Ljava/util/List;

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->state:I

    .line 100
    return-void

    .line 97
    .restart local p2    # "parser":Lorg/apache/http/message/LineParser;
    :cond_2
    sget-object p2, Lorg/apache/http/message/BasicLineParser;->DEFAULT:Lorg/apache/http/message/BasicLineParser;

    goto :goto_0
.end method

.method public static parseHeaders(Lorg/apache/http/io/SessionInputBuffer;IILorg/apache/http/message/LineParser;)[Lorg/apache/http/Header;
    .locals 2
    .param p0, "inbuffer"    # Lorg/apache/http/io/SessionInputBuffer;
    .param p1, "maxHeaderCount"    # I
    .param p2, "maxLineLen"    # I
    .param p3, "parser"    # Lorg/apache/http/message/LineParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    if-nez p3, :cond_0

    .line 128
    sget-object p3, Lorg/apache/http/message/BasicLineParser;->DEFAULT:Lorg/apache/http/message/BasicLineParser;

    .line 130
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v0, "headerLines":Ljava/util/List;
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/http/impl/io/AbstractMessageParser;->parseHeaders(Lorg/apache/http/io/SessionInputBuffer;IILorg/apache/http/message/LineParser;Ljava/util/List;)[Lorg/apache/http/Header;

    move-result-object v1

    return-object v1
.end method

.method public static parseHeaders(Lorg/apache/http/io/SessionInputBuffer;IILorg/apache/http/message/LineParser;Ljava/util/List;)[Lorg/apache/http/Header;
    .locals 10
    .param p0, "inbuffer"    # Lorg/apache/http/io/SessionInputBuffer;
    .param p1, "maxHeaderCount"    # I
    .param p2, "maxLineLen"    # I
    .param p3, "parser"    # Lorg/apache/http/message/LineParser;
    .param p4, "headerLines"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    if-nez p0, :cond_0

    .line 167
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Session input buffer may not be null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 169
    :cond_0
    if-nez p3, :cond_1

    .line 170
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Line parser may not be null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 172
    :cond_1
    if-nez p4, :cond_2

    .line 173
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Header line list may not be null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 176
    :cond_2
    const/4 v2, 0x0

    .line 177
    .local v2, "current":Lorg/apache/http/util/CharArrayBuffer;
    const/4 v7, 0x0

    .line 179
    .local v7, "previous":Lorg/apache/http/util/CharArrayBuffer;
    :cond_3
    if-nez v2, :cond_5

    .line 180
    new-instance v2, Lorg/apache/http/util/CharArrayBuffer;

    .end local v2    # "current":Lorg/apache/http/util/CharArrayBuffer;
    const/16 v8, 0x40

    invoke-direct {v2, v8}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 184
    .restart local v2    # "current":Lorg/apache/http/util/CharArrayBuffer;
    :goto_0
    invoke-interface {p0, v2}, Lorg/apache/http/io/SessionInputBuffer;->readLine(Lorg/apache/http/util/CharArrayBuffer;)I

    move-result v6

    .line 185
    .local v6, "l":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_4

    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v8

    if-gtz v8, :cond_6

    .line 218
    :cond_4
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v8

    new-array v4, v8, [Lorg/apache/http/Header;

    .line 219
    .local v4, "headers":[Lorg/apache/http/Header;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_c

    .line 220
    invoke-interface {p4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/util/CharArrayBuffer;

    .line 222
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    :try_start_0
    invoke-interface {p3, v0}, Lorg/apache/http/message/LineParser;->parseHeader(Lorg/apache/http/util/CharArrayBuffer;)Lorg/apache/http/Header;

    move-result-object v8

    aput-object v8, v4, v5
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 182
    .end local v0    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .end local v4    # "headers":[Lorg/apache/http/Header;
    .end local v5    # "i":I
    .end local v6    # "l":I
    :cond_5
    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->clear()V

    goto :goto_0

    .line 192
    .restart local v6    # "l":I
    :cond_6
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v8

    const/16 v9, 0x20

    if-eq v8, v9, :cond_7

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v8

    const/16 v9, 0x9

    if-ne v8, v9, :cond_b

    :cond_7
    if-eqz v7, :cond_b

    .line 195
    const/4 v5, 0x0

    .line 196
    .restart local v5    # "i":I
    :goto_2
    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v8

    if-ge v5, v8, :cond_9

    .line 197
    invoke-virtual {v2, v5}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v1

    .line 198
    .local v1, "ch":C
    const/16 v8, 0x20

    if-eq v1, v8, :cond_8

    const/16 v8, 0x9

    if-ne v1, v8, :cond_9

    .line 201
    :cond_8
    add-int/lit8 v5, v5, 0x1

    .line 202
    goto :goto_2

    .line 203
    .end local v1    # "ch":C
    :cond_9
    if-lez p2, :cond_a

    invoke-virtual {v7}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v9

    add-int/2addr v8, v9

    sub-int/2addr v8, v5

    if-le v8, p2, :cond_a

    .line 205
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "Maximum line length limit exceeded"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 207
    :cond_a
    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 208
    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-virtual {v7, v2, v5, v8}, Lorg/apache/http/util/CharArrayBuffer;->append(Lorg/apache/http/util/CharArrayBuffer;II)V

    .line 214
    .end local v5    # "i":I
    :goto_3
    if-lez p1, :cond_3

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v8

    if-lt v8, p1, :cond_3

    .line 215
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "Maximum header count exceeded"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 210
    :cond_b
    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    move-object v7, v2

    .line 212
    const/4 v2, 0x0

    goto :goto_3

    .line 223
    .restart local v0    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .restart local v4    # "headers":[Lorg/apache/http/Header;
    .restart local v5    # "i":I
    :catch_0
    move-exception v3

    .line 224
    .local v3, "ex":Lorg/apache/http/ParseException;
    new-instance v8, Lorg/apache/http/ProtocolException;

    invoke-virtual {v3}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 227
    .end local v0    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .end local v3    # "ex":Lorg/apache/http/ParseException;
    :cond_c
    return-object v4
.end method


# virtual methods
.method public parse()Lorg/apache/http/HttpMessage;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 248
    iget v3, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->state:I

    .line 249
    .local v3, "st":I
    packed-switch v3, :pswitch_data_0

    .line 272
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Inconsistent parser state"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 252
    :pswitch_0
    :try_start_0
    iget-object v4, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->sessionBuffer:Lorg/apache/http/io/SessionInputBuffer;

    invoke-virtual {p0, v4}, Lorg/apache/http/impl/io/AbstractMessageParser;->parseHead(Lorg/apache/http/io/SessionInputBuffer;)Lorg/apache/http/HttpMessage;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->message:Lorg/apache/http/HttpMessage;
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    const/4 v4, 0x1

    iput v4, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->state:I

    .line 259
    :pswitch_1
    iget-object v4, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->sessionBuffer:Lorg/apache/http/io/SessionInputBuffer;

    iget v5, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->maxHeaderCount:I

    iget v6, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->maxLineLen:I

    iget-object v7, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->lineParser:Lorg/apache/http/message/LineParser;

    iget-object v8, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->headerLines:Ljava/util/List;

    invoke-static {v4, v5, v6, v7, v8}, Lorg/apache/http/impl/io/AbstractMessageParser;->parseHeaders(Lorg/apache/http/io/SessionInputBuffer;IILorg/apache/http/message/LineParser;Ljava/util/List;)[Lorg/apache/http/Header;

    move-result-object v0

    .line 265
    .local v0, "headers":[Lorg/apache/http/Header;
    iget-object v4, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->message:Lorg/apache/http/HttpMessage;

    invoke-interface {v4, v0}, Lorg/apache/http/HttpMessage;->setHeaders([Lorg/apache/http/Header;)V

    .line 266
    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->message:Lorg/apache/http/HttpMessage;

    .line 267
    .local v2, "result":Lorg/apache/http/HttpMessage;
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->message:Lorg/apache/http/HttpMessage;

    .line 268
    iget-object v4, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->headerLines:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 269
    const/4 v4, 0x0

    iput v4, p0, Lorg/apache/http/impl/io/AbstractMessageParser;->state:I

    .line 270
    return-object v2

    .line 253
    .end local v0    # "headers":[Lorg/apache/http/Header;
    .end local v2    # "result":Lorg/apache/http/HttpMessage;
    :catch_0
    move-exception v1

    .line 254
    .local v1, "px":Lorg/apache/http/ParseException;
    new-instance v4, Lorg/apache/http/ProtocolException;

    invoke-virtual {v1}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 249
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected abstract parseHead(Lorg/apache/http/io/SessionInputBuffer;)Lorg/apache/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;,
            Lorg/apache/http/ParseException;
        }
    .end annotation
.end method
