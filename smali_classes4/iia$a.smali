.class public final Liia$a;
.super Ljava/io/FilterOutputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liia;
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

    .line 1901
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1902
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Liia$a;->f:Z

    .line 1903
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Liia$a;->a:Z

    .line 1904
    iget-boolean v0, p0, Liia$a;->a:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    :goto_2
    iput v0, p0, Liia$a;->d:I

    .line 1905
    iget v0, p0, Liia$a;->d:I

    new-array v0, v0, [B

    iput-object v0, p0, Liia$a;->c:[B

    .line 1906
    iput v2, p0, Liia$a;->b:I

    .line 1907
    iput v2, p0, Liia$a;->e:I

    .line 1908
    iput-boolean v2, p0, Liia$a;->h:Z

    .line 1909
    new-array v0, v3, [B

    iput-object v0, p0, Liia$a;->g:[B

    .line 1910
    iput p2, p0, Liia$a;->i:I

    .line 1911
    invoke-static {p2}, Liia;->a(I)[B

    move-result-object v0

    iput-object v0, p0, Liia$a;->j:[B

    .line 1912
    return-void

    :cond_0
    move v0, v2

    .line 1902
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1903
    goto :goto_1

    :cond_2
    move v0, v3

    .line 1904
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

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 2026
    .line 3005
    iget v0, p0, Liia$a;->b:I

    if-lez v0, :cond_0

    .line 3006
    iget-boolean v0, p0, Liia$a;->a:Z

    if-eqz v0, :cond_1

    .line 3007
    iget-object v0, p0, Liia$a;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Liia$a;->g:[B

    iget-object v2, p0, Liia$a;->c:[B

    iget v3, p0, Liia$a;->b:I

    iget v4, p0, Liia$a;->i:I

    invoke-static {v1, v2, v3, v4}, Liia;->a([B[BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 3008
    const/4 v0, 0x0

    iput v0, p0, Liia$a;->b:I

    .line 2030
    :cond_0
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 2032
    iput-object v5, p0, Liia$a;->c:[B

    .line 2033
    iput-object v5, p0, Liia$a;->out:Ljava/io/OutputStream;

    .line 2034
    return-void

    .line 3011
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

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, -0x5

    const/4 v6, 0x0

    .line 1937
    iget-boolean v1, p0, Liia$a;->a:Z

    if-eqz v1, :cond_2

    .line 1938
    iget-object v1, p0, Liia$a;->c:[B

    iget v2, p0, Liia$a;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Liia$a;->b:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 1939
    iget v1, p0, Liia$a;->b:I

    iget v2, p0, Liia$a;->d:I

    if-lt v1, v2, :cond_1

    .line 1941
    iget-object v1, p0, Liia$a;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Liia$a;->g:[B

    iget-object v3, p0, Liia$a;->c:[B

    iget v4, p0, Liia$a;->d:I

    iget v5, p0, Liia$a;->i:I

    invoke-static {v2, v3, v4, v5}, Liia;->a([B[BII)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 1943
    iget v1, p0, Liia$a;->e:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Liia$a;->e:I

    .line 1944
    iget-boolean v1, p0, Liia$a;->f:Z

    if-eqz v1, :cond_0

    iget v1, p0, Liia$a;->e:I

    const/16 v2, 0x4c

    if-lt v1, v2, :cond_0

    .line 1945
    iget-object v1, p0, Liia$a;->out:Ljava/io/OutputStream;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 1946
    iput v6, p0, Liia$a;->e:I

    .line 1949
    :cond_0
    iput v6, p0, Liia$a;->b:I

    .line 1969
    :cond_1
    :goto_0
    return-void

    .line 1956
    :cond_2
    iget-object v1, p0, Liia$a;->j:[B

    and-int/lit8 v2, p1, 0x7f

    aget-byte v1, v1, v2

    if-le v1, v3, :cond_3

    .line 1957
    iget-object v1, p0, Liia$a;->c:[B

    iget v2, p0, Liia$a;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Liia$a;->b:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 1958
    iget v1, p0, Liia$a;->b:I

    iget v2, p0, Liia$a;->d:I

    if-lt v1, v2, :cond_1

    .line 1960
    iget-object v1, p0, Liia$a;->c:[B

    iget-object v2, p0, Liia$a;->g:[B

    iget v3, p0, Liia$a;->i:I

    invoke-static {v1, v6, v2, v6, v3}, Liia;->a([BI[BII)I

    move-result v0

    .line 1961
    .local v0, "len":I
    iget-object v1, p0, Liia$a;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Liia$a;->g:[B

    invoke-virtual {v1, v2, v6, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 1962
    iput v6, p0, Liia$a;->b:I

    goto :goto_0

    .line 1965
    .end local v0    # "len":I
    :cond_3
    iget-object v1, p0, Liia$a;->j:[B

    and-int/lit8 v2, p1, 0x7f

    aget-byte v1, v1, v2

    if-eq v1, v3, :cond_1

    .line 1966
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

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1991
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 1992
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Liia$a;->write(I)V

    .line 1991
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1995
    :cond_0
    return-void
.end method
