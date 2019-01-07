.class public final Lkuz;
.super Lkty;


# static fields
.field public static final b:Lkuz;

.field public static final c:Lkuz;


# instance fields
.field a:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkuz;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkuz;-><init>(Z)V

    sput-object v0, Lkuz;->b:Lkuz;

    new-instance v0, Lkuz;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkuz;-><init>(Z)V

    sput-object v0, Lkuz;->c:Lkuz;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lkty;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput-byte v0, p0, Lkuz;->a:B

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Lkty;-><init>()V

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lkuz;->a:B

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lkuz;
    .locals 4

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Lkuz;

    if-eqz v1, :cond_1

    :cond_0
    check-cast v0, Lkuz;

    :goto_1
    return-object v0

    :cond_1
    instance-of v1, v0, Lktz;

    if-eqz v1, :cond_2

    new-instance v1, Lkuz;

    check-cast v0, Lktz;

    invoke-virtual {v0}, Lktz;->f()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lkuz;-><init>([B)V

    move-object v0, v1

    goto :goto_1

    :cond_2
    instance-of v1, v0, Lkuh;

    if-eqz v1, :cond_3

    check-cast v0, Lkuh;

    invoke-virtual {v0}, Lkuh;->e()Lkvm;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "illegal object in getInstance: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method final a(Lkvq;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v3, 0x1

    new-array v0, v3, [B

    const/4 v1, 0x0

    iget-byte v2, p0, Lkuz;->a:B

    aput-byte v2, v0, v1

    invoke-virtual {p1, v3, v0}, Lkvq;->a(I[B)V

    return-void
.end method

.method protected final a(Lkvm;)Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lkuz;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-byte v1, p0, Lkuz;->a:B

    check-cast p1, Lkuz;

    iget-byte v2, p1, Lkuz;->a:B

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    iget-byte v0, p0, Lkuz;->a:B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-byte v0, p0, Lkuz;->a:B

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-byte v0, p0, Lkuz;->a:B

    if-eqz v0, :cond_0

    const-string/jumbo v0, "TRUE"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "FALSE"

    goto :goto_0
.end method
