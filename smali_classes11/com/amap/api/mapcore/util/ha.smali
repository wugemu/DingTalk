.class public Lcom/amap/api/mapcore/util/ha;
.super Ljava/lang/Object;
.source "StrictLineReader.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final a:Ljava/io/InputStream;

.field private final b:Ljava/nio/charset/Charset;

.field private c:[B

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V
    .locals 2

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 109
    :cond_1
    if-gez p2, :cond_2

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "capacity <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_2
    sget-object v0, Lcom/amap/api/mapcore/util/hb;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unsupported encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_3
    iput-object p1, p0, Lcom/amap/api/mapcore/util/ha;->a:Ljava/io/InputStream;

    .line 117
    iput-object p3, p0, Lcom/amap/api/mapcore/util/ha;->b:Ljava/nio/charset/Charset;

    .line 118
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ha;->c:[B

    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .locals 1

    .prologue
    .line 85
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0, p2}, Lcom/amap/api/mapcore/util/ha;-><init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V

    .line 86
    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/ha;)Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ha;->b:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method private b()V
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
    const/4 v3, 0x0

    .line 217
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ha;->a:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ha;->c:[B

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ha;->c:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 218
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 219
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 221
    :cond_0
    iput v3, p0, Lcom/amap/api/mapcore/util/ha;->d:I

    .line 222
    iput v0, p0, Lcom/amap/api/mapcore/util/ha;->e:I

    .line 223
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v6, 0xa

    .line 148
    iget-object v3, p0, Lcom/amap/api/mapcore/util/ha;->a:Ljava/io/InputStream;

    monitor-enter v3

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ha;->c:[B

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "LineReader is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 158
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/amap/api/mapcore/util/ha;->d:I

    iget v1, p0, Lcom/amap/api/mapcore/util/ha;->e:I

    if-lt v0, v1, :cond_1

    .line 159
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ha;->b()V

    .line 163
    :cond_1
    iget v2, p0, Lcom/amap/api/mapcore/util/ha;->d:I

    :goto_0
    iget v0, p0, Lcom/amap/api/mapcore/util/ha;->e:I

    if-eq v2, v0, :cond_4

    .line 164
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ha;->c:[B

    aget-byte v0, v0, v2

    if-ne v0, v6, :cond_3

    .line 165
    iget v0, p0, Lcom/amap/api/mapcore/util/ha;->d:I

    if-eq v2, v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ha;->c:[B

    add-int/lit8 v1, v2, -0x1

    aget-byte v0, v0, v1

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    add-int/lit8 v0, v2, -0x1

    move v1, v0

    .line 166
    :goto_1
    new-instance v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/amap/api/mapcore/util/ha;->c:[B

    iget v5, p0, Lcom/amap/api/mapcore/util/ha;->d:I

    iget v6, p0, Lcom/amap/api/mapcore/util/ha;->d:I

    sub-int/2addr v1, v6

    iget-object v6, p0, Lcom/amap/api/mapcore/util/ha;->b:Ljava/nio/charset/Charset;

    .line 167
    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v4, v5, v1, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 168
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/amap/api/mapcore/util/ha;->d:I

    .line 169
    monitor-exit v3

    .line 205
    :goto_2
    return-object v0

    :cond_2
    move v1, v2

    .line 165
    goto :goto_1

    .line 163
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    :cond_4
    new-instance v1, Lcom/amap/api/mapcore/util/ha$1;

    iget v0, p0, Lcom/amap/api/mapcore/util/ha;->e:I

    iget v2, p0, Lcom/amap/api/mapcore/util/ha;->d:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x50

    invoke-direct {v1, p0, v0}, Lcom/amap/api/mapcore/util/ha$1;-><init>(Lcom/amap/api/mapcore/util/ha;I)V

    .line 192
    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ha;->c:[B

    iget v2, p0, Lcom/amap/api/mapcore/util/ha;->d:I

    iget v4, p0, Lcom/amap/api/mapcore/util/ha;->e:I

    iget v5, p0, Lcom/amap/api/mapcore/util/ha;->d:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v0, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 195
    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/ha;->e:I

    .line 196
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ha;->b()V

    .line 199
    iget v0, p0, Lcom/amap/api/mapcore/util/ha;->d:I

    :goto_3
    iget v2, p0, Lcom/amap/api/mapcore/util/ha;->e:I

    if-eq v0, v2, :cond_5

    .line 200
    iget-object v2, p0, Lcom/amap/api/mapcore/util/ha;->c:[B

    aget-byte v2, v2, v0

    if-ne v2, v6, :cond_7

    .line 201
    iget v2, p0, Lcom/amap/api/mapcore/util/ha;->d:I

    if-eq v0, v2, :cond_6

    .line 202
    iget-object v2, p0, Lcom/amap/api/mapcore/util/ha;->c:[B

    iget v4, p0, Lcom/amap/api/mapcore/util/ha;->d:I

    iget v5, p0, Lcom/amap/api/mapcore/util/ha;->d:I

    sub-int v5, v0, v5

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 204
    :cond_6
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/ha;->d:I

    .line 205
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 199
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 129
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ha;->a:Ljava/io/InputStream;

    monitor-enter v1

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ha;->c:[B

    if-eqz v0, :cond_0

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ha;->c:[B

    .line 132
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ha;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 134
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
