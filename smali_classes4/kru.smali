.class public final Lkru;
.super Ljava/lang/Object;
.source "SimpleCharStream.java"


# instance fields
.field a:I

.field b:I

.field c:I

.field public d:I

.field protected e:[I

.field protected f:[I

.field protected g:I

.field protected h:I

.field protected i:Z

.field protected j:Z

.field protected k:Ljava/io/Reader;

.field protected l:[C

.field protected m:I

.field protected n:I

.field protected o:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;II)V
    .locals 2
    .param p1, "dstream"    # Ljava/io/Reader;
    .param p2, "startline"    # I
    .param p3, "startcolumn"    # I

    .prologue
    const/4 v1, 0x1

    .line 288
    const/16 v0, 0x1000

    invoke-direct {p0, p1, v1, v1, v0}, Lkru;-><init>(Ljava/io/Reader;III)V

    .line 289
    return-void
.end method

.method private constructor <init>(Ljava/io/Reader;III)V
    .locals 3
    .param p1, "dstream"    # Ljava/io/Reader;
    .param p2, "startline"    # I
    .param p3, "startcolumn"    # I
    .param p4, "buffersize"    # I

    .prologue
    const/16 v2, 0x1000

    const/4 v1, 0x0

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lkru;->d:I

    .line 40
    iput v1, p0, Lkru;->g:I

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lkru;->h:I

    .line 43
    iput-boolean v1, p0, Lkru;->i:Z

    .line 44
    iput-boolean v1, p0, Lkru;->j:Z

    .line 49
    iput v1, p0, Lkru;->m:I

    .line 50
    iput v1, p0, Lkru;->n:I

    .line 51
    const/16 v0, 0x8

    iput v0, p0, Lkru;->o:I

    .line 274
    iput-object p1, p0, Lkru;->k:Ljava/io/Reader;

    .line 275
    iput p2, p0, Lkru;->h:I

    .line 276
    add-int/lit8 v0, p3, -0x1

    iput v0, p0, Lkru;->g:I

    .line 278
    iput v2, p0, Lkru;->a:I

    iput v2, p0, Lkru;->b:I

    .line 279
    new-array v0, v2, [C

    iput-object v0, p0, Lkru;->l:[C

    .line 280
    new-array v0, v2, [I

    iput-object v0, p0, Lkru;->e:[I

    .line 281
    new-array v0, v2, [I

    iput-object v0, p0, Lkru;->f:[I

    .line 282
    return-void
.end method

.method private a(Z)V
    .locals 10
    .param p1, "wrapAround"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v9, 0x0

    .line 59
    iget v4, p0, Lkru;->a:I

    add-int/lit16 v4, v4, 0x800

    new-array v1, v4, [C

    .line 60
    .local v1, "newbuffer":[C
    iget v4, p0, Lkru;->a:I

    add-int/lit16 v4, v4, 0x800

    new-array v2, v4, [I

    .line 61
    .local v2, "newbufline":[I
    iget v4, p0, Lkru;->a:I

    add-int/lit16 v4, v4, 0x800

    new-array v0, v4, [I

    .line 65
    .local v0, "newbufcolumn":[I
    if-eqz p1, :cond_0

    .line 67
    :try_start_0
    iget-object v4, p0, Lkru;->l:[C

    iget v5, p0, Lkru;->c:I

    const/4 v6, 0x0

    iget v7, p0, Lkru;->a:I

    iget v8, p0, Lkru;->c:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    iget-object v4, p0, Lkru;->l:[C

    const/4 v5, 0x0

    iget v6, p0, Lkru;->a:I

    iget v7, p0, Lkru;->c:I

    sub-int/2addr v6, v7

    iget v7, p0, Lkru;->d:I

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    iput-object v1, p0, Lkru;->l:[C

    .line 71
    iget-object v4, p0, Lkru;->e:[I

    iget v5, p0, Lkru;->c:I

    const/4 v6, 0x0

    iget v7, p0, Lkru;->a:I

    iget v8, p0, Lkru;->c:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    iget-object v4, p0, Lkru;->e:[I

    const/4 v5, 0x0

    iget v6, p0, Lkru;->a:I

    iget v7, p0, Lkru;->c:I

    sub-int/2addr v6, v7

    iget v7, p0, Lkru;->d:I

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    iput-object v2, p0, Lkru;->e:[I

    .line 75
    iget-object v4, p0, Lkru;->f:[I

    iget v5, p0, Lkru;->c:I

    const/4 v6, 0x0

    iget v7, p0, Lkru;->a:I

    iget v8, p0, Lkru;->c:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    iget-object v4, p0, Lkru;->f:[I

    const/4 v5, 0x0

    iget v6, p0, Lkru;->a:I

    iget v7, p0, Lkru;->c:I

    sub-int/2addr v6, v7

    iget v7, p0, Lkru;->d:I

    invoke-static {v4, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    iput-object v0, p0, Lkru;->f:[I

    .line 79
    iget v4, p0, Lkru;->d:I

    iget v5, p0, Lkru;->a:I

    iget v6, p0, Lkru;->c:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p0, Lkru;->d:I

    iput v4, p0, Lkru;->m:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    iget v4, p0, Lkru;->a:I

    add-int/lit16 v4, v4, 0x800

    iput v4, p0, Lkru;->a:I

    .line 102
    iget v4, p0, Lkru;->a:I

    iput v4, p0, Lkru;->b:I

    .line 103
    iput v9, p0, Lkru;->c:I

    .line 104
    return-void

    .line 83
    :cond_0
    :try_start_1
    iget-object v4, p0, Lkru;->l:[C

    iget v5, p0, Lkru;->c:I

    const/4 v6, 0x0

    iget v7, p0, Lkru;->a:I

    iget v8, p0, Lkru;->c:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    iput-object v1, p0, Lkru;->l:[C

    .line 86
    iget-object v4, p0, Lkru;->e:[I

    iget v5, p0, Lkru;->c:I

    const/4 v6, 0x0

    iget v7, p0, Lkru;->a:I

    iget v8, p0, Lkru;->c:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    iput-object v2, p0, Lkru;->e:[I

    .line 89
    iget-object v4, p0, Lkru;->f:[I

    iget v5, p0, Lkru;->c:I

    const/4 v6, 0x0

    iget v7, p0, Lkru;->a:I

    iget v8, p0, Lkru;->c:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    iput-object v0, p0, Lkru;->f:[I

    .line 92
    iget v4, p0, Lkru;->d:I

    iget v5, p0, Lkru;->c:I

    sub-int/2addr v4, v5

    iput v4, p0, Lkru;->d:I

    iput v4, p0, Lkru;->m:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v3

    .line 97
    .local v3, "t":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/Error;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public final a()C
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v3, 0x800

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 203
    iget v1, p0, Lkru;->n:I

    if-lez v1, :cond_1

    .line 205
    iget v1, p0, Lkru;->n:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lkru;->n:I

    .line 207
    iget v1, p0, Lkru;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lkru;->d:I

    iget v2, p0, Lkru;->a:I

    if-ne v1, v2, :cond_0

    .line 208
    iput v6, p0, Lkru;->d:I

    .line 210
    :cond_0
    iget-object v1, p0, Lkru;->l:[C

    iget v2, p0, Lkru;->d:I

    aget-char v0, v1, v2

    .line 219
    :goto_0
    return v0

    .line 213
    :cond_1
    iget v1, p0, Lkru;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lkru;->d:I

    iget v2, p0, Lkru;->m:I

    if-lt v1, v2, :cond_a

    .line 1108
    iget v1, p0, Lkru;->m:I

    iget v2, p0, Lkru;->b:I

    if-ne v1, v2, :cond_2

    .line 1110
    iget v1, p0, Lkru;->b:I

    iget v2, p0, Lkru;->a:I

    if-ne v1, v2, :cond_6

    .line 1112
    iget v1, p0, Lkru;->c:I

    if-le v1, v3, :cond_4

    .line 1114
    iput v6, p0, Lkru;->m:I

    iput v6, p0, Lkru;->d:I

    .line 1115
    iget v1, p0, Lkru;->c:I

    iput v1, p0, Lkru;->b:I

    .line 1132
    :cond_2
    :goto_1
    :try_start_0
    iget-object v1, p0, Lkru;->k:Ljava/io/Reader;

    iget-object v2, p0, Lkru;->l:[C

    iget v3, p0, Lkru;->m:I

    iget v4, p0, Lkru;->b:I

    iget v5, p0, Lkru;->m:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v1

    if-ne v1, v8, :cond_9

    .line 1134
    iget-object v1, p0, Lkru;->k:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    .line 1135
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1141
    :catch_0
    move-exception v1

    .line 1142
    iget v2, p0, Lkru;->d:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lkru;->d:I

    .line 1143
    invoke-virtual {p0, v6}, Lkru;->a(I)V

    .line 1144
    iget v2, p0, Lkru;->c:I

    if-ne v2, v8, :cond_3

    .line 1145
    iget v2, p0, Lkru;->d:I

    iput v2, p0, Lkru;->c:I

    .line 1146
    :cond_3
    throw v1

    .line 1117
    :cond_4
    iget v1, p0, Lkru;->c:I

    if-gez v1, :cond_5

    .line 1118
    iput v6, p0, Lkru;->m:I

    iput v6, p0, Lkru;->d:I

    goto :goto_1

    .line 1120
    :cond_5
    invoke-direct {p0, v6}, Lkru;->a(Z)V

    goto :goto_1

    .line 1122
    :cond_6
    iget v1, p0, Lkru;->b:I

    iget v2, p0, Lkru;->c:I

    if-le v1, v2, :cond_7

    .line 1123
    iget v1, p0, Lkru;->a:I

    iput v1, p0, Lkru;->b:I

    goto :goto_1

    .line 1124
    :cond_7
    iget v1, p0, Lkru;->c:I

    iget v2, p0, Lkru;->b:I

    sub-int/2addr v1, v2

    if-ge v1, v3, :cond_8

    .line 1125
    invoke-direct {p0, v7}, Lkru;->a(Z)V

    goto :goto_1

    .line 1127
    :cond_8
    iget v1, p0, Lkru;->c:I

    iput v1, p0, Lkru;->b:I

    goto :goto_1

    .line 1138
    :cond_9
    :try_start_1
    iget v2, p0, Lkru;->m:I

    add-int/2addr v1, v2

    iput v1, p0, Lkru;->m:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 216
    :cond_a
    iget-object v1, p0, Lkru;->l:[C

    iget v2, p0, Lkru;->d:I

    aget-char v0, v1, v2

    .line 1162
    .local v0, "c":C
    iget v1, p0, Lkru;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lkru;->g:I

    .line 1164
    iget-boolean v1, p0, Lkru;->j:Z

    if-eqz v1, :cond_d

    .line 1166
    iput-boolean v6, p0, Lkru;->j:Z

    .line 1177
    :cond_b
    iget v1, p0, Lkru;->h:I

    iput v7, p0, Lkru;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lkru;->h:I

    .line 1180
    :cond_c
    :goto_2
    packed-switch v0, :pswitch_data_0

    .line 1196
    :goto_3
    :pswitch_0
    iget-object v1, p0, Lkru;->e:[I

    iget v2, p0, Lkru;->d:I

    iget v3, p0, Lkru;->h:I

    aput v3, v1, v2

    .line 1197
    iget-object v1, p0, Lkru;->f:[I

    iget v2, p0, Lkru;->d:I

    iget v3, p0, Lkru;->g:I

    aput v3, v1, v2

    goto/16 :goto_0

    .line 1169
    :cond_d
    iget-boolean v1, p0, Lkru;->i:Z

    if-eqz v1, :cond_c

    .line 1171
    iput-boolean v6, p0, Lkru;->i:Z

    .line 1172
    const/16 v1, 0xa

    if-ne v0, v1, :cond_b

    .line 1174
    iput-boolean v7, p0, Lkru;->j:Z

    goto :goto_2

    .line 1183
    :pswitch_1
    iput-boolean v7, p0, Lkru;->i:Z

    goto :goto_3

    .line 1186
    :pswitch_2
    iput-boolean v7, p0, Lkru;->j:Z

    goto :goto_3

    .line 1189
    :pswitch_3
    iget v1, p0, Lkru;->g:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lkru;->g:I

    .line 1190
    iget v1, p0, Lkru;->g:I

    iget v2, p0, Lkru;->o:I

    iget v3, p0, Lkru;->g:I

    iget v4, p0, Lkru;->o:I

    rem-int/2addr v3, v4

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lkru;->g:I

    goto :goto_3

    .line 1180
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(I)V
    .locals 2
    .param p1, "amount"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 265
    iget v0, p0, Lkru;->n:I

    add-int/2addr v0, p1

    iput v0, p0, Lkru;->n:I

    .line 266
    iget v0, p0, Lkru;->d:I

    sub-int/2addr v0, p1

    iput v0, p0, Lkru;->d:I

    if-gez v0, :cond_0

    .line 267
    iget v0, p0, Lkru;->d:I

    iget v1, p0, Lkru;->a:I

    add-int/2addr v0, v1

    iput v0, p0, Lkru;->d:I

    .line 268
    :cond_0
    return-void
.end method

.method public final b()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 244
    iget-object v0, p0, Lkru;->f:[I

    iget v1, p0, Lkru;->d:I

    aget v0, v0, v1

    return v0
.end method

.method public final b(I)[C
    .locals 5
    .param p1, "len"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 419
    new-array v0, p1, [C

    .line 421
    .local v0, "ret":[C
    iget v1, p0, Lkru;->d:I

    add-int/lit8 v1, v1, 0x1

    if-lt v1, p1, :cond_0

    .line 422
    iget-object v1, p0, Lkru;->l:[C

    iget v2, p0, Lkru;->d:I

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 430
    :goto_0
    return-object v0

    .line 425
    :cond_0
    iget-object v1, p0, Lkru;->l:[C

    iget v2, p0, Lkru;->a:I

    iget v3, p0, Lkru;->d:I

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v2, v3

    iget v3, p0, Lkru;->d:I

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 427
    iget-object v1, p0, Lkru;->l:[C

    iget v2, p0, Lkru;->d:I

    sub-int v2, p1, v2

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lkru;->d:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public final c()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 249
    iget-object v0, p0, Lkru;->e:[I

    iget v1, p0, Lkru;->d:I

    aget v0, v0, v1

    return v0
.end method

.method public final d()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 254
    iget-object v0, p0, Lkru;->f:[I

    iget v1, p0, Lkru;->c:I

    aget v0, v0, v1

    return v0
.end method

.method public final e()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 259
    iget-object v0, p0, Lkru;->e:[I

    iget v1, p0, Lkru;->c:I

    aget v0, v0, v1

    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 409
    iget v0, p0, Lkru;->d:I

    iget v1, p0, Lkru;->c:I

    if-lt v0, v1, :cond_0

    .line 410
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lkru;->l:[C

    iget v2, p0, Lkru;->c:I

    iget v3, p0, Lkru;->d:I

    iget v4, p0, Lkru;->c:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 412
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lkru;->l:[C

    iget v3, p0, Lkru;->c:I

    iget v4, p0, Lkru;->a:I

    iget v5, p0, Lkru;->c:I

    sub-int/2addr v4, v5

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lkru;->l:[C

    const/4 v3, 0x0

    iget v4, p0, Lkru;->d:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
