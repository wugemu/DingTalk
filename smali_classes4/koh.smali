.class public final Lkoh;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Lknx;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkoh$f;,
        Lkoh$c;,
        Lkoh$e;,
        Lkoh$a;,
        Lkoh$b;,
        Lkoh$d;
    }
.end annotation


# instance fields
.field final a:Lkna;

.field final b:Lknu;

.field final c:Lokio/BufferedSource;

.field final d:Lokio/BufferedSink;

.field e:I

.field private f:J


# direct methods
.method public constructor <init>(Lkna;Lknu;Lokio/BufferedSource;Lokio/BufferedSink;)V
    .locals 2
    .param p1, "client"    # Lkna;
    .param p2, "streamAllocation"    # Lknu;
    .param p3, "source"    # Lokio/BufferedSource;
    .param p4, "sink"    # Lokio/BufferedSink;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lkoh;->e:I

    .line 87
    const-wide/32 v0, 0x40000

    iput-wide v0, p0, Lkoh;->f:J

    .line 91
    iput-object p1, p0, Lkoh;->a:Lkna;

    .line 92
    iput-object p2, p0, Lkoh;->b:Lknu;

    .line 93
    iput-object p3, p0, Lkoh;->c:Lokio/BufferedSource;

    .line 94
    iput-object p4, p0, Lkoh;->d:Lokio/BufferedSink;

    .line 95
    return-void
.end method

