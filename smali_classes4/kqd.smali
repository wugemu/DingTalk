.class public final Lkqd;
.super Ljava/io/FilterOutputStream;
.source "QuotedPrintableOutputStream.java"


# static fields
.field private static final a:[B


# instance fields
.field private final b:[B

.field private final c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:I

.field private h:I

.field private i:Z

.field private j:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lkqd;->a:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data
.end method

.method private constructor <init>(ILjava/io/OutputStream;Z)V
    .locals 2
    .param p1, "bufsize"    # I
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "binary"    # Z

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 53
    iput-boolean v1, p0, Lkqd;->i:Z

    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lkqd;->j:[B

    .line 59
    const/16 v0, 0xc00

    new-array v0, v0, [B

    iput-object v0, p0, Lkqd;->b:[B

    .line 60
    iput-boolean p3, p0, Lkqd;->c:Z

    .line 61
    iput-boolean v1, p0, Lkqd;->d:Z

    .line 62
    iput-boolean v1, p0, Lkqd;->e:Z

    .line 63
    iput-boolean v1, p0, Lkqd;->f:Z

    .line 64
    iput v1, p0, Lkqd;->h:I

    .line 65
    const/16 v0, 0x4d

    iput v0, p0, Lkqd;->g:I

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "binary"    # Z

    .prologue
    .line 69
    const/16 v0, 0xc00

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lkqd;-><init>(ILjava/io/OutputStream;Z)V

    .line 70
    return-void
.end method

.method private a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-boolean v0, p0, Lkqd;->d:Z

    if-eqz v0, :cond_1

    .line 85
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lkqd;->a(B)V

    .line 91
    :cond_0
    :goto_0
    invoke-direct {p0}, Lkqd;->b()V

    .line 92
    return-void

    .line 86
    :cond_1
    iget-boolean v0, p0, Lkqd;->e:Z

    if-eqz v0, :cond_2

    .line 87
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lkqd;->a(B)V

    goto :goto_0

    .line 88
    :cond_2
    iget-boolean v0, p0, Lkqd;->f:Z

    if-eqz v0, :cond_0

    .line 89
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lkqd;->a(B)V

    goto :goto_0
.end method

.method private a(B)V
    .locals 2
    .param p1, "next"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 154
    iget v0, p0, Lkqd;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkqd;->g:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 155
    invoke-direct {p0}, Lkqd;->c()V

    .line 157
    :cond_0
    invoke-direct {p0, p1}, Lkqd;->c(B)V

    .line 158
    return-void
.end method

.method private a([BII)V
    .locals 6
    .param p1, "buffer"    # [B
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
    const/16 v5, 0x9

    const/16 v4, 0x20

    const/4 v3, 0x1

    .line 73
    move v0, p2

    .local v0, "inputIndex":I
    :goto_0
    add-int v1, p3, p2

    if-ge v0, v1, :cond_e

    .line 74
    aget-byte v1, p1, v0

    .line 1101
    const/16 v2, 0xa

    if-ne v1, v2, :cond_5

    .line 1102
    iget-boolean v2, p0, Lkqd;->c:Z

    if-eqz v2, :cond_0

    .line 1103
    invoke-direct {p0}, Lkqd;->a()V

    .line 1104
    invoke-direct {p0, v1}, Lkqd;->b(B)V

    .line 73
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1106
    :cond_0
    iget-boolean v2, p0, Lkqd;->f:Z

    if-eqz v2, :cond_3

    .line 1109
    iget-boolean v1, p0, Lkqd;->d:Z

    if-eqz v1, :cond_2

    .line 1110
    invoke-direct {p0, v4}, Lkqd;->b(B)V

    .line 1114
    :cond_1
    :goto_2
    invoke-direct {p0}, Lkqd;->d()V

    .line 1115
    invoke-direct {p0}, Lkqd;->b()V

    goto :goto_1

    .line 1111
    :cond_2
    iget-boolean v1, p0, Lkqd;->e:Z

    if-eqz v1, :cond_1

    .line 1112
    invoke-direct {p0, v5}, Lkqd;->b(B)V

    goto :goto_2

    .line 1117
    :cond_3
    invoke-direct {p0}, Lkqd;->a()V

    .line 1148
    :cond_4
    invoke-direct {p0, v1}, Lkqd;->a(B)V

    goto :goto_1

    .line 1121
    :cond_5
    const/16 v2, 0xd

    if-ne v1, v2, :cond_7

    .line 1122
    iget-boolean v2, p0, Lkqd;->c:Z

    if-eqz v2, :cond_6

    .line 1123
    invoke-direct {p0, v1}, Lkqd;->b(B)V

    goto :goto_1

    .line 1125
    :cond_6
    iput-boolean v3, p0, Lkqd;->f:Z

    goto :goto_1

    .line 1128
    :cond_7
    invoke-direct {p0}, Lkqd;->a()V

    .line 1129
    if-ne v1, v4, :cond_9

    .line 1130
    iget-boolean v2, p0, Lkqd;->c:Z

    if-eqz v2, :cond_8

    .line 1131
    invoke-direct {p0, v1}, Lkqd;->b(B)V

    goto :goto_1

    .line 1133
    :cond_8
    iput-boolean v3, p0, Lkqd;->d:Z

    goto :goto_1

    .line 1135
    :cond_9
    if-ne v1, v5, :cond_b

    .line 1136
    iget-boolean v2, p0, Lkqd;->c:Z

    if-eqz v2, :cond_a

    .line 1137
    invoke-direct {p0, v1}, Lkqd;->b(B)V

    goto :goto_1

    .line 1139
    :cond_a
    iput-boolean v3, p0, Lkqd;->e:Z

    goto :goto_1

    .line 1141
    :cond_b
    if-ge v1, v4, :cond_c

    .line 1142
    invoke-direct {p0, v1}, Lkqd;->b(B)V

    goto :goto_1

    .line 1143
    :cond_c
    const/16 v2, 0x7e

    if-le v1, v2, :cond_d

    .line 1144
    invoke-direct {p0, v1}, Lkqd;->b(B)V

    goto :goto_1

    .line 1145
    :cond_d
    const/16 v2, 0x3d

    if-ne v1, v2, :cond_4

    .line 1146
    invoke-direct {p0, v1}, Lkqd;->b(B)V

    goto :goto_1

    .line 76
    :cond_e
    return-void
.end method

.method private b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lkqd;->d:Z

    .line 96
    iput-boolean v0, p0, Lkqd;->e:Z

    .line 97
    iput-boolean v0, p0, Lkqd;->f:Z

    .line 98
    return-void
.end method

.method private b(B)V
    .locals 3
    .param p1, "next"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 161
    iget v1, p0, Lkqd;->g:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lkqd;->g:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    .line 162
    invoke-direct {p0}, Lkqd;->c()V

    .line 165
    :cond_0
    and-int/lit16 v0, p1, 0xff

    .line 167
    .local v0, "nextUnsigned":I
    const/16 v1, 0x3d

    invoke-direct {p0, v1}, Lkqd;->c(B)V

    .line 168
    iget v1, p0, Lkqd;->g:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lkqd;->g:I

    .line 169
    sget-object v1, Lkqd;->a:[B

    shr-int/lit8 v2, v0, 0x4

    aget-byte v1, v1, v2

    invoke-direct {p0, v1}, Lkqd;->c(B)V

    .line 170
    iget v1, p0, Lkqd;->g:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lkqd;->g:I

    .line 171
    sget-object v1, Lkqd;->a:[B

    rem-int/lit8 v2, v0, 0x10

    aget-byte v1, v1, v2

    invoke-direct {p0, v1}, Lkqd;->c(B)V

    .line 172
    return-void
.end method

.method private c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    const/16 v0, 0x3d

    invoke-direct {p0, v0}, Lkqd;->c(B)V

    .line 183
    invoke-direct {p0}, Lkqd;->d()V

    .line 184
    return-void
.end method

.method private c(B)V
    .locals 3
    .param p1, "next"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 175
    iget-object v0, p0, Lkqd;->b:[B

    iget v1, p0, Lkqd;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkqd;->h:I

    aput-byte p1, v0, v1

    .line 176
    iget v0, p0, Lkqd;->h:I

    iget-object v1, p0, Lkqd;->b:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 177
    invoke-direct {p0}, Lkqd;->e()V

    .line 179
    :cond_0
    return-void
.end method

.method private d()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lkqd;->c(B)V

    .line 188
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lkqd;->c(B)V

    .line 189
    const/16 v0, 0x4c

    iput v0, p0, Lkqd;->g:I

    .line 190
    return-void
.end method

.method private e()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 193
    iget v0, p0, Lkqd;->h:I

    iget-object v1, p0, Lkqd;->b:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 194
    iget-object v0, p0, Lkqd;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lkqd;->b:[B

    iget v2, p0, Lkqd;->h:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 198
    :goto_0
    iput v3, p0, Lkqd;->h:I

    .line 199
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lkqd;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lkqd;->b:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method


# virtual methods
.method public final close()V
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
    const/4 v1, 0x1

    .line 203
    iget-boolean v0, p0, Lkqd;->i:Z

    if-eqz v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 2079
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lkqd;->a()V

    .line 2080
    invoke-direct {p0}, Lkqd;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    iput-boolean v1, p0, Lkqd;->i:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lkqd;->i:Z

    throw v0
.end method

.method public final flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-direct {p0}, Lkqd;->e()V

    .line 217
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

    .line 221
    iget-object v0, p0, Lkqd;->j:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 222
    iget-object v0, p0, Lkqd;->j:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lkqd;->write([BII)V

    .line 223
    return-void
.end method

.method public final write([BII)V
    .locals 2
    .param p1, "b"    # [B
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
    .line 227
    iget-boolean v0, p0, Lkqd;->i:Z

    if-eqz v0, :cond_0

    .line 228
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Stream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lkqd;->a([BII)V

    .line 231
    return-void
.end method
