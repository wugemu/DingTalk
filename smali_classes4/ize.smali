.class public final Lize;
.super Lizd;
.source "MessagePackPacker.java"


# instance fields
.field protected final a:Lizf;

.field private b:Lizh;


# direct methods
.method public constructor <init>(Lizf;)V
    .locals 1
    .param p1, "out"    # Lizf;

    .prologue
    .line 18
    invoke-direct {p0}, Lizd;-><init>()V

    .line 15
    new-instance v0, Lizh;

    invoke-direct {v0}, Lizh;-><init>()V

    iput-object v0, p0, Lize;->b:Lizh;

    .line 19
    iput-object p1, p0, Lize;->a:Lizf;

    .line 20
    return-void
.end method


# virtual methods
.method public final a()Lizg;
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
    .line 228
    iget-object v0, p0, Lize;->a:Lizf;

    const/16 v1, -0x40

    invoke-interface {v0, v1}, Lizf;->a(B)V

    .line 229
    iget-object v0, p0, Lize;->b:Lizh;

    invoke-virtual {v0}, Lizh;->a()V

    .line 230
    return-object p0
.end method

.method protected final a(B)V
    .locals 2
    .param p1, "d"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 24
    const/16 v0, -0x20

    if-ge p1, v0, :cond_0

    .line 26
    iget-object v0, p0, Lize;->a:Lizf;

    const/16 v1, -0x30

    invoke-interface {v0, v1, p1}, Lizf;->a(BB)V

    .line 30
    :goto_0
    iget-object v0, p0, Lize;->b:Lizh;

    invoke-virtual {v0}, Lizh;->a()V

    .line 31
    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lize;->a:Lizf;

    invoke-interface {v0, p1}, Lizf;->a(B)V

    goto :goto_0
.end method

.method protected final a(D)V
    .locals 3
    .param p1, "d"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lize;->a:Lizf;

    const/16 v1, -0x35

    invoke-interface {v0, v1, p1, p2}, Lizf;->a(BD)V

    .line 167
    iget-object v0, p0, Lize;->b:Lizh;

    invoke-virtual {v0}, Lizh;->a()V

    .line 168
    return-void
.end method

.method protected final a(F)V
    .locals 2
    .param p1, "d"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 159
    iget-object v0, p0, Lize;->a:Lizf;

    const/16 v1, -0x36

    invoke-interface {v0, v1, p1}, Lizf;->a(BF)V

    .line 160
    iget-object v0, p0, Lize;->b:Lizh;

    invoke-virtual {v0}, Lizh;->a()V

    .line 161
    return-void
.end method

.method protected final a(S)V
    .locals 3
    .param p1, "d"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 35
    const/16 v0, -0x20

    if-ge p1, v0, :cond_1

    .line 36
    const/16 v0, -0x80

    if-ge p1, v0, :cond_0

    .line 38
    iget-object v0, p0, Lize;->a:Lizf;

    const/16 v1, -0x2f

    invoke-interface {v0, v1, p1}, Lizf;->a(BS)V

    .line 55
    :goto_0
    iget-object v0, p0, Lize;->b:Lizh;

    invoke-virtual {v0}, Lizh;->a()V

    .line 56
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lize;->a:Lizf;

    const/16 v1, -0x30

    int-to-byte v2, p1

    invoke-interface {v0, v1, v2}, Lizf;->a(BB)V

    goto :goto_0

    .line 43
    :cond_1
    const/16 v0, 0x80

    if-ge p1, v0, :cond_2

    .line 45
    iget-object v0, p0, Lize;->a:Lizf;

    int-to-byte v1, p1

    invoke-interface {v0, v1}, Lizf;->a(B)V

    goto :goto_0

    .line 47
    :cond_2
    const/16 v0, 0x100

    if-ge p1, v0, :cond_3

    .line 49
    iget-object v0, p0, Lize;->a:Lizf;

    const/16 v1, -0x34

    int-to-byte v2, p1

    invoke-interface {v0, v1, v2}, Lizf;->a(BB)V

    goto :goto_0

    .line 52
    :cond_3
    iget-object v0, p0, Lize;->a:Lizf;

    const/16 v1, -0x33

    invoke-interface {v0, v1, p1}, Lizf;->a(BS)V

    goto :goto_0
.end method

