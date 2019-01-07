.class public abstract Lkty;
.super Lkvm;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkvm;-><init>()V

    return-void
.end method

.method public static a([B)Lkty;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lktw;

    invoke-direct {v0, p0}, Lktw;-><init>([B)V

    invoke-virtual {v0}, Lktw;->a()Lkvm;

    move-result-object v0

    check-cast v0, Lkty;

    return-object v0
.end method


# virtual methods
.method abstract a(Lkvq;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract a(Lkvm;)Z
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lkva;

    if-eqz v1, :cond_2

    check-cast p1, Lkva;

    invoke-interface {p1}, Lkva;->c()Lkvm;

    move-result-object v1

    invoke-virtual {p0, v1}, Lkty;->a(Lkvm;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract hashCode()I
.end method
