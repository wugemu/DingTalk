.class public final Llav$a;
.super Llav;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llav;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private k:Llay;

.field private l:I


# direct methods
.method public constructor <init>(IIIILjava/math/BigInteger;)V
    .locals 2

    invoke-direct {p0}, Llav;-><init>()V

    add-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v0, v0, 0x5

    iput v0, p0, Llav$a;->l:I

    new-instance v0, Llay;

    iget v1, p0, Llav$a;->l:I

    invoke-direct {v0, p5, v1}, Llay;-><init>(Ljava/math/BigInteger;I)V

    iput-object v0, p0, Llav$a;->k:Llay;

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Llav$a;->a:I

    :goto_0
    invoke-virtual {p5}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x value cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-lt p3, p4, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "k2 must be smaller than k3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-gtz p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "k2 must be larger than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x3

    iput v0, p0, Llav$a;->a:I

    goto :goto_0

    :cond_3
    iput p1, p0, Llav$a;->b:I

    iput p2, p0, Llav$a;->c:I

    iput p3, p0, Llav$a;->d:I

    iput p4, p0, Llav$a;->e:I

    return-void
.end method

.method private constructor <init>(IIIILlay;)V
    .locals 1

    invoke-direct {p0}, Llav;-><init>()V

    add-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v0, v0, 0x5

    iput v0, p0, Llav$a;->l:I

    iput-object p5, p0, Llav$a;->k:Llay;

    iput p1, p0, Llav$a;->b:I

    iput p2, p0, Llav$a;->c:I

    iput p3, p0, Llav$a;->d:I

    iput p4, p0, Llav$a;->e:I

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Llav$a;->a:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Llav$a;->a:I

    goto :goto_0
.end method

.method public static a(Llav;Llav;)V
    .locals 2

    instance-of v0, p0, Llav$a;

    if-eqz v0, :cond_0

    instance-of v0, p1, Llav$a;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Field elements are not both instances of ECFieldElement.F2m"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast p0, Llav$a;

    check-cast p1, Llav$a;

    iget v0, p0, Llav$a;->b:I

    iget v1, p1, Llav$a;->b:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Llav$a;->c:I

    iget v1, p1, Llav$a;->c:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Llav$a;->d:I

    iget v1, p1, Llav$a;->d:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Llav$a;->e:I

    iget v1, p1, Llav$a;->e:I

    if-eq v0, v1, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Field elements are not elements of the same field F2m"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget v0, p0, Llav$a;->a:I

    iget v1, p1, Llav$a;->a:I

    if-eq v0, v1, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "One of the field elements are not elements has incorrect representation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-void
.end method


