.class public final Lkxn;
.super Lktu;


# instance fields
.field public a:Lkvn;

.field public b:Lkva;

.field private c:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lktu;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lkxn;->c:Z

    new-instance v0, Lkvn;

    invoke-direct {v0, p1}, Lkvn;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lkxn;->a:Lkvn;

    return-void
.end method

.method public constructor <init>(Lkuc;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lktu;-><init>()V

    iput-boolean v1, p0, Lkxn;->c:Z

    invoke-virtual {p1}, Lkuc;->f()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lkuc;->f()I

    move-result v0

    if-le v0, v3, :cond_1

    :cond_0
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

    :cond_1
    invoke-virtual {p1, v1}, Lkuc;->a(I)Lkva;

    move-result-object v0

    invoke-static {v0}, Lkvn;->a(Ljava/lang/Object;)Lkvn;

    move-result-object v0

    iput-object v0, p0, Lkxn;->a:Lkvn;

    invoke-virtual {p1}, Lkuc;->f()I

    move-result v0

    if-ne v0, v3, :cond_2

    iput-boolean v2, p0, Lkxn;->c:Z

    invoke-virtual {p1, v2}, Lkuc;->a(I)Lkva;

    move-result-object v0

    iput-object v0, p0, Lkxn;->b:Lkva;

    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lkxn;->b:Lkva;

    goto :goto_0
.end method

.method public constructor <init>(Lkvn;)V
    .locals 1

    invoke-direct {p0}, Lktu;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lkxn;->c:Z

    iput-object p1, p0, Lkxn;->a:Lkvn;

    return-void
.end method

.method public constructor <init>(Lkvn;Lkva;)V
    .locals 1

    invoke-direct {p0}, Lktu;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lkxn;->c:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkxn;->c:Z

    iput-object p1, p0, Lkxn;->a:Lkvn;

    iput-object p2, p0, Lkxn;->b:Lkva;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lkxn;
    .locals 3

    if-eqz p0, :cond_0

    instance-of v0, p0, Lkxn;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Lkxn;

    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Lkvn;

    if-eqz v0, :cond_2

    new-instance v0, Lkxn;

    check-cast p0, Lkvn;

    invoke-direct {v0, p0}, Lkxn;-><init>(Lkvn;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v0, Lkxn;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lkxn;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lkuc;

    if-eqz v0, :cond_4

    new-instance v0, Lkxn;

    check-cast p0, Lkuc;

    invoke-direct {v0, p0}, Lkxn;-><init>(Lkuc;)V

    move-object p0, v0

    goto :goto_0

    :cond_4
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

.method public static a(Lkuh;Z)Lkxn;
    .locals 2

    .prologue
    .line 0
    .line 2000
    iget-boolean v0, p0, Lkuh;->c:Z

    .line 1000
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "object implicit - explicit expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lkuh;->e()Lkvm;

    move-result-object v0

    check-cast v0, Lkuc;

    .line 0
    invoke-static {v0}, Lkxn;->a(Ljava/lang/Object;)Lkxn;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final d()Lkvm;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    new-instance v0, Lktv;

    invoke-direct {v0}, Lktv;-><init>()V

    iget-object v1, p0, Lkxn;->a:Lkvn;

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    iget-boolean v1, p0, Lkxn;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lkxn;->b:Lkva;

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    :cond_0
    new-instance v1, Lkvs;

    invoke-direct {v1, v0}, Lkvs;-><init>(Lkvb;)V

    return-object v1
.end method
