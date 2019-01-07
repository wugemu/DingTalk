.class public final Lkwp;
.super Lktu;


# instance fields
.field a:I

.field public b:Lkvj;

.field public c:Lkvj;

.field public d:Lkvj;


# direct methods
.method public constructor <init>(ILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    invoke-direct {p0}, Lktu;-><init>()V

    const/16 v0, 0x400

    iput v0, p0, Lkwp;->a:I

    new-instance v0, Lkvj;

    invoke-direct {v0, p2}, Lkvj;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lkwp;->b:Lkvj;

    new-instance v0, Lkvj;

    invoke-direct {v0, p3}, Lkvj;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lkwp;->c:Lkvj;

    new-instance v0, Lkvj;

    invoke-direct {v0, p4}, Lkvj;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lkwp;->d:Lkvj;

    return-void
.end method


# virtual methods
.method public final d()Lkvm;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    new-instance v0, Lktv;

    invoke-direct {v0}, Lktv;-><init>()V

    new-instance v1, Lkvj;

    iget v2, p0, Lkwp;->a:I

    invoke-direct {v1, v2}, Lkvj;-><init>(I)V

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    iget-object v1, p0, Lkwp;->b:Lkvj;

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    iget-object v1, p0, Lkwp;->c:Lkvj;

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    iget-object v1, p0, Lkwp;->d:Lkvj;

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    new-instance v1, Lkvs;

    invoke-direct {v1, v0}, Lkvs;-><init>(Lkvb;)V

    return-object v1
.end method
