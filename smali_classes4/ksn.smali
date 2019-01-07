.class public final Lksn;
.super Ljava/lang/Object;
.source "DefaultBodyDescriptor.java"

# interfaces
.implements Lkst;


# instance fields
.field private final a:Lkqa;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Z

.field private k:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, v0, v0}, Lksn;-><init>(Lksl;Lkqa;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lksl;Lkqa;)V
    .locals 2
    .param p1, "parent"    # Lksl;
    .param p2, "monitor"    # Lkqa;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string/jumbo v0, "text"

    iput-object v0, p0, Lksn;->b:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, "plain"

    iput-object v0, p0, Lksn;->c:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, "text/plain"

    iput-object v0, p0, Lksn;->d:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lksn;->e:Ljava/lang/String;

    .line 56
    const-string/jumbo v0, "us-ascii"

    iput-object v0, p0, Lksn;->f:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, "7bit"

    iput-object v0, p0, Lksn;->g:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lksn;->h:Ljava/util/Map;

    .line 61
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lksn;->k:J

    .line 77
    if-eqz p1, :cond_0

    const-string/jumbo v0, "multipart/digest"

    invoke-interface {p1}, Lksl;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/util/MimeUtil;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const-string/jumbo v0, "message/rfc822"

    iput-object v0, p0, Lksn;->d:Ljava/lang/String;

    .line 79
    const-string/jumbo v0, "rfc822"

    iput-object v0, p0, Lksn;->c:Ljava/lang/String;

    .line 80
    const-string/jumbo v0, "message"

    iput-object v0, p0, Lksn;->b:Ljava/lang/String;

    .line 86
    :goto_0
    if-eqz p2, :cond_1

    .end local p2    # "monitor":Lkqa;
    :goto_1
    iput-object p2, p0, Lksn;->a:Lkqa;

    .line 87
    return-void

    .line 82
    .restart local p2    # "monitor":Lkqa;
    :cond_0
    const-string/jumbo v0, "text/plain"

    iput-object v0, p0, Lksn;->d:Ljava/lang/String;

    .line 83
    const-string/jumbo v0, "plain"

    iput-object v0, p0, Lksn;->c:Ljava/lang/String;

    .line 84
    const-string/jumbo v0, "text"

    iput-object v0, p0, Lksn;->b:Ljava/lang/String;

    goto :goto_0

    .line 86
    :cond_1
    sget-object p2, Lkqa;->b:Lkqa;

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Lkqa;)Ljava/util/Map;
    .locals 14
    .param p0, "pValue"    # Ljava/lang/String;
    .param p1, "monitor"    # Lkqa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkqa;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    .line 271
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 273
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 278
    .local v8, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v10, ";"

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_1

    .line 279
    move-object v4, p0

    .line 280
    .local v4, "main":Ljava/lang/String;
    const/4 v7, 0x0

    .line 286
    .local v7, "rest":Ljava/lang/String;
    :goto_0
    const-string/jumbo v10, ""

    invoke-interface {v8, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    if-eqz v7, :cond_b

    .line 288
    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 289
    .local v1, "chars":[C
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v10, 0x40

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 290
    .local v5, "paramName":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v10, 0x40

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 300
    .local v6, "paramValue":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 301
    .local v9, "state":B
    const/4 v2, 0x0

    .line 302
    .local v2, "escaped":Z
    array-length v11, v1

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v11, :cond_a

    aget-char v0, v1, v10

    .line 303
    .local v0, "c":C
    sparse-switch v9, :sswitch_data_0

    .line 302
    :cond_0
    :goto_2
    :sswitch_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 282
    .end local v0    # "c":C
    .end local v1    # "chars":[C
    .end local v2    # "escaped":Z
    .end local v4    # "main":Ljava/lang/String;
    .end local v5    # "paramName":Ljava/lang/StringBuilder;
    .end local v6    # "paramValue":Ljava/lang/StringBuilder;
    .end local v7    # "rest":Ljava/lang/String;
    .end local v9    # "state":B
    :cond_1
    const/4 v10, 0x0

    const-string/jumbo v11, ";"

    invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 283
    .restart local v4    # "main":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "rest":Ljava/lang/String;
    goto :goto_0

    .line 305
    .restart local v0    # "c":C
    .restart local v1    # "chars":[C
    .restart local v2    # "escaped":Z
    .restart local v5    # "paramName":Ljava/lang/StringBuilder;
    .restart local v6    # "paramValue":Ljava/lang/StringBuilder;
    .restart local v9    # "state":B
    :sswitch_1
    const/16 v12, 0x3b

    if-ne v0, v12, :cond_0

    .line 306
    const/4 v9, 0x0

    goto :goto_2

    .line 310
    :sswitch_2
    const/16 v12, 0x3d

    if-ne v0, v12, :cond_3

    .line 311
    invoke-virtual {p1}, Lkqa;->a()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 312
    new-instance v10, Lorg/apache/james/mime4j/MimeException;

    const-string/jumbo v11, "Expected header param name, got \'=\'"

    invoke-direct {v10, v11}, Lorg/apache/james/mime4j/MimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 314
    :cond_2
    const/16 v9, 0x63

    .line 315
    goto :goto_2

    .line 318
    :cond_3
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 319
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 321
    const/4 v9, 0x1

    .line 325
    :sswitch_3
    const/16 v12, 0x3d

    if-ne v0, v12, :cond_5

    .line 326
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-nez v12, :cond_4

    .line 327
    const/16 v9, 0x63

    goto :goto_2

    .line 329
    :cond_4
    const/4 v9, 0x2

    .line 330
    goto :goto_2

    .line 334
    :cond_5
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 338
    :sswitch_4
    const/4 v3, 0x0

    .line 339
    .local v3, "fallThrough":Z
    sparse-switch v0, :sswitch_data_1

    .line 349
    const/4 v9, 0x3

    .line 350
    const/4 v3, 0x1

    .line 353
    :goto_3
    :sswitch_5
    if-eqz v3, :cond_0

    .line 359
    .end local v3    # "fallThrough":Z
    :sswitch_6
    const/4 v3, 0x0

    .line 360
    .restart local v3    # "fallThrough":Z
    sparse-switch v0, :sswitch_data_2

    .line 371
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 374
    :goto_4
    if-eqz v3, :cond_0

    .line 378
    .end local v3    # "fallThrough":Z
    :sswitch_7
    sparse-switch v0, :sswitch_data_3

    .line 388
    const/16 v9, 0x63

    .line 389
    goto :goto_2

    .line 345
    .restart local v3    # "fallThrough":Z
    :sswitch_8
    const/4 v9, 0x4

    .line 346
    goto :goto_3

    .line 365
    :sswitch_9
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 366
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 364
    invoke-interface {v8, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    const/4 v9, 0x5

    .line 368
    const/4 v3, 0x1

    .line 369
    goto :goto_4

    .line 380
    .end local v3    # "fallThrough":Z
    :sswitch_a
    const/4 v9, 0x0

    .line 381
    goto/16 :goto_2

    .line 394
    :sswitch_b
    sparse-switch v0, :sswitch_data_4

    .line 416
    if-eqz v2, :cond_6

    .line 417
    const/16 v12, 0x5c

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 419
    :cond_6
    const/4 v2, 0x0

    .line 420
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 396
    :sswitch_c
    if-nez v2, :cond_7

    .line 399
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 400
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 398
    invoke-interface {v8, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    const/4 v9, 0x5

    goto/16 :goto_2

    .line 403
    :cond_7
    const/4 v2, 0x0

    .line 404
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 409
    :sswitch_d
    if-eqz v2, :cond_8

    .line 410
    const/16 v12, 0x5c

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 412
    :cond_8
    if-nez v2, :cond_9

    const/4 v2, 0x1

    .line 413
    :goto_5
    goto/16 :goto_2

    .line 412
    :cond_9
    const/4 v2, 0x0

    goto :goto_5

    .line 429
    .end local v0    # "c":C
    :cond_a
    const/4 v10, 0x3

    if-ne v9, v10, :cond_b

    .line 431
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 432
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 430
    invoke-interface {v8, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    .end local v1    # "chars":[C
    .end local v2    # "escaped":Z
    .end local v5    # "paramName":Ljava/lang/StringBuilder;
    .end local v6    # "paramValue":Ljava/lang/StringBuilder;
    .end local v9    # "state":B
    :cond_b
    return-object v8

    .line 303
    .line 339
    .line 360
    .line 378
    .line 394
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x3 -> :sswitch_6
        0x4 -> :sswitch_b
        0x5 -> :sswitch_7
        0x63 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x9 -> :sswitch_5
        0x20 -> :sswitch_5
        0x22 -> :sswitch_8
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x9 -> :sswitch_9
        0x20 -> :sswitch_9
        0x3b -> :sswitch_9
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x9 -> :sswitch_0
        0x20 -> :sswitch_0
        0x3b -> :sswitch_a
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        0x22 -> :sswitch_c
        0x5c -> :sswitch_d
    .end sparse-switch
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lksn;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lksw;)V
    .locals 11
    .param p1, "field"    # Lksw;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 104
    invoke-virtual {p1}, Lksw;->a()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p1}, Lksw;->b()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 109
    const-string/jumbo v2, "content-transfer-encoding"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lksn;->j:Z

    if-nez v2, :cond_1

    .line 110
    iput-boolean v3, p0, Lksn;->j:Z

    .line 112
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 114
    iput-object v1, p0, Lksn;->g:Ljava/lang/String;

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    const-string/jumbo v2, "content-length"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v6, p0, Lksn;->k:J

    const-wide/16 v8, -0x1

    cmp-long v2, v6, v8

    if-nez v2, :cond_2

    .line 119
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lksn;->k:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v2

    iget-object v2, p0, Lksn;->a:Lkqa;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Invalid content length: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lkqa;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    new-instance v2, Lorg/apache/james/mime4j/MimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Invalid Content-Length header: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/MimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 126
    :cond_2
    const-string/jumbo v2, "content-type"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lksn;->i:Z

    if-nez v2, :cond_0

    .line 1132
    iput-boolean v3, p0, Lksn;->i:Z

    .line 2090
    iget-object v2, p0, Lksn;->a:Lkqa;

    .line 1134
    invoke-static {v1, v2}, Lksn;->a(Ljava/lang/String;Lkqa;)Ljava/util/Map;

    move-result-object v8

    .line 1136
    const-string/jumbo v2, ""

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1139
    if-eqz v2, :cond_c

    .line 1140
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 1141
    const/16 v2, 0x2f

    invoke-virtual {v7, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1143
    const/4 v6, -0x1

    if-eq v2, v6, :cond_b

    .line 1144
    invoke-virtual {v7, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 1145
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v7, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1146
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_a

    .line 1147
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v10, v3

    move-object v3, v6

    move v6, v10

    .line 1152
    :goto_1
    if-nez v6, :cond_9

    move-object v3, v4

    move-object v5, v4

    move-object v6, v4

    .line 1158
    :goto_2
    const-string/jumbo v2, "boundary"

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1160
    if-eqz v6, :cond_5

    const-string/jumbo v7, "multipart/"

    .line 1161
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-nez v2, :cond_4

    :cond_3
    const-string/jumbo v7, "multipart/"

    .line 1162
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1163
    :cond_4
    iput-object v6, p0, Lksn;->d:Ljava/lang/String;

    .line 1164
    iput-object v3, p0, Lksn;->c:Ljava/lang/String;

    .line 1165
    iput-object v5, p0, Lksn;->b:Ljava/lang/String;

    .line 1168
    :cond_5
    iget-object v3, p0, Lksn;->d:Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/james/mime4j/util/MimeUtil;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1169
    iput-object v2, p0, Lksn;->e:Ljava/lang/String;

    .line 1172
    :cond_6
    const-string/jumbo v2, "charset"

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1173
    iput-object v4, p0, Lksn;->f:Ljava/lang/String;

    .line 1174
    if-eqz v2, :cond_7

    .line 1175
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1176
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    .line 1177
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lksn;->f:Ljava/lang/String;

    .line 1180
    :cond_7
    iget-object v2, p0, Lksn;->f:Ljava/lang/String;

    if-nez v2, :cond_8

    const-string/jumbo v2, "text"

    iget-object v3, p0, Lksn;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1181
    const-string/jumbo v2, "us-ascii"

    iput-object v2, p0, Lksn;->f:Ljava/lang/String;

    .line 1187
    :cond_8
    iget-object v2, p0, Lksn;->h:Ljava/util/Map;

    invoke-interface {v2, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1188
    iget-object v2, p0, Lksn;->h:Ljava/util/Map;

    const-string/jumbo v3, ""

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    iget-object v2, p0, Lksn;->h:Ljava/util/Map;

    const-string/jumbo v3, "boundary"

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    iget-object v2, p0, Lksn;->h:Ljava/util/Map;

    const-string/jumbo v3, "charset"

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_9
    move-object v6, v5

    move-object v5, v3

    move-object v3, v2

    goto/16 :goto_2

    :cond_a
    move-object v3, v6

    move v6, v5

    move-object v5, v7

    goto/16 :goto_1

    :cond_b
    move v6, v5

    move-object v2, v4

    move-object v3, v4

    move-object v5, v7

    goto/16 :goto_1

    :cond_c
    move-object v3, v4

    move-object v5, v4

    move-object v6, v2

    goto/16 :goto_2
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lksn;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lksn;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lkst;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 94
    new-instance v0, Lksn;

    .line 1090
    iget-object v1, p0, Lksn;->a:Lkqa;

    .line 94
    invoke-direct {v0, p0, v1}, Lksn;-><init>(Lksl;Lkqa;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lksn;->d:Ljava/lang/String;

    return-object v0
.end method
