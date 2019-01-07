.class final Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;
.super Ljava/lang/Object;
.source "Hpack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/spdy/Hpack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reader"
.end annotation


# instance fields
.field dynamicTable:[Lcom/squareup/okhttp/internal/spdy/Header;

.field dynamicTableByteCount:I

.field headerCount:I

.field private final headerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;"
        }
    .end annotation
.end field

.field private headerTableSizeSetting:I

.field private maxDynamicTableByteCount:I

.field nextHeaderIndex:I

.field private final source:Lokio/BufferedSource;


# direct methods
.method constructor <init>(ILokio/Source;)V
    .locals 2
    .param p1, "headerTableSizeSetting"    # I
    .param p2, "source"    # Lokio/Source;

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->headerList:Ljava/util/List;

    .line 122
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/squareup/okhttp/internal/spdy/Header;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->dynamicTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    .line 124
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->dynamicTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->nextHeaderIndex:I

    .line 125
    iput v1, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->headerCount:I

    .line 126
    iput v1, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->dynamicTableByteCount:I

    .line 129
    iput p1, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->headerTableSizeSetting:I

    .line 130
    iput p1, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->maxDynamicTableByteCount:I

    .line 131
    invoke-static {p2}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->source:Lokio/BufferedSource;

    .line 132
    return-void
.end method

.method private adjustDynamicTableByteCount()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 152
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->maxDynamicTableByteCount:I

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->dynamicTableByteCount:I

    if-ge v0, v1, :cond_0

    .line 153
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->maxDynamicTableByteCount:I

    if-nez v0, :cond_1

    .line 154
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->clearDynamicTable()V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->dynamicTableByteCount:I

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->maxDynamicTableByteCount:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->evictToRecoverBytes(I)I

    goto :goto_0
.end method

.method private clearDynamicTable()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 162
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 163
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->dynamicTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 164
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->dynamicTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->nextHeaderIndex:I

    .line 165
    iput v2, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->headerCount:I

    .line 166
    iput v2, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->dynamicTableByteCount:I

    .line 167
    return-void
.end method

.method private dynamicTableIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 241
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->nextHeaderIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    return v0
.end method

.method private evictToRecoverBytes(I)I
    .locals 7
    .param p1, "bytesToRecover"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "entriesToEvict":I
    if-lez p1, :cond_1

    .line 174
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->dynamicTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "j":I
    :goto_0
    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->nextHeaderIndex:I

    if-lt v1, v2, :cond_0

    if-lez p1, :cond_0

    .line 175
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->dynamicTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/squareup/okhttp/internal/spdy/Header;->hpackSize:I

    sub-int/2addr p1, v2

    .line 176
    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->dynamicTableByteCount:I

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->dynamicTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/squareup/okhttp/internal/spdy/Header;->hpackSize:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->dynamicTableByteCount:I

    .line 177
    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->headerCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->headerCount:I

    .line 178
    add-int/lit8 v0, v0, 0x1

    .line 174
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 180
    :cond_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->dynamicTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    iget v3, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->nextHeaderIndex:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->dynamicTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    iget v5, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->nextHeaderIndex:I

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v0

    iget v6, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->headerCount:I

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->nextHeaderIndex:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->nextHeaderIndex:I

    .line 184
    .end local v1    # "j":I
    :cond_1
    return v0
.end method

