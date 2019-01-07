.class public final Llau$b;
.super Llau;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llau;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public c:Ljava/math/BigInteger;

.field d:Llax$b;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Llau;-><init>()V

    iput-object p1, p0, Llau$b;->c:Ljava/math/BigInteger;

    invoke-direct {p0, p2}, Llau$b;->a(Ljava/math/BigInteger;)Llav;

    move-result-object v0

    iput-object v0, p0, Llau$b;->a:Llav;

    invoke-direct {p0, p3}, Llau$b;->a(Ljava/math/BigInteger;)Llav;

    move-result-object v0

    iput-object v0, p0, Llau$b;->b:Llav;

    new-instance v0, Llax$b;

    invoke-direct {v0, p0, v1, v1}, Llax$b;-><init>(Llau;Llav;Llav;)V

    iput-object v0, p0, Llau$b;->d:Llax$b;

    return-void
.end method

.method private a(Ljava/math/BigInteger;)Llav;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    new-instance v0, Llav$b;

    iget-object v1, p0, Llau$b;->c:Ljava/math/BigInteger;

    invoke-direct {v0, v1, p1}, Llav$b;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Llau$b;->c:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public final a(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Llax;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    new-instance v0, Llax$b;

    invoke-direct {p0, p1}, Llau$b;->a(Ljava/math/BigInteger;)Llav;

    move-result-object v1

    invoke-direct {p0, p2}, Llau$b;->a(Ljava/math/BigInteger;)Llav;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, p3}, Llax$b;-><init>(Llau;Llav;Llav;Z)V

    return-object v0
.end method

.method public final a([B)Llax;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 0
    aget-byte v2, p1, v0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Invalid point encoding 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v0, p1, v0

    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1000
    :pswitch_1
    iget-object v0, p0, Llau$b;->d:Llax$b;

    .line 0
    :goto_0
    return-object v0

    :pswitch_2
    aget-byte v2, p1, v0

    and-int/lit8 v2, v2, 0x1

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [B

    array-length v4, v3

    invoke-static {p1, v1, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v4, Llav$b;

    iget-object v5, p0, Llau$b;->c:Ljava/math/BigInteger;

    new-instance v6, Ljava/math/BigInteger;

    invoke-direct {v6, v1, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v4, v5, v6}, Llav$b;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v4}, Llav;->c()Llav;

    move-result-object v3

    iget-object v5, p0, Llau$b;->a:Llav;

    invoke-virtual {v3, v5}, Llav;->a(Llav;)Llav;

    move-result-object v3

    invoke-virtual {v4, v3}, Llav;->b(Llav;)Llav;

    move-result-object v3

    iget-object v5, p0, Llau$b;->b:Llav;

    invoke-virtual {v3, v5}, Llav;->a(Llav;)Llav;

    move-result-object v3

    invoke-virtual {v3}, Llav;->e()Llav;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Invalid point compression"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v3}, Llav;->a()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v1

    :cond_1
    if-ne v0, v2, :cond_2

    new-instance v0, Llax$b;

    invoke-direct {v0, p0, v4, v3, v1}, Llax$b;-><init>(Llau;Llav;Llav;Z)V

    goto :goto_0

    :cond_2
    new-instance v0, Llax$b;

    new-instance v2, Llav$b;

    iget-object v5, p0, Llau$b;->c:Ljava/math/BigInteger;

    iget-object v6, p0, Llau$b;->c:Ljava/math/BigInteger;

    invoke-virtual {v3}, Llav;->a()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Llav$b;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, p0, v4, v2, v1}, Llax$b;-><init>(Llau;Llav;Llav;Z)V

    goto :goto_0

    :pswitch_3
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [B

    array-length v4, v2

    invoke-static {p1, v1, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v2

    add-int/lit8 v4, v4, 0x1

    array-length v5, v3

    invoke-static {p1, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Llax$b;

    new-instance v4, Llav$b;

    iget-object v5, p0, Llau$b;->c:Ljava/math/BigInteger;

    new-instance v6, Ljava/math/BigInteger;

    invoke-direct {v6, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v4, v5, v6}, Llav$b;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v2, Llav$b;

    iget-object v5, p0, Llau$b;->c:Ljava/math/BigInteger;

    new-instance v6, Ljava/math/BigInteger;

    invoke-direct {v6, v1, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v2, v5, v6}, Llav$b;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, p0, v4, v2}, Llax$b;-><init>(Llau;Llav;Llav;)V

    goto/16 :goto_0

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
    instance-of v2, p1, Llau$b;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Llau$b;

    iget-object v2, p0, Llau$b;->c:Ljava/math/BigInteger;

    iget-object v3, p1, Llau$b;->c:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Llau$b;->a:Llav;

    iget-object v3, p1, Llau$b;->a:Llav;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Llau$b;->b:Llav;

    iget-object v3, p1, Llau$b;->b:Llav;

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

    iget-object v0, p0, Llau$b;->a:Llav;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Llau$b;->b:Llav;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Llau$b;->c:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
