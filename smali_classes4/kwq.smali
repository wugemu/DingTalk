.class public final Lkwq;
.super Lktu;


# instance fields
.field public a:Lkvn;

.field public b:Lkvn;

.field public c:Lkvn;


# direct methods
.method public constructor <init>(Lkuc;)V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0}, Lktu;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lkuc;->a(I)Lkva;

    move-result-object v0

    check-cast v0, Lkvn;

    iput-object v0, p0, Lkwq;->a:Lkvn;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lkuc;->a(I)Lkva;

    move-result-object v0

    check-cast v0, Lkvn;

    iput-object v0, p0, Lkwq;->b:Lkvn;

    invoke-virtual {p1}, Lkuc;->f()I

    move-result v0

    if-le v0, v1, :cond_0

    invoke-virtual {p1, v1}, Lkuc;->a(I)Lkva;

    move-result-object v0

    check-cast v0, Lkvn;

    iput-object v0, p0, Lkwq;->c:Lkvn;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lkvn;Lkvn;)V
    .locals 1

    invoke-direct {p0}, Lktu;-><init>()V

    iput-object p1, p0, Lkwq;->a:Lkvn;

    iput-object p2, p0, Lkwq;->b:Lkvn;

    const/4 v0, 0x0

    iput-object v0, p0, Lkwq;->c:Lkvn;

    return-void
.end method

.method public constructor <init>(Lkvn;Lkvn;Lkvn;)V
    .locals 0

    invoke-direct {p0}, Lktu;-><init>()V

    iput-object p1, p0, Lkwq;->a:Lkvn;

    iput-object p2, p0, Lkwq;->b:Lkvn;

    iput-object p3, p0, Lkwq;->c:Lkvn;

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

    iget-object v1, p0, Lkwq;->a:Lkvn;

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    iget-object v1, p0, Lkwq;->b:Lkvn;

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    iget-object v1, p0, Lkwq;->c:Lkvn;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lkwq;->c:Lkvn;

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    :cond_0
    new-instance v1, Lkvs;

    invoke-direct {v1, v0}, Lkvs;-><init>(Lkvb;)V

    return-object v1
.end method
