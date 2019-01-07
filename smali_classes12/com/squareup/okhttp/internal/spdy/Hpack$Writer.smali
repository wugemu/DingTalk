.class final Lcom/squareup/okhttp/internal/spdy/Hpack$Writer;
.super Ljava/lang/Object;
.source "Hpack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/spdy/Hpack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Writer"
.end annotation


# instance fields
.field private final out:Lokio/Buffer;


# direct methods
.method constructor <init>(Lokio/Buffer;)V
    .locals 0
    .param p1, "out"    # Lokio/Buffer;

    .prologue
    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Writer;->out:Lokio/Buffer;

    .line 374
    return-void
.end method


# virtual methods
.method final writeByteString(Lokio/ByteString;)V
    .locals 3
    .param p1, "data"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 417
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v0

    const/16 v1, 0x7f

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/squareup/okhttp/internal/spdy/Hpack$Writer;->writeInt(III)V

    .line 418
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Writer;->out:Lokio/Buffer;

    invoke-virtual {v0, p1}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    .line 419
    return-void
.end method

.method final writeHeaders(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    const/4 v6, 0x0

    .line 380
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 381
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/okhttp/internal/spdy/Header;

    iget-object v4, v4, Lcom/squareup/okhttp/internal/spdy/Header;->name:Lokio/ByteString;

    invoke-virtual {v4}, Lokio/ByteString;->toAsciiLowercase()Lokio/ByteString;

    move-result-object v1

    .line 382
    .local v1, "name":Lokio/ByteString;
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Hpack;->access$200()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 383
    .local v3, "staticIndex":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    .line 385
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0xf

    invoke-virtual {p0, v4, v5, v6}, Lcom/squareup/okhttp/internal/spdy/Hpack$Writer;->writeInt(III)V

    .line 386
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/okhttp/internal/spdy/Header;

    iget-object v4, v4, Lcom/squareup/okhttp/internal/spdy/Header;->value:Lokio/ByteString;

    invoke-virtual {p0, v4}, Lcom/squareup/okhttp/internal/spdy/Hpack$Writer;->writeByteString(Lokio/ByteString;)V

    .line 380
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 388
    :cond_0
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Writer;->out:Lokio/Buffer;

    invoke-virtual {v4, v6}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 389
    invoke-virtual {p0, v1}, Lcom/squareup/okhttp/internal/spdy/Hpack$Writer;->writeByteString(Lokio/ByteString;)V

    .line 390
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/okhttp/internal/spdy/Header;

    iget-object v4, v4, Lcom/squareup/okhttp/internal/spdy/Header;->value:Lokio/ByteString;

    invoke-virtual {p0, v4}, Lcom/squareup/okhttp/internal/spdy/Hpack$Writer;->writeByteString(Lokio/ByteString;)V

    goto :goto_1

    .line 393
    .end local v1    # "name":Lokio/ByteString;
    .end local v3    # "staticIndex":Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method final writeInt(III)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "prefixMask"    # I
    .param p3, "bits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 398
    if-ge p1, p2, :cond_0

    .line 399
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Writer;->out:Lokio/Buffer;

    or-int v2, p3, p1

    invoke-virtual {v1, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 414
    :goto_0
    return-void

    .line 404
    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Writer;->out:Lokio/Buffer;

    or-int v2, p3, p2

    invoke-virtual {v1, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 405
    sub-int/2addr p1, p2

    .line 408
    :goto_1
    const/16 v1, 0x80

    if-lt p1, v1, :cond_1

    .line 409
    and-int/lit8 v0, p1, 0x7f

    .line 410
    .local v0, "b":I
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Writer;->out:Lokio/Buffer;

    or-int/lit16 v2, v0, 0x80

    invoke-virtual {v1, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 411
    ushr-int/lit8 p1, p1, 0x7

    .line 412
    goto :goto_1

    .line 413
    .end local v0    # "b":I
    :cond_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Writer;->out:Lokio/Buffer;

    invoke-virtual {v1, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_0
.end method
