.class public final Liyk;
.super Ljava/io/OutputStream;
.source "ZOutputStream.java"


# instance fields
.field protected a:Liyl;

.field protected b:I

.field protected c:I

.field protected d:[B

.field protected e:[B

.field protected f:Z

.field protected g:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "level"    # I
    .param p3, "nowrap"    # Z

    .prologue
    const/4 v3, 0x1

    .line 61
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 41
    new-instance v0, Liyl;

    invoke-direct {v0}, Liyl;-><init>()V

    iput-object v0, p0, Liyk;->a:Liyl;

    .line 42
    const/16 v0, 0x200

    iput v0, p0, Liyk;->b:I

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Liyk;->c:I

    .line 44
    iget v0, p0, Liyk;->b:I

    new-array v0, v0, [B

    iput-object v0, p0, Liyk;->d:[B

    new-array v0, v3, [B

    iput-object v0, p0, Liyk;->e:[B

    .line 62
    iput-object p1, p0, Liyk;->g:Ljava/io/OutputStream;

    .line 63
    iget-object v1, p0, Liyk;->a:Liyl;

    .line 2112
    new-instance v0, Liyc;

    invoke-direct {v0}, Liyc;-><init>()V

    iput-object v0, v1, Liyl;->j:Liyc;

    .line 2113
    iget-object v2, v1, Liyl;->j:Liyc;

    const/16 v0, -0xf

    invoke-virtual {v2, v1, v3, v0}, Liyc;->a(Liyl;II)I

    .line 64
    iput-boolean v3, p0, Liyk;->f:Z

    .line 65
    return-void
.end method

.method private a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v5, 0x71

    const/4 v4, 0x0

    .line 120
    iget-object v0, p0, Liyk;->a:Liyl;

    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-boolean v0, p0, Liyk;->f:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Liyk;->a:Liyl;

    .line 2122
    iget-object v1, v0, Liyl;->j:Liyc;

    if-nez v1, :cond_2

    .line 124
    :cond_1
    :goto_1
    iget-object v0, p0, Liyk;->a:Liyl;

    .line 3192
    iput-object v4, v0, Liyl;->a:[B

    .line 3193
    iput-object v4, v0, Liyl;->e:[B

    .line 3194
    iput-object v4, v0, Liyl;->i:Ljava/lang/String;

    .line 3195
    iput-object v4, v0, Liyl;->n:Liyb;

    .line 125
    iput-object v4, p0, Liyk;->a:Liyl;

    goto :goto_0

    .line 2123
    :cond_2
    iget-object v1, v0, Liyl;->j:Liyc;

    .line 2407
    iget v2, v1, Liyc;->d:I

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_4

    iget v2, v1, Liyc;->d:I

    if-eq v2, v5, :cond_4

    iget v2, v1, Liyc;->d:I

    const/16 v3, 0x29a

    if-eq v2, v3, :cond_4

    .line 2124
    :cond_3
    :goto_2
    iput-object v4, v0, Liyl;->j:Liyc;

    goto :goto_1

    .line 2411
    :cond_4
    iput-object v4, v1, Liyc;->e:[B

    .line 2412
    iput-object v4, v1, Liyc;->s:[S

    .line 2413
    iput-object v4, v1, Liyc;->r:[S

    .line 2414
    iput-object v4, v1, Liyc;->p:[B

    .line 2417
    iget v1, v1, Liyc;->d:I

    if-ne v1, v5, :cond_3

    goto :goto_2

    .line 123
    :cond_5
    iget-object v0, p0, Liyk;->a:Liyl;

    .line 3086
    iget-object v1, v0, Liyl;->k:Liyg;

    if-eqz v1, :cond_1

    .line 3087
    iget-object v1, v0, Liyl;->k:Liyg;

    invoke-virtual {v1, v0}, Liyg;->a(Liyl;)I

    .line 3088
    iput-object v4, v0, Liyl;->k:Liyg;

    goto :goto_1
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .param p1, "flush"    # I

    .prologue
    .line 99
    const/4 v0, 0x1

    iput v0, p0, Liyk;->c:I

    .line 100
    return-void
.end method

.method public final close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 129
    .line 4105
    :cond_0
    :try_start_0
    iget-object v0, p0, Liyk;->a:Liyl;

    iget-object v1, p0, Liyk;->d:[B

    iput-object v1, v0, Liyl;->e:[B

    .line 4106
    iget-object v0, p0, Liyk;->a:Liyl;

    const/4 v1, 0x0

    iput v1, v0, Liyl;->f:I

    .line 4107
    iget-object v0, p0, Liyk;->a:Liyl;

    iget v1, p0, Liyk;->b:I

    iput v1, v0, Liyl;->g:I

    .line 4108
    iget-boolean v0, p0, Liyk;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Liyk;->a:Liyl;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Liyl;->b(I)I

    move-result v0

    .line 4110
    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_3

    .line 4111
    new-instance v1, Lcom/jcraft/jzlib/ZStreamException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Liyk;->f:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "de"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "flating: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Liyk;->a:Liyl;

    iget-object v2, v2, Liyl;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jcraft/jzlib/ZStreamException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v0

    .line 133
    :goto_2
    invoke-direct {p0}, Liyk;->a()V

    .line 134
    iget-object v0, p0, Liyk;->g:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 135
    iput-object v5, p0, Liyk;->g:Ljava/io/OutputStream;

    .line 136
    return-void

    .line 4109
    :cond_1
    :try_start_1
    iget-object v0, p0, Liyk;->a:Liyl;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Liyl;->a(I)I

    move-result v0

    goto :goto_0

    .line 4111
    :cond_2
    const-string/jumbo v0, "in"

    goto :goto_1

    .line 4112
    :cond_3
    iget v0, p0, Liyk;->b:I

    iget-object v1, p0, Liyk;->a:Liyl;

    iget v1, v1, Liyl;->g:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_4

    .line 4113
    iget-object v0, p0, Liyk;->g:Ljava/io/OutputStream;

    iget-object v1, p0, Liyk;->d:[B

    const/4 v2, 0x0

    iget v3, p0, Liyk;->b:I

    iget-object v4, p0, Liyk;->a:Liyl;

    iget v4, v4, Liyl;->g:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 4116
    :cond_4
    iget-object v0, p0, Liyk;->a:Liyl;

    iget v0, v0, Liyl;->c:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Liyk;->a:Liyl;

    iget v0, v0, Liyl;->g:I

    if-eqz v0, :cond_0

    .line 4117
    invoke-virtual {p0}, Liyk;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 133
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Liyk;->a()V

    .line 134
    iget-object v1, p0, Liyk;->g:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 135
    iput-object v5, p0, Liyk;->g:Ljava/io/OutputStream;

    throw v0
.end method

.method public final flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Liyk;->g:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 155
    return-void
.end method

.method public final write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 68
    iget-object v0, p0, Liyk;->e:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 69
    iget-object v0, p0, Liyk;->e:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Liyk;->write([BII)V

    .line 70
    return-void
.end method

.method public final write([BII)V
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 73
    if-nez p3, :cond_0

    .line 92
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v1, p0, Liyk;->a:Liyl;

    iput-object p1, v1, Liyl;->a:[B

    .line 77
    iget-object v1, p0, Liyk;->a:Liyl;

    iput p2, v1, Liyl;->b:I

    .line 78
    iget-object v1, p0, Liyk;->a:Liyl;

    iput p3, v1, Liyl;->c:I

    .line 80
    :cond_1
    iget-object v1, p0, Liyk;->a:Liyl;

    iget-object v2, p0, Liyk;->d:[B

    iput-object v2, v1, Liyl;->e:[B

    .line 81
    iget-object v1, p0, Liyk;->a:Liyl;

    iput v5, v1, Liyl;->f:I

    .line 82
    iget-object v1, p0, Liyk;->a:Liyl;

    iget v2, p0, Liyk;->b:I

    iput v2, v1, Liyl;->g:I

    .line 83
    iget-boolean v1, p0, Liyk;->f:Z

    if-eqz v1, :cond_2

    .line 84
    iget-object v1, p0, Liyk;->a:Liyl;

    iget v2, p0, Liyk;->c:I

    invoke-virtual {v1, v2}, Liyl;->b(I)I

    move-result v0

    .line 87
    .local v0, "err":I
    :goto_1
    if-eqz v0, :cond_4

    .line 88
    new-instance v2, Lcom/jcraft/jzlib/ZStreamException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Liyk;->f:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "de"

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "flating: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Liyk;->a:Liyl;

    iget-object v3, v3, Liyl;->i:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/jcraft/jzlib/ZStreamException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    .end local v0    # "err":I
    :cond_2
    iget-object v1, p0, Liyk;->a:Liyl;

    iget v2, p0, Liyk;->c:I

    invoke-virtual {v1, v2}, Liyl;->a(I)I

    move-result v0

    .restart local v0    # "err":I
    goto :goto_1

    .line 88
    :cond_3
    const-string/jumbo v1, "in"

    goto :goto_2

    .line 89
    :cond_4
    iget-object v1, p0, Liyk;->g:Ljava/io/OutputStream;

    iget-object v2, p0, Liyk;->d:[B

    iget v3, p0, Liyk;->b:I

    iget-object v4, p0, Liyk;->a:Liyl;

    iget v4, v4, Liyl;->g:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v5, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 91
    iget-object v1, p0, Liyk;->a:Liyl;

    iget v1, v1, Liyl;->c:I

    if-gtz v1, :cond_1

    iget-object v1, p0, Liyk;->a:Liyl;

    iget v1, v1, Liyl;->g:I

    if-eqz v1, :cond_1

    goto :goto_0
.end method
