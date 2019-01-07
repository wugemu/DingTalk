.class public abstract Lkuh;
.super Lkty;

# interfaces
.implements Lkui;


# instance fields
.field public a:I

.field b:Z

.field public c:Z

.field d:Lkva;


# direct methods
.method public constructor <init>(ILkva;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lkty;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lkuh;->b:Z

    iput-boolean v1, p0, Lkuh;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lkuh;->d:Lkva;

    iput-boolean v1, p0, Lkuh;->c:Z

    iput p1, p0, Lkuh;->a:I

    iput-object p2, p0, Lkuh;->d:Lkva;

    return-void
.end method

.method public constructor <init>(ZILkva;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lkty;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lkuh;->b:Z

    iput-boolean v1, p0, Lkuh;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lkuh;->d:Lkva;

    instance-of v0, p3, Lktt;

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lkuh;->c:Z

    :goto_0
    iput p2, p0, Lkuh;->a:I

    iput-object p3, p0, Lkuh;->d:Lkva;

    return-void

    :cond_0
    iput-boolean p1, p0, Lkuh;->c:Z

    goto :goto_0
.end method


# virtual methods
.method abstract a(Lkvq;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final a(Lkvm;)Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v0, 0x0

    instance-of v1, p1, Lkuh;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lkuh;

    iget v1, p0, Lkuh;->a:I

    iget v2, p1, Lkuh;->a:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lkuh;->c:Z

    iget-boolean v2, p1, Lkuh;->c:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lkuh;->d:Lkva;

    if-nez v1, :cond_3

    iget-object v1, p1, Lkuh;->d:Lkva;

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lkuh;->d:Lkva;

    invoke-interface {v1}, Lkva;->c()Lkvm;

    move-result-object v1

    iget-object v2, p1, Lkuh;->d:Lkva;

    invoke-interface {v2}, Lkva;->c()Lkvm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkvm;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0
.end method

.method public final e()Lkvm;
    .locals 1

    iget-object v0, p0, Lkuh;->d:Lkva;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkuh;->d:Lkva;

    invoke-interface {v0}, Lkva;->c()Lkvm;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    iget v0, p0, Lkuh;->a:I

    iget-object v1, p0, Lkuh;->d:Lkva;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lkuh;->d:Lkva;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lkuh;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lkuh;->d:Lkva;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
