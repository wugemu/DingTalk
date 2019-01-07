.class public final Lksx;
.super Ljava/lang/Object;
.source "ByteArrayBuffer.java"

# interfaces
.implements Lksy;


# instance fields
.field public a:[B

.field public b:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    if-gez p1, :cond_0

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Buffer capacity may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    new-array v0, p1, [B

    iput-object v0, p0, Lksx;->a:[B

    .line 37
    return-void
.end method

.method private d(I)V
    .locals 4
    .param p1, "newlen"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 60
    iget-object v1, p0, Lksx;->a:[B

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v0, v1, [B

    .line 61
    .local v0, "newbuffer":[B
    iget-object v1, p0, Lksx;->a:[B

    iget v2, p0, Lksx;->b:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    iput-object v0, p0, Lksx;->a:[B

    .line 63
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4
    .param p1, "b"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 85
    iget v1, p0, Lksx;->b:I

    add-int/lit8 v0, v1, 0x1

    .line 86
    .local v0, "newlen":I
    iget-object v1, p0, Lksx;->a:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 87
    invoke-direct {p0, v0}, Lksx;->d(I)V

    .line 89
    :cond_0
    iget-object v1, p0, Lksx;->a:[B

    iget v2, p0, Lksx;->b:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 90
    iput v0, p0, Lksx;->b:I

    .line 91
    return-void
.end method

.method public final a(II)V
    .locals 5
    .param p1, "off"    # I
    .param p2, "len"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 154
    iget v1, p0, Lksx;->b:I

    if-ltz v1, :cond_0

    if-ltz p2, :cond_0

    add-int/lit8 v1, p2, 0x0

    if-ltz v1, :cond_0

    add-int/lit8 v1, p2, 0x0

    iget v2, p0, Lksx;->b:I

    if-le v1, v2, :cond_1

    .line 156
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 158
    :cond_1
    if-nez p2, :cond_2

    .line 166
    :goto_0
    return-void

    .line 161
    :cond_2
    iget v1, p0, Lksx;->b:I

    add-int/lit8 v1, v1, 0x0

    sub-int v0, v1, p2

    .line 162
    .local v0, "remaining":I
    if-lez v0, :cond_3

    .line 163
    iget-object v1, p0, Lksx;->a:[B

    add-int/lit8 v2, p2, 0x0

    iget-object v3, p0, Lksx;->a:[B

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    :cond_3
    iget v1, p0, Lksx;->b:I

    sub-int/2addr v1, p2

    iput v1, p0, Lksx;->b:I

    goto :goto_0
.end method

.method public final a([BII)V
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 66
    if-nez p1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    if-ltz p2, :cond_2

    array-length v1, p1

    if-gt p2, v1, :cond_2

    if-ltz p3, :cond_2

    add-int v1, p2, p3

    if-ltz v1, :cond_2

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_3

    .line 71
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 73
    :cond_3
    if-eqz p3, :cond_0

    .line 76
    iget v1, p0, Lksx;->b:I

    add-int v0, v1, p3

    .line 77
    .local v0, "newlen":I
    iget-object v1, p0, Lksx;->a:[B

    array-length v1, v1

    if-le v0, v1, :cond_4

    .line 78
    invoke-direct {p0, v0}, Lksx;->d(I)V

    .line 80
    :cond_4
    iget-object v1, p0, Lksx;->a:[B

    iget v2, p0, Lksx;->b:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    iput v0, p0, Lksx;->b:I

    goto :goto_0
.end method

.method public final a()[B
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 98
    iget v1, p0, Lksx;->b:I

    new-array v0, v1, [B

    .line 99
    .local v0, "b":[B
    iget v1, p0, Lksx;->b:I

    if-lez v1, :cond_0

    .line 100
    iget-object v1, p0, Lksx;->a:[B

    iget v2, p0, Lksx;->b:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    :cond_0
    return-object v0
.end method

.method public final b(I)B
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 106
    if-ltz p1, :cond_0

    iget v0, p0, Lksx;->b:I

    if-lt p1, v0, :cond_1

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 109
    :cond_1
    iget-object v0, p0, Lksx;->a:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lksx;->b:I

    return v0
.end method

.method public final c(I)V
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 147
    if-ltz p1, :cond_0

    iget-object v0, p0, Lksx;->a:[B

    array-length v0, v0

    if-le p1, v0, :cond_1

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 150
    :cond_1
    iput p1, p0, Lksx;->b:I

    .line 151
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 178
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lksx;->a()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
