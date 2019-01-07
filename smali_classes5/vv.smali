.class public final Lvv;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field static final a:[B

.field private static final b:[B

.field private static final c:[B


# instance fields
.field private final d:I

.field private final e:[B

.field private final f:I

.field private final g:I

.field private h:[B

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lvv;->a:[B

    .line 86
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lvv;->b:[B

    .line 110
    const/16 v0, 0x7b

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lvv;->c:[B

    return-void

    .line 76
    .line 86
    .line 110
    nop

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

    :array_2
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3et
        -0x1t
        -0x1t
        -0x1t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 202
    const/16 v0, 0x4c

    sget-object v1, Lvv;->a:[B

    invoke-direct {p0, v0, v1}, Lvv;-><init>(I[B)V

    .line 203
    return-void
.end method

.method private constructor <init>(I)V
    .locals 2
    .param p1, "lineLength"    # I

    .prologue
    .line 222
    const/4 v0, 0x0

    sget-object v1, Lvv;->a:[B

    invoke-direct {p0, v0, v1}, Lvv;-><init>(I[B)V

    .line 223
    return-void
.end method

.method private constructor <init>(I[B)V
    .locals 4
    .param p1, "lineLength"    # I
    .param p2, "lineSeparator"    # [B

    .prologue
    const/4 v3, 0x0

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput p1, p0, Lvv;->d:I

    .line 246
    array-length v1, p2

    new-array v1, v1, [B

    iput-object v1, p0, Lvv;->e:[B

    .line 247
    iget-object v1, p0, Lvv;->e:[B

    array-length v2, p2

    invoke-static {p2, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    if-lez p1, :cond_0

    .line 250
    array-length v1, p2

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lvv;->g:I

    .line 256
    :goto_0
    iget v1, p0, Lvv;->g:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lvv;->f:I

    .line 257
    invoke-static {p2}, Lvv;->e([B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "UTF-8"

    invoke-direct {v0, p2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    .local v0, "sep":Ljava/lang/String;
    :goto_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "lineSeperator must not contain base64 characters: ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 254
    .end local v0    # "sep":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x4

    iput v1, p0, Lvv;->g:I

    goto :goto_0

    .line 266
    :catch_0
    move-exception v1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    .restart local v0    # "sep":Ljava/lang/String;
    goto :goto_1

    .line 270
    .end local v0    # "sep":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 52
    if-nez p0, :cond_0

    .line 53
    const/4 v1, 0x0

    .line 56
    :goto_0
    return-object v1

    .line 55
    :cond_0
    new-instance v1, Lvv;

    invoke-direct {v1}, Lvv;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1794
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lvv;->a([BZ)[B

    move-result-object v0

    .line 56
    .local v0, "encoded":[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static a([B)[B
    .locals 1
    .param p0, "binaryData"    # [B

    .prologue
    .line 595
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lvv;->a([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method private static a([BZ)[B
    .locals 12
    .param p0, "binaryData"    # [B
    .param p1, "isChunked"    # Z

    .prologue
    const-wide/16 v10, 0x4

    const/4 v8, 0x0

    .line 654
    if-eqz p0, :cond_0

    array-length v6, p0

    if-nez v6, :cond_2

    :cond_0
    move-object v1, p0

    .line 686
    :cond_1
    :goto_0
    return-object v1

    .line 658
    :cond_2
    new-instance v0, Lvv;

    invoke-direct {v0, v8}, Lvv;-><init>(I)V

    .line 660
    .local v0, "b64":Lvv;
    array-length v6, p0

    mul-int/lit8 v6, v6, 0x4

    div-int/lit8 v6, v6, 0x3

    int-to-long v2, v6

    .line 661
    .local v2, "len":J
    rem-long v4, v2, v10

    .line 662
    .local v4, "mod":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_3

    .line 664
    sub-long v6, v10, v4

    add-long/2addr v2, v6

    .line 671
    :cond_3
    const-wide/32 v6, 0x7fffffff

    cmp-long v6, v2, v6

    if-lez v6, :cond_4

    .line 673
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Input array too big, output array would be bigger than Integer.MAX_VALUE=2147483647"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 676
    :cond_4
    long-to-int v6, v2

    new-array v1, v6, [B

    .line 677
    .local v1, "buf":[B
    array-length v6, v1

    invoke-direct {v0, v1, v8, v6}, Lvv;->d([BII)V

    .line 678
    array-length v6, p0

    invoke-virtual {v0, p0, v8, v6}, Lvv;->b([BII)V

    .line 679
    const/4 v6, -0x1

    invoke-virtual {v0, p0, v8, v6}, Lvv;->b([BII)V

    .line 682
    iget-object v6, v0, Lvv;->h:[B

    if-eq v6, v1, :cond_1

    .line 684
    array-length v6, v1

    invoke-virtual {v0, v1, v8, v6}, Lvv;->a([BII)I

    goto :goto_0
.end method

.method private b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 295
    iget-object v1, p0, Lvv;->h:[B

    if-nez v1, :cond_0

    .line 297
    const/16 v1, 0x2000

    new-array v1, v1, [B

    iput-object v1, p0, Lvv;->h:[B

    .line 298
    iput v3, p0, Lvv;->i:I

    .line 299
    iput v3, p0, Lvv;->j:I

    .line 307
    :goto_0
    return-void

    .line 303
    :cond_0
    iget-object v1, p0, Lvv;->h:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    .line 304
    .local v0, "b":[B
    iget-object v1, p0, Lvv;->h:[B

    iget-object v2, p0, Lvv;->h:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
    iput-object v0, p0, Lvv;->h:[B

    goto :goto_0
.end method

.method public static b([B)[B
    .locals 1
    .param p0, "pArray"    # [B

    .prologue
    .line 638
    invoke-static {p0}, Lvv;->c([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static c([B)[B
    .locals 7
    .param p0, "base64Data"    # [B

    .prologue
    const/4 v6, 0x0

    .line 697
    if-eqz p0, :cond_0

    array-length v5, p0

    if-nez v5, :cond_1

    :cond_0
    move-object v4, p0

    .line 713
    :goto_0
    return-object v4

    .line 701
    :cond_1
    new-instance v0, Lvv;

    invoke-direct {v0}, Lvv;-><init>()V

    .line 703
    .local v0, "b64":Lvv;
    array-length v5, p0

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x4

    int-to-long v2, v5

    .line 704
    .local v2, "len":J
    long-to-int v5, v2

    new-array v1, v5, [B

    .line 705
    .local v1, "buf":[B
    array-length v5, v1

    invoke-direct {v0, v1, v6, v5}, Lvv;->d([BII)V

    .line 706
    array-length v5, p0

    invoke-virtual {v0, p0, v6, v5}, Lvv;->c([BII)V

    .line 707
    const/4 v5, -0x1

    invoke-virtual {v0, p0, v6, v5}, Lvv;->c([BII)V

    .line 711
    iget v5, v0, Lvv;->i:I

    new-array v4, v5, [B

    .line 712
    .local v4, "result":[B
    array-length v5, v4

    invoke-virtual {v0, v4, v6, v5}, Lvv;->a([BII)I

    goto :goto_0
.end method

.method private d([BII)V
    .locals 2
    .param p1, "out"    # [B
    .param p2, "outPos"    # I
    .param p3, "outAvail"    # I

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 362
    array-length v0, p1

    if-ne v0, p3, :cond_0

    .line 364
    iput-object p1, p0, Lvv;->h:[B

    .line 365
    iput v1, p0, Lvv;->i:I

    .line 366
    iput v1, p0, Lvv;->j:I

    .line 368
    :cond_0
    return-void
.end method

.method public static d([B)[B
    .locals 1
    .param p0, "pArray"    # [B

    .prologue
    .line 794
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lvv;->a([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method private static e([B)Z
    .locals 7
    .param p0, "arrayOctet"    # [B

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 576
    array-length v5, p0

    move v4, v2

    :goto_0
    if-ge v4, v5, :cond_3

    aget-byte v0, p0, v4

    .line 2543
    .local v0, "element":B
    const/16 v3, 0x3d

    if-eq v0, v3, :cond_0

    if-ltz v0, :cond_1

    const/16 v3, 0x7b

    if-ge v0, v3, :cond_1

    sget-object v3, Lvv;->c:[B

    aget-byte v3, v3, v0

    const/4 v6, -0x1

    if-eq v3, v6, :cond_1

    :cond_0
    move v3, v1

    .line 578
    :goto_1
    if-eqz v3, :cond_2

    .line 583
    .end local v0    # "element":B
    :goto_2
    return v1

    .restart local v0    # "element":B
    :cond_1
    move v3, v2

    .line 2543
    goto :goto_1

    .line 576
    :cond_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    .end local v0    # "element":B
    :cond_3
    move v1, v2

    .line 583
    goto :goto_2
.end method


# virtual methods
.method final a()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 289
    iget-object v0, p0, Lvv;->h:[B

    if-eqz v0, :cond_0

    iget v0, p0, Lvv;->i:I

    iget v1, p0, Lvv;->j:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a([BII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "bPos"    # I
    .param p3, "bAvail"    # I

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 323
    iget-object v2, p0, Lvv;->h:[B

    if-eqz v2, :cond_2

    .line 325
    invoke-virtual {p0}, Lvv;->a()I

    move-result v2

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 326
    .local v0, "len":I
    iget-object v2, p0, Lvv;->h:[B

    if-eq v2, p1, :cond_0

    .line 328
    iget-object v2, p0, Lvv;->h:[B

    iget v3, p0, Lvv;->j:I

    invoke-static {v2, v3, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 329
    iget v1, p0, Lvv;->j:I

    add-int/2addr v1, v0

    iput v1, p0, Lvv;->j:I

    .line 330
    iget v1, p0, Lvv;->j:I

    iget v2, p0, Lvv;->i:I

    if-lt v1, v2, :cond_1

    .line 339
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lvv;->h:[B

    .line 345
    .end local v0    # "len":I
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-boolean v2, p0, Lvv;->m:Z

    if-eqz v2, :cond_3

    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method final b([BII)V
    .locals 9
    .param p1, "in"    # [B
    .param p2, "inPos"    # I
    .param p3, "inAvail"    # I

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/16 v8, 0x3d

    const/4 v7, 0x0

    .line 388
    iget-boolean v3, p0, Lvv;->m:Z

    if-eqz v3, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    if-gez p3, :cond_4

    .line 397
    const/4 v3, 0x1

    iput-boolean v3, p0, Lvv;->m:Z

    .line 398
    iget-object v3, p0, Lvv;->h:[B

    if-eqz v3, :cond_2

    iget-object v3, p0, Lvv;->h:[B

    array-length v3, v3

    iget v4, p0, Lvv;->i:I

    sub-int/2addr v3, v4

    iget v4, p0, Lvv;->g:I

    if-ge v3, v4, :cond_3

    .line 400
    :cond_2
    invoke-direct {p0}, Lvv;->b()V

    .line 402
    :cond_3
    iget v3, p0, Lvv;->l:I

    packed-switch v3, :pswitch_data_0

    .line 418
    :goto_1
    iget v3, p0, Lvv;->d:I

    if-lez v3, :cond_0

    .line 420
    iget-object v3, p0, Lvv;->e:[B

    iget-object v4, p0, Lvv;->h:[B

    iget v5, p0, Lvv;->i:I

    iget-object v6, p0, Lvv;->e:[B

    array-length v6, v6

    invoke-static {v3, v7, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 421
    iget v3, p0, Lvv;->i:I

    iget-object v4, p0, Lvv;->e:[B

    array-length v4, v4

    add-int/2addr v3, v4

    iput v3, p0, Lvv;->i:I

    goto :goto_0

    .line 405
    :pswitch_0
    iget-object v3, p0, Lvv;->h:[B

    iget v4, p0, Lvv;->i:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lvv;->i:I

    sget-object v5, Lvv;->b:[B

    iget v6, p0, Lvv;->n:I

    shr-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 406
    iget-object v3, p0, Lvv;->h:[B

    iget v4, p0, Lvv;->i:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lvv;->i:I

    sget-object v5, Lvv;->b:[B

    iget v6, p0, Lvv;->n:I

    shl-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 407
    iget-object v3, p0, Lvv;->h:[B

    iget v4, p0, Lvv;->i:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lvv;->i:I

    aput-byte v8, v3, v4

    .line 408
    iget-object v3, p0, Lvv;->h:[B

    iget v4, p0, Lvv;->i:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lvv;->i:I

    aput-byte v8, v3, v4

    goto :goto_1

    .line 412
    :pswitch_1
    iget-object v3, p0, Lvv;->h:[B

    iget v4, p0, Lvv;->i:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lvv;->i:I

    sget-object v5, Lvv;->b:[B

    iget v6, p0, Lvv;->n:I

    shr-int/lit8 v6, v6, 0xa

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 413
    iget-object v3, p0, Lvv;->h:[B

    iget v4, p0, Lvv;->i:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lvv;->i:I

    sget-object v5, Lvv;->b:[B

    iget v6, p0, Lvv;->n:I

    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 414
    iget-object v3, p0, Lvv;->h:[B

    iget v4, p0, Lvv;->i:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lvv;->i:I

    sget-object v5, Lvv;->b:[B

    iget v6, p0, Lvv;->n:I

    shl-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 415
    iget-object v3, p0, Lvv;->h:[B

    iget v4, p0, Lvv;->i:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lvv;->i:I

    aput-byte v8, v3, v4

    goto/16 :goto_1

    .line 426
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, p2

    .end local p2    # "inPos":I
    .local v2, "inPos":I
    :goto_2
    if-ge v1, p3, :cond_9

    .line 428
    iget-object v3, p0, Lvv;->h:[B

    if-eqz v3, :cond_5

    iget-object v3, p0, Lvv;->h:[B

    array-length v3, v3

    iget v4, p0, Lvv;->i:I

    sub-int/2addr v3, v4

    iget v4, p0, Lvv;->g:I

    if-ge v3, v4, :cond_6

    .line 430
    :cond_5
    invoke-direct {p0}, Lvv;->b()V

    .line 432
    :cond_6
    iget v3, p0, Lvv;->l:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lvv;->l:I

    rem-int/lit8 v3, v3, 0x3

    iput v3, p0, Lvv;->l:I

    .line 433
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "inPos":I
    .restart local p2    # "inPos":I
    aget-byte v0, p1, v2

    .line 434
    .local v0, "b":I
    if-gez v0, :cond_7

    .line 436
    add-int/lit16 v0, v0, 0x100

    .line 438
    :cond_7
    iget v3, p0, Lvv;->n:I

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v0

    iput v3, p0, Lvv;->n:I

    .line 439
    iget v3, p0, Lvv;->l:I

    if-nez v3, :cond_8

    .line 441
    iget-object v3, p0, Lvv;->h:[B

    iget v4, p0, Lvv;->i:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lvv;->i:I

    sget-object v5, Lvv;->b:[B

    iget v6, p0, Lvv;->n:I

    shr-int/lit8 v6, v6, 0x12

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 442
    iget-object v3, p0, Lvv;->h:[B

    iget v4, p0, Lvv;->i:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lvv;->i:I

    sget-object v5, Lvv;->b:[B

    iget v6, p0, Lvv;->n:I

    shr-int/lit8 v6, v6, 0xc

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 443
    iget-object v3, p0, Lvv;->h:[B

    iget v4, p0, Lvv;->i:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lvv;->i:I

    sget-object v5, Lvv;->b:[B

    iget v6, p0, Lvv;->n:I

    shr-int/lit8 v6, v6, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 444
    iget-object v3, p0, Lvv;->h:[B

    iget v4, p0, Lvv;->i:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lvv;->i:I

    sget-object v5, Lvv;->b:[B

    iget v6, p0, Lvv;->n:I

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 445
    iget v3, p0, Lvv;->k:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lvv;->k:I

    .line 446
    iget v3, p0, Lvv;->d:I

    if-lez v3, :cond_8

    iget v3, p0, Lvv;->d:I

    iget v4, p0, Lvv;->k:I

    if-gt v3, v4, :cond_8

    .line 448
    iget-object v3, p0, Lvv;->e:[B

    iget-object v4, p0, Lvv;->h:[B

    iget v5, p0, Lvv;->i:I

    iget-object v6, p0, Lvv;->e:[B

    array-length v6, v6

    invoke-static {v3, v7, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 449
    iget v3, p0, Lvv;->i:I

    iget-object v4, p0, Lvv;->e:[B

    array-length v4, v4

    add-int/2addr v3, v4

    iput v3, p0, Lvv;->i:I

    .line 450
    iput v7, p0, Lvv;->k:I

    .line 426
    :cond_8
    add-int/lit8 v1, v1, 0x1

    move v2, p2

    .end local p2    # "inPos":I
    .restart local v2    # "inPos":I
    goto/16 :goto_2

    .end local v0    # "b":I
    :cond_9
    move p2, v2

    .end local v2    # "inPos":I
    .restart local p2    # "inPos":I
    goto/16 :goto_0

    .line 402
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method final c([BII)V
    .locals 8
    .param p1, "in"    # [B
    .param p2, "inPos"    # I
    .param p3, "inAvail"    # I

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 480
    iget-boolean v4, p0, Lvv;->m:Z

    if-eqz v4, :cond_0

    .line 532
    :goto_0
    return-void

    .line 484
    :cond_0
    if-gez p3, :cond_1

    .line 486
    iput-boolean v7, p0, Lvv;->m:Z

    .line 488
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, p2

    .end local p2    # "inPos":I
    .local v2, "inPos":I
    :goto_1
    if-ge v1, p3, :cond_6

    .line 490
    iget-object v4, p0, Lvv;->h:[B

    if-eqz v4, :cond_2

    iget-object v4, p0, Lvv;->h:[B

    array-length v4, v4

    iget v5, p0, Lvv;->i:I

    sub-int/2addr v4, v5

    iget v5, p0, Lvv;->f:I

    if-ge v4, v5, :cond_3

    .line 492
    :cond_2
    invoke-direct {p0}, Lvv;->b()V

    .line 494
    :cond_3
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "inPos":I
    .restart local p2    # "inPos":I
    aget-byte v0, p1, v2

    .line 495
    .local v0, "b":B
    const/16 v4, 0x3d

    if-ne v0, v4, :cond_4

    .line 497
    iget v4, p0, Lvv;->n:I

    shl-int/lit8 v4, v4, 0x6

    iput v4, p0, Lvv;->n:I

    .line 498
    iget v4, p0, Lvv;->l:I

    packed-switch v4, :pswitch_data_0

    .line 510
    :goto_2
    iput-boolean v7, p0, Lvv;->m:Z

    goto :goto_0

    .line 501
    :pswitch_0
    iget v4, p0, Lvv;->n:I

    shl-int/lit8 v4, v4, 0x6

    iput v4, p0, Lvv;->n:I

    .line 502
    iget-object v4, p0, Lvv;->h:[B

    iget v5, p0, Lvv;->i:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lvv;->i:I

    iget v6, p0, Lvv;->n:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto :goto_2

    .line 505
    :pswitch_1
    iget-object v4, p0, Lvv;->h:[B

    iget v5, p0, Lvv;->i:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lvv;->i:I

    iget v6, p0, Lvv;->n:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 506
    iget-object v4, p0, Lvv;->h:[B

    iget v5, p0, Lvv;->i:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lvv;->i:I

    iget v6, p0, Lvv;->n:I

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto :goto_2

    .line 515
    :cond_4
    if-ltz v0, :cond_5

    const/16 v4, 0x7b

    if-ge v0, v4, :cond_5

    .line 517
    sget-object v4, Lvv;->c:[B

    aget-byte v3, v4, v0

    .line 518
    .local v3, "result":I
    if-ltz v3, :cond_5

    .line 520
    iget v4, p0, Lvv;->l:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lvv;->l:I

    rem-int/lit8 v4, v4, 0x4

    iput v4, p0, Lvv;->l:I

    .line 521
    iget v4, p0, Lvv;->n:I

    shl-int/lit8 v4, v4, 0x6

    add-int/2addr v4, v3

    iput v4, p0, Lvv;->n:I

    .line 522
    iget v4, p0, Lvv;->l:I

    if-nez v4, :cond_5

    .line 524
    iget-object v4, p0, Lvv;->h:[B

    iget v5, p0, Lvv;->i:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lvv;->i:I

    iget v6, p0, Lvv;->n:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 525
    iget-object v4, p0, Lvv;->h:[B

    iget v5, p0, Lvv;->i:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lvv;->i:I

    iget v6, p0, Lvv;->n:I

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 526
    iget-object v4, p0, Lvv;->h:[B

    iget v5, p0, Lvv;->i:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lvv;->i:I

    iget v6, p0, Lvv;->n:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 488
    .end local v3    # "result":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    move v2, p2

    .end local p2    # "inPos":I
    .restart local v2    # "inPos":I
    goto/16 :goto_1

    .end local v0    # "b":B
    :cond_6
    move p2, v2

    .line 532
    .end local v2    # "inPos":I
    .restart local p2    # "inPos":I
    goto/16 :goto_0

    .line 498
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
