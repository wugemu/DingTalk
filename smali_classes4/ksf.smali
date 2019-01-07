.class public final Lksf;
.super Lkse;
.source "LineReaderInputStreamAdaptor.java"


# instance fields
.field public a:Z

.field public b:Z

.field private final c:Lkse;

.field private final d:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "maxLineLen"    # I

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1}, Lkse;-><init>(Ljava/io/InputStream;)V

    .line 37
    iput-boolean v0, p0, Lksf;->a:Z

    .line 38
    iput-boolean v0, p0, Lksf;->b:Z

    .line 44
    instance-of v0, p1, Lkse;

    if-eqz v0, :cond_0

    .line 45
    check-cast p1, Lkse;

    .end local p1    # "is":Ljava/io/InputStream;
    iput-object p1, p0, Lksf;->c:Lkse;

    .line 49
    :goto_0
    iput p2, p0, Lksf;->d:I

    .line 50
    return-void

    .line 47
    .restart local p1    # "is":Ljava/io/InputStream;
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lksf;->c:Lkse;

    goto :goto_0
.end method


# virtual methods
.method public final a(Lksx;)I
    .locals 8
    .param p1, "dst"    # Lksx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/io/MaxLineLimitException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 77
    iget-object v1, p0, Lksf;->c:Lkse;

    if-eqz v1, :cond_2

    .line 78
    iget-object v1, p0, Lksf;->c:Lkse;

    invoke-virtual {v1, p1}, Lkse;->a(Lksx;)I

    move-result v0

    .line 82
    .local v0, "i":I
    :cond_0
    :goto_0
    if-ne v0, v4, :cond_1

    move v2, v3

    :cond_1
    iput-boolean v2, p0, Lksf;->b:Z

    .line 83
    iput-boolean v3, p0, Lksf;->a:Z

    .line 84
    return v0

    .end local v0    # "i":I
    :cond_2
    move v1, v2

    .line 1091
    :cond_3
    iget-object v5, p0, Lksf;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    if-eq v5, v4, :cond_5

    .line 1092
    invoke-virtual {p1, v5}, Lksx;->a(I)V

    .line 1093
    add-int/lit8 v1, v1, 0x1

    .line 1094
    iget v6, p0, Lksf;->d:I

    if-lez v6, :cond_4

    .line 1117
    iget v6, p1, Lksx;->b:I

    .line 1094
    iget v7, p0, Lksf;->d:I

    if-lt v6, v7, :cond_4

    .line 1095
    new-instance v1, Lorg/apache/james/mime4j/io/MaxLineLimitException;

    const-string/jumbo v2, "Maximum line length limit exceeded"

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/io/MaxLineLimitException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1097
    :cond_4
    const/16 v6, 0xa

    if-ne v5, v6, :cond_3

    :cond_5
    move v0, v1

    .line 1101
    if-nez v0, :cond_0

    if-ne v5, v4, :cond_0

    move v0, v4

    .line 1102
    goto :goto_0
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

    .prologue
    const/4 v2, 0x1

    .line 59
    iget-object v1, p0, Lksf;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 60
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lksf;->b:Z

    .line 61
    iput-boolean v2, p0, Lksf;->a:Z

    .line 62
    return v0

    .line 60
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final read([BII)I
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
    const/4 v2, 0x1

    .line 67
    iget-object v1, p0, Lksf;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 68
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lksf;->b:Z

    .line 69
    iput-boolean v2, p0, Lksf;->a:Z

    .line 70
    return v0

    .line 68
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final skip(J)J
    .locals 11
    .param p1, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 132
    cmp-long v3, p1, v6

    if-gtz v3, :cond_1

    move-wide v4, v6

    .line 146
    :cond_0
    return-wide v4

    .line 135
    :cond_1
    const-wide/16 v8, 0x2000

    cmp-long v3, p1, v8

    if-lez v3, :cond_2

    const/16 v1, 0x2000

    .line 136
    .local v1, "bufferSize":I
    :goto_0
    new-array v0, v1, [B

    .line 137
    .local v0, "buffer":[B
    const-wide/16 v4, 0x0

    .line 138
    .local v4, "result":J
    :goto_1
    cmp-long v3, p1, v6

    if-lez v3, :cond_0

    .line 139
    invoke-virtual {p0, v0}, Lksf;->read([B)I

    move-result v2

    .line 140
    .local v2, "res":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 143
    int-to-long v8, v2

    add-long/2addr v4, v8

    .line 144
    int-to-long v8, v2

    sub-long/2addr p1, v8

    .line 145
    goto :goto_1

    .line 135
    .end local v0    # "buffer":[B
    .end local v1    # "bufferSize":I
    .end local v2    # "res":I
    .end local v4    # "result":J
    :cond_2
    long-to-int v1, p1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[LineReaderInputStreamAdaptor: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lksf;->c:Lkse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
