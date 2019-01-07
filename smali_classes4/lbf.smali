.class public final Llbf;
.super Ljava/lang/Object;

# interfaces
.implements Llbg;


# instance fields
.field protected final a:[B

.field protected b:B

.field protected final c:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Llbf;->a:[B

    const/16 v0, 0x3d

    iput-byte v0, p0, Llbf;->b:B

    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Llbf;->c:[B

    invoke-direct {p0}, Llbf;->a()V

    return-void

    :array_0
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

.method private a(Ljava/lang/String;II)I
    .locals 1

    :goto_0
    if-ge p2, p3, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Llbf;->a(C)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p2
.end method

.method private a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Llbf;->c:[B

    iget-object v2, p0, Llbf;->a:[B

    aget-byte v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(C)Z
    .locals 1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/io/OutputStream;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v2, v0

    :goto_0
    if-lez v2, :cond_0

    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Llbf;->a(C)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v2, -0x4

    invoke-direct {p0, p1, v1, v3}, Llbf;->a(Ljava/lang/String;II)I

    move-result v0

    :goto_1
    if-ge v0, v3, :cond_1

    iget-object v4, p0, Llbf;->c:[B

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aget-byte v0, v4, v0

    invoke-direct {p0, p1, v5, v3}, Llbf;->a(Ljava/lang/String;II)I

    move-result v4

    iget-object v5, p0, Llbf;->c:[B

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget-byte v4, v5, v4

    invoke-direct {p0, p1, v6, v3}, Llbf;->a(Ljava/lang/String;II)I

    move-result v5

    iget-object v6, p0, Llbf;->c:[B

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget-byte v5, v6, v5

    invoke-direct {p0, p1, v7, v3}, Llbf;->a(Ljava/lang/String;II)I

    move-result v6

    iget-object v7, p0, Llbf;->c:[B

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aget-byte v6, v7, v6

    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v7, v4, 0x4

    or-int/2addr v0, v7

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v0, v4, 0x4

    shr-int/lit8 v4, v5, 0x2

    or-int/2addr v0, v4

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v0, v5, 0x6

    or-int/2addr v0, v6

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x3

    invoke-direct {p0, p1, v8, v3}, Llbf;->a(Ljava/lang/String;II)I

    move-result v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v2, -0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v3, v2, -0x3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v4, v2, -0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1000
    iget-byte v5, p0, Llbf;->b:B

    if-ne v4, v5, :cond_2

    iget-object v2, p0, Llbf;->c:[B

    aget-byte v0, v2, v0

    iget-object v2, p0, Llbf;->c:[B

    aget-byte v2, v2, v3

    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v2, v2, 0x4

    or-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x1

    .line 0
    :goto_2
    add-int/2addr v0, v1

    return v0

    .line 1000
    :cond_2
    iget-byte v5, p0, Llbf;->b:B

    if-ne v2, v5, :cond_3

    iget-object v2, p0, Llbf;->c:[B

    aget-byte v0, v2, v0

    iget-object v2, p0, Llbf;->c:[B

    aget-byte v2, v2, v3

    iget-object v3, p0, Llbf;->c:[B

    aget-byte v3, v3, v4

    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v4, v2, 0x4

    or-int/2addr v0, v4

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v0, v2, 0x4

    shr-int/lit8 v2, v3, 0x2

    or-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x2

    goto :goto_2

    :cond_3
    iget-object v5, p0, Llbf;->c:[B

    aget-byte v0, v5, v0

    iget-object v5, p0, Llbf;->c:[B

    aget-byte v3, v5, v3

    iget-object v5, p0, Llbf;->c:[B

    aget-byte v4, v5, v4

    iget-object v5, p0, Llbf;->c:[B

    aget-byte v2, v5, v2

    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v5, v3, 0x4

    or-int/2addr v0, v5

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v0, v3, 0x4

    shr-int/lit8 v3, v4, 0x2

    or-int/2addr v0, v3

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v0, v4, 0x6

    or-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x3

    goto :goto_2
.end method

.method public final a([BIILjava/io/OutputStream;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    rem-int/lit8 v1, p3, 0x3

    sub-int v2, p3, v1

    move v0, p2

    :goto_0
    add-int v3, p2, v2

    if-ge v0, v3, :cond_0

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v0, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    iget-object v6, p0, Llbf;->a:[B

    ushr-int/lit8 v7, v3, 0x2

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    invoke-virtual {p4, v6}, Ljava/io/OutputStream;->write(I)V

    iget-object v6, p0, Llbf;->a:[B

    shl-int/lit8 v3, v3, 0x4

    ushr-int/lit8 v7, v4, 0x4

    or-int/2addr v3, v7

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v6, v3

    invoke-virtual {p4, v3}, Ljava/io/OutputStream;->write(I)V

    iget-object v3, p0, Llbf;->a:[B

    shl-int/lit8 v4, v4, 0x2

    ushr-int/lit8 v6, v5, 0x6

    or-int/2addr v4, v6

    and-int/lit8 v4, v4, 0x3f

    aget-byte v3, v3, v4

    invoke-virtual {p4, v3}, Ljava/io/OutputStream;->write(I)V

    iget-object v3, p0, Llbf;->a:[B

    and-int/lit8 v4, v5, 0x3f

    aget-byte v3, v3, v4

    invoke-virtual {p4, v3}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_0
    packed-switch v1, :pswitch_data_0

    :goto_1
    :pswitch_0
    div-int/lit8 v0, v2, 0x3

    mul-int/lit8 v2, v0, 0x4

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_2
    add-int/2addr v0, v2

    return v0

    :pswitch_1
    add-int v0, p2, v2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    ushr-int/lit8 v3, v0, 0x2

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x3f

    iget-object v4, p0, Llbf;->a:[B

    aget-byte v3, v4, v3

    invoke-virtual {p4, v3}, Ljava/io/OutputStream;->write(I)V

    iget-object v3, p0, Llbf;->a:[B

    aget-byte v0, v3, v0

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write(I)V

    iget-byte v0, p0, Llbf;->b:B

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write(I)V

    iget-byte v0, p0, Llbf;->b:B

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    :pswitch_2
    add-int v0, p2, v2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    add-int v3, p2, v2

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v4, v0, 0x2

    and-int/lit8 v4, v4, 0x3f

    shl-int/lit8 v0, v0, 0x4

    ushr-int/lit8 v5, v3, 0x4

    or-int/2addr v0, v5

    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v3, v3, 0x2

    and-int/lit8 v3, v3, 0x3f

    iget-object v5, p0, Llbf;->a:[B

    aget-byte v4, v5, v4

    invoke-virtual {p4, v4}, Ljava/io/OutputStream;->write(I)V

    iget-object v4, p0, Llbf;->a:[B

    aget-byte v0, v4, v0

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Llbf;->a:[B

    aget-byte v0, v0, v3

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write(I)V

    iget-byte v0, p0, Llbf;->b:B

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x4

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
