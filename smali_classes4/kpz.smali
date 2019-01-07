.class public Lkpz;
.super Ljava/io/FilterOutputStream;
.source "Base64OutputStream.java"


# static fields
.field public static final a:[B

.field static final synthetic b:Z

.field private static final c:[B

.field private static final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final e:[B

.field private final f:I

.field private final g:[B

.field private h:Z

.field private final i:[B

.field private j:I

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x40

    const/4 v2, 0x0

    .line 37
    const-class v1, Lkpz;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lkpz;->b:Z

    .line 43
    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    sput-object v1, Lkpz;->c:[B

    .line 48
    new-array v1, v5, [B

    fill-array-data v1, :array_1

    sput-object v1, Lkpz;->a:[B

    .line 60
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lkpz;->d:Ljava/util/Set;

    .line 63
    sget-object v1, Lkpz;->a:[B

    .local v0, "b":B
    :goto_1
    if-ge v2, v5, :cond_1

    aget-byte v0, v1, v2

    .line 64
    sget-object v3, Lkpz;->d:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "b":B
    :cond_0
    move v1, v2

    .line 37
    goto :goto_0

    .line 66
    .restart local v0    # "b":B
    :cond_1
    sget-object v1, Lkpz;->d:Ljava/util/Set;

    const/16 v2, 0x3d

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    return-void

    .line 43
    .line 48
    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method private a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 251
    iget v0, p0, Lkpz;->j:I

    if-lez v0, :cond_0

    .line 252
    iget-object v0, p0, Lkpz;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lkpz;->i:[B

    iget v2, p0, Lkpz;->j:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 253
    iput v3, p0, Lkpz;->j:I

    .line 255
    :cond_0
    return-void
.end method

.method private a([BII)V
    .locals 9
    .param p1, "buffer"    # [B
    .param p2, "from"    # I
    .param p3, "to"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 215
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_4

    .line 216
    iget v2, p0, Lkpz;->k:I

    shl-int/lit8 v2, v2, 0x8

    aget-byte v4, p1, v0

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v2, v4

    iput v2, p0, Lkpz;->k:I

    .line 218
    iget v2, p0, Lkpz;->l:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lkpz;->l:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    .line 219
    iput v3, p0, Lkpz;->l:I

    .line 223
    iget v2, p0, Lkpz;->f:I

    if-lez v2, :cond_1

    iget v2, p0, Lkpz;->m:I

    iget v4, p0, Lkpz;->f:I

    if-lt v2, v4, :cond_1

    .line 226
    iput v3, p0, Lkpz;->m:I

    .line 228
    iget-object v2, p0, Lkpz;->i:[B

    array-length v2, v2

    iget v4, p0, Lkpz;->j:I

    sub-int/2addr v2, v4

    iget-object v4, p0, Lkpz;->g:[B

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 229
    invoke-direct {p0}, Lkpz;->a()V

    .line 231
    :cond_0
    iget-object v4, p0, Lkpz;->g:[B

    array-length v5, v4

    move v2, v3

    :goto_1
    if-ge v2, v5, :cond_1

    aget-byte v1, v4, v2

    .line 232
    .local v1, "ls":B
    iget-object v6, p0, Lkpz;->i:[B

    iget v7, p0, Lkpz;->j:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lkpz;->j:I

    aput-byte v1, v6, v7

    .line 231
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 237
    .end local v1    # "ls":B
    :cond_1
    iget-object v2, p0, Lkpz;->i:[B

    array-length v2, v2

    iget v4, p0, Lkpz;->j:I

    sub-int/2addr v2, v4

    const/4 v4, 0x4

    if-ge v2, v4, :cond_2

    .line 238
    invoke-direct {p0}, Lkpz;->a()V

    .line 240
    :cond_2
    iget-object v2, p0, Lkpz;->i:[B

    iget v4, p0, Lkpz;->j:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lkpz;->j:I

    sget-object v5, Lkpz;->a:[B

    iget v6, p0, Lkpz;->k:I

    shr-int/lit8 v6, v6, 0x12

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v2, v4

    .line 241
    iget-object v2, p0, Lkpz;->i:[B

    iget v4, p0, Lkpz;->j:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lkpz;->j:I

    sget-object v5, Lkpz;->a:[B

    iget v6, p0, Lkpz;->k:I

    shr-int/lit8 v6, v6, 0xc

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v2, v4

    .line 242
    iget-object v2, p0, Lkpz;->i:[B

    iget v4, p0, Lkpz;->j:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lkpz;->j:I

    sget-object v5, Lkpz;->a:[B

    iget v6, p0, Lkpz;->k:I

    shr-int/lit8 v6, v6, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v2, v4

    .line 243
    iget-object v2, p0, Lkpz;->i:[B

    iget v4, p0, Lkpz;->j:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lkpz;->j:I

    sget-object v5, Lkpz;->a:[B

    iget v6, p0, Lkpz;->k:I

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v2, v4

    .line 245
    iget v2, p0, Lkpz;->m:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lkpz;->m:I

    .line 215
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 248
    :cond_4
    return-void
.end method

.method private b()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 299
    iput v1, p0, Lkpz;->m:I

    .line 301
    iget-object v2, p0, Lkpz;->i:[B

    array-length v2, v2

    iget v3, p0, Lkpz;->j:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lkpz;->g:[B

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 302
    invoke-direct {p0}, Lkpz;->a()V

    .line 304
    :cond_0
    iget-object v2, p0, Lkpz;->g:[B

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-byte v0, v2, v1

    .line 305
    .local v0, "ls":B
    iget-object v4, p0, Lkpz;->i:[B

    iget v5, p0, Lkpz;->j:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lkpz;->j:I

    aput-byte v0, v4, v5

    .line 304
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 306
    .end local v0    # "ls":B
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/16 v4, 0x3d

    .line 206
    iget-boolean v0, p0, Lkpz;->h:Z

    if-eqz v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    iput-boolean v2, p0, Lkpz;->h:Z

    .line 1258
    iget v0, p0, Lkpz;->l:I

    if-eqz v0, :cond_3

    .line 1273
    iget v0, p0, Lkpz;->f:I

    if-lez v0, :cond_1

    iget v0, p0, Lkpz;->m:I

    iget v1, p0, Lkpz;->f:I

    if-lt v0, v1, :cond_1

    .line 1274
    invoke-direct {p0}, Lkpz;->b()V

    .line 1279
    :cond_1
    iget-object v0, p0, Lkpz;->i:[B

    array-length v0, v0

    iget v1, p0, Lkpz;->j:I

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    .line 1280
    invoke-direct {p0}, Lkpz;->a()V

    .line 1282
    :cond_2
    iget v0, p0, Lkpz;->l:I

    if-ne v0, v2, :cond_5

    .line 1283
    iget-object v0, p0, Lkpz;->i:[B

    iget v1, p0, Lkpz;->j:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkpz;->j:I

    sget-object v2, Lkpz;->a:[B

    iget v3, p0, Lkpz;->k:I

    shr-int/lit8 v3, v3, 0x2

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 1284
    iget-object v0, p0, Lkpz;->i:[B

    iget v1, p0, Lkpz;->j:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkpz;->j:I

    sget-object v2, Lkpz;->a:[B

    iget v3, p0, Lkpz;->k:I

    shl-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 1285
    iget-object v0, p0, Lkpz;->i:[B

    iget v1, p0, Lkpz;->j:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkpz;->j:I

    aput-byte v4, v0, v1

    .line 1286
    iget-object v0, p0, Lkpz;->i:[B

    iget v1, p0, Lkpz;->j:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkpz;->j:I

    aput-byte v4, v0, v1

    .line 1295
    :goto_1
    iget v0, p0, Lkpz;->m:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lkpz;->m:I

    .line 1263
    :cond_3
    iget v0, p0, Lkpz;->f:I

    if-lez v0, :cond_4

    iget v0, p0, Lkpz;->m:I

    if-lez v0, :cond_4

    .line 1264
    invoke-direct {p0}, Lkpz;->b()V

    .line 1267
    :cond_4
    invoke-direct {p0}, Lkpz;->a()V

    goto :goto_0

    .line 1288
    :cond_5
    sget-boolean v0, Lkpz;->b:Z

    if-nez v0, :cond_6

    iget v0, p0, Lkpz;->l:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1289
    :cond_6
    iget-object v0, p0, Lkpz;->i:[B

    iget v1, p0, Lkpz;->j:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkpz;->j:I

    sget-object v2, Lkpz;->a:[B

    iget v3, p0, Lkpz;->k:I

    shr-int/lit8 v3, v3, 0xa

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 1290
    iget-object v0, p0, Lkpz;->i:[B

    iget v1, p0, Lkpz;->j:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkpz;->j:I

    sget-object v2, Lkpz;->a:[B

    iget v3, p0, Lkpz;->k:I

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 1291
    iget-object v0, p0, Lkpz;->i:[B

    iget v1, p0, Lkpz;->j:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkpz;->j:I

    sget-object v2, Lkpz;->a:[B

    iget v3, p0, Lkpz;->k:I

    shl-int/lit8 v3, v3, 0x2

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 1292
    iget-object v0, p0, Lkpz;->i:[B

    iget v1, p0, Lkpz;->j:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkpz;->j:I

    aput-byte v4, v0, v1

    goto :goto_1
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 198
    iget-boolean v0, p0, Lkpz;->h:Z

    if-eqz v0, :cond_0

    .line 199
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Base64OutputStream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_0
    invoke-direct {p0}, Lkpz;->a()V

    .line 202
    return-void
.end method

.method public final write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 157
    iget-boolean v0, p0, Lkpz;->h:Z

    if-eqz v0, :cond_0

    .line 158
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Base64OutputStream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    iget-object v0, p0, Lkpz;->e:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 161
    iget-object v0, p0, Lkpz;->e:[B

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v1}, Lkpz;->a([BII)V

    .line 162
    return-void
.end method

.method public final write([B)V
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 166
    iget-boolean v0, p0, Lkpz;->h:Z

    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Base64OutputStream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    if-nez p1, :cond_1

    .line 170
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 172
    :cond_1
    array-length v0, p1

    if-nez v0, :cond_2

    .line 176
    :goto_0
    return-void

    .line 175
    :cond_2
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lkpz;->a([BII)V

    goto :goto_0
.end method

.method public final write([BII)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 181
    iget-boolean v0, p0, Lkpz;->h:Z

    if-eqz v0, :cond_0

    .line 182
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Base64OutputStream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_0
    if-nez p1, :cond_1

    .line 185
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 187
    :cond_1
    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_3

    .line 188
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 190
    :cond_3
    if-nez p3, :cond_4

    .line 194
    :goto_0
    return-void

    .line 193
    :cond_4
    add-int v0, p2, p3

    invoke-direct {p0, p1, p2, v0}, Lkpz;->a([BII)V

    goto :goto_0
.end method
