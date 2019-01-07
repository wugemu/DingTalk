.class public final Lvl;
.super Lvm;
.source "QDecoderStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lvm;-><init>(Ljava/io/InputStream;)V

    .line 61
    return-void
.end method


# virtual methods
.method public final read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 76
    iget-object v2, p0, Lvl;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 78
    .local v0, "c":I
    const/16 v2, 0x5f

    if-ne v0, v2, :cond_1

    .line 79
    const/16 v0, 0x20

    .line 91
    .end local v0    # "c":I
    :cond_0
    :goto_0
    return v0

    .line 80
    .restart local v0    # "c":I
    :cond_1
    const/16 v2, 0x3d

    if-ne v0, v2, :cond_0

    .line 82
    iget-object v2, p0, Lvl;->a:[B

    iget-object v3, p0, Lvl;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 83
    iget-object v2, p0, Lvl;->a:[B

    const/4 v3, 0x1

    iget-object v4, p0, Lvl;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 86
    :try_start_0
    iget-object v2, p0, Lvl;->a:[B

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/16 v5, 0x10

    invoke-static {v2, v3, v4, v5}, Lvb;->a([BIII)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, "nex":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Error in QP stream "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
