.class public final Lhuu$a;
.super Ljava/io/FilterOutputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:[B

.field private d:I

.field private e:I

.field private f:Z

.field private g:[B

.field private h:Z

.field private i:I

.field private j:[B


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "options"    # I

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2099
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2100
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lhuu$a;->f:Z

    .line 2101
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lhuu$a;->a:Z

    .line 2102
    iget-boolean v0, p0, Lhuu$a;->a:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    :goto_2
    iput v0, p0, Lhuu$a;->d:I

    .line 2103
    iget v0, p0, Lhuu$a;->d:I

    new-array v0, v0, [B

    iput-object v0, p0, Lhuu$a;->c:[B

    .line 2104
    iput v2, p0, Lhuu$a;->b:I

    .line 2105
    iput v2, p0, Lhuu$a;->e:I

    .line 2106
    iput-boolean v2, p0, Lhuu$a;->h:Z

    .line 2107
    new-array v0, v3, [B

    iput-object v0, p0, Lhuu$a;->g:[B

    .line 2108
    iput p2, p0, Lhuu$a;->i:I

    .line 2109
    invoke-static {p2}, Lhuu;->a(I)[B

    move-result-object v0

    iput-object v0, p0, Lhuu$a;->j:[B

    .line 2110
    return-void

    :cond_0
    move v0, v2

    .line 2100
    goto :goto_0

    :cond_1
    move v1, v2

    .line 2101
    goto :goto_1

    :cond_2
    move v0, v3

    .line 2102
    goto :goto_2
.end method


# virtual methods
.method public final close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 2222
    .line 3201
    iget v0, p0, Lhuu$a;->b:I

    if-lez v0, :cond_0

    .line 3202
    iget-boolean v0, p0, Lhuu$a;->a:Z

    if-eqz v0, :cond_1

    .line 3203
    iget-object v0, p0, Lhuu$a;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lhuu$a;->g:[B

    iget-object v2, p0, Lhuu$a;->c:[B

    iget v3, p0, Lhuu$a;->b:I

    iget v4, p0, Lhuu$a;->i:I

    invoke-static {v1, v2, v3, v4}, Lhuu;->a([B[BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 3204
    const/4 v0, 0x0

    iput v0, p0, Lhuu$a;->b:I

    .line 2226
    :cond_0
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 2228
    iput-object v5, p0, Lhuu$a;->c:[B

    .line 2229
    iput-object v5, p0, Lhuu$a;->out:Ljava/io/OutputStream;

    .line 2230
    return-void

    .line 3207
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Base64 input not properly padded."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final write(I)V
    .locals 7
    .param p1, "theByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, -0x5

    const/4 v6, 0x0

    .line 2131
    iget-boolean v1, p0, Lhuu$a;->a:Z

    if-eqz v1, :cond_2

    .line 2132
    iget-object v1, p0, Lhuu$a;->c:[B

    iget v2, p0, Lhuu$a;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lhuu$a;->b:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 2133
    iget v1, p0, Lhuu$a;->b:I

    iget v2, p0, Lhuu$a;->d:I

    if-lt v1, v2, :cond_1

    .line 2135
    iget-object v1, p0, Lhuu$a;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lhuu$a;->g:[B

    iget-object v3, p0, Lhuu$a;->c:[B

    iget v4, p0, Lhuu$a;->d:I

    iget v5, p0, Lhuu$a;->i:I

    invoke-static {v2, v3, v4, v5}, Lhuu;->a([B[BII)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 2137
    iget v1, p0, Lhuu$a;->e:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lhuu$a;->e:I

    .line 2138
    iget-boolean v1, p0, Lhuu$a;->f:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lhuu$a;->e:I

    const/16 v2, 0x4c

    if-lt v1, v2, :cond_0

    .line 2139
    iget-object v1, p0, Lhuu$a;->out:Ljava/io/OutputStream;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 2140
    iput v6, p0, Lhuu$a;->e:I

    .line 2143
    :cond_0
    iput v6, p0, Lhuu$a;->b:I

    .line 2164
    :cond_1
    :goto_0
    return-void

    .line 2150
    :cond_2
    iget-object v1, p0, Lhuu$a;->j:[B

    and-int/lit8 v2, p1, 0x7f

    aget-byte v1, v1, v2

    if-le v1, v3, :cond_3

    .line 2151
    iget-object v1, p0, Lhuu$a;->c:[B

    iget v2, p0, Lhuu$a;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lhuu$a;->b:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 2152
    iget v1, p0, Lhuu$a;->b:I

    iget v2, p0, Lhuu$a;->d:I

    if-lt v1, v2, :cond_1

    .line 2154
    iget-object v1, p0, Lhuu$a;->c:[B

    iget-object v2, p0, Lhuu$a;->g:[B

    iget v3, p0, Lhuu$a;->i:I

    invoke-static {v1, v6, v2, v6, v3}, Lhuu;->a([BI[BII)I

    move-result v0

    .line 2155
    .local v0, "len":I
    iget-object v1, p0, Lhuu$a;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lhuu$a;->g:[B

    invoke-virtual {v1, v2, v6, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 2156
    iput v6, p0, Lhuu$a;->b:I

    goto :goto_0

    .line 2159
    .end local v0    # "len":I
    :cond_3
    iget-object v1, p0, Lhuu$a;->j:[B

    and-int/lit8 v2, p1, 0x7f

    aget-byte v1, v1, v2

    if-eq v1, v3, :cond_1

    .line 2160
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Invalid character in Base64 data."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final write([BII)V
    .locals 2
    .param p1, "theBytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 2187
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 2188
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lhuu$a;->write(I)V

    .line 2187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2191
    :cond_0
    return-void
.end method
