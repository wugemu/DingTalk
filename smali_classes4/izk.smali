.class public final Lizk;
.super Ljava/lang/Object;
.source "StreamInput.java"

# interfaces
.implements Lizj;


# instance fields
.field private final a:Ljava/io/InputStream;

.field private b:[B

.field private c:Ljava/nio/ByteBuffer;

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "maxInBytes"    # I

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v1, p0, Lizk;->e:I

    .line 16
    iput v1, p0, Lizk;->f:I

    .line 19
    iput-object p1, p0, Lizk;->a:Ljava/io/InputStream;

    .line 20
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lizk;->b:[B

    .line 21
    iget-object v0, p0, Lizk;->b:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lizk;->c:Ljava/nio/ByteBuffer;

    .line 22
    iput v1, p0, Lizk;->d:I

    .line 23
    iput p2, p0, Lizk;->f:I

    .line 24
    return-void
.end method

.method private a(I)V
    .locals 5
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 59
    :goto_0
    iget v1, p0, Lizk;->d:I

    if-ge v1, p1, :cond_1

    .line 60
    iget-object v1, p0, Lizk;->a:Ljava/io/InputStream;

    iget-object v2, p0, Lizk;->b:[B

    iget v3, p0, Lizk;->d:I

    iget v4, p0, Lizk;->d:I

    sub-int v4, p1, v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 61
    .local v0, "n":I
    if-gez v0, :cond_0

    .line 62
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 64
    :cond_0
    iget v1, p0, Lizk;->d:I

    add-int/2addr v1, v0

    iput v1, p0, Lizk;->d:I

    goto :goto_0

    .line 66
    .end local v0    # "n":I
    :cond_1
    return-void
.end method

.method private b(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 109
    iget v0, p0, Lizk;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lizk;->e:I

    .line 110
    return-void
.end method


# virtual methods
.method public final a()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 45
    iget-object v1, p0, Lizk;->a:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 46
    .local v0, "n":I
    if-gez v0, :cond_0

    .line 47
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 1113
    :cond_0
    iget v1, p0, Lizk;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lizk;->e:I

    .line 50
    int-to-byte v1, v0

    return v1
.end method

.method public final a([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 31
    move v1, p3

    .line 32
    .local v1, "remain":I
    :goto_0
    if-lez v1, :cond_1

    .line 33
    iget-object v2, p0, Lizk;->a:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 34
    .local v0, "n":I
    if-gtz v0, :cond_0

    .line 35
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 37
    :cond_0
    invoke-direct {p0, v0}, Lizk;->b(I)V

    .line 38
    sub-int/2addr v1, v0

    .line 39
    add-int/2addr p2, v0

    .line 40
    goto :goto_0

    .line 41
    .end local v0    # "n":I
    :cond_1
    return p3
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lizk;->d:I

    invoke-direct {p0, v0}, Lizk;->b(I)V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lizk;->d:I

    .line 56
    return-void
.end method

.method public final c()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 74
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lizk;->a(I)V

    .line 75
    iget-object v0, p0, Lizk;->c:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    return v0
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lizk;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 118
    return-void
.end method

.method public final d()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 79
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lizk;->a(I)V

    .line 80
    iget-object v0, p0, Lizk;->c:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public final e()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 84
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lizk;->a(I)V

    .line 85
    iget-object v0, p0, Lizk;->c:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 89
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lizk;->a(I)V

    .line 90
    iget-object v0, p0, Lizk;->c:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public final g()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 94
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lizk;->a(I)V

    .line 95
    iget-object v0, p0, Lizk;->c:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public final h()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 27
    iget v0, p0, Lizk;->e:I

    iget v1, p0, Lizk;->f:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
