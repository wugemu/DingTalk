.class final Livt;
.super Ljava/nio/charset/CharsetDecoder;
.source "UTF7StyleCharsetDecoder.java"


# instance fields
.field private final a:Livo;

.field private final b:B

.field private final c:B

.field private final d:Z

.field private e:Z

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z


# direct methods
.method constructor <init>(Livs;Livo;Z)V
    .locals 2
    .param p1, "cs"    # Livs;
    .param p2, "base64"    # Livo;
    .param p3, "strict"    # Z

    .prologue
    .line 52
    const v0, 0x3f19999a    # 0.6f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0, v1}, Ljava/nio/charset/CharsetDecoder;-><init>(Ljava/nio/charset/Charset;FF)V

    .line 53
    iput-object p2, p0, Livt;->a:Livo;

    .line 54
    iput-boolean p3, p0, Livt;->d:Z

    .line 55
    invoke-virtual {p1}, Livs;->a()B

    move-result v0

    iput-byte v0, p0, Livt;->b:B

    .line 56
    invoke-virtual {p1}, Livs;->b()B

    move-result v0

    iput-byte v0, p0, Livt;->c:B

    .line 57
    return-void
.end method

.method private static a(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p0, "in"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 104
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 105
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    return-object v0
.end method

.method private a()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 181
    iget v0, p0, Livt;->g:I

    if-nez v0, :cond_0

    iget v0, p0, Livt;->f:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p0, "in"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 173
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 174
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 191
    iput-boolean v0, p0, Livt;->e:Z

    .line 192
    iput v0, p0, Livt;->f:I

    .line 193
    iput v0, p0, Livt;->g:I

    .line 194
    return-void
.end method


# virtual methods
.method protected final decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 8
    .param p1, "in"    # Ljava/nio/ByteBuffer;
    .param p2, "out"    # Ljava/nio/CharBuffer;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 65
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 66
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 67
    .local v0, "b":B
    iget-boolean v2, p0, Livt;->e:Z

    if-eqz v2, :cond_b

    .line 68
    iget-byte v2, p0, Livt;->c:B

    if-ne v0, v2, :cond_4

    .line 69
    invoke-direct {p0}, Livt;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    invoke-static {p1}, Livt;->b(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 100
    .end local v0    # "b":B
    :goto_1
    return-object v1

    .line 71
    .restart local v0    # "b":B
    :cond_0
    iget-boolean v2, p0, Livt;->h:Z

    if-eqz v2, :cond_3

    .line 72
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_1

    .line 73
    invoke-static {p1}, Livt;->a(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v1

    goto :goto_1

    .line 74
    :cond_1
    iget-byte v2, p0, Livt;->b:B

    int-to-char v2, v2

    invoke-virtual {p2, v2}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 77
    :goto_2
    invoke-direct {p0}, Livt;->b()V

    .line 85
    :cond_2
    iput-boolean v7, p0, Livt;->h:Z

    goto :goto_0

    .line 76
    :cond_3
    iput-boolean v6, p0, Livt;->i:Z

    goto :goto_2

    .line 79
    :cond_4
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_5

    .line 80
    invoke-static {p1}, Livt;->a(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v1

    goto :goto_1

    .line 1121
    :cond_5
    const/4 v2, 0x0

    .line 1122
    iget-object v3, p0, Livt;->a:Livo;

    .line 2091
    const/16 v4, 0x80

    if-lt v0, v4, :cond_6

    .line 2092
    const/4 v3, -0x1

    .line 1123
    :goto_3
    if-ltz v3, :cond_8

    .line 1124
    iget v4, p0, Livt;->f:I

    add-int/lit8 v4, v4, 0x6

    iput v4, p0, Livt;->f:I

    .line 1125
    iget v4, p0, Livt;->f:I

    const/16 v5, 0x10

    if-ge v4, v5, :cond_7

    .line 1126
    iget v4, p0, Livt;->g:I

    iget v5, p0, Livt;->f:I

    rsub-int/lit8 v5, v5, 0x10

    shl-int/2addr v3, v5

    add-int/2addr v3, v4

    iput v3, p0, Livt;->g:I

    :goto_4
    move-object v1, v2

    .line 82
    .local v1, "result":Ljava/nio/charset/CoderResult;
    :goto_5
    if-eqz v1, :cond_2

    goto :goto_1

    .line 2093
    .end local v1    # "result":Ljava/nio/charset/CoderResult;
    :cond_6
    iget-object v3, v3, Livo;->b:[I

    aget v3, v3, v0

    goto :goto_3

    .line 1128
    :cond_7
    iget v4, p0, Livt;->f:I

    add-int/lit8 v4, v4, -0x10

    iput v4, p0, Livt;->f:I

    .line 1129
    iget v4, p0, Livt;->g:I

    iget v5, p0, Livt;->f:I

    shr-int v5, v3, v5

    add-int/2addr v4, v5

    iput v4, p0, Livt;->g:I

    .line 1130
    iget v4, p0, Livt;->g:I

    int-to-char v4, v4

    invoke-virtual {p2, v4}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 1131
    iget v4, p0, Livt;->f:I

    rsub-int/lit8 v4, v4, 0x10

    shl-int/2addr v3, v4

    const v4, 0xffff

    and-int/2addr v3, v4

    iput v3, p0, Livt;->g:I

    goto :goto_4

    .line 1134
    :cond_8
    iget-boolean v3, p0, Livt;->d:Z

    if-eqz v3, :cond_9

    .line 1135
    invoke-static {p1}, Livt;->b(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v1

    goto :goto_5

    .line 1136
    :cond_9
    int-to-char v3, v0

    invoke-virtual {p2, v3}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 1137
    invoke-direct {p0}, Livt;->a()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1138
    invoke-static {p1}, Livt;->b(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .line 1139
    :cond_a
    invoke-direct {p0}, Livt;->b()V

    goto :goto_4

    .line 87
    :cond_b
    iget-byte v2, p0, Livt;->b:B

    if-ne v0, v2, :cond_d

    .line 88
    iput-boolean v6, p0, Livt;->e:Z

    .line 89
    iget-boolean v2, p0, Livt;->i:Z

    if-eqz v2, :cond_c

    iget-boolean v2, p0, Livt;->d:Z

    if-eqz v2, :cond_c

    .line 90
    invoke-static {p1}, Livt;->b(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v1

    goto/16 :goto_1

    .line 91
    :cond_c
    iput-boolean v6, p0, Livt;->h:Z

    goto/16 :goto_0

    .line 94
    :cond_d
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_e

    .line 95
    invoke-static {p1}, Livt;->a(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v1

    goto/16 :goto_1

    .line 96
    :cond_e
    int-to-char v2, v0

    invoke-virtual {p2, v2}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 97
    iput-boolean v7, p0, Livt;->i:Z

    goto/16 :goto_0

    .line 100
    .end local v0    # "b":B
    :cond_f
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    goto/16 :goto_1
.end method

.method protected final implFlush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p1, "out"    # Ljava/nio/CharBuffer;

    .prologue
    .line 149
    iget-boolean v0, p0, Livt;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Livt;->d:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Livt;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 151
    :goto_0
    return-object v0

    :cond_2
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_0
.end method

.method protected final implReset()V
    .locals 1

    .prologue
    .line 159
    invoke-direct {p0}, Livt;->b()V

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Livt;->i:Z

    .line 161
    return-void
.end method
