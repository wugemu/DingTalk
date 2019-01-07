.class public final Lkxo;
.super Lktu;


# virtual methods
.method public final d()Lkvm;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v1, 0x0

    new-instance v0, Lktv;

    invoke-direct {v0}, Lktv;-><init>()V

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    new-instance v1, Lkvs;

    invoke-direct {v1, v0}, Lkvs;-><init>(Lkvb;)V

    return-object v1
.end method
