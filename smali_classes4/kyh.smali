.class public final Lkyh;
.super Lktu;

# interfaces
.implements Lkyo;


# instance fields
.field a:Llau;

.field b:[B

.field private c:Lkvn;


# direct methods
.method public constructor <init>(Lkym;Lkuc;)V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 0
    invoke-direct {p0}, Lktu;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lkyh;->c:Lkvn;

    .line 2000
    iget-object v0, p1, Lkym;->a:Lkvn;

    .line 0
    iput-object v0, p0, Lkyh;->c:Lkvn;

    iget-object v0, p0, Lkyh;->c:Lkvn;

    sget-object v1, Lkyh;->e:Lkvn;

    invoke-virtual {v0, v1}, Lkvn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3000
    iget-object v0, p1, Lkym;->b:Lkvm;

    .line 0
    check-cast v0, Lkvj;

    invoke-virtual {v0}, Lkvj;->e()Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Lkyl;

    invoke-virtual {p2, v5}, Lkuc;->a(I)Lkva;

    move-result-object v0

    check-cast v0, Lktz;

    invoke-direct {v2, v1, v0}, Lkyl;-><init>(Ljava/math/BigInteger;Lktz;)V

    new-instance v3, Lkyl;

    invoke-virtual {p2, v7}, Lkuc;->a(I)Lkva;

    move-result-object v0

    check-cast v0, Lktz;

    invoke-direct {v3, v1, v0}, Lkyl;-><init>(Ljava/math/BigInteger;Lktz;)V

    new-instance v0, Llau$b;

    invoke-virtual {v2}, Lkyl;->e()Llav;

    move-result-object v2

    invoke-virtual {v2}, Llav;->a()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v3}, Lkyl;->e()Llav;

    move-result-object v3

    invoke-virtual {v3}, Llav;->a()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Llau$b;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lkyh;->a:Llau;

    :cond_0
    :goto_0
    invoke-virtual {p2}, Lkuc;->f()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p2, v11}, Lkuc;->a(I)Lkva;

    move-result-object v0

    check-cast v0, Lkuy;

    invoke-virtual {v0}, Lkuy;->f()[B

    move-result-object v0

    iput-object v0, p0, Lkyh;->b:[B

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lkyh;->c:Lkvn;

    sget-object v1, Lkyh;->f:Lkvn;

    invoke-virtual {v0, v1}, Lkvn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4000
    iget-object v0, p1, Lkym;->b:Lkvm;

    .line 0
    check-cast v0, Lkvs;

    invoke-virtual {v0, v5}, Lkvs;->a(I)Lkva;

    move-result-object v1

    check-cast v1, Lkvj;

    invoke-virtual {v1}, Lkvj;->e()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-virtual {v0, v7}, Lkvs;->a(I)Lkva;

    move-result-object v2

    check-cast v2, Lkvn;

    sget-object v3, Lkyh;->h:Lkvn;

    invoke-virtual {v2, v3}, Lkvn;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v11}, Lkvs;->a(I)Lkva;

    move-result-object v0

    check-cast v0, Lkvj;

    invoke-virtual {v0}, Lkvj;->e()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    move v4, v5

    move v3, v5

    :goto_1
    new-instance v0, Lkyl;

    invoke-virtual {p2, v5}, Lkuc;->a(I)Lkva;

    move-result-object v5

    check-cast v5, Lktz;

    invoke-direct/range {v0 .. v5}, Lkyl;-><init>(IIIILktz;)V

    new-instance v5, Lkyl;

    invoke-virtual {p2, v7}, Lkuc;->a(I)Lkva;

    move-result-object v10

    check-cast v10, Lktz;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lkyl;-><init>(IIIILktz;)V

    new-instance v7, Llau$a;

    invoke-virtual {v0}, Lkyl;->e()Llav;

    move-result-object v0

    invoke-virtual {v0}, Llav;->a()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v5}, Lkyl;->e()Llav;

    move-result-object v0

    invoke-virtual {v0}, Llav;->a()Ljava/math/BigInteger;

    move-result-object v6

    move-object v0, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v6}, Llau$a;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v7, p0, Lkyh;->a:Llau;

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v0, v11}, Lkvs;->a(I)Lkva;

    move-result-object v0

    check-cast v0, Lkvs;

    invoke-virtual {v0, v5}, Lkvs;->a(I)Lkva;

    move-result-object v2

    check-cast v2, Lkvj;

    invoke-virtual {v2}, Lkvj;->e()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    invoke-virtual {v0, v7}, Lkvs;->a(I)Lkva;

    move-result-object v2

    check-cast v2, Lkvj;

    invoke-virtual {v2}, Lkvj;->e()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    invoke-virtual {v0, v11}, Lkvs;->a(I)Lkva;

    move-result-object v0

    check-cast v0, Lkvj;

    invoke-virtual {v0}, Lkvj;->e()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    move v2, v6

    goto :goto_1
