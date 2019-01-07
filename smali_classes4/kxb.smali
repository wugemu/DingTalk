.class public final Lkxb;
.super Lktu;

# interfaces
.implements Lkxd;


# instance fields
.field private bh:Lkvn;

.field private bi:Lkva;


# direct methods
.method public constructor <init>(Lkvn;Lkva;)V
    .locals 0

    invoke-direct {p0}, Lktu;-><init>()V

    iput-object p1, p0, Lkxb;->bh:Lkvn;

    iput-object p2, p0, Lkxb;->bi:Lkva;

    return-void
.end method


# virtual methods
.method public final d()Lkvm;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    new-instance v0, Lktv;

    invoke-direct {v0}, Lktv;-><init>()V

    iget-object v1, p0, Lkxb;->bh:Lkvn;

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    iget-object v1, p0, Lkxb;->bi:Lkva;

    if-eqz v1, :cond_0

    new-instance v1, Lkut;

    const/4 v2, 0x0

    iget-object v3, p0, Lkxb;->bi:Lkva;

    invoke-direct {v1, v2, v3}, Lkut;-><init>(ILkva;)V

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    :cond_0
    new-instance v1, Lkup;

    invoke-direct {v1, v0}, Lkup;-><init>(Lkvb;)V

    return-object v1
.end method
