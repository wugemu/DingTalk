.class public final Lkpq;
.super Lkpr;
.source "Base64.java"


# static fields
.field static final a:[B

.field private static final d:[B

.field private static final e:[B

.field private static final f:[B


# instance fields
.field private final g:[B

.field private final h:[B

.field private final i:[B

.field private final j:I

.field private final k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x40

    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lkpq;->a:[B

    .line 80
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lkpq;->d:[B

    .line 93
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lkpq;->e:[B

    .line 112
    const/16 v0, 0x7b

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lkpq;->f:[B

    return-void

    .line 71
    .line 80
    .line 93
    .line 112
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
        0x2dt
        0x5ft
    .end array-data

    :array_3
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
        0x3et
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
        0x3ft
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
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkpq;-><init>(I)V

    .line 171
    return-void
.end method

.method private constructor <init>(I)V
    .locals 2
    .param p1, "lineLength"    # I

    .prologue
    .line 212
    const/4 v0, 0x0

    sget-object v1, Lkpq;->a:[B

    invoke-direct {p0, v0, v1}, Lkpq;-><init>(I[B)V

    .line 213
    return-void
.end method

.method private constructor <init>(I[B)V
    .locals 1
    .param p1, "lineLength"    # I
    .param p2, "lineSeparator"    # [B

    .prologue
    .line 239
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lkpq;-><init>(I[BZ)V

    .line 240
    return-void
.end method

.method private constructor <init>(I[BZ)V
    .locals 5
    .param p1, "lineLength"    # I
    .param p2, "lineSeparator"    # [B
    .param p3, "urlSafe"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x4

    const/4 v2, 0x0

    .line 270
    const/4 v3, 0x3

    if-nez p2, :cond_0

    move v1, v2

    :goto_0
    invoke-direct {p0, v3, v4, p1, v1}, Lkpr;-><init>(IIII)V

    .line 140
    sget-object v1, Lkpq;->f:[B

    iput-object v1, p0, Lkpq;->h:[B

    .line 275
    if-eqz p2, :cond_4

    .line 276
    invoke-virtual {p0, p2}, Lkpq;->c([B)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1340
    sget-object v1, Lkpp;->f:Ljava/nio/charset/Charset;

    .line 2214
    if-nez p2, :cond_1

    .line 278
    .local v0, "sep":Ljava/lang/String;
    :goto_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "lineSeparator must not contain base64 characters: ["

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

    .line 270
    .end local v0    # "sep":Ljava/lang/String;
    :cond_0
    array-length v1, p2

    goto :goto_0

    .line 2214
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_1

    .line 280
    :cond_2
    if-lez p1, :cond_3

    .line 281
    array-length v1, p2

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lkpq;->k:I

    .line 282
    array-length v1, p2

    new-array v1, v1, [B

    iput-object v1, p0, Lkpq;->i:[B

    .line 283
    iget-object v1, p0, Lkpq;->i:[B

    array-length v3, p2

    invoke-static {p2, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
    :goto_2
    iget v1, p0, Lkpq;->k:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lkpq;->j:I

    .line 293
    if-eqz p3, :cond_5

    sget-object v1, Lkpq;->e:[B

    :goto_3
    iput-object v1, p0, Lkpq;->g:[B

    .line 294
    return-void

    .line 285
    :cond_3
    iput v4, p0, Lkpq;->k:I

    .line 286
    iput-object v0, p0, Lkpq;->i:[B

    goto :goto_2

    .line 289
    :cond_4
    iput v4, p0, Lkpq;->k:I

    .line 290
    iput-object v0, p0, Lkpq;->i:[B

    goto :goto_2

    .line 293
    :cond_5
    sget-object v1, Lkpq;->d:[B

    goto :goto_3
.end method

.method private constructor <init>(Z)V
    .locals 2
    .param p1, "urlSafe"    # Z

    .prologue
    .line 189
    const/16 v0, 0x4c

    sget-object v1, Lkpq;->a:[B

    invoke-direct {p0, v0, v1, p1}, Lkpq;-><init>(I[BZ)V

    .line 190
    return-void
.end method

.method public static a([B)[B
    .locals 7
    .param p0, "binaryData"    # [B

    .prologue
    const/4 v6, 0x0

    .line 551
    .line 2659
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 3404
    .end local p0    # "binaryData":[B
    :cond_0
    :goto_0
    return-object p0

    .line 2665
    .restart local p0    # "binaryData":[B
    :cond_1
    new-instance v0, Lkpq;

    sget-object v1, Lkpq;->a:[B

    invoke-direct {v0, v6, v1, v6}, Lkpq;-><init>(I[BZ)V

    .line 2666
    invoke-virtual {v0, p0}, Lkpq;->d([B)J

    move-result-wide v2

    .line 2667
    const-wide/32 v4, 0x7fffffff

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 2668
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Input array too big, the output array would be bigger ("

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") than the specified maximum size of 2147483647"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3403
    :cond_2
    if-eqz p0, :cond_0

    array-length v1, p0

    if-eqz v1, :cond_0

    .line 3406
    new-instance v1, Lkpr$a;

    invoke-direct {v1}, Lkpr$a;-><init>()V

    .line 3407
    array-length v2, p0

    invoke-virtual {v0, p0, v6, v2, v1}, Lkpr;->a([BIILkpr$a;)V

    .line 3408
    const/4 v2, -0x1

    invoke-virtual {v0, p0, v6, v2, v1}, Lkpr;->a([BIILkpr$a;)V

    .line 3409
    iget v2, v1, Lkpr$a;->c:I

    iget v3, v1, Lkpr$a;->d:I

    sub-int/2addr v2, v3

    new-array p0, v2, [B

    .line 3410
    .end local p0    # "binaryData":[B
    array-length v2, p0

    invoke-virtual {v0, p0, v6, v2, v1}, Lkpr;->c([BIILkpr$a;)I

    goto :goto_0
.end method

.method public static b([B)[B
    .locals 4
    .param p0, "base64Data"    # [B

    .prologue
    const/4 v3, 0x0

    .line 697
    new-instance v0, Lkpq;

    invoke-direct {v0}, Lkpq;-><init>()V

    .line 4383
    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    .line 4384
    .end local p0    # "base64Data":[B
    :cond_0
    :goto_0
    return-object p0

    .line 4386
    .restart local p0    # "base64Data":[B
    :cond_1
    new-instance v1, Lkpr$a;

    invoke-direct {v1}, Lkpr$a;-><init>()V

    .line 4387
    array-length v2, p0

    invoke-virtual {v0, p0, v3, v2, v1}, Lkpr;->b([BIILkpr$a;)V

    .line 4388
    const/4 v2, -0x1

    invoke-virtual {v0, p0, v3, v2, v1}, Lkpr;->b([BIILkpr$a;)V

    .line 4389
    iget v2, v1, Lkpr$a;->c:I

    new-array p0, v2, [B

    .line 4390
    .end local p0    # "base64Data":[B
    array-length v2, p0

    invoke-virtual {v0, p0, v3, v2, v1}, Lkpr;->c([BIILkpr$a;)I

    goto :goto_0
.end method


# virtual methods
.method final a([BIILkpr$a;)V
    .locals 10
    .param p1, "in"    # [B
    .param p2, "inPos"    # I
    .param p3, "inAvail"    # I
    .param p4, "context"    # Lkpr$a;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v9, 0x3d

    const/4 v8, 0x0

    .line 329
    iget-boolean v5, p4, Lkpr$a;->e:Z

    if-eqz v5, :cond_1

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    if-gez p3, :cond_4

    .line 335
    const/4 v5, 0x1

    iput-boolean v5, p4, Lkpr$a;->e:Z

    .line 336
    iget v5, p4, Lkpr$a;->g:I

    if-nez v5, :cond_2

    iget v5, p0, Lkpq;->c:I

    if-eqz v5, :cond_0

    .line 339
    :cond_2
    iget v5, p0, Lkpq;->k:I

    invoke-virtual {p0, v5, p4}, Lkpq;->a(ILkpr$a;)[B

    move-result-object v1

    .line 340
    .local v1, "buffer":[B
    iget v4, p4, Lkpr$a;->c:I

    .line 341
    .local v4, "savedPos":I
    iget v5, p4, Lkpr$a;->g:I

    packed-switch v5, :pswitch_data_0

    .line 366
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Impossible modulus "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p4, Lkpr$a;->g:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 346
    :pswitch_0
    iget v5, p4, Lkpr$a;->c:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lkpr$a;->c:I

    iget-object v6, p0, Lkpq;->g:[B

    iget v7, p4, Lkpr$a;->a:I

    shr-int/lit8 v7, v7, 0x2

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 348
    iget v5, p4, Lkpr$a;->c:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lkpr$a;->c:I

    iget-object v6, p0, Lkpq;->g:[B

    iget v7, p4, Lkpr$a;->a:I

    shl-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 350
    iget-object v5, p0, Lkpq;->g:[B

    sget-object v6, Lkpq;->d:[B

    if-ne v5, v6, :cond_3

    .line 351
    iget v5, p4, Lkpr$a;->c:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lkpr$a;->c:I

    aput-byte v9, v1, v5

    .line 352
    iget v5, p4, Lkpr$a;->c:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lkpr$a;->c:I

    aput-byte v9, v1, v5

    .line 368
    :cond_3
    :goto_1
    :pswitch_1
    iget v5, p4, Lkpr$a;->f:I

    iget v6, p4, Lkpr$a;->c:I

    sub-int/2addr v6, v4

    add-int/2addr v5, v6

    iput v5, p4, Lkpr$a;->f:I

    .line 370
    iget v5, p0, Lkpq;->c:I

    if-lez v5, :cond_0

    iget v5, p4, Lkpr$a;->f:I

    if-lez v5, :cond_0

    .line 371
    iget-object v5, p0, Lkpq;->i:[B

    iget v6, p4, Lkpr$a;->c:I

    iget-object v7, p0, Lkpq;->i:[B

    array-length v7, v7

    invoke-static {v5, v8, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 372
    iget v5, p4, Lkpr$a;->c:I

    iget-object v6, p0, Lkpq;->i:[B

    array-length v6, v6

    add-int/2addr v5, v6

    iput v5, p4, Lkpr$a;->c:I

    goto/16 :goto_0

    .line 357
    :pswitch_2
    iget v5, p4, Lkpr$a;->c:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lkpr$a;->c:I

    iget-object v6, p0, Lkpq;->g:[B

    iget v7, p4, Lkpr$a;->a:I

    shr-int/lit8 v7, v7, 0xa

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 358
    iget v5, p4, Lkpr$a;->c:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lkpr$a;->c:I

    iget-object v6, p0, Lkpq;->g:[B

    iget v7, p4, Lkpr$a;->a:I

    shr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 359
    iget v5, p4, Lkpr$a;->c:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lkpr$a;->c:I

    iget-object v6, p0, Lkpq;->g:[B

    iget v7, p4, Lkpr$a;->a:I

    shl-int/lit8 v7, v7, 0x2

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 361
    iget-object v5, p0, Lkpq;->g:[B

    sget-object v6, Lkpq;->d:[B

    if-ne v5, v6, :cond_3

    .line 362
    iget v5, p4, Lkpr$a;->c:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lkpr$a;->c:I

    aput-byte v9, v1, v5

    goto :goto_1

    .line 375
    .end local v1    # "buffer":[B
    .end local v4    # "savedPos":I
    :cond_4
    const/4 v2, 0x0

    .local v2, "i":I
    move v3, p2

    .end local p2    # "inPos":I
    .local v3, "inPos":I
    :goto_2
    if-ge v2, p3, :cond_7

    .line 376
    iget v5, p0, Lkpq;->k:I

    invoke-virtual {p0, v5, p4}, Lkpq;->a(ILkpr$a;)[B

    move-result-object v1

    .line 377
    .restart local v1    # "buffer":[B
    iget v5, p4, Lkpr$a;->g:I

    add-int/lit8 v5, v5, 0x1

    rem-int/lit8 v5, v5, 0x3

    iput v5, p4, Lkpr$a;->g:I

    .line 378
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "inPos":I
    .restart local p2    # "inPos":I
    aget-byte v0, p1, v3

    .line 379
    .local v0, "b":I
    if-gez v0, :cond_5

    .line 380
    add-int/lit16 v0, v0, 0x100

    .line 382
    :cond_5
    iget v5, p4, Lkpr$a;->a:I

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v5, v0

    iput v5, p4, Lkpr$a;->a:I

    .line 383
    iget v5, p4, Lkpr$a;->g:I

    if-nez v5, :cond_6

    .line 384
    iget v5, p4, Lkpr$a;->c:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lkpr$a;->c:I

    iget-object v6, p0, Lkpq;->g:[B

    iget v7, p4, Lkpr$a;->a:I

    shr-int/lit8 v7, v7, 0x12

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 385
    iget v5, p4, Lkpr$a;->c:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lkpr$a;->c:I

    iget-object v6, p0, Lkpq;->g:[B

    iget v7, p4, Lkpr$a;->a:I

    shr-int/lit8 v7, v7, 0xc

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 386
    iget v5, p4, Lkpr$a;->c:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lkpr$a;->c:I

    iget-object v6, p0, Lkpq;->g:[B

    iget v7, p4, Lkpr$a;->a:I

    shr-int/lit8 v7, v7, 0x6

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 387
    iget v5, p4, Lkpr$a;->c:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lkpr$a;->c:I

    iget-object v6, p0, Lkpq;->g:[B

    iget v7, p4, Lkpr$a;->a:I

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 388
    iget v5, p4, Lkpr$a;->f:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p4, Lkpr$a;->f:I

    .line 389
    iget v5, p0, Lkpq;->c:I

    if-lez v5, :cond_6

    iget v5, p0, Lkpq;->c:I

    iget v6, p4, Lkpr$a;->f:I

    if-gt v5, v6, :cond_6

    .line 390
    iget-object v5, p0, Lkpq;->i:[B

    iget v6, p4, Lkpr$a;->c:I

    iget-object v7, p0, Lkpq;->i:[B

    array-length v7, v7

    invoke-static {v5, v8, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 391
    iget v5, p4, Lkpr$a;->c:I

    iget-object v6, p0, Lkpq;->i:[B

    array-length v6, v6

    add-int/2addr v5, v6

    iput v5, p4, Lkpr$a;->c:I

    .line 392
    iput v8, p4, Lkpr$a;->f:I

    .line 375
    :cond_6
    add-int/lit8 v2, v2, 0x1

    move v3, p2

    .end local p2    # "inPos":I
    .restart local v3    # "inPos":I
    goto/16 :goto_2

    .end local v0    # "b":I
    .end local v1    # "buffer":[B
    :cond_7
    move p2, v3

    .line 397
    .end local v3    # "inPos":I
    .restart local p2    # "inPos":I
    goto/16 :goto_0

    .line 341
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected final a(B)Z
    .locals 2
    .param p1, "octet"    # B

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 772
    if-ltz p1, :cond_0

    iget-object v0, p0, Lkpq;->h:[B

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lkpq;->h:[B

    aget-byte v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b([BIILkpr$a;)V
    .locals 8
    .param p1, "in"    # [B
    .param p2, "inPos"    # I
    .param p3, "inAvail"    # I
    .param p4, "context"    # Lkpr$a;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 426
    iget-boolean v5, p4, Lkpr$a;->e:Z

    if-eqz v5, :cond_1

    .line 481
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 429
    :cond_1
    if-gez p3, :cond_2

    .line 430
    iput-boolean v7, p4, Lkpr$a;->e:Z

    .line 432
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    move v3, p2

    .end local p2    # "inPos":I
    .local v3, "inPos":I
    :goto_1
    if-ge v2, p3, :cond_5

    .line 433
    iget v5, p0, Lkpq;->j:I

    invoke-virtual {p0, v5, p4}, Lkpq;->a(ILkpr$a;)[B

    move-result-object v1

    .line 434
    .local v1, "buffer":[B
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "inPos":I
    .restart local p2    # "inPos":I
    aget-byte v0, p1, v3

    .line 435
    .local v0, "b":B
    const/16 v5, 0x3d

    if-ne v0, v5, :cond_3

    .line 437
    iput-boolean v7, p4, Lkpr$a;->e:Z

    .line 458
    .end local v0    # "b":B
    .end local v1    # "buffer":[B
    :goto_2
    iget-boolean v5, p4, Lkpr$a;->e:Z

    if-eqz v5, :cond_0

    iget v5, p4, Lkpr$a;->g:I

    if-eqz v5, :cond_0

    .line 459
    iget v5, p0, Lkpq;->j:I

    invoke-virtual {p0, v5, p4}, Lkpq;->a(ILkpr$a;)[B

    move-result-object v1

    .line 463
    .restart local v1    # "buffer":[B
    iget v5, p4, Lkpr$a;->g:I

    packed-switch v5, :pswitch_data_0

    .line 478
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Impossible modulus "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p4, Lkpr$a;->g:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 440
    .restart local v0    # "b":B
    :cond_3
    if-ltz v0, :cond_4

    const/16 v5, 0x7b

    if-ge v0, v5, :cond_4

    .line 441
    sget-object v5, Lkpq;->f:[B

    aget-byte v4, v5, v0

    .line 442
    .local v4, "result":I
    if-ltz v4, :cond_4

    .line 443
    iget v5, p4, Lkpr$a;->g:I

    add-int/lit8 v5, v5, 0x1

    rem-int/lit8 v5, v5, 0x4

    iput v5, p4, Lkpr$a;->g:I

    .line 444
    iget v5, p4, Lkpr$a;->a:I

    shl-int/lit8 v5, v5, 0x6

    add-int/2addr v5, v4

    iput v5, p4, Lkpr$a;->a:I

    .line 445
    iget v5, p4, Lkpr$a;->g:I

    if-nez v5, :cond_4

    .line 446
    iget v5, p4, Lkpr$a;->c:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lkpr$a;->c:I

    iget v6, p4, Lkpr$a;->a:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 447
    iget v5, p4, Lkpr$a;->c:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lkpr$a;->c:I

    iget v6, p4, Lkpr$a;->a:I

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 448
    iget v5, p4, Lkpr$a;->c:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lkpr$a;->c:I

    iget v6, p4, Lkpr$a;->a:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 432
    .end local v4    # "result":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    move v3, p2

    .end local p2    # "inPos":I
    .restart local v3    # "inPos":I
    goto/16 :goto_1

    .line 469
    .end local v0    # "b":B
    .end local v3    # "inPos":I
    .restart local p2    # "inPos":I
    :pswitch_1
    iget v5, p4, Lkpr$a;->a:I

    shr-int/lit8 v5, v5, 0x4

    iput v5, p4, Lkpr$a;->a:I

    .line 470
    iget v5, p4, Lkpr$a;->c:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lkpr$a;->c:I

    iget v6, p4, Lkpr$a;->a:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    goto/16 :goto_0

    .line 473
    :pswitch_2
    iget v5, p4, Lkpr$a;->a:I

    shr-int/lit8 v5, v5, 0x2

    iput v5, p4, Lkpr$a;->a:I

    .line 474
    iget v5, p4, Lkpr$a;->c:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lkpr$a;->c:I

    iget v6, p4, Lkpr$a;->a:I

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 475
    iget v5, p4, Lkpr$a;->c:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lkpr$a;->c:I

    iget v6, p4, Lkpr$a;->a:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    goto/16 :goto_0

    .end local v1    # "buffer":[B
    .end local p2    # "inPos":I
    .restart local v3    # "inPos":I
    :cond_5
    move p2, v3

    .end local v3    # "inPos":I
    .restart local p2    # "inPos":I
    goto/16 :goto_2

    .line 463
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
