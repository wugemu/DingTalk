.class public abstract Lksk;
.super Ljava/lang/Object;
.source "AbstractEntity.java"

# interfaces
.implements Lkso;


# instance fields
.field protected final a:I

.field protected final b:I

.field protected final c:Lksr;

.field protected final d:Lkst;

.field protected e:I

.field protected final f:Lkqa;

.field private final g:Lksx;

.field private h:I

.field private i:Lksw;

.field private j:Z

.field private k:I


# direct methods
.method constructor <init>(Lkst;IILksr;Lkqa;)V
    .locals 3
    .param p1, "body"    # Lkst;
    .param p2, "startState"    # I
    .param p3, "endState"    # I
    .param p4, "config"    # Lksr;
    .param p5, "monitor"    # Lkqa;

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p2, p0, Lksk;->e:I

    .line 69
    iput p2, p0, Lksk;->a:I

    .line 70
    iput p3, p0, Lksk;->b:I

    .line 71
    iput-object p4, p0, Lksk;->c:Lksr;

    .line 72
    iput-object p1, p0, Lksk;->d:Lkst;

    .line 73
    new-instance v0, Lksx;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lksx;-><init>(I)V

    iput-object v0, p0, Lksk;->g:Lksx;

    .line 74
    iput v2, p0, Lksk;->h:I

    .line 75
    iput-boolean v2, p0, Lksk;->j:Z

    .line 76
    iput v2, p0, Lksk;->k:I

    .line 77
    iput-object p5, p0, Lksk;->f:Lkqa;

    .line 78
    return-void
.end method

