.class public final Lkxc;
.super Lktu;


# instance fields
.field public a:Lkvj;

.field public b:Lkvj;

.field c:Lkvj;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .locals 1

    invoke-direct {p0}, Lktu;-><init>()V

    new-instance v0, Lkvj;

    invoke-direct {v0, p1}, Lkvj;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lkxc;->a:Lkvj;

    new-instance v0, Lkvj;

    invoke-direct {v0, p2}, Lkvj;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lkxc;->b:Lkvj;

    if-eqz p3, :cond_0

    new-instance v0, Lkvj;

    invoke-direct {v0, p3}, Lkvj;-><init>(I)V

    iput-object v0, p0, Lkxc;->c:Lkvj;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lkxc;->c:Lkvj;

    goto :goto_0
.end method

.method public constructor <init>(Lkuc;)V
    .locals 2

    invoke-direct {p0}, Lktu;-><init>()V

    invoke-virtual {p1}, Lkuc;->e()Ljava/util/Enumeration;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvj;

    iput-object v0, p0, Lkxc;->a:Lkvj;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvj;

    iput-object v0, p0, Lkxc;->b:Lkvj;

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvj;

    iput-object v0, p0, Lkxc;->c:Lkvj;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lkxc;->c:Lkvj;

    goto :goto_0
.end method


# virtual methods
.method public final d()Lkvm;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    new-instance v0, Lktv;

    invoke-direct {v0}, Lktv;-><init>()V

    iget-object v1, p0, Lkxc;->a:Lkvj;

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    iget-object v1, p0, Lkxc;->b:Lkvj;

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    invoke-virtual {p0}, Lkxc;->e()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lkxc;->c:Lkvj;

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    :cond_0
    new-instance v1, Lkvs;

    invoke-direct {v1, v0}, Lkvs;-><init>(Lkvb;)V

    return-object v1
.end method

.method public final e()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lkxc;->c:Lkvj;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lkxc;->c:Lkvj;

    invoke-virtual {v0}, Lkvj;->f()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0
.end method