# virtual methods
.method public final a()Ljava/math/BigInteger;
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 0
    iget-object v6, p0, Llav$a;->k:Llay;

    .line 1000
    invoke-virtual {v6}, Llay;->a()I

    move-result v7

    if-nez v7, :cond_0

    sget-object v0, Llat;->f:Ljava/math/BigInteger;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v6, Llay;->a:[I

    add-int/lit8 v2, v7, -0x1

    aget v8, v0, v2

    const/4 v0, 0x4

    new-array v9, v0, [B

    move v5, v3

    move v0, v4

    move v2, v4

    :goto_1
    if-ltz v5, :cond_3

    mul-int/lit8 v10, v5, 0x8

    ushr-int v10, v8, v10

    int-to-byte v10, v10

    if-nez v0, :cond_1

    if-eqz v10, :cond_2

    :cond_1
    add-int/lit8 v0, v2, 0x1

    aput-byte v10, v9, v2

    move v2, v0

    move v0, v1

    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v7, -0x1

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v2

    new-array v8, v0, [B

    move v0, v4

    :goto_2
    if-ge v0, v2, :cond_4

    aget-byte v4, v9, v0

    aput-byte v4, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v7, -0x2

    move v5, v0

    move v0, v2

    :goto_3
    if-ltz v5, :cond_6

    move v2, v0

    move v0, v3

    :goto_4
    if-ltz v0, :cond_5

    add-int/lit8 v4, v2, 0x1

    iget-object v7, v6, Llay;->a:[I

    aget v7, v7, v5

    mul-int/lit8 v9, v0, 0x8

    ushr-int/2addr v7, v9

    int-to-byte v7, v7

    aput-byte v7, v8, v2

    add-int/lit8 v0, v0, -0x1

    move v2, v4

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v5, -0x1

    move v5, v0

    move v0, v2

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    goto :goto_0
.end method

.method public final a(Llav;)Llav;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    iget-object v0, p0, Llav$a;->k:Llay;

    invoke-virtual {v0}, Llay;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Llay;

    check-cast p1, Llav$a;

    iget-object v0, p1, Llav$a;->k:Llay;

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Llay;->a(Llay;I)V

    new-instance v0, Llav$a;

    iget v1, p0, Llav$a;->b:I

    iget v2, p0, Llav$a;->c:I

    iget v3, p0, Llav$a;->d:I

    iget v4, p0, Llav$a;->e:I

    invoke-direct/range {v0 .. v5}, Llav$a;-><init>(IIIILlay;)V

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Llav$a;->b:I

    return v0
.end method

.method public final b(Llav;)Llav;
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 0
    check-cast p1, Llav$a;

    iget-object v9, p0, Llav$a;->k:Llay;

    iget-object v0, p1, Llav$a;->k:Llay;

    iget v1, p0, Llav$a;->b:I

    .line 2000
    add-int/lit8 v4, v1, 0x1f

    shr-int/lit8 v10, v4, 0x5

    iget-object v4, v9, Llay;->a:[I

    array-length v4, v4

    if-ge v4, v10, :cond_0

    invoke-virtual {v9, v10}, Llay;->a(I)[I

    move-result-object v4

    iput-object v4, v9, Llay;->a:[I

    :cond_0
    new-instance v11, Llay;

    .line 3000
    iget-object v4, v0, Llay;->a:[I

    array-length v4, v4

    .line 2000
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Llay;->a(I)[I

    move-result-object v0

    invoke-direct {v11, v0}, Llay;-><init>([I)V

    new-instance v5, Llay;

    add-int v0, v1, v1

    add-int/lit8 v0, v0, 0x1f

    shr-int/lit8 v0, v0, 0x5

    invoke-direct {v5, v0}, Llay;-><init>(I)V

    move v7, v3

    move v1, v2

    :goto_0
    const/16 v0, 0x20

    if-ge v7, v0, :cond_7

    move v0, v3

    :goto_1
    if-ge v0, v10, :cond_2

    iget-object v4, v9, Llay;->a:[I

    aget v4, v4, v0

    and-int/2addr v4, v1

    if-eqz v4, :cond_1

    invoke-virtual {v5, v11, v0}, Llay;->a(Llay;I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    shl-int/lit8 v8, v1, 0x1

    .line 4000
    invoke-virtual {v11}, Llay;->a()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v1, v11, Llay;->a:[I

    add-int/lit8 v4, v0, -0x1

    aget v1, v1, v4

    if-gez v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    iget-object v1, v11, Llay;->a:[I

    array-length v1, v1

    if-le v0, v1, :cond_3

    iget-object v1, v11, Llay;->a:[I

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v11, v1}, Llay;->a(I)[I

    move-result-object v1

    iput-object v1, v11, Llay;->a:[I

    :cond_3
    move v4, v3

    move v6, v3

    :goto_2
    if-ge v4, v0, :cond_6

    iget-object v1, v11, Llay;->a:[I

    aget v1, v1, v4

    if-gez v1, :cond_5

    move v1, v2

    :goto_3
    iget-object v12, v11, Llay;->a:[I

    aget v13, v12, v4

    shl-int/lit8 v13, v13, 0x1

    aput v13, v12, v4

    if-eqz v6, :cond_4

    iget-object v6, v11, Llay;->a:[I

    aget v12, v6, v4

    or-int/lit8 v12, v12, 0x1

    aput v12, v6, v4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    move v6, v1

    goto :goto_2

    :cond_5
    move v1, v3

    goto :goto_3

    .line 2000
    :cond_6
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    move v1, v8

    goto :goto_0

    .line 0
    :cond_7
    iget v0, p0, Llav$a;->b:I

    const/4 v1, 0x3

    new-array v1, v1, [I

    iget v4, p0, Llav$a;->c:I

    aput v4, v1, v3

    iget v3, p0, Llav$a;->d:I

    aput v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Llav$a;->e:I

    aput v3, v1, v2

    invoke-virtual {v5, v0, v1}, Llay;->a(I[I)V

    new-instance v0, Llav$a;

    iget v1, p0, Llav$a;->b:I

    iget v2, p0, Llav$a;->c:I

    iget v3, p0, Llav$a;->d:I

    iget v4, p0, Llav$a;->e:I

    invoke-direct/range {v0 .. v5}, Llav$a;-><init>(IIIILlay;)V

    return-object v0
.end method

.method public final c()Llav;
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v10, 0x4

    const/4 v1, 0x0

    .line 0
    iget-object v4, p0, Llav$a;->k:Llay;

    iget v0, p0, Llav$a;->b:I

    .line 5000
    const/16 v2, 0x10

    new-array v6, v2, [I

    fill-array-data v6, :array_0

    add-int/lit8 v0, v0, 0x1f

    shr-int/lit8 v7, v0, 0x5

    iget-object v0, v4, Llay;->a:[I

    array-length v0, v0

    if-ge v0, v7, :cond_0

    invoke-virtual {v4, v7}, Llay;->a(I)[I

    move-result-object v0

    iput-object v0, v4, Llay;->a:[I

    :cond_0
    new-instance v5, Llay;

    add-int v0, v7, v7

    invoke-direct {v5, v0}, Llay;-><init>(I)V

    move v3, v1

    :goto_0
    if-ge v3, v7, :cond_3

    move v0, v1

    move v2, v1

    :goto_1
    if-ge v0, v10, :cond_1

    ushr-int/lit8 v2, v2, 0x8

    iget-object v8, v4, Llay;->a:[I

    aget v8, v8, v3

    mul-int/lit8 v9, v0, 0x4

    ushr-int/2addr v8, v9

    and-int/lit8 v8, v8, 0xf

    aget v8, v6, v8

    shl-int/lit8 v8, v8, 0x18

    or-int/2addr v2, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, v5, Llay;->a:[I

    add-int v8, v3, v3

    aput v2, v0, v8

    iget-object v0, v4, Llay;->a:[I

    aget v0, v0, v3

    ushr-int/lit8 v8, v0, 0x10

    move v0, v1

    move v2, v1

    :goto_2
    if-ge v0, v10, :cond_2

    ushr-int/lit8 v2, v2, 0x8

    mul-int/lit8 v9, v0, 0x4

    ushr-int v9, v8, v9

    and-int/lit8 v9, v9, 0xf

    aget v9, v6, v9

    shl-int/lit8 v9, v9, 0x18

    or-int/2addr v2, v9

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, v5, Llay;->a:[I

    add-int v8, v3, v3

    add-int/lit8 v8, v8, 0x1

    aput v2, v0, v8

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 0
    :cond_3
    iget v0, p0, Llav$a;->b:I

    const/4 v2, 0x3

    new-array v2, v2, [I

    iget v3, p0, Llav$a;->c:I

    aput v3, v2, v1

    const/4 v1, 0x1

    iget v3, p0, Llav$a;->d:I

    aput v3, v2, v1

    const/4 v1, 0x2

    iget v3, p0, Llav$a;->e:I

    aput v3, v2, v1

    invoke-virtual {v5, v0, v2}, Llay;->a(I[I)V

    new-instance v0, Llav$a;

    iget v1, p0, Llav$a;->b:I

    iget v2, p0, Llav$a;->c:I

    iget v3, p0, Llav$a;->d:I

    iget v4, p0, Llav$a;->e:I

    invoke-direct/range {v0 .. v5}, Llav$a;-><init>(IIIILlay;)V

    return-object v0

    .line 5000
    :array_0
    .array-data 4
        0x0
        0x1
        0x4
        0x5
        0x10
        0x11
        0x14
        0x15
        0x40
        0x41
        0x44
        0x45
        0x50
        0x51
        0x54
        0x55
    .end array-data
.end method

.method public final d()Llav;
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 0
    iget-object v0, p0, Llav$a;->k:Llay;

    invoke-virtual {v0}, Llay;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llay;

    new-instance v2, Llay;

    iget v1, p0, Llav$a;->l:I

    invoke-direct {v2, v1}, Llay;-><init>(I)V

    iget v1, p0, Llav$a;->b:I

    invoke-virtual {v2, v1}, Llay;->c(I)V

    invoke-virtual {v2, v4}, Llay;->c(I)V

    iget v1, p0, Llav$a;->c:I

    invoke-virtual {v2, v1}, Llay;->c(I)V

    iget v1, p0, Llav$a;->a:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    iget v1, p0, Llav$a;->d:I

    invoke-virtual {v2, v1}, Llay;->c(I)V

    iget v1, p0, Llav$a;->e:I

    invoke-virtual {v2, v1}, Llay;->c(I)V

    :cond_0
    new-instance v1, Llay;

    iget v3, p0, Llav$a;->l:I

    invoke-direct {v1, v3}, Llay;-><init>(I)V

    invoke-virtual {v1, v4}, Llay;->c(I)V

    new-instance v5, Llay;

    iget v3, p0, Llav$a;->l:I

    invoke-direct {v5, v3}, Llay;-><init>(I)V

    move-object v8, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v8

    .line 6000
    :goto_0
    iget-object v3, v2, Llay;->a:[I

    array-length v3, v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Llay;->a:[I

    aget v3, v3, v4

    if-nez v3, :cond_3

    invoke-virtual {v2}, Llay;->a()I

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    const/4 v3, 0x1

    .line 0
    :goto_1
    if-nez v3, :cond_4

    invoke-virtual {v2}, Llay;->b()I

    move-result v3

    invoke-virtual {v1}, Llay;->b()I

    move-result v6

    sub-int/2addr v3, v6

    if-gez v3, :cond_2

    neg-int v3, v3

    move-object v8, v0

    move-object v0, v5

    move-object v5, v8

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    :cond_2
    shr-int/lit8 v6, v3, 0x5

    and-int/lit8 v3, v3, 0x1f

    invoke-virtual {v1, v3}, Llay;->b(I)Llay;

    move-result-object v7

    invoke-virtual {v2, v7, v6}, Llay;->a(Llay;I)V

    invoke-virtual {v5, v3}, Llay;->b(I)Llay;

    move-result-object v3

    invoke-virtual {v0, v3, v6}, Llay;->a(Llay;I)V

    goto :goto_0

    :cond_3
    move v3, v4

    .line 6000
    goto :goto_1

    .line 0
    :cond_4
    new-instance v0, Llav$a;

    iget v1, p0, Llav$a;->b:I

    iget v2, p0, Llav$a;->c:I

    iget v3, p0, Llav$a;->d:I

    iget v4, p0, Llav$a;->e:I

    invoke-direct/range {v0 .. v5}, Llav$a;-><init>(IIIILlay;)V

    return-object v0
.end method

.method public final e()Llav;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Llav$a;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Llav$a;

    iget v2, p0, Llav$a;->b:I

    iget v3, p1, Llav$a;->b:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Llav$a;->c:I

    iget v3, p1, Llav$a;->c:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Llav$a;->d:I

    iget v3, p1, Llav$a;->d:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Llav$a;->e:I

    iget v3, p1, Llav$a;->e:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Llav$a;->a:I

    iget v3, p1, Llav$a;->a:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Llav$a;->k:Llay;

    iget-object v3, p1, Llav$a;->k:Llay;

    invoke-virtual {v2, v3}, Llay;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    iget-object v0, p0, Llav$a;->k:Llay;

    invoke-virtual {v0}, Llay;->hashCode()I

    move-result v0

    iget v1, p0, Llav$a;->b:I

    xor-int/2addr v0, v1

    iget v1, p0, Llav$a;->c:I

    xor-int/2addr v0, v1

    iget v1, p0, Llav$a;->d:I

    xor-int/2addr v0, v1

    iget v1, p0, Llav$a;->e:I

    xor-int/2addr v0, v1

    return v0
.end method
