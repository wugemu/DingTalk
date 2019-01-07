.class public final Lkol;
.super Ljava/lang/Object;
.source "Http2Codec.java"

# interfaces
.implements Lknx;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkol$a;
    }
.end annotation


# static fields
.field private static final b:Lokio/ByteString;

.field private static final c:Lokio/ByteString;

.field private static final d:Lokio/ByteString;

.field private static final e:Lokio/ByteString;

.field private static final f:Lokio/ByteString;

.field private static final g:Lokio/ByteString;

.field private static final h:Lokio/ByteString;

.field private static final i:Lokio/ByteString;

.field private static final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lknu;

.field private final l:Lkmx$a;

.field private final m:Lkom;

.field private n:Lkoo;

.field private final o:Lokhttp3/Protocol;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    const-string/jumbo v0, "connection"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lkol;->b:Lokio/ByteString;

    .line 56
    const-string/jumbo v0, "host"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lkol;->c:Lokio/ByteString;

    .line 57
    const-string/jumbo v0, "keep-alive"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lkol;->d:Lokio/ByteString;

    .line 58
    const-string/jumbo v0, "proxy-connection"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lkol;->e:Lokio/ByteString;

    .line 59
    const-string/jumbo v0, "transfer-encoding"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lkol;->f:Lokio/ByteString;

    .line 60
    const-string/jumbo v0, "te"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lkol;->g:Lokio/ByteString;

    .line 61
    const-string/jumbo v0, "encoding"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lkol;->h:Lokio/ByteString;

    .line 62
    const-string/jumbo v0, "upgrade"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lkol;->i:Lokio/ByteString;

    .line 65
    const/16 v0, 0xc

    new-array v0, v0, [Lokio/ByteString;

    sget-object v1, Lkol;->b:Lokio/ByteString;

    aput-object v1, v0, v3

    sget-object v1, Lkol;->c:Lokio/ByteString;

    aput-object v1, v0, v4

    sget-object v1, Lkol;->d:Lokio/ByteString;

    aput-object v1, v0, v5

    sget-object v1, Lkol;->e:Lokio/ByteString;

    aput-object v1, v0, v6

    sget-object v1, Lkol;->g:Lokio/ByteString;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lkol;->f:Lokio/ByteString;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lkol;->h:Lokio/ByteString;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lkol;->i:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lkoi;->c:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lkoi;->d:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lkoi;->e:Lokio/ByteString;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lkoi;->f:Lokio/ByteString;

    aput-object v2, v0, v1

    invoke-static {v0}, Lknj;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lkol;->j:Ljava/util/List;

    .line 78
    const/16 v0, 0x8

    new-array v0, v0, [Lokio/ByteString;

    sget-object v1, Lkol;->b:Lokio/ByteString;

    aput-object v1, v0, v3

    sget-object v1, Lkol;->c:Lokio/ByteString;

    aput-object v1, v0, v4

    sget-object v1, Lkol;->d:Lokio/ByteString;

    aput-object v1, v0, v5

    sget-object v1, Lkol;->e:Lokio/ByteString;

    aput-object v1, v0, v6

    sget-object v1, Lkol;->g:Lokio/ByteString;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lkol;->f:Lokio/ByteString;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lkol;->h:Lokio/ByteString;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lkol;->i:Lokio/ByteString;

    aput-object v2, v0, v1

    invoke-static {v0}, Lknj;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lkol;->k:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lkna;Lkmx$a;Lknu;Lkom;)V
    .locals 2
    .param p1, "client"    # Lkna;
    .param p2, "chain"    # Lkmx$a;
    .param p3, "streamAllocation"    # Lknu;
    .param p4, "connection"    # Lkom;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p2, p0, Lkol;->l:Lkmx$a;

    .line 97
    iput-object p3, p0, Lkol;->a:Lknu;

    .line 98
    iput-object p4, p0, Lkol;->m:Lkom;

    .line 1379
    iget-object v0, p1, Lkna;->e:Ljava/util/List;

    .line 99
    sget-object v1, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    sget-object v0, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    .line 101
    :goto_0
    iput-object v0, p0, Lkol;->o:Lokhttp3/Protocol;

    .line 102
    return-void

    .line 101
    :cond_0
    sget-object v0, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    goto :goto_0
.end method


# virtual methods
.method public final a(Z)Lkne$a;
    .locals 13
    .param p1, "expectContinue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v11, 0x64

    const/4 v4, 0x0

    .line 127
    iget-object v2, p0, Lkol;->n:Lkoo;

    invoke-virtual {v2}, Lkoo;->c()Ljava/util/List;

    move-result-object v0

    .line 128
    .local v0, "headers":Ljava/util/List;, "Ljava/util/List<Lkoi;>;"
    iget-object v7, p0, Lkol;->o:Lokhttp3/Protocol;

    .line 9160
    new-instance v3, Lkmv$a;

    invoke-direct {v3}, Lkmv$a;-><init>()V

    .line 9161
    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    move v6, v2

    move-object v5, v4

    :goto_0
    if-ge v6, v8, :cond_3

    .line 9162
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkoi;

    .line 9166
    if-nez v2, :cond_0

    .line 9167
    if-eqz v5, :cond_2

    iget v2, v5, Lkof;->b:I

    if-ne v2, v11, :cond_2

    .line 9169
    new-instance v2, Lkmv$a;

    invoke-direct {v2}, Lkmv$a;-><init>()V

    move-object v3, v4

    .line 9161
    :goto_1
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move-object v5, v3

    move-object v3, v2

    goto :goto_0

    .line 9174
    :cond_0
    iget-object v9, v2, Lkoi;->g:Lokio/ByteString;

    .line 9175
    iget-object v2, v2, Lkoi;->h:Lokio/ByteString;

    invoke-virtual {v2}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v2

    .line 9176
    sget-object v10, Lkoi;->b:Lokio/ByteString;

    invoke-virtual {v9, v10}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 9177
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "HTTP/1.1 "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkof;->a(Ljava/lang/String;)Lkof;

    move-result-object v2

    move-object v12, v3

    move-object v3, v2

    move-object v2, v12

    goto :goto_1

    .line 9178
    :cond_1
    sget-object v10, Lkol;->k:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 9179
    sget-object v10, Lknh;->a:Lknh;

    invoke-virtual {v9}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v3, v9, v2}, Lknh;->a(Lkmv$a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v2, v3

    move-object v3, v5

    goto :goto_1

    .line 9182
    :cond_3
    if-nez v5, :cond_4

    new-instance v2, Ljava/net/ProtocolException;

    const-string/jumbo v3, "Expected \':status\' header not present"

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 9184
    :cond_4
    new-instance v2, Lkne$a;

    invoke-direct {v2}, Lkne$a;-><init>()V

    .line 9337
    iput-object v7, v2, Lkne$a;->b:Lokhttp3/Protocol;

    .line 9185
    iget v6, v5, Lkof;->b:I

    .line 9342
    iput v6, v2, Lkne$a;->c:I

    .line 9186
    iget-object v5, v5, Lkof;->c:Ljava/lang/String;

    .line 9347
    iput-object v5, v2, Lkne$a;->d:Ljava/lang/String;

    .line 9188
    invoke-virtual {v3}, Lkmv$a;->a()Lkmv;

    move-result-object v3

    invoke-virtual {v2, v3}, Lkne$a;->a(Lkmv;)Lkne$a;

    move-result-object v1

    .line 129
    .local v1, "responseBuilder":Lkne$a;
    if-eqz p1, :cond_5

    sget-object v2, Lknh;->a:Lknh;

    invoke-virtual {v2, v1}, Lknh;->a(Lkne$a;)I

    move-result v2

    if-ne v2, v11, :cond_5

    .line 132
    :goto_2
    return-object v4

    :cond_5
    move-object v4, v1

    goto :goto_2
.end method

.method public final a(Lkne;)Lknf;
    .locals 6
    .param p1, "response"    # Lkne;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 192
    iget-object v4, p0, Lkol;->a:Lknu;

    iget-object v4, v4, Lknu;->f:Lkms;

    iget-object v5, p0, Lkol;->a:Lknu;

    iget-object v5, v5, Lknu;->e:Lkmi;

    invoke-virtual {v4, v5}, Lkms;->responseBodyStart(Lkmi;)V

    .line 193
    const-string/jumbo v4, "Content-Type"

    invoke-virtual {p1, v4}, Lkne;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "contentType":Ljava/lang/String;
    invoke-static {p1}, Lknz;->a(Lkne;)J

    move-result-wide v0

    .line 195
    .local v0, "contentLength":J
    new-instance v3, Lkol$a;

    iget-object v4, p0, Lkol;->n:Lkoo;

    .line 10211
    iget-object v4, v4, Lkoo;->g:Lkoo$b;

    .line 195
    invoke-direct {v3, p0, v4}, Lkol$a;-><init>(Lkol;Lokio/Source;)V

    .line 196
    .local v3, "source":Lokio/Source;
    new-instance v4, Lkoc;

    invoke-static {v3}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v5

    invoke-direct {v4, v2, v0, v1, v5}, Lkoc;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V

    return-object v4
.end method

.method public final a(Lknc;J)Lokio/Sink;
    .locals 1
    .param p1, "request"    # Lknc;
    .param p2, "contentLength"    # J

    .prologue
    .line 105
    iget-object v0, p0, Lkol;->n:Lkoo;

    invoke-virtual {v0}, Lkoo;->d()Lokio/Sink;

    move-result-object v0

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
    .line 119
    iget-object v0, p0, Lkol;->m:Lkom;

    .line 8412
    iget-object v0, v0, Lkom;->p:Lkop;

    invoke-virtual {v0}, Lkop;->b()V

    .line 120
    return-void
.end method

.method public final a(Lknc;)V
    .locals 9
    .param p1, "request"    # Lknc;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 109
    iget-object v3, p0, Lkol;->n:Lkoo;

    if-eqz v3, :cond_0

    .line 116
    :goto_0
    return-void

    .line 2069
    :cond_0
    iget-object v3, p1, Lknc;->d:Lknd;

    .line 111
    if-eqz v3, :cond_3

    const/4 v0, 0x1

    .line 3057
    .local v0, "hasRequestBody":Z
    :goto_1
    iget-object v4, p1, Lknc;->c:Lkmv;

    .line 2137
    new-instance v1, Ljava/util/ArrayList;

    .line 3077
    iget-object v3, v4, Lkmv;->a:[Ljava/lang/String;

    array-length v3, v3

    div-int/lit8 v3, v3, 0x2

    .line 2137
    add-int/lit8 v3, v3, 0x4

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2138
    new-instance v3, Lkoi;

    sget-object v5, Lkoi;->c:Lokio/ByteString;

    .line 4053
    iget-object v6, p1, Lknc;->b:Ljava/lang/String;

    .line 2138
    invoke-direct {v3, v5, v6}, Lkoi;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2139
    new-instance v3, Lkoi;

    sget-object v5, Lkoi;->d:Lokio/ByteString;

    .line 5049
    iget-object v6, p1, Lknc;->a:Lkmw;

    .line 2139
    invoke-static {v6}, Lkod;->a(Lkmw;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lkoi;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2140
    const-string/jumbo v3, "Host"

    invoke-virtual {p1, v3}, Lknc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2141
    if-eqz v3, :cond_1

    .line 2142
    new-instance v5, Lkoi;

    sget-object v6, Lkoi;->f:Lokio/ByteString;

    invoke-direct {v5, v6, v3}, Lkoi;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2144
    :cond_1
    new-instance v3, Lkoi;

    sget-object v5, Lkoi;->e:Lokio/ByteString;

    .line 6049
    iget-object v6, p1, Lknc;->a:Lkmw;

    .line 6393
    iget-object v6, v6, Lkmw;->a:Ljava/lang/String;

    .line 2144
    invoke-direct {v3, v5, v6}, Lkoi;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7077
    iget-object v3, v4, Lkmv;->a:[Ljava/lang/String;

    array-length v3, v3

    div-int/lit8 v5, v3, 0x2

    move v3, v2

    .line 2146
    :goto_2
    if-ge v3, v5, :cond_4

    .line 2148
    invoke-virtual {v4, v3}, Lkmv;->a(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v6

    .line 2149
    sget-object v7, Lkol;->j:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 2150
    new-instance v7, Lkoi;

    invoke-virtual {v4, v3}, Lkmv;->b(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lkoi;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2146
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v0    # "hasRequestBody":Z
    :cond_3
    move v0, v2

    .line 111
    goto :goto_1

    .line 113
    .restart local v0    # "hasRequestBody":Z
    .local v1, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lkoi;>;"
    :cond_4
    iget-object v3, p0, Lkol;->m:Lkom;

    .line 7230
    invoke-virtual {v3, v2, v1, v0}, Lkom;->a(ILjava/util/List;Z)Lkoo;

    move-result-object v2

    .line 113
    iput-object v2, p0, Lkol;->n:Lkoo;

    .line 114
    iget-object v2, p0, Lkol;->n:Lkoo;

    .line 8202
    iget-object v2, v2, Lkoo;->i:Lkoo$c;

    .line 114
    iget-object v3, p0, Lkol;->l:Lkmx$a;

    invoke-interface {v3}, Lkmx$a;->c()I

    move-result v3

    int-to-long v4, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 115
    iget-object v2, p0, Lkol;->n:Lkoo;

    .line 8206
    iget-object v2, v2, Lkoo;->j:Lkoo$c;

    .line 115
    iget-object v3, p0, Lkol;->l:Lkmx$a;

    invoke-interface {v3}, Lkmx$a;->d()I

    move-result v3

    int-to-long v4, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lkol;->n:Lkoo;

    invoke-virtual {v0}, Lkoo;->d()Lokio/Sink;

    move-result-object v0

    invoke-interface {v0}, Lokio/Sink;->close()V

    .line 124
    return-void
.end method