.end method

.method public constructor <init>(Llau;[B)V
    .locals 2

    .prologue
    .line 0
    invoke-direct {p0}, Lktu;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lkyh;->c:Lkvn;

    iput-object p1, p0, Lkyh;->a:Llau;

    iput-object p2, p0, Lkyh;->b:[B

    .line 1000
    iget-object v0, p0, Lkyh;->a:Llau;

    instance-of v0, v0, Llau$b;

    if-eqz v0, :cond_0

    sget-object v0, Lkyh;->e:Lkvn;

    iput-object v0, p0, Lkyh;->c:Lkvn;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lkyh;->a:Llau;

    instance-of v0, v0, Llau$a;

    if-eqz v0, :cond_1

    sget-object v0, Lkyh;->f:Lkvn;

    iput-object v0, p0, Lkyh;->c:Lkvn;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "This type of ECCurve is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final d()Lkvm;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    new-instance v0, Lktv;

    invoke-direct {v0}, Lktv;-><init>()V

    iget-object v1, p0, Lkyh;->c:Lkvn;

    sget-object v2, Lkyh;->e:Lkvn;

    invoke-virtual {v1, v2}, Lkvn;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lkyl;

    iget-object v2, p0, Lkyh;->a:Llau;

    .line 5000
    iget-object v2, v2, Llau;->a:Llav;

    .line 0
    invoke-direct {v1, v2}, Lkyl;-><init>(Llav;)V

    invoke-virtual {v1}, Lkyl;->c()Lkvm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    new-instance v1, Lkyl;

    iget-object v2, p0, Lkyh;->a:Llau;

    .line 6000
    iget-object v2, v2, Llau;->b:Llav;

    .line 0
    invoke-direct {v1, v2}, Lkyl;-><init>(Llav;)V

    invoke-virtual {v1}, Lkyl;->c()Lkvm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lkyh;->b:[B

    if-eqz v1, :cond_1

    new-instance v1, Lkuy;

    iget-object v2, p0, Lkyh;->b:[B

    invoke-direct {v1, v2}, Lkuy;-><init>([B)V

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    :cond_1
    new-instance v1, Lkvs;

    invoke-direct {v1, v0}, Lkvs;-><init>(Lkvb;)V

    return-object v1

    :cond_2
    iget-object v1, p0, Lkyh;->c:Lkvn;

    sget-object v2, Lkyh;->f:Lkvn;

    invoke-virtual {v1, v2}, Lkvn;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lkyl;

    iget-object v2, p0, Lkyh;->a:Llau;

    .line 7000
    iget-object v2, v2, Llau;->a:Llav;

    .line 0
    invoke-direct {v1, v2}, Lkyl;-><init>(Llav;)V

    invoke-virtual {v1}, Lkyl;->c()Lkvm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    new-instance v1, Lkyl;

    iget-object v2, p0, Lkyh;->a:Llau;

    .line 8000
    iget-object v2, v2, Llau;->b:Llav;

    .line 0
    invoke-direct {v1, v2}, Lkyl;-><init>(Llav;)V

    invoke-virtual {v1}, Lkyl;->c()Lkvm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    goto :goto_0
.end method
