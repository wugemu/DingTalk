.class public final Lixb;
.super Ljava/lang/Object;
.source "InternalNano.java"


# static fields
.field protected static final a:Ljava/nio/charset/Charset;

.field protected static final b:Ljava/nio/charset/Charset;

.field public static final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lixb;->a:Ljava/nio/charset/Charset;

    .line 71
    const-string/jumbo v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lixb;->b:Ljava/nio/charset/Charset;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lixb;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Map;III)I
    .locals 9
    .param p1, "number"    # I
    .param p2, "keyType"    # I
    .param p3, "valueType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;III)I"
        }
    .end annotation

    .prologue
    .line 463
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/4 v3, 0x0

    .line 464
    .local v3, "size":I
    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I)I

    move-result v4

    .line 465
    .local v4, "tagSize":I
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 466
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 467
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 468
    .local v5, "value":Ljava/lang/Object;, "TV;"
    if-eqz v2, :cond_0

    if-nez v5, :cond_1

    .line 469
    :cond_0
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "keys and values in maps cannot be null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 472
    :cond_1
    const/4 v7, 0x1

    const/16 v8, 0x9

    .line 473
    invoke-static {v7, v8, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IILjava/lang/Object;)I

    move-result v7

    const/4 v8, 0x2

    .line 474
    invoke-static {v8, p3, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IILjava/lang/Object;)I

    move-result v8

    add-int v1, v7, v8

    .line 475
    .local v1, "entrySize":I
    add-int v7, v4, v1

    .line 476
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(I)I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v3, v7

    .line 477
    goto :goto_0

    .line 478
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v1    # "entrySize":I
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v5    # "value":Ljava/lang/Object;, "TV;"
    :cond_2
    return v3
.end method

.method private static a(I)Ljava/lang/Object;
    .locals 3
    .param p0, "type"    # I

    .prologue
    .line 342
    packed-switch p0, :pswitch_data_0

    .line 369
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a primitive type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :pswitch_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 365
    :goto_0
    return-object v0

    .line 346
    :pswitch_2
    sget-object v0, Lixf;->h:[B

    goto :goto_0

    .line 348
    :pswitch_3
    const-string/jumbo v0, ""

    goto :goto_0

    .line 350
    :pswitch_4
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 352
    :pswitch_5
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 359
    :pswitch_6
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 365
    :pswitch_7
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 342
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static final a(Lixa;Ljava/util/Map;Lixc$b;IILjava/lang/Object;II)Ljava/util/Map;
    .locals 6
    .param p0, "input"    # Lixa;
    .param p2, "mapFactory"    # Lixc$b;
    .param p3, "keyType"    # I
    .param p4, "valueType"    # I
    .param p6, "keyTag"    # I
    .param p7, "valueTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lixa;",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lixc$b;",
            "IITV;II)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p5, "value":Ljava/lang/Object;, "TV;"
    const/16 v5, 0x9

    .line 400
    invoke-interface {p2, p1}, Lixc$b;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 401
    invoke-virtual {p0}, Lixa;->e()I

    move-result v1

    .line 402
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lixa;->c(I)I

    move-result v2

    .line 403
    .local v2, "oldLimit":I
    const/4 v0, 0x0

    .line 405
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lixa;->a()I

    move-result v3

    .line 406
    .local v3, "tag":I
    if-eqz v3, :cond_4

    .line 409
    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    .line 410
    invoke-virtual {p0, v5}, Lixa;->e(I)Ljava/lang/Object;

    move-result-object v0

    .local v0, "key":Ljava/lang/Object;, "TK;"
    goto :goto_0

    .line 411
    .end local v0    # "key":Ljava/lang/Object;, "TK;"
    :cond_1
    if-ne v3, p7, :cond_3

    .line 412
    const/16 v4, 0xb

    if-ne p4, v4, :cond_2

    move-object v4, p5

    .line 413
    check-cast v4, Lixd;

    invoke-virtual {p0, v4}, Lixa;->a(Lixd;)V

    goto :goto_0

    .line 415
    :cond_2
    invoke-virtual {p0, p4}, Lixa;->e(I)Ljava/lang/Object;

    move-result-object p5

    goto :goto_0

    .line 418
    :cond_3
    invoke-virtual {p0, v3}, Lixa;->b(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 423
    :cond_4
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lixa;->a(I)V

    .line 424
    invoke-virtual {p0, v2}, Lixa;->d(I)V

    .line 426
    if-nez v0, :cond_5

    .line 428
    invoke-static {v5}, Lixb;->a(I)Ljava/lang/Object;

    move-result-object v0

    .line 431
    :cond_5
    if-nez p5, :cond_6

    .line 433
    invoke-static {p4}, Lixb;->a(I)Ljava/lang/Object;

    move-result-object p5

    .line 436
    :cond_6
    invoke-interface {p1, v0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    return-object p1
.end method

.method public static a(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;Ljava/util/Map;III)V
    .locals 10
    .param p0, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .param p2, "number"    # I
    .param p3, "keyType"    # I
    .param p4, "valueType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/nano/CodedOutputByteBufferNano;",
            "Ljava/util/Map",
            "<TK;TV;>;III)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/16 v9, 0x9

    const/4 v8, 0x1

    const/4 v7, 0x2

    .line 444
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 445
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 446
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 447
    .local v3, "value":Ljava/lang/Object;, "TV;"
    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    .line 448
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "keys and values in maps cannot be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 452
    :cond_1
    invoke-static {v8, v9, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IILjava/lang/Object;)I

    move-result v5

    .line 453
    invoke-static {v7, p4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IILjava/lang/Object;)I

    move-result v6

    add-int v1, v5, v6

    .line 454
    .local v1, "entrySize":I
    invoke-virtual {p0, p2, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(II)V

    .line 455
    invoke-virtual {p0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(I)V

    .line 456
    invoke-virtual {p0, v8, v9, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IILjava/lang/Object;)V

    .line 457
    invoke-virtual {p0, v7, p4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IILjava/lang/Object;)V

    goto :goto_0

    .line 459
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v1    # "entrySize":I
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    :cond_2
    return-void
.end method
