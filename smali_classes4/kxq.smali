.class public final Lkxq;
.super Lktu;


# instance fields
.field public a:Lkvj;

.field public b:Lkvj;

.field public c:Lkvj;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    invoke-direct {p0}, Lktu;-><init>()V

    new-instance v0, Lkvj;

    invoke-direct {v0, p1}, Lkvj;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lkxq;->a:Lkvj;

    new-instance v0, Lkvj;

    invoke-direct {v0, p2}, Lkvj;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lkxq;->b:Lkvj;

    new-instance v0, Lkvj;

    invoke-direct {v0, p3}, Lkvj;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lkxq;->c:Lkvj;

    return-void
.end method

.method public constructor <init>(Lkuc;)V
    .locals 3

    invoke-direct {p0}, Lktu;-><init>()V

    invoke-virtual {p1}, Lkuc;->f()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Bad sequence size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lkuc;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lkuc;->e()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkvj;->a(Ljava/lang/Object;)Lkvj;

    move-result-object v1

    iput-object v1, p0, Lkxq;->a:Lkvj;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkvj;->a(Ljava/lang/Object;)Lkvj;

    move-result-object v1

    iput-object v1, p0, Lkxq;->b:Lkvj;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkvj;->a(Ljava/lang/Object;)Lkvj;

    move-result-object v0

    iput-object v0, p0, Lkxq;->c:Lkvj;

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

    iget-object v1, p0, Lkxq;->a:Lkvj;

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    iget-object v1, p0, Lkxq;->b:Lkvj;

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    iget-object v1, p0, Lkxq;->c:Lkvj;

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    new-instance v1, Lkvs;

    invoke-direct {v1, v0}, Lkvs;-><init>(Lkvb;)V

    return-object v1
.end method
