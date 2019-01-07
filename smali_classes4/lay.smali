.class final Llay;
.super Ljava/lang/Object;


# instance fields
.field a:[I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [I

    iput-object v0, p0, Llay;->a:[I

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;I)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Only positive Integers allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v2, Llat;->f:Ljava/math/BigInteger;

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-array v0, v0, [I

    aput v1, v0, v1

    iput-object v0, p0, Llay;->a:[I

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    array-length v2, v6

    aget-byte v3, v6, v1

    if-nez v3, :cond_9

    add-int/lit8 v2, v2, -0x1

    :goto_0
    add-int/lit8 v3, v2, 0x3

    div-int/lit8 v3, v3, 0x4

    if-ge v3, p2, :cond_4

    new-array v4, p2, [I

    iput-object v4, p0, Llay;->a:[I

    :goto_1
    add-int/lit8 v3, v3, -0x1

    rem-int/lit8 v2, v2, 0x4

    add-int v5, v2, v0

    if-ge v0, v5, :cond_8

    move v2, v0

    move v4, v1

    :goto_2
    if-ge v2, v5, :cond_5

    shl-int/lit8 v4, v4, 0x8

    aget-byte v0, v6, v2

    if-gez v0, :cond_3

    add-int/lit16 v0, v0, 0x100

    :cond_3
    or-int/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    move v4, v0

    goto :goto_2

    :cond_4
    new-array v4, v3, [I

    iput-object v4, p0, Llay;->a:[I

    goto :goto_1

    :cond_5
    iget-object v5, p0, Llay;->a:[I

    add-int/lit8 v0, v3, -0x1

    aput v4, v5, v3

    move v5, v0

    move v0, v2

    :goto_3
    if-ltz v5, :cond_1

    move v2, v1

    move v3, v1

    :goto_4
    const/4 v4, 0x4

    if-ge v2, v4, :cond_7

    shl-int/lit8 v4, v3, 0x8

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v6, v0

    if-gez v0, :cond_6

    add-int/lit16 v0, v0, 0x100

    :cond_6
    or-int/2addr v4, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    move v3, v4

    goto :goto_4

    :cond_7
    iget-object v2, p0, Llay;->a:[I

    aput v3, v2, v5

    add-int/lit8 v2, v5, -0x1

    move v5, v2

    goto :goto_3

    :cond_8
    move v5, v3

    goto :goto_3

    :cond_9
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>([I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llay;->a:[I

    return-void
.end method

.method private d(I)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    shr-int/lit8 v0, p1, 0x5

    and-int/lit8 v1, p1, 0x1f

    const/4 v2, 0x1

    shl-int v1, v2, v1

    iget-object v2, p0, Llay;->a:[I

    aget v3, v2, v0

    xor-int/2addr v1, v3

    aput v1, v2, v0

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v1, 0x0

    iget-object v0, p0, Llay;->a:[I

    array-length v0, v0

    if-gtz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Llay;->a:[I

    aget v2, v2, v1

    if-eqz v2, :cond_2

    :cond_1
    iget-object v1, p0, Llay;->a:[I

    add-int/lit8 v0, v0, -0x1

    aget v1, v1, v0

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Llay;->a:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v2, v0

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-gtz v0, :cond_2

    move v0, v1

    goto :goto_0
.end method

.method public final a(I[I)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 0
    add-int v0, p1, p1

    add-int/lit8 v0, v0, -0x2

    move v2, v0

    :goto_0
    if-lt v2, p1, :cond_2

    .line 1000
    shr-int/lit8 v0, v2, 0x5

    and-int/lit8 v3, v2, 0x1f

    shl-int v3, v1, v3

    iget-object v4, p0, Llay;->a:[I

    aget v0, v4, v0

    and-int/2addr v0, v3

    if-eqz v0, :cond_0

    move v0, v1

    .line 0
    :goto_1
    if-eqz v0, :cond_1

    sub-int v3, v2, p1

    invoke-direct {p0, v3}, Llay;->d(I)V

    invoke-direct {p0, v2}, Llay;->d(I)V

    const/4 v0, 0x3

    :goto_2
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    aget v4, p2, v0

    add-int/2addr v4, v3

    invoke-direct {p0, v4}, Llay;->d(I)V

    goto :goto_2

    .line 1000
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 0
    :cond_1
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v0, v0, 0x5

    invoke-virtual {p0, v0}, Llay;->a(I)[I

    move-result-object v0

    iput-object v0, p0, Llay;->a:[I

    return-void
.end method

.method public final a(Llay;I)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    invoke-virtual {p1}, Llay;->a()I

    move-result v1

    add-int v0, v1, p2

    iget-object v2, p0, Llay;->a:[I

    array-length v2, v2

    if-le v0, v2, :cond_0

    invoke-virtual {p0, v0}, Llay;->a(I)[I

    move-result-object v0

    iput-object v0, p0, Llay;->a:[I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Llay;->a:[I

    add-int v3, v0, p2

    aget v4, v2, v3

    iget-object v5, p1, Llay;->a:[I

    aget v5, v5, v0

    xor-int/2addr v4, v5

    aput v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method a(I)[I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v2, 0x0

    new-array v1, p1, [I

    iget-object v0, p0, Llay;->a:[I

    array-length v0, v0

    if-ge v0, p1, :cond_0

    move p1, v0

    :cond_0
    iget-object v0, p0, Llay;->a:[I

    invoke-static {v0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public final b()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    invoke-virtual {p0}, Llay;->a()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Llay;->a:[I

    aget v1, v1, v0

    shl-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x1

    const/high16 v2, -0x10000

    and-int/2addr v2, v1

    if-eqz v2, :cond_4

    const/high16 v2, -0x1000000

    and-int/2addr v2, v1

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v1, v1, 0x18

    :cond_2
    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x10

    ushr-int/lit8 v1, v1, 0x10

    goto :goto_0

    :cond_4
    const/16 v2, 0xff

    if-le v1, v2, :cond_2

    add-int/lit8 v0, v0, 0x8

    ushr-int/lit8 v1, v1, 0x8

    goto :goto_0
.end method

.method public final b(I)Llay;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v4, 0x0

    invoke-virtual {p0}, Llay;->a()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eqz p1, :cond_0

    const/16 v0, 0x1f

    if-le p1, v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "shiftLeft() for max 31 bits , "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "bit shift is not possible"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    new-array v2, v0, [I

    rsub-int/lit8 v3, p1, 0x20

    iget-object v0, p0, Llay;->a:[I

    aget v0, v0, v4

    shl-int/2addr v0, p1

    aput v0, v2, v4

    const/4 v0, 0x1

    :goto_1
    if-ge v0, v1, :cond_3

    iget-object v4, p0, Llay;->a:[I

    aget v4, v4, v0

    shl-int/2addr v4, p1

    iget-object v5, p0, Llay;->a:[I

    add-int/lit8 v6, v0, -0x1

    aget v5, v5, v6

    ushr-int/2addr v5, v3

    or-int/2addr v4, v5

    aput v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Llay;->a:[I

    add-int/lit8 v4, v1, -0x1

    aget v0, v0, v4

    ushr-int/2addr v0, v3

    aput v0, v2, v1

    new-instance p0, Llay;

    invoke-direct {p0, v2}, Llay;-><init>([I)V

    goto :goto_0
.end method

.method public final c(I)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    shr-int/lit8 v0, p1, 0x5

    and-int/lit8 v1, p1, 0x1f

    const/4 v2, 0x1

    shl-int v1, v2, v1

    iget-object v2, p0, Llay;->a:[I

    aget v3, v2, v0

    or-int/2addr v1, v3

    aput v1, v2, v0

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 0
    new-instance v1, Llay;

    iget-object v2, p0, Llay;->a:[I

    .line 2000
    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 0
    :goto_0
    invoke-direct {v1, v0}, Llay;-><init>([I)V

    return-object v1

    .line 2000
    :cond_0
    array-length v0, v2

    new-array v0, v0, [I

    array-length v3, v2

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v0, 0x0

    instance-of v1, p1, Llay;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Llay;

    invoke-virtual {p0}, Llay;->a()I

    move-result v2

    invoke-virtual {p1}, Llay;->a()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    iget-object v3, p0, Llay;->a:[I

    aget v3, v3, v1

    iget-object v4, p1, Llay;->a:[I

    aget v4, v4, v1

    if-ne v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    invoke-virtual {p0}, Llay;->a()I

    move-result v2

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v3, p0, Llay;->a:[I

    aget v3, v3, v0

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    invoke-virtual {p0}, Llay;->a()I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "0"

    :goto_0
    return-object v0

    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    iget-object v1, p0, Llay;->a:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x2

    move v2, v0

    :goto_1
    if-ltz v2, :cond_2

    iget-object v0, p0, Llay;->a:[I

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_2
    const/16 v4, 0x8

    if-ge v0, v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
