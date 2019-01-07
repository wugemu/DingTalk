.class public Lvm;
.super Ljava/io/FilterInputStream;
.source "QPDecoderStream.java"


# instance fields
.field protected a:[B

.field protected b:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x2

    .line 67
    new-instance v0, Ljava/io/PushbackInputStream;

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 58
    new-array v0, v1, [B

    iput-object v0, p0, Lvm;->a:[B

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lvm;->b:I

    .line 68
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lvm;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/16 v8, 0xd

    const/16 v3, 0x20

    const/16 v7, 0xa

    const/4 v6, 0x0

    const/4 v4, -0x1

    .line 83
    iget v5, p0, Lvm;->b:I

    if-lez v5, :cond_1

    .line 85
    iget v4, p0, Lvm;->b:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lvm;->b:I

    move v2, v3

    .line 148
    :cond_0
    :goto_0
    return v2

    .line 89
    :cond_1
    iget-object v5, p0, Lvm;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 91
    .local v2, "c":I
    if-ne v2, v3, :cond_5

    .line 93
    :goto_1
    iget-object v5, p0, Lvm;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 94
    iget v5, p0, Lvm;->b:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lvm;->b:I

    goto :goto_1

    .line 96
    :cond_2
    if-eq v2, v8, :cond_3

    if-eq v2, v7, :cond_3

    if-ne v2, v4, :cond_4

    .line 99
    :cond_3
    iput v6, p0, Lvm;->b:I

    goto :goto_0

    .line 102
    :cond_4
    iget-object v3, p0, Lvm;->in:Ljava/io/InputStream;

    check-cast v3, Ljava/io/PushbackInputStream;

    invoke-virtual {v3, v2}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 103
    const/16 v2, 0x20

    goto :goto_0

    .line 107
    :cond_5
    const/16 v3, 0x3d

    if-ne v2, v3, :cond_0

    .line 109
    iget-object v3, p0, Lvm;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 111
    .local v0, "a":I
    if-ne v0, v7, :cond_6

    .line 117
    invoke-virtual {p0}, Lvm;->read()I

    move-result v2

    goto :goto_0

    .line 118
    :cond_6
    if-ne v0, v8, :cond_8

    .line 120
    iget-object v3, p0, Lvm;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 121
    .local v1, "b":I
    if-eq v1, v7, :cond_7

    .line 125
    iget-object v3, p0, Lvm;->in:Ljava/io/InputStream;

    check-cast v3, Ljava/io/PushbackInputStream;

    invoke-virtual {v3, v1}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 126
    :cond_7
    invoke-virtual {p0}, Lvm;->read()I

    move-result v2

    goto :goto_0

    .line 127
    .end local v1    # "b":I
    :cond_8
    if-ne v0, v4, :cond_9

    move v2, v4

    .line 129
    goto :goto_0

    .line 131
    :cond_9
    iget-object v3, p0, Lvm;->a:[B

    int-to-byte v4, v0

    aput-byte v4, v3, v6

    .line 132
    iget-object v3, p0, Lvm;->a:[B

    const/4 v4, 0x1

    iget-object v5, p0, Lvm;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 134
    :try_start_0
    iget-object v3, p0, Lvm;->a:[B

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/16 v6, 0x10

    invoke-static {v3, v4, v5, v6}, Lvb;->a([BIII)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 143
    :catch_0
    move-exception v3

    iget-object v3, p0, Lvm;->in:Ljava/io/InputStream;

    check-cast v3, Ljava/io/PushbackInputStream;

    iget-object v4, p0, Lvm;->a:[B

    invoke-virtual {v3, v4}, Ljava/io/PushbackInputStream;->unread([B)V

    goto/16 :goto_0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 167
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 168
    invoke-virtual {p0}, Lvm;->read()I

    move-result v0

    .local v0, "c":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 169
    if-nez v1, :cond_0

    .line 170
    const/4 v1, -0x1

    .line 175
    .end local v0    # "c":I
    :cond_0
    return v1

    .line 173
    .restart local v0    # "c":I
    :cond_1
    add-int v2, p2, v1

    int-to-byte v3, v0

    aput-byte v3, p1, v2

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
