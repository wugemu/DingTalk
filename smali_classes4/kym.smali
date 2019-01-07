.class public final Lkym;
.super Lktu;

# interfaces
.implements Lkyo;


# instance fields
.field a:Lkvn;

.field b:Lkvm;


# direct methods
.method public constructor <init>(IIII)V
    .locals 3

    invoke-direct {p0}, Lktu;-><init>()V

    sget-object v0, Lkym;->f:Lkvn;

    iput-object v0, p0, Lkym;->a:Lkvn;

    new-instance v0, Lktv;

    invoke-direct {v0}, Lktv;-><init>()V

    new-instance v1, Lkvj;

    invoke-direct {v1, p1}, Lkvj;-><init>(I)V

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    if-nez p3, :cond_0

    sget-object v1, Lkym;->h:Lkvn;

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    new-instance v1, Lkvj;

    invoke-direct {v1, p2}, Lkvj;-><init>(I)V

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    :goto_0
    new-instance v1, Lkvs;

    invoke-direct {v1, v0}, Lkvs;-><init>(Lkvb;)V

    iput-object v1, p0, Lkym;->b:Lkvm;

    return-void

    :cond_0
    sget-object v1, Lkym;->i:Lkvn;

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    new-instance v1, Lktv;

    invoke-direct {v1}, Lktv;-><init>()V

    new-instance v2, Lkvj;

    invoke-direct {v2, p2}, Lkvj;-><init>(I)V

    invoke-virtual {v1, v2}, Lktv;->a(Lkva;)V

    new-instance v2, Lkvj;

    invoke-direct {v2, p3}, Lkvj;-><init>(I)V

    invoke-virtual {v1, v2}, Lktv;->a(Lkva;)V

    new-instance v2, Lkvj;

    invoke-direct {v2, p4}, Lkvj;-><init>(I)V

    invoke-virtual {v1, v2}, Lktv;->a(Lkva;)V

    new-instance v2, Lkvs;

    invoke-direct {v2, v1}, Lkvs;-><init>(Lkvb;)V

    invoke-virtual {v0, v2}, Lktv;->a(Lkva;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    invoke-direct {p0}, Lktu;-><init>()V

    sget-object v0, Lkym;->e:Lkvn;

    iput-object v0, p0, Lkym;->a:Lkvn;

    new-instance v0, Lkvj;

    invoke-direct {v0, p1}, Lkvj;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lkym;->b:Lkvm;

    return-void
.end method

.method public constructor <init>(Lkuc;)V
    .locals 1

    invoke-direct {p0}, Lktu;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lkuc;->a(I)Lkva;

    move-result-object v0

    check-cast v0, Lkvn;

    iput-object v0, p0, Lkym;->a:Lkvn;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lkuc;->a(I)Lkva;

    move-result-object v0

    check-cast v0, Lkvm;

    iput-object v0, p0, Lkym;->b:Lkvm;

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

    iget-object v1, p0, Lkym;->a:Lkvn;

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    iget-object v1, p0, Lkym;->b:Lkvm;

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    new-instance v1, Lkvs;

    invoke-direct {v1, v0}, Lkvs;-><init>(Lkvb;)V

    return-object v1
.end method
