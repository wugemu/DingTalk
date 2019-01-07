.class public final Lkxi;
.super Lktu;


# instance fields
.field public a:Lkuc;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lktu;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lkxi;-><init>(Ljava/math/BigInteger;Lkuy;Lktu;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Lkuy;Lktu;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Lktu;-><init>()V

    invoke-static {p1}, Llbc;->a(Ljava/math/BigInteger;)[B

    move-result-object v0

    new-instance v1, Lktv;

    invoke-direct {v1}, Lktv;-><init>()V

    new-instance v2, Lkvj;

    invoke-direct {v2, v3}, Lkvj;-><init>(I)V

    invoke-virtual {v1, v2}, Lktv;->a(Lkva;)V

    new-instance v2, Lkvo;

    invoke-direct {v2, v0}, Lkvo;-><init>([B)V

    invoke-virtual {v1, v2}, Lktv;->a(Lkva;)V

    if-eqz p3, :cond_0

    new-instance v0, Lkvy;

    const/4 v2, 0x0

    invoke-direct {v0, v3, v2, p3}, Lkvy;-><init>(ZILkva;)V

    invoke-virtual {v1, v0}, Lktv;->a(Lkva;)V

    :cond_0
    if-eqz p2, :cond_1

    new-instance v0, Lkvy;

    invoke-direct {v0, v3, v3, p2}, Lkvy;-><init>(ZILkva;)V

    invoke-virtual {v1, v0}, Lktv;->a(Lkva;)V

    :cond_1
    new-instance v0, Lkvs;

    invoke-direct {v0, v1}, Lkvs;-><init>(Lkvb;)V

    iput-object v0, p0, Lkxi;->a:Lkuc;

    return-void
.end method

.method public constructor <init>(Lkuc;)V
    .locals 0

    invoke-direct {p0}, Lktu;-><init>()V

    iput-object p1, p0, Lkxi;->a:Lkuc;

    return-void
.end method


# virtual methods
.method public final d()Lkvm;
    .locals 1

    iget-object v0, p0, Lkxi;->a:Lkuc;

    return-object v0
.end method

.method public final e()Lkuy;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    .line 1000
    iget-object v0, p0, Lkxi;->a:Lkuc;

    invoke-virtual {v0}, Lkuc;->e()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkva;

    instance-of v2, v0, Lkuh;

    if-eqz v2, :cond_0

    check-cast v0, Lkuh;

    .line 2000
    iget v2, v0, Lkuh;->a:I

    .line 1000
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lkuh;->e()Lkvm;

    move-result-object v0

    invoke-interface {v0}, Lkva;->c()Lkvm;

    move-result-object v0

    check-cast v0, Lkty;

    .line 0
    :goto_0
    check-cast v0, Lkuy;

    return-object v0

    .line 1000
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