.method protected final a(Z)V
    .locals 2
    .param p1, "d"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 172
    if-eqz p1, :cond_0

    .line 174
    iget-object v0, p0, Lize;->a:Lizf;

    const/16 v1, -0x3d

    invoke-interface {v0, v1}, Lizf;->a(B)V

    .line 179
    :goto_0
    iget-object v0, p0, Lize;->b:Lizh;

    invoke-virtual {v0}, Lizh;->a()V

    .line 180
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lize;->a:Lizf;

    const/16 v1, -0x3e

    invoke-interface {v0, v1}, Lizf;->a(B)V

    goto :goto_0
.end method

.method protected final a([BII)V
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
    .line 184
    const/16 v0, 0x20

    if-ge p3, v0, :cond_0

    .line 185
    iget-object v0, p0, Lize;->a:Lizf;

    or-int/lit16 v1, p3, 0xa0

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lizf;->a(B)V

    .line 191
    :goto_0
    iget-object v0, p0, Lize;->a:Lizf;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p3}, Lizf;->a([BII)V

    .line 192
    iget-object v0, p0, Lize;->b:Lizh;

    invoke-virtual {v0}, Lizh;->a()V

    .line 193
    return-void

    .line 186
    :cond_0
    const/high16 v0, 0x10000

    if-ge p3, v0, :cond_1

    .line 187
    iget-object v0, p0, Lize;->a:Lizf;

    const/16 v1, -0x26

    int-to-short v2, p3

    invoke-interface {v0, v1, v2}, Lizf;->a(BS)V

    goto :goto_0

    .line 189
    :cond_1
    iget-object v0, p0, Lize;->a:Lizf;

    const/16 v1, -0x25

    invoke-interface {v0, v1, p3}, Lizf;->a(BI)V

    goto :goto_0
.end method

.method public final b(Z)Lizg;
    .locals 4
    .param p1, "check"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 251
    iget-object v2, p0, Lize;->b:Lizh;

    .line 1071
    iget-object v3, v2, Lizh;->b:[B

    iget v2, v2, Lizh;->a:I

    aget-byte v2, v3, v2

    if-ne v2, v1, :cond_0

    .line 251
    :goto_0
    if-nez v1, :cond_1

    .line 252
    new-instance v1, Lcom/laiwang/idl/msgpacklite/MessageException;

    const-string/jumbo v2, "writeArrayEnd() is called but writeArrayBegin() is not called"

    invoke-direct {v1, v2}, Lcom/laiwang/idl/msgpacklite/MessageException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1071
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 255
    :cond_1
    iget-object v1, p0, Lize;->b:Lizh;

    invoke-virtual {v1}, Lizh;->c()I

    move-result v0

    .line 256
    .local v0, "remain":I
    if-lez v0, :cond_2

    .line 258
    new-instance v1, Lcom/laiwang/idl/msgpacklite/MessageException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "writeArrayEnd(check=true) is called but the array is not end: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/laiwang/idl/msgpacklite/MessageException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 265
    :cond_2
    iget-object v1, p0, Lize;->b:Lizh;

    invoke-virtual {v1}, Lizh;->b()V

    .line 266
    return-object p0
.end method

.method protected final b(I)V
    .locals 3
    .param p1, "d"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 60
    const/16 v0, -0x20

    if-ge p1, v0, :cond_2

    .line 61
    const/16 v0, -0x8000

    if-ge p1, v0, :cond_0

    .line 63
    iget-object v0, p0, Lize;->a:Lizf;

    const/16 v1, -0x2e

    invoke-interface {v0, v1, p1}, Lizf;->a(BI)V

    .line 86
    :goto_0
    iget-object v0, p0, Lize;->b:Lizh;

    invoke-virtual {v0}, Lizh;->a()V

    .line 87
    return-void

    .line 64
    :cond_0
    const/16 v0, -0x80

    if-ge p1, v0, :cond_1

    .line 66
    iget-object v0, p0, Lize;->a:Lizf;

    const/16 v1, -0x2f

    int-to-short v2, p1

    invoke-interface {v0, v1, v2}, Lizf;->a(BS)V

    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Lize;->a:Lizf;

    const/16 v1, -0x30

    int-to-byte v2, p1

    invoke-interface {v0, v1, v2}, Lizf;->a(BB)V

    goto :goto_0

    .line 71
    :cond_2
    const/16 v0, 0x80

    if-ge p1, v0, :cond_3

    .line 73
    iget-object v0, p0, Lize;->a:Lizf;

    int-to-byte v1, p1

    invoke-interface {v0, v1}, Lizf;->a(B)V

    goto :goto_0

    .line 75
    :cond_3
    const/16 v0, 0x100

    if-ge p1, v0, :cond_4

    .line 77
    iget-object v0, p0, Lize;->a:Lizf;

    const/16 v1, -0x34

    int-to-byte v2, p1

    invoke-interface {v0, v1, v2}, Lizf;->a(BB)V

    goto :goto_0

    .line 78
    :cond_4
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_5

    .line 80
    iget-object v0, p0, Lize;->a:Lizf;

    const/16 v1, -0x33

    int-to-short v2, p1

    invoke-interface {v0, v1, v2}, Lizf;->a(BS)V

    goto :goto_0

    .line 83
    :cond_5
    iget-object v0, p0, Lize;->a:Lizf;

    const/16 v1, -0x32

    invoke-interface {v0, v1, p1}, Lizf;->a(BI)V

    goto :goto_0
.end method

.method protected final b(J)V
    .locals 3
    .param p1, "d"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    const-wide/16 v0, -0x20

    cmp-long v0, p1, v0

    if-gez v0, :cond_3

    .line 92
    const-wide/16 v0, -0x8000

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 93
    const-wide/32 v0, -0x80000000

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 95
    iget-object v0, p0, Lize;->a:Lizf;

    const/16 v1, -0x2d

    invoke-interface {v0, v1, p1, p2}, Lizf;->a(BJ)V

    .line 131
    :goto_0
    iget-object v0, p0, Lize;->b:Lizh;

    invoke-virtual {v0}, Lizh;->a()V

    .line 132
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lize;->a:Lizf;

    const/16 v1, -0x2e

    long-to-int v2, p1

    invoke-interface {v0, v1, v2}, Lizf;->a(BI)V

    goto :goto_0

    .line 101
    :cond_1
    const-wide/16 v0, -0x80

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 103
    iget-object v0, p0, Lize;->a:Lizf;

    const/16 v1, -0x2f

    long-to-int v2, p1

    int-to-short v2, v2

    invoke-interface {v0, v1, v2}, Lizf;->a(BS)V

    goto :goto_0

    .line 106
    :cond_2
    iget-object v0, p0, Lize;->a:Lizf;

    const/16 v1, -0x30

    long-to-int v2, p1

    int-to-byte v2, v2

    invoke-interface {v0, v1, v2}, Lizf;->a(BB)V

    goto :goto_0

    .line 109
    :cond_3
    const-wide/16 v0, 0x80

    cmp-long v0, p1, v0

    if-gez v0, :cond_4

    .line 111
    iget-object v0, p0, Lize;->a:Lizf;

    long-to-int v1, p1

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lizf;->a(B)V

    goto :goto_0

    .line 113
    :cond_4
    const-wide/32 v0, 0x10000

    cmp-long v0, p1, v0

    if-gez v0, :cond_6

    .line 114
    const-wide/16 v0, 0x100

    cmp-long v0, p1, v0

    if-gez v0, :cond_5

    .line 116
    iget-object v0, p0, Lize;->a:Lizf;

    const/16 v1, -0x34

    long-to-int v2, p1

    int-to-byte v2, v2

    invoke-interface {v0, v1, v2}, Lizf;->a(BB)V

    goto :goto_0

    .line 119
    :cond_5
    iget-object v0, p0, Lize;->a:Lizf;

    const/16 v1, -0x33

    long-to-int v2, p1

    int-to-short v2, v2

    invoke-interface {v0, v1, v2}, Lizf;->a(BS)V

    goto :goto_0

    .line 122
    :cond_6
    const-wide v0, 0x100000000L

    cmp-long v0, p1, v0

    if-gez v0, :cond_7

    .line 124
    iget-object v0, p0, Lize;->a:Lizf;

    const/16 v1, -0x32

    long-to-int v2, p1

    invoke-interface {v0, v1, v2}, Lizf;->a(BI)V

    goto :goto_0

    .line 127
    :cond_7
    iget-object v0, p0, Lize;->a:Lizf;

    const/16 v1, -0x31

    invoke-interface {v0, v1, p1, p2}, Lizf;->a(BJ)V

    goto :goto_0
.end method

.method protected final b(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 218
    :try_start_0
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 222
    .local v0, "b":[B
    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {p0, v0, v2, v3}, Lize;->a([BII)V

    .line 223
    iget-object v2, p0, Lize;->b:Lizh;

    invoke-virtual {v2}, Lizh;->a()V

    .line 224
    return-void

    .line 219
    .end local v0    # "b":[B
    :catch_0
    move-exception v1

    .line 220
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lcom/laiwang/idl/msgpacklite/MessageException;

    invoke-direct {v2, v1}, Lcom/laiwang/idl/msgpacklite/MessageException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final c(I)Lizg;
    .locals 4
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 236
    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    .line 238
    iget-object v0, p0, Lize;->a:Lizf;

    or-int/lit16 v1, p1, 0x90

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lizf;->a(B)V

    .line 244
    :goto_0
    iget-object v0, p0, Lize;->b:Lizh;

    invoke-virtual {v0}, Lizh;->a()V

    .line 245
    iget-object v0, p0, Lize;->b:Lizh;

    .line 1024
    iget v1, v0, Lizh;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lizh;->a:I

    .line 1025
    iget-object v1, v0, Lizh;->b:[B

    iget v2, v0, Lizh;->a:I

    const/4 v3, 0x1

    aput-byte v3, v1, v2

    .line 1026
    iget-object v1, v0, Lizh;->c:[I

    iget v0, v0, Lizh;->a:I

    aput p1, v1, v0

    .line 246
    return-object p0

    .line 239
    :cond_0
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_1

    .line 240
    iget-object v0, p0, Lize;->a:Lizf;

    const/16 v1, -0x24

    int-to-short v2, p1

    invoke-interface {v0, v1, v2}, Lizf;->a(BS)V

    goto :goto_0

    .line 242
    :cond_1
    iget-object v0, p0, Lize;->a:Lizf;

    const/16 v1, -0x23

    invoke-interface {v0, v1, p1}, Lizf;->a(BI)V

    goto :goto_0
.end method

.method public final c(Z)Lizg;
    .locals 4
    .param p1, "check"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 287
    iget-object v1, p0, Lize;->b:Lizh;

    .line 2075
    iget-object v2, v1, Lizh;->b:[B

    iget v1, v1, Lizh;->a:I

    aget-byte v1, v2, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 287
    :goto_0
    if-nez v1, :cond_1

    .line 288
    new-instance v1, Lcom/laiwang/idl/msgpacklite/MessageException;

    const-string/jumbo v2, "writeMapEnd() is called but writeMapBegin() is not called"

    invoke-direct {v1, v2}, Lcom/laiwang/idl/msgpacklite/MessageException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2075
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 291
    :cond_1
    iget-object v1, p0, Lize;->b:Lizh;

    invoke-virtual {v1}, Lizh;->c()I

    move-result v0

    .line 292
    .local v0, "remain":I
    if-lez v0, :cond_2

    .line 294
    new-instance v1, Lcom/laiwang/idl/msgpacklite/MessageException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "writeMapEnd(check=true) is called but the map is not end: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/laiwang/idl/msgpacklite/MessageException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 300
    :cond_2
    iget-object v1, p0, Lize;->b:Lizh;

    invoke-virtual {v1}, Lizh;->b()V

    .line 301
    return-object p0
.end method

.method public final d(I)Lizg;
    .locals 4
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 272
    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    .line 274
    iget-object v0, p0, Lize;->a:Lizf;

    or-int/lit16 v1, p1, 0x80

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lizf;->a(B)V

    .line 280
    :goto_0
    iget-object v0, p0, Lize;->b:Lizh;

    invoke-virtual {v0}, Lizh;->a()V

    .line 281
    iget-object v0, p0, Lize;->b:Lizh;

    .line 2030
    iget v1, v0, Lizh;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lizh;->a:I

    .line 2031
    iget-object v1, v0, Lizh;->b:[B

    iget v2, v0, Lizh;->a:I

    const/4 v3, 0x2

    aput-byte v3, v1, v2

    .line 2032
    iget-object v1, v0, Lizh;->c:[I

    iget v0, v0, Lizh;->a:I

    mul-int/lit8 v2, p1, 0x2

    aput v2, v1, v0

    .line 282
    return-object p0

    .line 275
    :cond_0
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_1

    .line 276
    iget-object v0, p0, Lize;->a:Lizf;

    const/16 v1, -0x22

    int-to-short v2, p1

    invoke-interface {v0, v1, v2}, Lizf;->a(BS)V

    goto :goto_0

    .line 278
    :cond_1
    iget-object v0, p0, Lize;->a:Lizf;

    const/16 v1, -0x21

    invoke-interface {v0, v1, p1}, Lizf;->a(BI)V

    goto :goto_0
.end method
