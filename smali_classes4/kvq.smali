.class public Lkvq;
.super Ljava/io/FilterOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method private a(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    const/16 v0, 0x7f

    if-le p1, v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    move v0, p1

    :goto_0
    ushr-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    or-int/lit16 v0, v1, 0x80

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lkvq;->write(I)V

    add-int/lit8 v0, v1, -0x1

    mul-int/lit8 v0, v0, 0x8

    :goto_1
    if-ltz v0, :cond_2

    shr-int v1, p1, v0

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lkvq;->write(I)V

    add-int/lit8 v0, v0, -0x8

    goto :goto_1

    :cond_1
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lkvq;->write(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lkvq;->write(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lkvq;->write(I)V

    return-void
.end method

.method final a(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v0, 0x4

    const/16 v1, 0x1f

    if-ge p2, v1, :cond_0

    or-int v0, p1, p2

    invoke-virtual {p0, v0}, Lkvq;->write(I)V

    :goto_0
    return-void

    :cond_0
    or-int/lit8 v1, p1, 0x1f

    invoke-virtual {p0, v1}, Lkvq;->write(I)V

    const/16 v1, 0x80

    if-ge p2, v1, :cond_1

    invoke-virtual {p0, p2}, Lkvq;->write(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    new-array v1, v1, [B

    and-int/lit8 v2, p2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    :cond_2
    shr-int/lit8 p2, p2, 0x7

    add-int/lit8 v0, v0, -0x1

    and-int/lit8 v2, p2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    const/16 v2, 0x7f

    if-gt p2, v2, :cond_2

    rsub-int/lit8 v2, v0, 0x5

    invoke-virtual {p0, v1, v0, v2}, Lkvq;->write([BII)V

    goto :goto_0
.end method

.method final a(II[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lkvq;->a(II)V

    array-length v0, p3

    invoke-direct {p0, v0}, Lkvq;->a(I)V

    invoke-virtual {p0, p3}, Lkvq;->write([B)V

    return-void
.end method

.method final a(I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lkvq;->write(I)V

    array-length v0, p2

    invoke-direct {p0, v0}, Lkvq;->a(I)V

    invoke-virtual {p0, p2}, Lkvq;->write([B)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lkvq;->a()V

    :goto_0
    return-void

    :cond_0
    instance-of v0, p1, Lkvm;

    if-eqz v0, :cond_1

    check-cast p1, Lkvm;

    invoke-virtual {p1, p0}, Lkvm;->a(Lkvq;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lkva;

    if-eqz v0, :cond_2

    check-cast p1, Lkva;

    invoke-interface {p1}, Lkva;->c()Lkvm;

    move-result-object v0

    invoke-virtual {v0, p0}, Lkvm;->a(Lkvq;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "object not DEREncodable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    iget-object v0, p0, Lkvq;->out:Ljava/io/OutputStream;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lkvq;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