.method static a(Lokio/ForwardingTimeout;)V
    .locals 2
    .param p0, "timeout"    # Lokio/ForwardingTimeout;

    .prologue
    .line 268
    invoke-virtual {p0}, Lokio/ForwardingTimeout;->delegate()Lokio/Timeout;

    move-result-object v0

    .line 269
    .local v0, "oldDelegate":Lokio/Timeout;
    sget-object v1, Lokio/Timeout;->NONE:Lokio/Timeout;

    invoke-virtual {p0, v1}, Lokio/ForwardingTimeout;->setDelegate(Lokio/Timeout;)Lokio/ForwardingTimeout;

    .line 270
    invoke-virtual {v0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    .line 271
    invoke-virtual {v0}, Lokio/Timeout;->clearTimeout()Lokio/Timeout;

    .line 272
    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 215
    iget-object v1, p0, Lkoh;->c:Lokio/BufferedSource;

    iget-wide v2, p0, Lkoh;->f:J

    invoke-interface {v1, v2, v3}, Lokio/BufferedSource;->readUtf8LineStrict(J)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "line":Ljava/lang/String;
    iget-wide v2, p0, Lkoh;->f:J

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lkoh;->f:J

    .line 217
    return-object v0
.end method


# virtual methods
.method public final a(Z)Lkne$a;
    .locals 8
    .param p1, "expectContinue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v7, 0x64

    const/4 v6, 0x3

    .line 184
    iget v4, p0, Lkoh;->e:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    iget v4, p0, Lkoh;->e:I

    if-eq v4, v6, :cond_0

    .line 185
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "state: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lkoh;->e:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 189
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lkoh;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkof;->a(Ljava/lang/String;)Lkof;

    move-result-object v3

    .line 191
    .local v3, "statusLine":Lkof;
    new-instance v4, Lkne$a;

    invoke-direct {v4}, Lkne$a;-><init>()V

    iget-object v5, v3, Lkof;->a:Lokhttp3/Protocol;

    .line 8337
    iput-object v5, v4, Lkne$a;->b:Lokhttp3/Protocol;

    .line 192
    iget v5, v3, Lkof;->b:I

    .line 8342
    iput v5, v4, Lkne$a;->c:I

    .line 193
    iget-object v5, v3, Lkof;->c:Ljava/lang/String;

    .line 8347
    iput-object v5, v4, Lkne$a;->d:Ljava/lang/String;

    .line 195
    invoke-virtual {p0}, Lkoh;->c()Lkmv;

    move-result-object v5

    invoke-virtual {v4, v5}, Lkne$a;->a(Lkmv;)Lkne$a;

    move-result-object v2

    .line 197
    .local v2, "responseBuilder":Lkne$a;
    if-eqz p1, :cond_1

    iget v4, v3, Lkof;->b:I

    if-ne v4, v7, :cond_1

    .line 198
    const/4 v2, 0x0

    .line 205
    .end local v2    # "responseBuilder":Lkne$a;
    :goto_0
    return-object v2

    .line 199
    .restart local v2    # "responseBuilder":Lkne$a;
    :cond_1
    iget v4, v3, Lkof;->b:I

    if-ne v4, v7, :cond_2

    .line 200
    const/4 v4, 0x3

    iput v4, p0, Lkoh;->e:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 206
    .end local v2    # "responseBuilder":Lkne$a;
    .end local v3    # "statusLine":Lkof;
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/io/EOFException;
    new-instance v1, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "unexpected end of stream on "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lkoh;->b:Lknu;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 209
    .local v1, "exception":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 210
    throw v1

    .line 204
    .end local v0    # "e":Ljava/io/EOFException;
    .end local v1    # "exception":Ljava/io/IOException;
    .restart local v2    # "responseBuilder":Lkne$a;
    .restart local v3    # "statusLine":Lkof;
    :cond_2
    const/4 v4, 0x4

    :try_start_1
    iput v4, p0, Lkoh;->e:I
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final a(Lkne;)Lknf;
    .locals 12
    .param p1, "response"    # Lkne;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x5

    const/4 v8, 0x4

    const-wide/16 v6, -0x1

    .line 134
    iget-object v4, p0, Lkoh;->b:Lknu;

    iget-object v4, v4, Lknu;->f:Lkms;

    iget-object v5, p0, Lkoh;->b:Lknu;

    iget-object v5, v5, Lknu;->e:Lkmi;

    invoke-virtual {v4, v5}, Lkms;->responseBodyStart(Lkmi;)V

    .line 135
    const-string/jumbo v4, "Content-Type"

    invoke-virtual {p1, v4}, Lkne;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "contentType":Ljava/lang/String;
    invoke-static {p1}, Lknz;->b(Lkne;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 138
    invoke-virtual {p0, v10, v11}, Lkoh;->a(J)Lokio/Source;

    move-result-object v3

    .line 139
    .local v3, "source":Lokio/Source;
    new-instance v4, Lkoc;

    invoke-static {v3}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v5

    invoke-direct {v4, v2, v10, v11, v5}, Lkoc;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V

    .line 153
    .end local v3    # "source":Lokio/Source;
    :goto_0
    return-object v4

    .line 142
    :cond_0
    const-string/jumbo v4, "chunked"

    const-string/jumbo v5, "Transfer-Encoding"

    invoke-virtual {p1, v5}, Lkne;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6086
    iget-object v4, p1, Lkne;->a:Lknc;

    .line 7049
    iget-object v4, v4, Lknc;->a:Lkmw;

    .line 7249
    iget v5, p0, Lkoh;->e:I

    if-eq v5, v8, :cond_1

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "state: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lkoh;->e:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 7250
    :cond_1
    iput v9, p0, Lkoh;->e:I

    .line 7251
    new-instance v3, Lkoh$c;

    invoke-direct {v3, p0, v4}, Lkoh$c;-><init>(Lkoh;Lkmw;)V

    .line 144
    .restart local v3    # "source":Lokio/Source;
    new-instance v4, Lkoc;

    invoke-static {v3}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v5

    invoke-direct {v4, v2, v6, v7, v5}, Lkoc;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V

    goto :goto_0

    .line 147
    .end local v3    # "source":Lokio/Source;
    :cond_2
    invoke-static {p1}, Lknz;->a(Lkne;)J

    move-result-wide v0

    .line 148
    .local v0, "contentLength":J
    cmp-long v4, v0, v6

    if-eqz v4, :cond_3

    .line 149
    invoke-virtual {p0, v0, v1}, Lkoh;->a(J)Lokio/Source;

    move-result-object v3

    .line 150
    .restart local v3    # "source":Lokio/Source;
    new-instance v4, Lkoc;

    invoke-static {v3}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v5

    invoke-direct {v4, v2, v0, v1, v5}, Lkoc;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V

    goto :goto_0

    .line 153
    .end local v3    # "source":Lokio/Source;
    :cond_3
    new-instance v4, Lkoc;

    .line 7255
    iget v5, p0, Lkoh;->e:I

    if-eq v5, v8, :cond_4

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "state: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lkoh;->e:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 7256
    :cond_4
    iget-object v5, p0, Lkoh;->b:Lknu;

    if-nez v5, :cond_5

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "streamAllocation == null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 7257
    :cond_5
    iput v9, p0, Lkoh;->e:I

    .line 7258
    iget-object v5, p0, Lkoh;->b:Lknu;

    invoke-virtual {v5}, Lknu;->d()V

    .line 7259
    new-instance v5, Lkoh$f;

    invoke-direct {v5, p0}, Lkoh$f;-><init>(Lkoh;)V

    .line 153
    invoke-static {v5}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v5

    invoke-direct {v4, v2, v6, v7, v5}, Lkoc;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V

    goto/16 :goto_0
.end method

.method public final a(Lknc;J)Lokio/Sink;
    .locals 4
    .param p1, "request"    # Lknc;
    .param p2, "contentLength"    # J

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 98
    const-string/jumbo v0, "chunked"

    const-string/jumbo v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lknc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1231
    iget v0, p0, Lkoh;->e:I

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lkoh;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1232
    :cond_0
    iput v3, p0, Lkoh;->e:I

    .line 1233
    new-instance v0, Lkoh$b;

    invoke-direct {v0, p0}, Lkoh$b;-><init>(Lkoh;)V

    .line 105
    :goto_0
    return-object v0

    .line 103
    :cond_1
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_3

    .line 1237
    iget v0, p0, Lkoh;->e:I

    if-eq v0, v2, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lkoh;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1238
    :cond_2
    iput v3, p0, Lkoh;->e:I

    .line 1239
    new-instance v0, Lkoh$d;

    invoke-direct {v0, p0, p2, p3}, Lkoh$d;-><init>(Lkoh;J)V

    goto :goto_0

    .line 108
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(J)Lokio/Source;
    .locals 3
    .param p1, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    iget v0, p0, Lkoh;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lkoh;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lkoh;->e:I

    .line 245
    new-instance v0, Lkoh$e;

    invoke-direct {v0, p0, p1, p2}, Lkoh$e;-><init>(Lkoh;J)V

    return-object v0
.end method

.method public final a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lkoh;->d:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    .line 163
    return-void
.end method

.method public final a(Lkmv;Ljava/lang/String;)V
    .locals 5
    .param p1, "headers"    # Lkmv;
    .param p2, "requestLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 171
    iget v2, p0, Lkoh;->e:I

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "state: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lkoh;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 172
    :cond_0
    iget-object v2, p0, Lkoh;->d:Lokio/BufferedSink;

    invoke-interface {v2, p2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 173
    const/4 v0, 0x0

    .line 8077
    .local v0, "i":I
    iget-object v2, p1, Lkmv;->a:[Ljava/lang/String;

    array-length v2, v2

    div-int/lit8 v1, v2, 0x2

    .line 173
    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 174
    iget-object v2, p0, Lkoh;->d:Lokio/BufferedSink;

    invoke-virtual {p1, v0}, Lkmv;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    const-string/jumbo v3, ": "

    .line 175
    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    .line 176
    invoke-virtual {p1, v0}, Lkmv;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    .line 177
    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_1
    iget-object v2, p0, Lkoh;->d:Lokio/BufferedSink;

    const-string/jumbo v3, "\r\n"

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 180
    const/4 v2, 0x1

    iput v2, p0, Lkoh;->e:I

    .line 181
    return-void
.end method

.method public final a(Lknc;)V
    .locals 4
    .param p1, "request"    # Lknc;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 128
    iget-object v1, p0, Lkoh;->b:Lknu;

    .line 129
    invoke-virtual {v1}, Lknu;->b()Lknr;

    move-result-object v1

    .line 1510
    iget-object v1, v1, Lknr;->a:Lkng;

    .line 2068
    iget-object v1, v1, Lkng;->b:Ljava/net/Proxy;

    .line 129
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    .line 3033
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3053
    iget-object v3, p1, Lknc;->b:Ljava/lang/String;

    .line 3034
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3035
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4106
    iget-object v3, p1, Lknc;->a:Lkmw;

    invoke-virtual {v3}, Lkmw;->b()Z

    move-result v3

    .line 4052
    if-nez v3, :cond_0

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    .line 3037
    :goto_0
    if-eqz v1, :cond_1

    .line 5049
    iget-object v1, p1, Lknc;->a:Lkmw;

    .line 3038
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3043
    :goto_1
    const-string/jumbo v1, " HTTP/1.1"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3044
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6057
    .local v0, "requestLine":Ljava/lang/String;
    iget-object v1, p1, Lknc;->c:Lkmv;

    .line 130
    invoke-virtual {p0, v1, v0}, Lkoh;->a(Lkmv;Ljava/lang/String;)V

    .line 131
    return-void

    .line 4052
    .end local v0    # "requestLine":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 6049
    :cond_1
    iget-object v1, p1, Lknc;->a:Lkmw;

    .line 3040
    invoke-static {v1}, Lkod;->a(Lkmw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public final b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lkoh;->d:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    .line 167
    return-void
.end method

.method public final c()Lkmv;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 222
    new-instance v0, Lkmv$a;

    invoke-direct {v0}, Lkmv$a;-><init>()V

    .line 224
    .local v0, "headers":Lkmv$a;
    :goto_0
    invoke-direct {p0}, Lkoh;->d()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    sget-object v2, Lknh;->a:Lknh;

    invoke-virtual {v2, v0, v1}, Lknh;->a(Lkmv$a;Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :cond_0
    invoke-virtual {v0}, Lkmv$a;->a()Lkmv;

    move-result-object v2

    return-object v2
.end method
