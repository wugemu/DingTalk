.class public final Lkvd;
.super Lkty;


# instance fields
.field public a:Lkvn;

.field public b:Lkvj;

.field public c:Lkty;

.field public d:I

.field public e:Lkvm;


# direct methods
.method public constructor <init>(Lktv;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 0
    invoke-direct {p0}, Lkty;-><init>()V

    invoke-virtual {p1, v2}, Lktv;->a(I)Lkva;

    move-result-object v0

    invoke-interface {v0}, Lkva;->c()Lkvm;

    move-result-object v0

    instance-of v3, v0, Lkvn;

    if-eqz v3, :cond_5

    check-cast v0, Lkvn;

    iput-object v0, p0, Lkvd;->a:Lkvn;

    invoke-virtual {p1, v1}, Lktv;->a(I)Lkva;

    move-result-object v0

    invoke-interface {v0}, Lkva;->c()Lkvm;

    move-result-object v0

    :goto_0
    instance-of v2, v0, Lkvj;

    if-eqz v2, :cond_0

    check-cast v0, Lkvj;

    iput-object v0, p0, Lkvd;->b:Lkvj;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Lktv;->a(I)Lkva;

    move-result-object v0

    invoke-interface {v0}, Lkva;->c()Lkvm;

    move-result-object v0

    :cond_0
    instance-of v2, v0, Lkvy;

    if-nez v2, :cond_1

    check-cast v0, Lkty;

    iput-object v0, p0, Lkvd;->c:Lkty;

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v0}, Lktv;->a(I)Lkva;

    move-result-object v0

    invoke-interface {v0}, Lkva;->c()Lkvm;

    move-result-object v0

    :cond_1
    instance-of v1, v0, Lkvy;

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No tagged object found in vector. Structure doesn\'t seem to be of type External"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    check-cast v0, Lkvy;

    .line 1000
    iget v1, v0, Lkuh;->a:I

    .line 2000
    if-ltz v1, :cond_3

    const/4 v2, 0x2

    if-le v1, v2, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "invalid encoding value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iput v1, p0, Lkvd;->d:I

    .line 0
    invoke-virtual {v0}, Lkvy;->e()Lkvm;

    move-result-object v0

    iput-object v0, p0, Lkvd;->e:Lkvm;

    return-void

    :cond_5
    move v1, v2

    goto :goto_0
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

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lkvd;->a:Lkvn;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lkvd;->a:Lkvn;

    invoke-virtual {v1}, Lkvn;->b()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_0
    iget-object v1, p0, Lkvd;->b:Lkvj;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lkvd;->b:Lkvj;

    invoke-virtual {v1}, Lkvj;->b()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_1
    iget-object v1, p0, Lkvd;->c:Lkty;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lkvd;->c:Lkty;

    invoke-virtual {v1}, Lkty;->b()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_2
    new-instance v1, Lkvy;

    iget v2, p0, Lkvd;->d:I

    iget-object v3, p0, Lkvd;->e:Lkvm;

    invoke-direct {v1, v2, v3}, Lkvy;-><init>(ILkva;)V

    invoke-virtual {v1}, Lkvy;->b()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/16 v1, 0x20

    const/16 v2, 0x8

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0}, Lkvq;->a(II[B)V

    return-void
.end method

.method final a(Lkvm;)Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v0, 0x0

    instance-of v1, p1, Lkvd;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p0, p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    check-cast p1, Lkvd;

    iget-object v1, p0, Lkvd;->a:Lkvn;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lkvd;->a:Lkvn;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lkvd;->a:Lkvn;

    iget-object v2, p0, Lkvd;->a:Lkvn;

    invoke-virtual {v1, v2}, Lkvn;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    iget-object v1, p0, Lkvd;->b:Lkvj;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lkvd;->b:Lkvj;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lkvd;->b:Lkvj;

    iget-object v2, p0, Lkvd;->b:Lkvj;

    invoke-virtual {v1, v2}, Lkvj;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    iget-object v1, p0, Lkvd;->c:Lkty;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lkvd;->c:Lkty;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lkvd;->c:Lkty;

    iget-object v2, p0, Lkvd;->c:Lkty;

    invoke-virtual {v1, v2}, Lkty;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    iget-object v0, p0, Lkvd;->e:Lkvm;

    iget-object v1, p1, Lkvd;->e:Lkvm;

    invoke-virtual {v0, v1}, Lkvm;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v0, 0x0

    iget-object v1, p0, Lkvd;->a:Lkvn;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lkvd;->a:Lkvn;

    invoke-virtual {v0}, Lkvn;->hashCode()I

    move-result v0

    :cond_0
    iget-object v1, p0, Lkvd;->b:Lkvj;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lkvd;->b:Lkvj;

    invoke-virtual {v1}, Lkvj;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lkvd;->c:Lkty;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lkvd;->c:Lkty;

    invoke-virtual {v1}, Lkty;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lkvd;->e:Lkvm;

    invoke-virtual {v1}, Lkvm;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
