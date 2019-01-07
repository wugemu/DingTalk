.class public final Lkxs;
.super Lktu;


# instance fields
.field public a:Lkxn;

.field public b:Lkuy;


# direct methods
.method public constructor <init>(Lkuc;)V
    .locals 3

    invoke-direct {p0}, Lktu;-><init>()V

    invoke-virtual {p1}, Lkuc;->f()I

    move-result v0

    const/4 v1, 0x2

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

    invoke-static {v1}, Lkxn;->a(Ljava/lang/Object;)Lkxn;

    move-result-object v1

    iput-object v1, p0, Lkxs;->a:Lkxn;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkuy;->a(Ljava/lang/Object;)Lkuy;

    move-result-object v0

    iput-object v0, p0, Lkxs;->b:Lkuy;

    return-void
.end method

.method public constructor <init>(Lkxn;Lkva;)V
    .locals 1

    invoke-direct {p0}, Lktu;-><init>()V

    new-instance v0, Lkuy;

    invoke-direct {v0, p2}, Lkuy;-><init>(Lkva;)V

    iput-object v0, p0, Lkxs;->b:Lkuy;

    iput-object p1, p0, Lkxs;->a:Lkxn;

    return-void
.end method

.method public constructor <init>(Lkxn;[B)V
    .locals 1

    invoke-direct {p0}, Lktu;-><init>()V

    new-instance v0, Lkuy;

    invoke-direct {v0, p2}, Lkuy;-><init>([B)V

    iput-object v0, p0, Lkxs;->b:Lkuy;

    iput-object p1, p0, Lkxs;->a:Lkxn;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lkxs;
    .locals 3

    instance-of v0, p0, Lkxs;

    if-eqz v0, :cond_0

    check-cast p0, Lkxs;

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Lkuc;

    if-eqz v0, :cond_1

    new-instance v0, Lkxs;

    check-cast p0, Lkuc;

    invoke-direct {v0, p0}, Lkxs;-><init>(Lkuc;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unknown object in factory: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final d()Lkvm;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    new-instance v0, Lktv;

    invoke-direct {v0}, Lktv;-><init>()V

    iget-object v1, p0, Lkxs;->a:Lkxn;

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    iget-object v1, p0, Lkxs;->b:Lkuy;

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    new-instance v1, Lkvs;

    invoke-direct {v1, v0}, Lkvs;-><init>(Lkvb;)V

    return-object v1
.end method

.method public final e()Lkvm;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    new-instance v0, Lktw;

    iget-object v1, p0, Lkxs;->b:Lkuy;

    invoke-virtual {v1}, Lkuy;->f()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lktw;-><init>([B)V

    invoke-virtual {v0}, Lktw;->a()Lkvm;

    move-result-object v0

    return-object v0
.end method
