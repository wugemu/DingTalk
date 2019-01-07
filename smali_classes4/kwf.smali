.class final Lkwf;
.super Lkwi;


# instance fields
.field private a:I

.field private c:I

.field private d:Z

.field private e:Z


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lkwi;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lkwf;->d:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkwf;->e:Z

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lkwf;->a:I

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lkwf;->c:I

    iget v0, p0, Lkwf;->c:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lkwf;->a()Z

    return-void
.end method

.method private a()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v1, 0x1

    iget-boolean v0, p0, Lkwf;->d:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lkwf;->e:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lkwf;->a:I

    if-nez v0, :cond_0

    iget v0, p0, Lkwf;->c:I

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lkwf;->d:Z

    invoke-virtual {p0, v1}, Lkwf;->b(Z)V

    :cond_0
    iget-boolean v0, p0, Lkwf;->d:Z

    return v0
.end method


# virtual methods
.method final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lkwf;->e:Z

    invoke-direct {p0}, Lkwf;->a()Z

    return-void
.end method

.method public final read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    invoke-direct {p0}, Lkwf;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lkwf;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v1

    if-gez v1, :cond_1

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_1
    iget v0, p0, Lkwf;->a:I

    iget v2, p0, Lkwf;->c:I

    iput v2, p0, Lkwf;->a:I

    iput v1, p0, Lkwf;->c:I

    goto :goto_0
.end method

.method public final read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    iget-boolean v0, p0, Lkwf;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x3

    if-ge p3, v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lkwi;->read([BII)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lkwf;->d:Z

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lkwf;->b:Ljava/io/InputStream;

    add-int/lit8 v1, p2, 0x2

    add-int/lit8 v2, p3, -0x2

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-gez v0, :cond_3

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_3
    iget v1, p0, Lkwf;->a:I

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 v1, p2, 0x1

    iget v2, p0, Lkwf;->c:I

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    iget-object v1, p0, Lkwf;->b:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    iput v1, p0, Lkwf;->a:I

    iget-object v1, p0, Lkwf;->b:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    iput v1, p0, Lkwf;->c:I

    iget v1, p0, Lkwf;->c:I

    if-gez v1, :cond_4

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_4
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method
