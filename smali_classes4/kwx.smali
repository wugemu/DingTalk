.class public final Lkwx;
.super Lktu;


# instance fields
.field public a:Lkvj;

.field public b:Lkvj;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    invoke-direct {p0}, Lktu;-><init>()V

    new-instance v0, Lkvj;

    invoke-direct {v0, p1}, Lkvj;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lkwx;->a:Lkvj;

    new-instance v0, Lkvj;

    invoke-direct {v0, p2}, Lkvj;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lkwx;->b:Lkvj;

    return-void
.end method

.method public constructor <init>(Lkuc;)V
    .locals 2

    invoke-direct {p0}, Lktu;-><init>()V

    invoke-virtual {p1}, Lkuc;->e()Ljava/util/Enumeration;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvj;

    iput-object v0, p0, Lkwx;->a:Lkvj;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvj;

    iput-object v0, p0, Lkwx;->b:Lkvj;

    return-void
.end method


# virtual methods
.method public final d()Lkvm;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    new-instance v0, Lktv;

    invoke-direct {v0}, Lktv;-><init>()V

    iget-object v1, p0, Lkwx;->a:Lkvj;

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    iget-object v1, p0, Lkwx;->b:Lkvj;

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    new-instance v1, Lkvs;

    invoke-direct {v1, v0}, Lkvs;-><init>(Lkvb;)V

    return-object v1
.end method
