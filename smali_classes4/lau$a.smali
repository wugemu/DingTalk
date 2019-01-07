.class public final Llau$a;
.super Llau;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llau;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field private g:Ljava/math/BigInteger;

.field private h:Ljava/math/BigInteger;

.field private i:Llax$a;

.field private j:B

.field private k:[Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 9

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Llau$a;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Llau;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Llau$a;->j:B

    iput-object v1, p0, Llau$a;->k:[Ljava/math/BigInteger;

    iput p1, p0, Llau$a;->c:I

    iput p2, p0, Llau$a;->d:I

    iput p3, p0, Llau$a;->e:I

    iput p4, p0, Llau$a;->f:I

    iput-object p7, p0, Llau$a;->g:Ljava/math/BigInteger;

    iput-object p8, p0, Llau$a;->h:Ljava/math/BigInteger;

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "k1 must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    if-eqz p4, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "k3 must be 0 if k2 == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-gt p3, p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "k2 must be > k1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-gt p4, p3, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "k3 must be > k2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-direct {p0, p5}, Llau$a;->a(Ljava/math/BigInteger;)Llav;

    move-result-object v0

    iput-object v0, p0, Llau$a;->a:Llav;

    invoke-direct {p0, p6}, Llau$a;->a(Ljava/math/BigInteger;)Llav;

    move-result-object v0

    iput-object v0, p0, Llau$a;->b:Llav;

    new-instance v0, Llax$a;

    invoke-direct {v0, p0, v1, v1}, Llax$a;-><init>(Llau;Llav;Llav;)V

    iput-object v0, p0, Llau$a;->i:Llax$a;

    return-void
.end method

.method public constructor <init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 9

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Llau$a;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method private a(Ljava/math/BigInteger;)Llav;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    new-instance v0, Llav$a;

    iget v1, p0, Llau$a;->c:I

    iget v2, p0, Llau$a;->d:I

    iget v3, p0, Llau$a;->e:I

    iget v4, p0, Llau$a;->f:I

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Llav$a;-><init>(IIIILjava/math/BigInteger;)V

    return-object v0
.end method

.method private a(Llav;)Llav;
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    new-instance v0, Llav$a;

    iget v1, p0, Llau$a;->c:I

    iget v2, p0, Llau$a;->d:I

    iget v3, p0, Llau$a;->e:I

    iget v4, p0, Llau$a;->f:I

    sget-object v5, Llat;->f:Ljava/math/BigInteger;

    invoke-direct/range {v0 .. v5}, Llav$a;-><init>(IIIILjava/math/BigInteger;)V

    invoke-virtual {p1}, Llav;->a()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Llat;->f:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    :cond_1
    new-instance v1, Llav$a;

    iget v2, p0, Llau$a;->c:I

    iget v3, p0, Llau$a;->d:I

    iget v4, p0, Llau$a;->e:I

    iget v5, p0, Llau$a;->f:I

    new-instance v6, Ljava/math/BigInteger;

    iget v8, p0, Llau$a;->c:I

    invoke-direct {v6, v8, v7}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    invoke-direct/range {v1 .. v6}, Llav$a;-><init>(IIIILjava/math/BigInteger;)V

    const/4 v2, 0x1

    move-object v3, p1

    move-object v4, v0

    :goto_1
    iget v5, p0, Llau$a;->c:I

    add-int/lit8 v5, v5, -0x1

    if-gt v2, v5, :cond_2

    invoke-virtual {v3}, Llav;->c()Llav;

    move-result-object v3

    invoke-virtual {v4}, Llav;->c()Llav;

    move-result-object v4

    invoke-virtual {v3, v1}, Llav;->b(Llav;)Llav;

    move-result-object v5

    invoke-virtual {v4, v5}, Llav;->a(Llav;)Llav;

    move-result-object v4

    invoke-virtual {v3, p1}, Llav;->a(Llav;)Llav;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Llav;->a()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Llat;->f:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Llav;->c()Llav;

    move-result-object v1

    invoke-virtual {v1, v4}, Llav;->a(Llav;)Llav;

    move-result-object v1

    invoke-virtual {v1}, Llav;->a()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Llat;->f:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v0, v4

    goto :goto_0
.end method

.method private a([BI)Llax;
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v8, 0x1

    const/4 v6, 0x0

    new-instance v0, Llav$a;

    iget v1, p0, Llau$a;->c:I

    iget v2, p0, Llau$a;->d:I

    iget v3, p0, Llau$a;->e:I

    iget v4, p0, Llau$a;->f:I

    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v8, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct/range {v0 .. v5}, Llav$a;-><init>(IIIILjava/math/BigInteger;)V

    invoke-virtual {v0}, Llav;->a()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Llat;->f:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Llau$a;->b:Llav;

    check-cast v1, Llav$a;

    move-object v2, v1

    move v1, v6

    :goto_0
    iget v3, p0, Llau$a;->c:I

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_3

    invoke-virtual {v2}, Llav;->c()Llav;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Llau$a;->a:Llav;

    invoke-virtual {v0, v1}, Llav;->a(Llav;)Llav;

    move-result-object v1

    iget-object v2, p0, Llau$a;->b:Llav;

    invoke-virtual {v0}, Llav;->c()Llav;

    move-result-object v3

    invoke-virtual {v3}, Llav;->d()Llav;

    move-result-object v3

    invoke-virtual {v2, v3}, Llav;->b(Llav;)Llav;

    move-result-object v2

    invoke-virtual {v1, v2}, Llav;->a(Llav;)Llav;

    move-result-object v1

    invoke-direct {p0, v1}, Llau$a;->a(Llav;)Llav;

    move-result-object v7

    if-nez v7, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Invalid point compression"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v7}, Llav;->a()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move v6, v8

    :cond_2
    if-eq v6, p2, :cond_4

    new-instance v1, Llav$a;

    iget v2, p0, Llau$a;->c:I

    iget v3, p0, Llau$a;->d:I

    iget v4, p0, Llau$a;->e:I

    iget v5, p0, Llau$a;->f:I

    sget-object v6, Llat;->g:Ljava/math/BigInteger;

    invoke-direct/range {v1 .. v6}, Llav$a;-><init>(IIIILjava/math/BigInteger;)V

    invoke-virtual {v7, v1}, Llav;->a(Llav;)Llav;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Llav;->b(Llav;)Llav;

    move-result-object v2

    :cond_3
    new-instance v1, Llax$a;

    invoke-direct {v1, p0, v0, v2}, Llax$a;-><init>(Llau;Llav;Llav;)V

    return-object v1

    :cond_4
    move-object v1, v7

    goto :goto_1
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Llau$a;->c:I

    return v0
.end method

.method public final a(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Llax;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    new-instance v0, Llax$a;

    invoke-direct {p0, p1}, Llau$a;->a(Ljava/math/BigInteger;)Llav;

    move-result-object v1

    invoke-direct {p0, p2}, Llau$a;->a(Ljava/math/BigInteger;)Llav;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, p3}, Llax$a;-><init>(Llau;Llav;Llav;Z)V

    return-object v0
.end method

.method public final a([B)Llax;
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 0
    aget-byte v0, p1, v9

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid point encoding 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v2, p1, v9

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1000
    :pswitch_1
    iget-object v0, p0, Llau$a;->i:Llax$a;

    .line 0
    :goto_0
    return-object v0

    :pswitch_2
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [B

    array-length v1, v0

    invoke-static {p1, v10, v0, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v1, p1, v9

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v0, v9}, Llau$a;->a([BI)Llax;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, v10}, Llau$a;->a([BI)Llax;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    new-array v6, v0, [B

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    new-array v8, v0, [B

    array-length v0, v6

    invoke-static {p1, v10, v6, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v6

    add-int/lit8 v0, v0, 0x1

    array-length v1, v8

    invoke-static {p1, v0, v8, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v7, Llax$a;

    new-instance v0, Llav$a;

    iget v1, p0, Llau$a;->c:I

    iget v2, p0, Llau$a;->d:I

    iget v3, p0, Llau$a;->e:I

    iget v4, p0, Llau$a;->f:I

    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v10, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct/range {v0 .. v5}, Llav$a;-><init>(IIIILjava/math/BigInteger;)V

    new-instance v1, Llav$a;

    iget v2, p0, Llau$a;->c:I

    iget v3, p0, Llau$a;->d:I

    iget v4, p0, Llau$a;->e:I

    iget v5, p0, Llau$a;->f:I

    new-instance v6, Ljava/math/BigInteger;

    invoke-direct {v6, v10, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct/range {v1 .. v6}, Llav$a;-><init>(IIIILjava/math/BigInteger;)V

    invoke-direct {v7, p0, v0, v1, v9}, Llax$a;-><init>(Llau;Llav;Llav;Z)V

    move-object v0, v7

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
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
    instance-of v2, p1, Llau$a;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Llau$a;

    iget v2, p0, Llau$a;->c:I

    iget v3, p1, Llau$a;->c:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Llau$a;->d:I

    iget v3, p1, Llau$a;->d:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Llau$a;->e:I

    iget v3, p1, Llau$a;->e:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Llau$a;->f:I

    iget v3, p1, Llau$a;->f:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Llau$a;->a:Llav;

    iget-object v3, p1, Llau$a;->a:Llav;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Llau$a;->b:Llav;

    iget-object v3, p1, Llau$a;->b:Llav;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

    iget-object v0, p0, Llau$a;->a:Llav;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Llau$a;->b:Llav;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget v1, p0, Llau$a;->c:I

    xor-int/2addr v0, v1

    iget v1, p0, Llau$a;->d:I

    xor-int/2addr v0, v1

    iget v1, p0, Llau$a;->e:I

    xor-int/2addr v0, v1

    iget v1, p0, Llau$a;->f:I

    xor-int/2addr v0, v1

    return v0
.end method