.method private getName(I)Lokio/ByteString;
    .locals 2
    .param p1, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->isStaticHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Hpack;->access$000()[Lcom/squareup/okhttp/internal/spdy/Header;

    move-result-object v0

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/Header;->name:Lokio/ByteString;

    .line 273
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->dynamicTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Hpack;->access$000()[Lcom/squareup/okhttp/internal/spdy/Header;

    move-result-object v1

    array-length v1, v1

    sub-int v1, p1, v1

    invoke-direct {p0, v1}, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->dynamicTableIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/Header;->name:Lokio/ByteString;

    goto :goto_0
.end method

.method private insertIntoDynamicTable(ILcom/squareup/okhttp/internal/spdy/Header;)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "entry"    # Lcom/squareup/okhttp/internal/spdy/Header;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, -0x1

    .line 283
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    iget v1, p2, Lcom/squareup/okhttp/internal/spdy/Header;->hpackSize:I

    .line 286
    .local v1, "delta":I
    if-eq p1, v6, :cond_0

    .line 287
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->dynamicTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->dynamicTableIndex(I)I

    move-result v5

    aget-object v4, v4, v5

    iget v4, v4, Lcom/squareup/okhttp/internal/spdy/Header;->hpackSize:I

    sub-int/2addr v1, v4

    .line 291
    :cond_0
    iget v4, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->maxDynamicTableByteCount:I

    if-le v1, v4, :cond_1

    .line 292
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->clearDynamicTable()V

    .line 315
    :goto_0
    return-void

    .line 297
    :cond_1
    iget v4, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->dynamicTableByteCount:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->maxDynamicTableByteCount:I

    sub-int v0, v4, v5

    .line 298
    .local v0, "bytesToRecover":I
    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->evictToRecoverBytes(I)I

    move-result v3

    .line 300
    .local v3, "entriesEvicted":I
    if-ne p1, v6, :cond_3

    .line 301
    iget v4, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->headerCount:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->dynamicTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    array-length v5, v5

    if-le v4, v5, :cond_2

    .line 302
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->dynamicTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    new-array v2, v4, [Lcom/squareup/okhttp/internal/spdy/Header;

    .line 303
    .local v2, "doubled":[Lcom/squareup/okhttp/internal/spdy/Header;
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->dynamicTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->dynamicTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    array-length v6, v6

    iget-object v7, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->dynamicTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    array-length v7, v7

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 304
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->dynamicTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->nextHeaderIndex:I

    .line 305
    iput-object v2, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->dynamicTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    .line 307
    .end local v2    # "doubled":[Lcom/squareup/okhttp/internal/spdy/Header;
    :cond_2
    iget p1, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->nextHeaderIndex:I

    .end local p1    # "index":I
    add-int/lit8 v4, p1, -0x1

    iput v4, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->nextHeaderIndex:I

    .line 308
    .restart local p1    # "index":I
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->dynamicTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    aput-object p2, v4, p1

    .line 309
    iget v4, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->headerCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->headerCount:I

    .line 314
    :goto_1
    iget v4, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->dynamicTableByteCount:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->dynamicTableByteCount:I

    goto :goto_0

    .line 311
    :cond_3
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->dynamicTableIndex(I)I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr p1, v4

    .line 312
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->dynamicTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    aput-object p2, v4, p1

    goto :goto_1
.end method

.method private isStaticHeader(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 278
    if-ltz p1, :cond_0

    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Hpack;->access$000()[Lcom/squareup/okhttp/internal/spdy/Header;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private readIndexedHeader(I)V
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->isStaticHeader(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Hpack;->access$000()[Lcom/squareup/okhttp/internal/spdy/Header;

    move-result-object v2

    aget-object v1, v2, p1

    .line 229
    .local v1, "staticEntry":Lcom/squareup/okhttp/internal/spdy/Header;
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    .end local v1    # "staticEntry":Lcom/squareup/okhttp/internal/spdy/Header;
    :goto_0
    return-void

    .line 231
    :cond_0
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Hpack;->access$000()[Lcom/squareup/okhttp/internal/spdy/Header;

    move-result-object v2

    array-length v2, v2

    sub-int v2, p1, v2

    invoke-direct {p0, v2}, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->dynamicTableIndex(I)I

    move-result v0

    .line 232
    .local v0, "dynamicTableIndex":I
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->dynamicTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_2

    .line 233
    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Header index too large "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 235
    :cond_2
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->headerList:Ljava/util/List;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->dynamicTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    aget-object v3, v3, v0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private readLiteralHeaderWithIncrementalIndexingIndexedName(I)V
    .locals 4
    .param p1, "nameIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->getName(I)Lokio/ByteString;

    move-result-object v0

    .line 259
    .local v0, "name":Lokio/ByteString;
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->readByteString()Lokio/ByteString;

    move-result-object v1

    .line 260
    .local v1, "value":Lokio/ByteString;
    const/4 v2, -0x1

    new-instance v3, Lcom/squareup/okhttp/internal/spdy/Header;

    invoke-direct {v3, v0, v1}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-direct {p0, v2, v3}, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->insertIntoDynamicTable(ILcom/squareup/okhttp/internal/spdy/Header;)V

    .line 261
    return-void
.end method

.method private readLiteralHeaderWithIncrementalIndexingNewName()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->readByteString()Lokio/ByteString;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/okhttp/internal/spdy/Hpack;->access$100(Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    .line 265
    .local v0, "name":Lokio/ByteString;
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->readByteString()Lokio/ByteString;

    move-result-object v1

    .line 266
    .local v1, "value":Lokio/ByteString;
    const/4 v2, -0x1

    new-instance v3, Lcom/squareup/okhttp/internal/spdy/Header;

    invoke-direct {v3, v0, v1}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-direct {p0, v2, v3}, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->insertIntoDynamicTable(ILcom/squareup/okhttp/internal/spdy/Header;)V

    .line 267
    return-void
.end method

.method private readLiteralHeaderWithoutIndexingIndexedName(I)V
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->getName(I)Lokio/ByteString;

    move-result-object v0

    .line 246
    .local v0, "name":Lokio/ByteString;
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->readByteString()Lokio/ByteString;

    move-result-object v1

    .line 247
    .local v1, "value":Lokio/ByteString;
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->headerList:Ljava/util/List;

    new-instance v3, Lcom/squareup/okhttp/internal/spdy/Header;

    invoke-direct {v3, v0, v1}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    return-void
.end method

.method private readLiteralHeaderWithoutIndexingNewName()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->readByteString()Lokio/ByteString;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/okhttp/internal/spdy/Hpack;->access$100(Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    .line 252
    .local v0, "name":Lokio/ByteString;
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->readByteString()Lokio/ByteString;

    move-result-object v1

    .line 253
    .local v1, "value":Lokio/ByteString;
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->headerList:Ljava/util/List;

    new-instance v3, Lcom/squareup/okhttp/internal/spdy/Header;

    invoke-direct {v3, v0, v1}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    return-void
.end method


# virtual methods
.method public final getAndResetHeaderList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 221
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 222
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 223
    return-object v0
.end method

.method final headerTableSizeSetting(I)V
    .locals 0
    .param p1, "headerTableSizeSetting"    # I

    .prologue
    .line 146
    iput p1, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->headerTableSizeSetting:I

    .line 147
    iput p1, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->maxDynamicTableByteCount:I

    .line 148
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->adjustDynamicTableByteCount()V

    .line 149
    return-void
.end method

.method final maxDynamicTableByteCount()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->maxDynamicTableByteCount:I

    return v0
.end method

.method final readByteString()Lokio/ByteString;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->readByte()I

    move-result v0

    .line 346
    .local v0, "firstByte":I
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    .line 347
    .local v1, "huffmanDecode":Z
    :goto_0
    const/16 v3, 0x7f

    invoke-virtual {p0, v0, v3}, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->readInt(II)I

    move-result v2

    .line 349
    .local v2, "length":I
    if-eqz v1, :cond_1

    .line 350
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Huffman;->get()Lcom/squareup/okhttp/internal/spdy/Huffman;

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->source:Lokio/BufferedSource;

    int-to-long v6, v2

    invoke-interface {v4, v6, v7}, Lokio/BufferedSource;->readByteArray(J)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/internal/spdy/Huffman;->decode([B)[B

    move-result-object v3

    invoke-static {v3}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v3

    .line 352
    :goto_1
    return-object v3

    .line 346
    .end local v1    # "huffmanDecode":Z
    .end local v2    # "length":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 352
    .restart local v1    # "huffmanDecode":Z
    .restart local v2    # "length":I
    :cond_1
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->source:Lokio/BufferedSource;

    int-to-long v4, v2

    invoke-interface {v3, v4, v5}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v3

    goto :goto_1
.end method

.method final readHeaders()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v5, 0x80

    const/16 v4, 0x40

    .line 192
    :goto_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->exhausted()Z

    move-result v2

    if-nez v2, :cond_9

    .line 193
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readByte()B

    move-result v2

    and-int/lit16 v0, v2, 0xff

    .line 194
    .local v0, "b":I
    if-ne v0, v5, :cond_0

    .line 195
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "index == 0"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 196
    :cond_0
    and-int/lit16 v2, v0, 0x80

    if-ne v2, v5, :cond_1

    .line 197
    const/16 v2, 0x7f

    invoke-virtual {p0, v0, v2}, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->readInt(II)I

    move-result v1

    .line 198
    .local v1, "index":I
    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v2}, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->readIndexedHeader(I)V

    goto :goto_0

    .line 199
    .end local v1    # "index":I
    :cond_1
    if-ne v0, v4, :cond_2

    .line 200
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->readLiteralHeaderWithIncrementalIndexingNewName()V

    goto :goto_0

    .line 201
    :cond_2
    and-int/lit8 v2, v0, 0x40

    if-ne v2, v4, :cond_3

    .line 202
    const/16 v2, 0x3f

    invoke-virtual {p0, v0, v2}, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->readInt(II)I

    move-result v1

    .line 203
    .restart local v1    # "index":I
    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v2}, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->readLiteralHeaderWithIncrementalIndexingIndexedName(I)V

    goto :goto_0

    .line 204
    .end local v1    # "index":I
    :cond_3
    and-int/lit8 v2, v0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 205
    const/16 v2, 0x1f

    invoke-virtual {p0, v0, v2}, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->readInt(II)I

    move-result v2

    iput v2, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->maxDynamicTableByteCount:I

    .line 206
    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->maxDynamicTableByteCount:I

    if-ltz v2, :cond_4

    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->maxDynamicTableByteCount:I

    iget v3, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->headerTableSizeSetting:I

    if-le v2, v3, :cond_5

    .line 208
    :cond_4
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Invalid dynamic table size update "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->maxDynamicTableByteCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 210
    :cond_5
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->adjustDynamicTableByteCount()V

    goto :goto_0

    .line 211
    :cond_6
    const/16 v2, 0x10

    if-eq v0, v2, :cond_7

    if-nez v0, :cond_8

    .line 212
    :cond_7
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->readLiteralHeaderWithoutIndexingNewName()V

    goto/16 :goto_0

    .line 214
    :cond_8
    const/16 v2, 0xf

    invoke-virtual {p0, v0, v2}, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->readInt(II)I

    move-result v1

    .line 215
    .restart local v1    # "index":I
    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v2}, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->readLiteralHeaderWithoutIndexingIndexedName(I)V

    goto/16 :goto_0

    .line 218
    .end local v0    # "b":I
    .end local v1    # "index":I
    :cond_9
    return-void
.end method

.method final readInt(II)I
    .locals 5
    .param p1, "firstByte"    # I
    .param p2, "prefixMask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 322
    and-int v1, p1, p2

    .line 323
    .local v1, "prefix":I
    if-ge v1, p2, :cond_0

    .line 340
    .end local v1    # "prefix":I
    :goto_0
    return v1

    .line 328
    .restart local v1    # "prefix":I
    :cond_0
    move v2, p2

    .line 329
    .local v2, "result":I
    const/4 v3, 0x0

    .line 331
    .local v3, "shift":I
    :goto_1
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/Hpack$Reader;->readByte()I

    move-result v0

    .line 332
    .local v0, "b":I
    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_1

    .line 333
    and-int/lit8 v4, v0, 0x7f

    shl-int/2addr v4, v3

    add-int/2addr v2, v4

    .line 334
    add-int/lit8 v3, v3, 0x7

    goto :goto_1

    .line 336
    :cond_1
    shl-int v4, v0, v3

    add-int/2addr v2, v4

    move v1, v2

    .line 340
    goto :goto_0
.end method
