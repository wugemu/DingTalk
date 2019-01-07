.class public final Lkxp;
.super Lktu;


# instance fields
.field a:Lkuz;

.field b:Lkvj;


# direct methods
.method public constructor <init>(Lkuc;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lktu;-><init>()V

    new-instance v0, Lkuz;

    invoke-direct {v0, v1}, Lkuz;-><init>(Z)V

    iput-object v0, p0, Lkxp;->a:Lkuz;

    iput-object v2, p0, Lkxp;->b:Lkvj;

    invoke-virtual {p1}, Lkuc;->f()I

    move-result v0

    if-nez v0, :cond_1

    iput-object v2, p0, Lkxp;->a:Lkuz;

    iput-object v2, p0, Lkxp;->b:Lkvj;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, v1}, Lkuc;->a(I)Lkva;

    move-result-object v0

    instance-of v0, v0, Lkuz;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Lkuc;->a(I)Lkva;

    move-result-object v0

    invoke-static {v0}, Lkuz;->a(Ljava/lang/Object;)Lkuz;

    move-result-object v0

    iput-object v0, p0, Lkxp;->a:Lkuz;

    :goto_1
    invoke-virtual {p1}, Lkuc;->f()I

    move-result v0

    if-le v0, v3, :cond_0

    iget-object v0, p0, Lkxp;->a:Lkuz;

    if-eqz v0, :cond_3

    invoke-virtual {p1, v3}, Lkuc;->a(I)Lkva;

    move-result-object v0

    invoke-static {v0}, Lkvj;->a(Ljava/lang/Object;)Lkvj;

    move-result-object v0

    iput-object v0, p0, Lkxp;->b:Lkvj;

    goto :goto_0

    :cond_2
    iput-object v2, p0, Lkxp;->a:Lkuz;

    invoke-virtual {p1, v1}, Lkuc;->a(I)Lkva;

    move-result-object v0

    invoke-static {v0}, Lkvj;->a(Ljava/lang/Object;)Lkvj;

    move-result-object v0

    iput-object v0, p0, Lkxp;->b:Lkvj;

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "wrong sequence in constructor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/Object;)Lkxp;
    .locals 4

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Lkxp;

    if-eqz v1, :cond_1

    :cond_0
    check-cast v0, Lkxp;

    :goto_1
    return-object v0

    :cond_1
    instance-of v1, v0, Lkuc;

    if-eqz v1, :cond_2

    new-instance v1, Lkxp;

    check-cast v0, Lkuc;

    invoke-direct {v1, v0}, Lkxp;-><init>(Lkuc;)V

    move-object v0, v1

    goto :goto_1

    :cond_2
    instance-of v1, v0, Lkxy;

    if-eqz v1, :cond_3

    check-cast v0, Lkxy;

    invoke-static {v0}, Lkxy;->a(Lkxy;)Lkty;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unknown object in factory: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final d()Lkvm;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    new-instance v0, Lktv;

    invoke-direct {v0}, Lktv;-><init>()V

    iget-object v1, p0, Lkxp;->a:Lkuz;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lkxp;->a:Lkuz;

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    :cond_0
    iget-object v1, p0, Lkxp;->b:Lkvj;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lkxp;->b:Lkvj;

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    :cond_1
    new-instance v1, Lkvs;

    invoke-direct {v1, v0}, Lkvs;-><init>(Lkvb;)V

    return-object v1
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Lkxp;->a:Lkuz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkxp;->a:Lkuz;

    invoke-virtual {v0}, Lkuz;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lkxp;->b:Lkvj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkxp;->b:Lkvj;

    invoke-virtual {v0}, Lkvj;->e()Ljava/math/BigInteger;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    iget-object v0, p0, Lkxp;->b:Lkvj;

    if-nez v0, :cond_1

    iget-object v0, p0, Lkxp;->a:Lkuz;

    if-nez v0, :cond_0

    const-string/jumbo v0, "BasicConstraints: isCa(false)"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "BasicConstraints: isCa("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lkxp;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "BasicConstraints: isCa("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lkxp;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "), pathLenConstraint = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lkxp;->b:Lkvj;

    invoke-virtual {v1}, Lkvj;->e()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
