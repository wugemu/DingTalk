.class public final Lksq;
.super Lksk;
.source "MimeEntity.java"


# instance fields
.field g:I

.field private final h:Lksd;

.field private final i:Lksa;

.field private j:Lksg;

.field private k:Lksf;

.field private l:[B


# direct methods
.method public constructor <init>(Lksd;Ljava/io/InputStream;Lkst;IILksr;Lkqa;)V
    .locals 6
    .param p1, "lineSource"    # Lksd;
    .param p2, "instream"    # Ljava/io/InputStream;
    .param p3, "body"    # Lkst;
    .param p4, "startState"    # I
    .param p5, "endState"    # I
    .param p6, "config"    # Lksr;
    .param p7, "monitor"    # Lkqa;

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, p3

    move v2, p4

    move v3, p5

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lksk;-><init>(Lkst;IILksr;Lkqa;)V

    .line 57
    iput-object p1, p0, Lksq;->h:Lksd;

    .line 58
    new-instance v0, Lksa;

    const/16 v1, 0x1000

    .line 1105
    iget v2, p6, Lksr;->a:I

    .line 61
    invoke-direct {v0, p2, v1, v2}, Lksa;-><init>(Ljava/io/InputStream;II)V

    iput-object v0, p0, Lksq;->i:Lksa;

    .line 62
    new-instance v0, Lksf;

    iget-object v1, p0, Lksq;->i:Lksa;

    .line 2105
    iget v2, p6, Lksr;->a:I

    .line 64
    invoke-direct {v0, v1, v2}, Lksf;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lksq;->k:Lksf;

    .line 65
    return-void
.end method

.method private a(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 3
    .param p1, "instream"    # Ljava/io/InputStream;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 229
    iget-object v2, p0, Lksq;->d:Lkst;

    invoke-interface {v2}, Lkst;->c()Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "transferEncoding":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/james/mime4j/util/MimeUtil;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 231
    new-instance v0, Lkpy;

    iget-object v2, p0, Lksq;->f:Lkqa;

    invoke-direct {v0, p1, v2}, Lkpy;-><init>(Ljava/io/InputStream;Lkqa;)V

    .end local p1    # "instream":Ljava/io/InputStream;
    .local v0, "instream":Ljava/io/InputStream;
    move-object p1, v0

    .line 235
    .end local v0    # "instream":Ljava/io/InputStream;
    .restart local p1    # "instream":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object p1

    .line 232
    :cond_1
    invoke-static {v1}, Lorg/apache/james/mime4j/util/MimeUtil;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    new-instance v0, Lkqc;

    iget-object v2, p0, Lksq;->f:Lkqa;

    invoke-direct {v0, p1, v2}, Lkqc;-><init>(Ljava/io/InputStream;Lkqa;)V

    .end local p1    # "instream":Ljava/io/InputStream;
    .restart local v0    # "instream":Ljava/io/InputStream;
    move-object p1, v0

    .end local v0    # "instream":Ljava/io/InputStream;
    .restart local p1    # "instream":Ljava/io/InputStream;
    goto :goto_0
.end method

.method private a(IILjava/io/InputStream;)Lkso;
    .locals 9
    .param p1, "startState"    # I
    .param p2, "endState"    # I
    .param p3, "instream"    # Ljava/io/InputStream;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 243
    iget v1, p0, Lksq;->g:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 244
    new-instance v8, Lksv;

    invoke-direct {v8, p3}, Lksv;-><init>(Ljava/io/InputStream;)V

    .line 256
    :goto_0
    return-object v8

    .line 247
    :cond_0
    new-instance v0, Lksq;

    iget-object v1, p0, Lksq;->h:Lksd;

    iget-object v2, p0, Lksq;->d:Lkst;

    .line 250
    invoke-interface {v2}, Lkst;->d()Lkst;

    move-result-object v3

    iget-object v6, p0, Lksq;->c:Lksr;

    iget-object v7, p0, Lksq;->f:Lkqa;

    move-object v2, p3

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v7}, Lksq;-><init>(Lksd;Ljava/io/InputStream;Lkst;IILksr;Lkqa;)V

    .line 255
    .local v0, "mimeentity":Lksq;
    iget v1, p0, Lksq;->g:I

    .line 10090
    iput v1, v0, Lksq;->g:I

    move-object v8, v0

    .line 256
    goto :goto_0
.end method

.method private i()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 184
    iget-object v3, p0, Lksq;->d:Lkst;

    invoke-interface {v3}, Lkst;->a()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "boundary":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v1, v3, 0x2

    .line 187
    .local v1, "bufferSize":I
    const/16 v3, 0x1000

    if-ge v1, v3, :cond_0

    .line 188
    const/16 v1, 0x1000

    .line 191
    :cond_0
    :try_start_0
    iget-object v3, p0, Lksq;->i:Lksa;

    .line 7081
    iget-object v4, v3, Lksa;->b:[B

    array-length v4, v4

    if-le v1, v4, :cond_2

    .line 8072
    new-array v4, v1, [B

    .line 8073
    invoke-virtual {v3}, Lksa;->b()I

    move-result v5

    .line 8074
    if-lez v5, :cond_1

    .line 8075
    iget-object v6, v3, Lksa;->b:[B

    iget v7, v3, Lksa;->c:I

    iget v8, v3, Lksa;->c:I

    invoke-static {v6, v7, v4, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8077
    :cond_1
    iput-object v4, v3, Lksa;->b:[B

    .line 192
    :cond_2
    new-instance v3, Lksg;

    iget-object v4, p0, Lksq;->i:Lksa;

    invoke-direct {v3, v4, v0}, Lksg;-><init>(Lksa;Ljava/lang/String;)V

    iput-object v3, p0, Lksq;->j:Lksg;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    new-instance v3, Lksf;

    iget-object v4, p0, Lksq;->j:Lksg;

    iget-object v5, p0, Lksq;->c:Lksr;

    .line 8105
    iget v5, v5, Lksr;->a:I

    .line 199
    invoke-direct {v3, v4, v5}, Lksf;-><init>(Ljava/io/InputStream;I)V

    iput-object v3, p0, Lksq;->k:Lksf;

    .line 200
    return-void

    .line 193
    :catch_0
    move-exception v2

    .line 195
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Lorg/apache/james/mime4j/MimeException;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/apache/james/mime4j/MimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private j()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lksq;->j:Lksg;

    .line 204
    new-instance v0, Lksf;

    iget-object v1, p0, Lksq;->i:Lksa;

    iget-object v2, p0, Lksq;->c:Lksr;

    .line 9105
    iget v2, v2, Lksr;->a:I

    .line 206
    invoke-direct {v0, v1, v2}, Lksf;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lksq;->k:Lksf;

    .line 207
    return-void
.end method

.method private k()V
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
    .line 210
    iget-object v1, p0, Lksq;->k:Lksf;

    .line 9109
    iget-boolean v1, v1, Lksf;->b:Z

    .line 210
    if-nez v1, :cond_2

    .line 211
    iget-object v1, p0, Lksq;->l:[B

    if-nez v1, :cond_0

    .line 212
    const/16 v1, 0x800

    new-array v1, v1, [B

    iput-object v1, p0, Lksq;->l:[B

    .line 214
    :cond_0
    invoke-direct {p0}, Lksq;->l()Ljava/io/InputStream;

    move-result-object v0

    .line 215
    .local v0, "instream":Ljava/io/InputStream;
    :cond_1
    iget-object v1, p0, Lksq;->l:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 218
    .end local v0    # "instream":Ljava/io/InputStream;
    :cond_2
    return-void
.end method

.method private l()Ljava/io/InputStream;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 261
    iget-object v2, p0, Lksq;->c:Lksr;

    .line 10181
    iget-wide v0, v2, Lksr;->d:J

    .line 262
    .local v0, "maxContentLimit":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 263
    new-instance v2, Lksc;

    iget-object v3, p0, Lksq;->k:Lksf;

    invoke-direct {v2, v3, v0, v1}, Lksc;-><init>(Ljava/io/InputStream;J)V

    .line 265
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lksq;->k:Lksf;

    goto :goto_0
.end method


# virtual methods
.method protected final b()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lksq;->h:Lksd;

    if-nez v0, :cond_0

    .line 100
    const/4 v0, -0x1

    .line 102
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lksq;->h:Lksd;

    invoke-interface {v0}, Lksd;->a()I

    move-result v0

    goto :goto_0
.end method

.method public final b(I)V
    .locals 0
    .param p1, "recursionMode"    # I

    .prologue
    .line 90
    iput p1, p0, Lksq;->g:I

    .line 91
    return-void
.end method

.method protected final c()Lkse;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lksq;->k:Lksf;

    return-object v0
.end method

.method public final g()Lkso;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x7

    const/16 v5, 0xc

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 111
    iget v1, p0, Lksq;->e:I

    packed-switch v1, :pswitch_data_0

    .line 174
    :pswitch_0
    iget v1, p0, Lksq;->e:I

    iget v2, p0, Lksq;->b:I

    if-ne v1, v2, :cond_b

    .line 175
    const/4 v1, -0x1

    iput v1, p0, Lksq;->e:I

    .line 180
    :cond_0
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 113
    :pswitch_1
    iput v4, p0, Lksq;->e:I

    goto :goto_0

    .line 116
    :pswitch_2
    iput v4, p0, Lksq;->e:I

    goto :goto_0

    .line 120
    :pswitch_3
    invoke-virtual {p0}, Lksq;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    :goto_2
    iput v1, p0, Lksq;->e:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    goto :goto_2

    .line 123
    :pswitch_4
    iget-object v1, p0, Lksq;->d:Lkst;

    invoke-interface {v1}, Lkst;->b()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "mimeType":Ljava/lang/String;
    iget v1, p0, Lksq;->g:I

    if-ne v1, v4, :cond_2

    .line 125
    iput v5, p0, Lksq;->e:I

    goto :goto_0

    .line 126
    :cond_2
    invoke-static {v0}, Lorg/apache/james/mime4j/util/MimeUtil;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 127
    const/4 v1, 0x6

    iput v1, p0, Lksq;->e:I

    .line 128
    invoke-direct {p0}, Lksq;->j()V

    goto :goto_0

    .line 129
    :cond_3
    iget v1, p0, Lksq;->g:I

    if-eq v1, v2, :cond_5

    .line 130
    invoke-static {v0}, Lorg/apache/james/mime4j/util/MimeUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 131
    iput v5, p0, Lksq;->e:I

    .line 2223
    iget-object v1, p0, Lksq;->j:Lksg;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lksq;->j:Lksg;

    .line 2224
    :goto_3
    invoke-direct {p0, v1}, Lksq;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    .line 2225
    invoke-direct {p0, v3, v2, v1}, Lksq;->a(IILjava/io/InputStream;)Lkso;

    move-result-object v1

    goto :goto_1

    .line 2223
    :cond_4
    iget-object v1, p0, Lksq;->i:Lksa;

    goto :goto_3

    .line 134
    :cond_5
    iput v5, p0, Lksq;->e:I

    goto :goto_0

    .line 138
    .end local v0    # "mimeType":Ljava/lang/String;
    :pswitch_5
    iget-object v1, p0, Lksq;->k:Lksf;

    .line 3113
    iget-boolean v1, v1, Lksf;->a:Z

    .line 138
    if-eqz v1, :cond_6

    .line 139
    invoke-direct {p0}, Lksq;->k()V

    .line 140
    iput v6, p0, Lksq;->e:I

    goto :goto_0

    .line 143
    :cond_6
    invoke-direct {p0}, Lksq;->i()V

    .line 144
    const/16 v1, 0x8

    iput v1, p0, Lksq;->e:I

    .line 146
    iget-object v1, p0, Lksq;->j:Lksg;

    .line 3234
    iget v1, v1, Lksg;->d:I

    if-nez v1, :cond_8

    move v1, v2

    .line 146
    :goto_4
    if-eqz v1, :cond_0

    .line 153
    :pswitch_6
    invoke-direct {p0}, Lksq;->k()V

    .line 154
    iget-object v1, p0, Lksq;->j:Lksg;

    .line 3298
    iget-boolean v4, v1, Lksg;->a:Z

    if-eqz v4, :cond_9

    iget-object v1, v1, Lksg;->c:Lksa;

    invoke-virtual {v1}, Lksa;->c()Z

    move-result v1

    if-nez v1, :cond_9

    move v1, v2

    .line 154
    :goto_5
    if-eqz v1, :cond_a

    iget-object v1, p0, Lksq;->j:Lksg;

    .line 4294
    iget-boolean v1, v1, Lksg;->b:Z

    .line 154
    if-nez v1, :cond_a

    .line 155
    sget-object v1, Lksp;->a:Lksp;

    invoke-virtual {p0, v1}, Lksq;->a(Lksp;)V

    .line 163
    :cond_7
    invoke-direct {p0}, Lksq;->j()V

    .line 164
    const/16 v1, 0x9

    iput v1, p0, Lksq;->e:I

    goto/16 :goto_0

    :cond_8
    move v1, v3

    .line 3234
    goto :goto_4

    :cond_9
    move v1, v3

    .line 3298
    goto :goto_5

    .line 157
    :cond_a
    iget-object v1, p0, Lksq;->j:Lksg;

    .line 5294
    iget-boolean v1, v1, Lksg;->b:Z

    .line 157
    if-nez v1, :cond_7

    .line 158
    invoke-direct {p0}, Lksq;->j()V

    .line 159
    invoke-direct {p0}, Lksq;->i()V

    .line 6239
    const/16 v1, 0xa

    const/16 v2, 0xb

    iget-object v3, p0, Lksq;->j:Lksg;

    invoke-direct {p0, v1, v2, v3}, Lksq;->a(IILjava/io/InputStream;)Lkso;

    move-result-object v1

    goto/16 :goto_1

    .line 167
    :pswitch_7
    iput v6, p0, Lksq;->e:I

    goto/16 :goto_0

    .line 171
    :pswitch_8
    iget v1, p0, Lksq;->b:I

    iput v1, p0, Lksq;->e:I

    goto/16 :goto_0

    .line 178
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Invalid state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lksq;->e:I

    invoke-static {v3}, Lksq;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public final h()Ljava/io/InputStream;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 273
    iget v0, p0, Lksq;->e:I

    packed-switch v0, :pswitch_data_0

    .line 280
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lksq;->e:I

    invoke-static {v2}, Lksq;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :pswitch_1
    invoke-direct {p0}, Lksq;->l()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 273
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
