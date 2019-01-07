.class public final Llax$b;
.super Llax;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Llau;Llav;Llav;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Llax$b;-><init>(Llau;Llav;Llav;Z)V

    return-void
.end method

.method public constructor <init>(Llau;Llav;Llav;Z)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Llax;-><init>(Llau;Llav;Llav;)V

    if-eqz p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    if-nez p2, :cond_2

    if-eqz p3, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Exactly one of the field elements is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-boolean p4, p0, Llax$b;->d:Z

    return-void
.end method


# virtual methods
.method public final b()[B
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 0
    invoke-virtual {p0}, Llax$b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v5, [B

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Llax$b;->b:Llav;

    invoke-static {v0}, Lkyn;->a(Llav;)I

    move-result v1

    iget-boolean v0, p0, Llax$b;->d:Z

    if-eqz v0, :cond_2

    .line 1000
    iget-object v0, p0, Llax;->c:Llav;

    .line 0
    invoke-virtual {v0}, Llav;->a()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 2000
    :goto_1
    iget-object v2, p0, Llax;->b:Llav;

    .line 0
    invoke-virtual {v2}, Llav;->a()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2, v1}, Lkyn;->a(Ljava/math/BigInteger;I)[B

    move-result-object v2

    array-length v1, v2

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    aput-byte v0, v1, v4

    array-length v0, v2

    invoke-static {v2, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    .line 3000
    :cond_2
    iget-object v0, p0, Llax;->b:Llav;

    .line 0
    invoke-virtual {v0}, Llav;->a()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0, v1}, Lkyn;->a(Ljava/math/BigInteger;I)[B

    move-result-object v2

    .line 4000
    iget-object v0, p0, Llax;->c:Llav;

    .line 0
    invoke-virtual {v0}, Llav;->a()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0, v1}, Lkyn;->a(Ljava/math/BigInteger;I)[B

    move-result-object v1

    array-length v0, v2

    array-length v3, v1

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    const/4 v3, 0x4

    aput-byte v3, v0, v4

    array-length v3, v2

    invoke-static {v2, v4, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    array-length v3, v1

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method
