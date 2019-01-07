.class public final Lkxh;
.super Lktu;

# interfaces
.implements Lkxd;


# instance fields
.field private bh:Lkvj;

.field private bi:Lkue;

.field private bj:Lkxb;

.field private bk:Lkue;

.field private bl:Lkue;

.field private bm:Lkue;


# direct methods
.method public constructor <init>(Lkvj;Lkue;Lkxb;Lkue;Lkue;Lkue;)V
    .locals 1

    invoke-direct {p0}, Lktu;-><init>()V

    iput-object p1, p0, Lkxh;->bh:Lkvj;

    iput-object p2, p0, Lkxh;->bi:Lkue;

    iput-object p3, p0, Lkxh;->bj:Lkxb;

    iput-object p4, p0, Lkxh;->bk:Lkue;

    const/4 v0, 0x0

    iput-object v0, p0, Lkxh;->bl:Lkue;

    iput-object p6, p0, Lkxh;->bm:Lkue;

    return-void
.end method


# virtual methods
.method public final d()Lkvm;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v4, 0x0

    new-instance v0, Lktv;

    invoke-direct {v0}, Lktv;-><init>()V

    iget-object v1, p0, Lkxh;->bh:Lkvj;

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    iget-object v1, p0, Lkxh;->bi:Lkue;

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    iget-object v1, p0, Lkxh;->bj:Lkxb;

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    iget-object v1, p0, Lkxh;->bk:Lkue;

    if-eqz v1, :cond_0

    new-instance v1, Lkvy;

    iget-object v2, p0, Lkxh;->bk:Lkue;

    invoke-direct {v1, v4, v4, v2}, Lkvy;-><init>(ZILkva;)V

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    :cond_0
    iget-object v1, p0, Lkxh;->bl:Lkue;

    if-eqz v1, :cond_1

    new-instance v1, Lkvy;

    const/4 v2, 0x1

    iget-object v3, p0, Lkxh;->bl:Lkue;

    invoke-direct {v1, v4, v2, v3}, Lkvy;-><init>(ZILkva;)V

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    :cond_1
    iget-object v1, p0, Lkxh;->bm:Lkue;

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    new-instance v1, Lkup;

    invoke-direct {v1, v0}, Lkup;-><init>(Lkvb;)V

    return-object v1
.end method