.method public static final a(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 281
    packed-switch p0, :pswitch_data_0

    .line 331
    const-string/jumbo v0, "Unknown"

    .line 334
    .local v0, "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 283
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "End of stream"

    .line 284
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 286
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "Start message"

    .line 287
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 289
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "End message"

    .line 290
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 292
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v0, "Raw entity"

    .line 293
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 295
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v0, "Start header"

    .line 296
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 298
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v0, "Field"

    .line 299
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 301
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_6
    const-string/jumbo v0, "End header"

    .line 302
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 304
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_7
    const-string/jumbo v0, "Start multipart"

    .line 305
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 307
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_8
    const-string/jumbo v0, "End multipart"

    .line 308
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 310
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_9
    const-string/jumbo v0, "Preamble"

    .line 311
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 313
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_a
    const-string/jumbo v0, "Epilogue"

    .line 314
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 316
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_b
    const-string/jumbo v0, "Start bodypart"

    .line 317
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 319
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_c
    const-string/jumbo v0, "End bodypart"

    .line 320
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 322
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_d
    const-string/jumbo v0, "Body"

    .line 323
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 325
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_e
    const-string/jumbo v0, "Bodypart"

    .line 326
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 328
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_f
    const-string/jumbo v0, "In message"

    .line 329
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 281
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private i()Lksx;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v8, 0x1

    .line 93
    iget-boolean v6, p0, Lksk;->j:Z

    if-eqz v6, :cond_0

    .line 94
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    throw v6

    .line 96
    :cond_0
    iget-object v6, p0, Lksk;->c:Lksr;

    .line 1153
    iget v5, v6, Lksr;->c:I

    .line 97
    .local v5, "maxHeaderLen":I
    invoke-virtual {p0}, Lksk;->c()Lkse;

    move-result-object v3

    .line 98
    .local v3, "instream":Lkse;
    new-instance v2, Lksx;

    const/16 v6, 0x40

    invoke-direct {v2, v6}, Lksx;-><init>(I)V

    .line 104
    .local v2, "fieldbuf":Lksx;
    :cond_1
    :goto_0
    :try_start_0
    iget-object v6, p0, Lksk;->g:Lksx;

    .line 2117
    iget v4, v6, Lksx;->b:I

    .line 105
    .local v4, "len":I
    if-lez v5, :cond_2

    .line 3117
    iget v6, v2, Lksx;->b:I

    .line 105
    add-int/2addr v6, v4

    if-lt v6, v5, :cond_2

    .line 106
    new-instance v6, Lorg/apache/james/mime4j/io/MaxHeaderLengthLimitException;

    const-string/jumbo v7, "Maximum header length limit exceeded"

    invoke-direct {v6, v7}, Lorg/apache/james/mime4j/io/MaxHeaderLengthLimitException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Lorg/apache/james/mime4j/io/MaxLineLimitException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v4    # "len":I
    :catch_0
    move-exception v1

    .line 139
    .local v1, "e":Lorg/apache/james/mime4j/io/MaxLineLimitException;
    new-instance v6, Lorg/apache/james/mime4j/MimeException;

    invoke-direct {v6, v1}, Lorg/apache/james/mime4j/MimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 108
    .end local v1    # "e":Lorg/apache/james/mime4j/io/MaxLineLimitException;
    .restart local v4    # "len":I
    :cond_2
    if-lez v4, :cond_3

    .line 109
    :try_start_1
    iget-object v6, p0, Lksk;->g:Lksx;

    .line 3121
    iget-object v6, v6, Lksx;->a:[B

    .line 109
    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7, v4}, Lksx;->a([BII)V

    .line 111
    :cond_3
    iget-object v6, p0, Lksk;->g:Lksx;

    .line 4094
    const/4 v7, 0x0

    iput v7, v6, Lksx;->b:I

    .line 112
    iget-object v6, p0, Lksk;->g:Lksx;

    invoke-virtual {v3, v6}, Lkse;->a(Lksx;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_5

    .line 113
    sget-object v6, Lksp;->b:Lksp;

    invoke-virtual {p0, v6}, Lksk;->a(Lksp;)V

    .line 114
    const/4 v6, 0x1

    iput-boolean v6, p0, Lksk;->j:Z

    .line 142
    :cond_4
    :goto_1
    return-object v2

    .line 117
    :cond_5
    iget-object v6, p0, Lksk;->g:Lksx;

    .line 4117
    iget v4, v6, Lksx;->b:I

    .line 118
    if-lez v4, :cond_6

    iget-object v6, p0, Lksk;->g:Lksx;

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v6, v7}, Lksx;->b(I)B

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_6

    .line 119
    add-int/lit8 v4, v4, -0x1

    .line 121
    :cond_6
    if-lez v4, :cond_7

    iget-object v6, p0, Lksk;->g:Lksx;

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v6, v7}, Lksx;->b(I)B

    move-result v6

    const/16 v7, 0xd

    if-ne v6, v7, :cond_7

    .line 122
    add-int/lit8 v4, v4, -0x1

    .line 124
    :cond_7
    if-nez v4, :cond_8

    .line 126
    const/4 v6, 0x1

    iput-boolean v6, p0, Lksk;->j:Z

    goto :goto_1

    .line 129
    :cond_8
    iget v6, p0, Lksk;->h:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lksk;->h:I

    .line 130
    iget v6, p0, Lksk;->h:I

    if-le v6, v8, :cond_1

    .line 131
    iget-object v6, p0, Lksk;->g:Lksx;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lksx;->b(I)B
    :try_end_1
    .catch Lorg/apache/james/mime4j/io/MaxLineLimitException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 132
    .local v0, "ch":I
    const/16 v6, 0x20

    if-eq v0, v6, :cond_1

    const/16 v6, 0x9

    if-ne v0, v6, :cond_4

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lksk;->e:I

    return v0
.end method

.method protected final a(Lksp;)V
    .locals 4
    .param p1, "event"    # Lksp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 238
    iget-object v0, p0, Lksk;->f:Lkqa;

    invoke-virtual {v0}, Lkqa;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8255
    if-nez p1, :cond_0

    .line 8256
    const-string/jumbo v0, "Event is unexpectedly null."

    .line 8261
    :goto_0
    invoke-virtual {p0}, Lksk;->b()I

    move-result v1

    .line 8262
    if-gtz v1, :cond_1

    .line 240
    :goto_1
    iget-object v0, p0, Lksk;->f:Lkqa;

    invoke-virtual {v0}, Lkqa;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 241
    new-instance v0, Lorg/apache/james/mime4j/stream/MimeParseEventException;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/stream/MimeParseEventException;-><init>(Lksp;)V

    throw v0

    .line 8258
    :cond_0
    invoke-virtual {p1}, Lksp;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 8265
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Line "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    .line 244
    :cond_2
    return-void
.end method

.method protected abstract b()I
.end method

.method protected abstract c()Lkse;
.end method

.method protected final d()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 146
    iget-object v4, p0, Lksk;->c:Lksr;

    .line 4129
    iget v2, v4, Lksr;->b:I

    .line 149
    .local v2, "maxHeaderCount":I
    :goto_0
    iget-boolean v4, p0, Lksk;->j:Z

    if-eqz v4, :cond_0

    .line 150
    const/4 v4, 0x0

    .line 176
    :goto_1
    return v4

    .line 152
    :cond_0
    if-lez v2, :cond_1

    iget v4, p0, Lksk;->k:I

    if-lt v4, v2, :cond_1

    .line 153
    new-instance v4, Lorg/apache/james/mime4j/io/MaxHeaderLimitException;

    const-string/jumbo v5, "Maximum header limit exceeded"

    invoke-direct {v4, v5}, Lorg/apache/james/mime4j/io/MaxHeaderLimitException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 156
    :cond_1
    invoke-direct {p0}, Lksk;->i()Lksx;

    move-result-object v0

    .line 157
    .local v0, "fieldbuf":Lksx;
    iget v4, p0, Lksk;->k:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lksk;->k:I

    .line 5117
    iget v3, v0, Lksx;->b:I

    .line 6117
    .local v3, "origLen":I
    iget v1, v0, Lksx;->b:I

    .line 162
    .local v1, "len":I
    if-lez v1, :cond_2

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v0, v4}, Lksx;->b(I)B

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_2

    .line 163
    add-int/lit8 v1, v1, -0x1

    .line 165
    :cond_2
    if-lez v1, :cond_3

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v0, v4}, Lksx;->b(I)B

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_3

    .line 166
    add-int/lit8 v1, v1, -0x1

    .line 168
    :cond_3
    invoke-virtual {v0, v1}, Lksx;->c(I)V

    .line 171
    :try_start_0
    new-instance v4, Lksw;

    invoke-direct {v4, v0}, Lksw;-><init>(Lksy;)V

    iput-object v4, p0, Lksk;->i:Lksw;

    .line 172
    iget-object v4, p0, Lksk;->i:Lksw;

    .line 6133
    iget-boolean v4, v4, Lksw;->d:Z

    .line 172
    if-eqz v4, :cond_4

    .line 173
    sget-object v4, Lksp;->d:Lksp;

    invoke-virtual {p0, v4}, Lksk;->a(Lksp;)V

    .line 175
    :cond_4
    iget-object v4, p0, Lksk;->d:Lkst;

    iget-object v5, p0, Lksk;->i:Lksw;

    invoke-interface {v4, v5}, Lkst;->a(Lksw;)V
    :try_end_0
    .catch Lorg/apache/james/mime4j/MimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    const/4 v4, 0x1

    goto :goto_1

    .line 178
    :catch_0
    move-exception v4

    sget-object v4, Lksp;->c:Lksp;

    invoke-virtual {p0, v4}, Lksk;->a(Lksp;)V

    .line 179
    iget-object v4, p0, Lksk;->c:Lksr;

    goto :goto_0
.end method

.method public final e()Lksl;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 201
    .line 7081
    iget v0, p0, Lksk;->e:I

    .line 201
    sparse-switch v0, :sswitch_data_0

    .line 209
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid state :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lksk;->e:I

    invoke-static {v2}, Lksk;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :sswitch_0
    iget-object v0, p0, Lksk;->d:Lkst;

    return-object v0

    .line 201
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x6 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method public final f()Lksw;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 220
    .line 8081
    iget v0, p0, Lksk;->e:I

    .line 220
    packed-switch v0, :pswitch_data_0

    .line 224
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid state :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lksk;->e:I

    invoke-static {v2}, Lksk;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :pswitch_0
    iget-object v0, p0, Lksk;->i:Lksw;

    return-object v0

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lksk;->e:I

    invoke-static {v1}, Lksk;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lksk;->d:Lkst;

    .line 271
    invoke-interface {v1}, Lkst;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lksk;->d:Lkst;

    invoke-interface {v1}, Lkst;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
