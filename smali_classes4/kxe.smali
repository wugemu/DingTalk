.class public final Lkxe;
.super Lktu;


# instance fields
.field public a:Lkvm;

.field public b:Lkxn;

.field private c:Lkue;


# direct methods
.method public constructor <init>(Lkuc;)V
    .locals 3

    invoke-direct {p0}, Lktu;-><init>()V

    invoke-virtual {p1}, Lkuc;->e()Ljava/util/Enumeration;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkvj;

    invoke-virtual {v0}, Lkvj;->e()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "wrong version for private key info"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v2, Lkxn;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkuc;

    invoke-direct {v2, v0}, Lkxn;-><init>(Lkuc;)V

    iput-object v2, p0, Lkxe;->b:Lkxn;

    :try_start_0
    new-instance v2, Lktw;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lktz;

    invoke-virtual {v0}, Lktz;->f()[B

    move-result-object v0

    invoke-direct {v2, v0}, Lktw;-><init>([B)V

    invoke-virtual {v2}, Lktw;->a()Lkvm;

    move-result-object v0

    iput-object v0, p0, Lkxe;->a:Lkvm;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkuh;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkue;->a(Lkuh;Z)Lkue;

    move-result-object v0

    iput-object v0, p0, Lkxe;->c:Lkue;

    :cond_1
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Error recoverying private key from sequence"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lkxn;Lkvm;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lkxe;-><init>(Lkxn;Lkvm;Lkue;)V

    return-void
.end method

.method private constructor <init>(Lkxn;Lkvm;Lkue;)V
    .locals 1

    invoke-direct {p0}, Lktu;-><init>()V

    iput-object p2, p0, Lkxe;->a:Lkvm;

    iput-object p1, p0, Lkxe;->b:Lkxn;

    const/4 v0, 0x0

    iput-object v0, p0, Lkxe;->c:Lkue;

    return-void
.end method


# virtual methods
.method public final d()Lkvm;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v3, 0x0

    new-instance v0, Lktv;

    invoke-direct {v0}, Lktv;-><init>()V

    new-instance v1, Lkvj;

    invoke-direct {v1, v3}, Lkvj;-><init>(I)V

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    iget-object v1, p0, Lkxe;->b:Lkxn;

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    new-instance v1, Lkvo;

    iget-object v2, p0, Lkxe;->a:Lkvm;

    invoke-direct {v1, v2}, Lkvo;-><init>(Lkva;)V

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    iget-object v1, p0, Lkxe;->c:Lkue;

    if-eqz v1, :cond_0

    new-instance v1, Lkvy;

    iget-object v2, p0, Lkxe;->c:Lkue;

    invoke-direct {v1, v3, v3, v2}, Lkvy;-><init>(ZILkva;)V

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    :cond_0
    new-instance v1, Lkvs;

    invoke-direct {v1, v0}, Lkvs;-><init>(Lkvb;)V

    return-object v1
.end method
