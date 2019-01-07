.class final Lkoj$a;
.super Ljava/lang/Object;
.source "Hpack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkoj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkoi;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lokio/BufferedSource;

.field final c:I

.field d:I

.field e:[Lkoi;

.field f:I

.field g:I

.field h:I


# direct methods
.method private constructor <init>(IILokio/Source;)V
    .locals 2
    .param p1, "headerTableSizeSetting"    # I
    .param p2, "maxDynamicTableByteCount"    # I
    .param p3, "source"    # Lokio/Source;

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkoj$a;->a:Ljava/util/List;

    .line 124
    const/16 v0, 0x8

    new-array v0, v0, [Lkoi;

    iput-object v0, p0, Lkoj$a;->e:[Lkoi;

    .line 126
    iget-object v0, p0, Lkoj$a;->e:[Lkoi;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkoj$a;->f:I

    .line 127
    iput v1, p0, Lkoj$a;->g:I

    .line 128
    iput v1, p0, Lkoj$a;->h:I

    .line 135
    iput p1, p0, Lkoj$a;->c:I

    .line 136
    iput p2, p0, Lkoj$a;->d:I

    .line 137
    invoke-static {p3}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lkoj$a;->b:Lokio/BufferedSource;

    .line 138
    return-void
.end method

.method constructor <init>(ILokio/Source;)V
    .locals 1
    .param p1, "headerTableSizeSetting"    # I
    .param p2, "source"    # Lokio/Source;

    .prologue
    const/16 v0, 0x1000

    .line 131
    invoke-direct {p0, v0, v0, p2}, Lkoj$a;-><init>(IILokio/Source;)V

    .line 132
    return-void
.end method

.method private c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 155
    iget-object v0, p0, Lkoj$a;->e:[Lkoi;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lkoj$a;->e:[Lkoi;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkoj$a;->f:I

    .line 157
    iput v2, p0, Lkoj$a;->g:I

    .line 158
    iput v2, p0, Lkoj$a;->h:I

    .line 159
    return-void
.end method

.method static c(I)Z
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 275
    if-ltz p0, :cond_0

    sget-object v0, Lkoj;->a:[Lkoi;

    const/16 v0, 0x3c

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Lkoj$a;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private d(I)I
    .locals 7
    .param p1, "bytesToRecover"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "entriesToEvict":I
    if-lez p1, :cond_1

    .line 166
    iget-object v2, p0, Lkoj$a;->e:[Lkoi;

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "j":I
    :goto_0
    iget v2, p0, Lkoj$a;->f:I

    if-lt v1, v2, :cond_0

    if-lez p1, :cond_0

    .line 167
    iget-object v2, p0, Lkoj$a;->e:[Lkoi;

    aget-object v2, v2, v1

    iget v2, v2, Lkoi;->i:I

    sub-int/2addr p1, v2

    .line 168
    iget v2, p0, Lkoj$a;->h:I

    iget-object v3, p0, Lkoj$a;->e:[Lkoi;

    aget-object v3, v3, v1

    iget v3, v3, Lkoi;->i:I

    sub-int/2addr v2, v3

    iput v2, p0, Lkoj$a;->h:I

    .line 169
    iget v2, p0, Lkoj$a;->g:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lkoj$a;->g:I

    .line 170
    add-int/lit8 v0, v0, 0x1

    .line 166
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 172
    :cond_0
    iget-object v2, p0, Lkoj$a;->e:[Lkoi;

    iget v3, p0, Lkoj$a;->f:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lkoj$a;->e:[Lkoi;

    iget v5, p0, Lkoj$a;->f:I

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v0

    iget v6, p0, Lkoj$a;->g:I

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    iget v2, p0, Lkoj$a;->f:I

    add-int/2addr v2, v0

    iput v2, p0, Lkoj$a;->f:I

    .line 176
    .end local v1    # "j":I
    :cond_1
    return v0
.end method


# virtual methods
.method a(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 233
    iget v0, p0, Lkoj$a;->f:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    return v0
.end method

.method final a(II)I
    .locals 5
    .param p1, "firstByte"    # I
    .param p2, "prefixMask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 319
    and-int v1, p1, p2

    .line 320
    .local v1, "prefix":I
    if-ge v1, p2, :cond_0

    .line 337
    .end local v1    # "prefix":I
    :goto_0
    return v1

    .line 325
    .restart local v1    # "prefix":I
    :cond_0
    move v2, p2

    .line 326
    .local v2, "result":I
    const/4 v3, 0x0

    .line 328
    .local v3, "shift":I
    :goto_1
    invoke-direct {p0}, Lkoj$a;->d()I

    move-result v0

    .line 329
    .local v0, "b":I
    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_1

    .line 330
    and-int/lit8 v4, v0, 0x7f

    shl-int/2addr v4, v3

    add-int/2addr v2, v4

    .line 331
    add-int/lit8 v3, v3, 0x7

    goto :goto_1

    .line 333
    :cond_1
    shl-int v4, v0, v3

    add-int/2addr v2, v4

    move v1, v2

    .line 337
    goto :goto_0
.end method

.method a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 145
    iget v0, p0, Lkoj$a;->d:I

    iget v1, p0, Lkoj$a;->h:I

    if-ge v0, v1, :cond_0

    .line 146
    iget v0, p0, Lkoj$a;->d:I

    if-nez v0, :cond_1

    .line 147
    invoke-direct {p0}, Lkoj$a;->c()V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget v0, p0, Lkoj$a;->h:I

    iget v1, p0, Lkoj$a;->d:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lkoj$a;->d(I)I

    goto :goto_0
.end method

.method a(ILkoi;)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "entry"    # Lkoi;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 280
    iget-object v3, p0, Lkoj$a;->a:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    iget v1, p2, Lkoi;->i:I

    .line 288
    .local v1, "delta":I
    iget v3, p0, Lkoj$a;->d:I

    if-le v1, v3, :cond_0

    .line 289
    invoke-direct {p0}, Lkoj$a;->c()V

    .line 312
    :goto_0
    return-void

    .line 294
    :cond_0
    iget v3, p0, Lkoj$a;->h:I

    add-int/2addr v3, v1

    iget v4, p0, Lkoj$a;->d:I

    sub-int v0, v3, v4

    .line 295
    .local v0, "bytesToRecover":I
    invoke-direct {p0, v0}, Lkoj$a;->d(I)I

    .line 298
    iget v3, p0, Lkoj$a;->g:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lkoj$a;->e:[Lkoi;

    array-length v4, v4

    if-le v3, v4, :cond_1

    .line 299
    iget-object v3, p0, Lkoj$a;->e:[Lkoi;

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    new-array v2, v3, [Lkoi;

    .line 300
    .local v2, "doubled":[Lkoi;
    iget-object v3, p0, Lkoj$a;->e:[Lkoi;

    const/4 v4, 0x0

    iget-object v5, p0, Lkoj$a;->e:[Lkoi;

    array-length v5, v5

    iget-object v6, p0, Lkoj$a;->e:[Lkoi;

    array-length v6, v6

    invoke-static {v3, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    iget-object v3, p0, Lkoj$a;->e:[Lkoi;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lkoj$a;->f:I

    .line 302
    iput-object v2, p0, Lkoj$a;->e:[Lkoi;

    .line 304
    .end local v2    # "doubled":[Lkoi;
    :cond_1
    iget p1, p0, Lkoj$a;->f:I

    .end local p1    # "index":I
    add-int/lit8 v3, p1, -0x1

    iput v3, p0, Lkoj$a;->f:I

    .line 305
    .restart local p1    # "index":I
    iget-object v3, p0, Lkoj$a;->e:[Lkoi;

    aput-object p2, v3, p1

    .line 306
    iget v3, p0, Lkoj$a;->g:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lkoj$a;->g:I

    .line 311
    iget v3, p0, Lkoj$a;->h:I

    add-int/2addr v3, v1

    iput v3, p0, Lkoj$a;->h:I

    goto :goto_0
.end method

.method final b()Lokio/ByteString;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 342
    invoke-direct {p0}, Lkoj$a;->d()I

    move-result v0

    .line 343
    .local v0, "firstByte":I
    and-int/lit16 v4, v0, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_0

    const/4 v1, 0x1

    .line 344
    .local v1, "huffmanDecode":Z
    :goto_0
    const/16 v4, 0x7f

    invoke-virtual {p0, v0, v4}, Lkoj$a;->a(II)I

    move-result v2

    .line 346
    .local v2, "length":I
    if-eqz v1, :cond_5

    .line 347
    invoke-static {}, Lkoq;->a()Lkoq;

    move-result-object v7

    iget-object v4, p0, Lkoj$a;->b:Lokio/BufferedSource;

    int-to-long v8, v2

    invoke-interface {v4, v8, v9}, Lokio/BufferedSource;->readByteArray(J)[B

    move-result-object v8

    .line 1129
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1130
    iget-object v4, v7, Lkoq;->a:Lkoq$a;

    move v5, v3

    move-object v6, v4

    move v4, v3

    .line 1133
    :goto_1
    array-length v10, v8

    if-ge v3, v10, :cond_3

    .line 1134
    aget-byte v10, v8, v3

    and-int/lit16 v10, v10, 0xff

    .line 1135
    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v10

    .line 1136
    add-int/lit8 v4, v4, 0x8

    .line 1137
    :goto_2
    const/16 v10, 0x8

    if-lt v4, v10, :cond_2

    .line 1138
    add-int/lit8 v10, v4, -0x8

    ushr-int v10, v5, v10

    and-int/lit16 v10, v10, 0xff

    .line 1139
    iget-object v6, v6, Lkoq$a;->a:[Lkoq$a;

    aget-object v6, v6, v10

    .line 1140
    iget-object v10, v6, Lkoq$a;->a:[Lkoq$a;

    if-nez v10, :cond_1

    .line 1142
    iget v10, v6, Lkoq$a;->b:I

    invoke-virtual {v9, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1143
    iget v6, v6, Lkoq$a;->c:I

    sub-int/2addr v4, v6

    .line 1144
    iget-object v6, v7, Lkoq;->a:Lkoq$a;

    goto :goto_2

    .end local v1    # "huffmanDecode":Z
    .end local v2    # "length":I
    :cond_0
    move v1, v3

    .line 343
    goto :goto_0

    .line 1147
    .restart local v1    # "huffmanDecode":Z
    .restart local v2    # "length":I
    :cond_1
    add-int/lit8 v4, v4, -0x8

    .line 1149
    goto :goto_2

    .line 1133
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1152
    :cond_3
    :goto_3
    if-lez v4, :cond_4

    .line 1153
    rsub-int/lit8 v3, v4, 0x8

    shl-int v3, v5, v3

    and-int/lit16 v3, v3, 0xff

    .line 1154
    iget-object v6, v6, Lkoq$a;->a:[Lkoq$a;

    aget-object v3, v6, v3

    .line 1155
    iget-object v6, v3, Lkoq$a;->a:[Lkoq$a;

    if-nez v6, :cond_4

    iget v6, v3, Lkoq$a;->c:I

    if-gt v6, v4, :cond_4

    .line 1158
    iget v6, v3, Lkoq$a;->b:I

    invoke-virtual {v9, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1159
    iget v3, v3, Lkoq$a;->c:I

    sub-int/2addr v4, v3

    .line 1160
    iget-object v6, v7, Lkoq;->a:Lkoq$a;

    goto :goto_3

    .line 1163
    :cond_4
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 347
    invoke-static {v3}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v3

    .line 349
    :goto_4
    return-object v3

    :cond_5
    iget-object v3, p0, Lkoj$a;->b:Lokio/BufferedSource;

    int-to-long v4, v2

    invoke-interface {v3, v4, v5}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v3

    goto :goto_4
.end method

.method b(I)Lokio/ByteString;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 262
    invoke-static {p1}, Lkoj$a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    sget-object v1, Lkoj;->a:[Lkoi;

    aget-object v1, v1, p1

    iget-object v1, v1, Lkoi;->g:Lokio/ByteString;

    .line 270
    :goto_0
    return-object v1

    .line 265
    :cond_0
    sget-object v1, Lkoj;->a:[Lkoi;

    add-int/lit8 v1, p1, -0x3d

    invoke-virtual {p0, v1}, Lkoj$a;->a(I)I

    move-result v0

    .line 266
    .local v0, "dynamicTableIndex":I
    if-ltz v0, :cond_1

    iget-object v1, p0, Lkoj$a;->e:[Lkoi;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 267
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Header index too large "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 270
    :cond_2
    iget-object v1, p0, Lkoj$a;->e:[Lkoi;

    aget-object v1, v1, v0

    iget-object v1, v1, Lkoi;->g:Lokio/ByteString;

    goto :goto_0
.end method
