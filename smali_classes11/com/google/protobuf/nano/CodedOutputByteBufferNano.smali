.class public final Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
.super Ljava/lang/Object;
.source "CodedOutputByteBufferNano.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;
    }
.end annotation


# instance fields
.field public final a:Ljava/nio/ByteBuffer;


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    .line 65
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 66
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 60
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;-><init>(Ljava/nio/ByteBuffer;)V

    .line 61
    return-void
.end method

.method public static a(I)I
    .locals 1
    .param p0, "fieldNumber"    # I

    .prologue
    .line 982
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lixf;->a(II)I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(I)I

    move-result v0

    return v0
.end method

.method public static a(IILjava/lang/Object;)I
    .locals 3
    .param p0, "number"    # I
    .param p1, "type"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 1092
    packed-switch p1, :pswitch_data_0

    .line 1130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unknown type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1094
    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3621
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1128
    :goto_0
    return v0

    .line 1096
    .restart local p2    # "object":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, [B

    .end local p2    # "object":Ljava/lang/Object;
    check-cast p2, [B

    invoke-static {p0, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(I[B)I

    move-result v0

    goto :goto_0

    .line 1098
    .restart local p2    # "object":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Ljava/lang/String;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-static {p0, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1100
    .restart local p2    # "object":Ljava/lang/Object;
    :pswitch_3
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 4570
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    .line 1100
    goto :goto_0

    .line 1102
    .restart local p2    # "object":Ljava/lang/Object;
    :pswitch_4
    check-cast p2, Ljava/lang/Double;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    .line 5562
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    .line 1102
    goto :goto_0

    .line 1104
    .restart local p2    # "object":Ljava/lang/Object;
    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5674
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I)I

    move-result v1

    .line 5853
    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(I)I

    move-result v0

    .line 5674
    add-int/2addr v0, v1

    .line 1104
    goto :goto_0

    .line 1106
    .restart local p2    # "object":Ljava/lang/Object;
    :pswitch_6
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 6612
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    .line 1106
    goto :goto_0

    .line 1108
    .restart local p2    # "object":Ljava/lang/Object;
    :pswitch_7
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(II)I

    move-result v0

    goto :goto_0

    .line 1110
    .restart local p2    # "object":Ljava/lang/Object;
    :pswitch_8
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 6665
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I)I

    move-result v1

    .line 6845
    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(I)I

    move-result v0

    .line 6665
    add-int/2addr v0, v1

    .line 1110
    goto :goto_0

    .line 1112
    .restart local p2    # "object":Ljava/lang/Object;
    :pswitch_9
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 7700
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I)I

    move-result v1

    .line 7877
    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->f(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(I)I

    move-result v0

    .line 7700
    add-int/2addr v0, v1

    .line 1112
    goto/16 :goto_0

    .line 1114
    .restart local p2    # "object":Ljava/lang/Object;
    :pswitch_a
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 8683
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    .line 1114
    goto/16 :goto_0

    .line 1116
    .restart local p2    # "object":Ljava/lang/Object;
    :pswitch_b
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(IJ)I

    move-result v0

    goto/16 :goto_0

    .line 1118
    .restart local p2    # "object":Ljava/lang/Object;
    :pswitch_c
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 9578
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I)I

    move-result v2

    .line 9758
    invoke-static {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(J)I

    move-result v0

    .line 9578
    add-int/2addr v0, v2

    .line 1118
    goto/16 :goto_0

    .line 1120
    .restart local p2    # "object":Ljava/lang/Object;
    :pswitch_d
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 10708
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I)I

    move-result v2

    .line 10885
    invoke-static {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(J)I

    move-result v0

    .line 10708
    add-int/2addr v0, v2

    .line 1120
    goto/16 :goto_0

    .line 1122
    .restart local p2    # "object":Ljava/lang/Object;
    :pswitch_e
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 11603
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    .line 1122
    goto/16 :goto_0

    .line 1124
    .restart local p2    # "object":Ljava/lang/Object;
    :pswitch_f
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 11692
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    .line 1124
    goto/16 :goto_0

    .line 1126
    .restart local p2    # "object":Ljava/lang/Object;
    :pswitch_10
    check-cast p2, Lixd;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-static {p0, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILixd;)I

    move-result v0

    goto/16 :goto_0

    .line 1128
    .restart local p2    # "object":Ljava/lang/Object;
    :pswitch_11
    check-cast p2, Lixd;

    .line 12639
    .end local p2    # "object":Ljava/lang/Object;
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 12820
    invoke-virtual {p2}, Lixd;->getSerializedSize()I

    move-result v1

    .line 12639
    add-int/2addr v0, v1

    .line 1128
    goto/16 :goto_0

    .line 1092
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_b
        :pswitch_c
        :pswitch_7
        :pswitch_e
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_11
        :pswitch_10
        :pswitch_1
        :pswitch_8
        :pswitch_5
        :pswitch_a
        :pswitch_f
        :pswitch_9
        :pswitch_d
    .end packed-switch
.end method

.method private static a(Ljava/lang/CharSequence;)I
    .locals 10
    .param p0, "sequence"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v9, 0x800

    .line 340
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 341
    .local v2, "utf16Length":I
    move v3, v2

    .line 342
    .local v3, "utf8Length":I
    const/4 v1, 0x0

    .line 345
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x80

    if-ge v4, v5, :cond_0

    .line 346
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 350
    :cond_0
    :goto_1
    if-ge v1, v2, :cond_6

    .line 351
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 352
    .local v0, "c":C
    if-ge v0, v9, :cond_1

    .line 353
    rsub-int/lit8 v4, v0, 0x7f

    ushr-int/lit8 v4, v4, 0x1f

    add-int/2addr v3, v4

    .line 350
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2369
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 2370
    const/4 v5, 0x0

    move v4, v1

    .line 2371
    :goto_2
    if-ge v4, v6, :cond_5

    .line 2372
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 2373
    if-ge v7, v9, :cond_3

    .line 2374
    rsub-int/lit8 v7, v7, 0x7f

    ushr-int/lit8 v7, v7, 0x1f

    add-int/2addr v5, v7

    .line 2371
    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2376
    :cond_3
    add-int/lit8 v5, v5, 0x2

    .line 2378
    const v8, 0xd800

    if-gt v8, v7, :cond_2

    const v8, 0xdfff

    if-gt v7, v8, :cond_2

    .line 2380
    invoke-static {p0, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v7

    .line 2381
    const/high16 v8, 0x10000

    if-ge v7, v8, :cond_4

    .line 2382
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Unpaired surrogate at index "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2384
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 355
    :cond_5
    add-int/2addr v3, v5

    .line 360
    .end local v0    # "c":C
    :cond_6
    if-ge v3, v2, :cond_7

    .line 362
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "UTF-8 length does not fit in int: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v6, v3

    const-wide v8, 0x100000000L

    add-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 365
    :cond_7
    return v3
.end method

.method private static a(Ljava/lang/CharSequence;[BII)I
    .locals 11
    .param p0, "sequence"    # Ljava/lang/CharSequence;
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/16 v10, 0x80

    .line 457
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 458
    .local v7, "utf16Length":I
    move v3, p2

    .line 459
    .local v3, "j":I
    const/4 v2, 0x0

    .line 460
    .local v2, "i":I
    add-int v5, p2, p3

    .line 463
    .local v5, "limit":I
    :goto_0
    if-ge v2, v7, :cond_0

    add-int v8, v2, v3

    if-ge v8, v5, :cond_0

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .local v0, "c":C
    if-ge v0, v10, :cond_0

    .line 464
    add-int v8, v3, v2

    int-to-byte v9, v0

    aput-byte v9, p1, v8

    .line 463
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 466
    .end local v0    # "c":C
    :cond_0
    if-ne v2, v7, :cond_1

    .line 467
    add-int v4, v3, v7

    .line 498
    :goto_1
    return v4

    .line 469
    :cond_1
    add-int/2addr v3, v2

    move v4, v3

    .line 470
    .end local v3    # "j":I
    .local v4, "j":I
    :goto_2
    if-ge v2, v7, :cond_9

    .line 471
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 472
    .restart local v0    # "c":C
    if-ge v0, v10, :cond_2

    if-ge v4, v5, :cond_2

    .line 473
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    int-to-byte v8, v0

    aput-byte v8, p1, v4

    .line 470
    :goto_3
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .end local v3    # "j":I
    .restart local v4    # "j":I
    goto :goto_2

    .line 474
    :cond_2
    const/16 v8, 0x800

    if-ge v0, v8, :cond_3

    add-int/lit8 v8, v5, -0x2

    if-gt v4, v8, :cond_3

    .line 475
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    ushr-int/lit8 v8, v0, 0x6

    or-int/lit16 v8, v8, 0x3c0

    int-to-byte v8, v8

    aput-byte v8, p1, v4

    .line 476
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    and-int/lit8 v8, v0, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, p1, v3

    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_3

    .line 477
    .end local v3    # "j":I
    .restart local v4    # "j":I
    :cond_3
    const v8, 0xd800

    if-lt v0, v8, :cond_4

    const v8, 0xdfff

    if-ge v8, v0, :cond_5

    :cond_4
    add-int/lit8 v8, v5, -0x3

    if-gt v4, v8, :cond_5

    .line 479
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    ushr-int/lit8 v8, v0, 0xc

    or-int/lit16 v8, v8, 0x1e0

    int-to-byte v8, v8

    aput-byte v8, p1, v4

    .line 480
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    ushr-int/lit8 v8, v0, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, p1, v3

    .line 481
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    and-int/lit8 v8, v0, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, p1, v4

    goto :goto_3

    .line 482
    .end local v3    # "j":I
    .restart local v4    # "j":I
    :cond_5
    add-int/lit8 v8, v5, -0x4

    if-gt v4, v8, :cond_8

    .line 485
    add-int/lit8 v8, v2, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-eq v8, v9, :cond_6

    add-int/lit8 v2, v2, 0x1

    .line 486
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .local v6, "low":C
    invoke-static {v0, v6}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v8

    if-nez v8, :cond_7

    .line 487
    .end local v6    # "low":C
    :cond_6
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Unpaired surrogate at index "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 489
    .restart local v6    # "low":C
    :cond_7
    invoke-static {v0, v6}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    .line 490
    .local v1, "codePoint":I
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    ushr-int/lit8 v8, v1, 0x12

    or-int/lit16 v8, v8, 0xf0

    int-to-byte v8, v8

    aput-byte v8, p1, v4

    .line 491
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    ushr-int/lit8 v8, v1, 0xc

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, p1, v3

    .line 492
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    ushr-int/lit8 v8, v1, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, p1, v4

    .line 493
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    and-int/lit8 v8, v1, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, p1, v3

    move v3, v4

    .line 494
    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto/16 :goto_3

    .line 495
    .end local v1    # "codePoint":I
    .end local v3    # "j":I
    .end local v6    # "low":C
    .restart local v4    # "j":I
    :cond_8
    new-instance v8, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Failed writing "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " at index "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v8

    .end local v0    # "c":C
    :cond_9
    move v3, v4

    .line 498
    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto/16 :goto_1
.end method

.method public static a(Ljava/lang/String;)I
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 811
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(Ljava/lang/CharSequence;)I

    move-result v0

    .line 812
    .local v0, "length":I
    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method private a(J)V
    .locals 5
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1017
    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1018
    long-to-int v0, p1

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(I)V

    .line 1019
    return-void

    .line 1021
    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(I)V

    .line 1022
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p0, "sequence"    # Ljava/lang/CharSequence;
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 408
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 409
    new-instance v3, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v3}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v3

    .line 410
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 413
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 414
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v4, v5

    .line 415
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    .line 412
    invoke-static {p0, v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(Ljava/lang/CharSequence;[BII)I

    move-result v2

    .line 416
    .local v2, "encoded":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    .end local v2    # "encoded":I
    :goto_0
    return-void

    .line 417
    :catch_0
    move-exception v1

    .line 418
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    .line 419
    .local v0, "boe":Ljava/nio/BufferOverflowException;
    invoke-virtual {v0, v1}, Ljava/nio/BufferOverflowException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 420
    throw v0

    .line 423
    .end local v0    # "boe":Ljava/nio/BufferOverflowException;
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_1
    invoke-static {p0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    goto :goto_0
.end method

.method public static b(II)I
    .locals 2
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I

    .prologue
    .line 594
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I)I

    move-result v1

    .line 2774
    if-ltz p1, :cond_0

    .line 2775
    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(I)I

    move-result v0

    .line 594
    :goto_0
    add-int/2addr v0, v1

    return v0

    .line 2778
    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static b(IJ)I
    .locals 3
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # J

    .prologue
    .line 586
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I)I

    move-result v0

    .line 2766
    invoke-static {p1, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(J)I

    move-result v1

    .line 586
    add-int/2addr v0, v1

    return v0
.end method

.method public static b(ILixd;)I
    .locals 3
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Lixd;

    .prologue
    .line 648
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I)I

    move-result v0

    .line 2828
    invoke-virtual {p1}, Lixd;->getSerializedSize()I

    move-result v1

    .line 2829
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 648
    add-int/2addr v0, v1

    return v0
.end method

.method public static b(ILjava/lang/String;)I
    .locals 2
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 630
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(I[B)I
    .locals 3
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # [B

    .prologue
    .line 657
    invoke-static {p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I)I

    move-result v0

    .line 2837
    array-length v1, p1

    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(I)I

    move-result v1

    array-length v2, p1

    add-int/2addr v1, v2

    .line 657
    add-int/2addr v0, v1

    return v0
.end method

.method private static b(J)I
    .locals 4
    .param p0, "value"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 1029
    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1038
    :goto_0
    return v0

    .line 1030
    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 1031
    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 1032
    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 1033
    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    .line 1034
    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    .line 1035
    :cond_5
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    .line 1036
    :cond_6
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    const/16 v0, 0x8

    goto :goto_0

    .line 1037
    :cond_7
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    const/16 v0, 0x9

    goto :goto_0

    .line 1038
    :cond_8
    const/16 v0, 0xa

    goto :goto_0
.end method

.method private static b(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 8
    .param p0, "sequence"    # Ljava/lang/CharSequence;
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 428
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 429
    .local v4, "utf16Length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_6

    .line 430
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 431
    .local v0, "c":C
    const/16 v5, 0x80

    if-ge v0, v5, :cond_0

    .line 432
    int-to-byte v5, v0

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 429
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 433
    :cond_0
    const/16 v5, 0x800

    if-ge v0, v5, :cond_1

    .line 434
    ushr-int/lit8 v5, v0, 0x6

    or-int/lit16 v5, v5, 0x3c0

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 435
    and-int/lit8 v5, v0, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 436
    :cond_1
    const v5, 0xd800

    if-lt v0, v5, :cond_2

    const v5, 0xdfff

    if-ge v5, v0, :cond_3

    .line 438
    :cond_2
    ushr-int/lit8 v5, v0, 0xc

    or-int/lit16 v5, v5, 0x1e0

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 439
    ushr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 440
    and-int/lit8 v5, v0, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 443
    :cond_3
    add-int/lit8 v5, v2, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eq v5, v6, :cond_4

    add-int/lit8 v2, v2, 0x1

    .line 444
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .local v3, "low":C
    invoke-static {v0, v3}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-nez v5, :cond_5

    .line 445
    .end local v3    # "low":C
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Unpaired surrogate at index "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 447
    .restart local v3    # "low":C
    :cond_5
    invoke-static {v0, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    .line 448
    .local v1, "codePoint":I
    ushr-int/lit8 v5, v1, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 449
    ushr-int/lit8 v5, v1, 0xc

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 450
    ushr-int/lit8 v5, v1, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 451
    and-int/lit8 v5, v1, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_1

    .line 454
    .end local v0    # "c":C
    .end local v1    # "codePoint":I
    .end local v3    # "low":C
    :cond_6
    return-void
.end method

.method public static c(I)I
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 1007
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1011
    :goto_0
    return v0

    .line 1008
    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 1009
    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 1010
    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 1011
    :cond_3
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private c(J)V
    .locals 3
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 1054
    new-instance v0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw v0

    .line 1056
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1057
    return-void
.end method

.method private static d(J)J
    .locals 4
    .param p0, "n"    # J

    .prologue
    .line 1088
    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long v2, p0, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private d(I)V
    .locals 3
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 955
    int-to-byte v0, p1

    .line 2945
    iget-object v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2947
    new-instance v0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw v0

    .line 2950
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 956
    return-void
.end method

.method private e(I)V
    .locals 3
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 1044
    new-instance v0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw v0

    .line 1046
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1047
    return-void
.end method

.method private static f(I)I
    .locals 2
    .param p0, "n"    # I

    .prologue
    .line 1073
    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 v1, p0, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final a(II)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(II)V

    .line 1272
    if-ltz p2, :cond_0

    .line 1273
    invoke-virtual {p0, p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(I)V

    :goto_0
    return-void

    .line 1276
    :cond_0
    int-to-long v0, p2

    invoke-direct {p0, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(J)V

    goto :goto_0
.end method

.method public final a(IJ)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(II)V

    .line 1267
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(J)V

    .line 118
    return-void
.end method

.method public final a(ILixd;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lixd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(II)V

    .line 1511
    invoke-virtual {p2}, Lixd;->getCachedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(I)V

    .line 1512
    invoke-virtual {p2, p0}, Lixd;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 168
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 4
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 151
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(II)V

    .line 1301
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(I)I

    move-result v0

    .line 1302
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(I)I

    move-result v1

    .line 1303
    if-ne v0, v1, :cond_1

    .line 1304
    iget-object v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 1308
    iget-object v2, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-ge v2, v0, :cond_0

    .line 1309
    new-instance v2, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-direct {v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw v2
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1321
    :catch_0
    move-exception v0

    .line 1322
    new-instance v1, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object v2, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget-object v3, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    .line 1323
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    .line 1324
    invoke-virtual {v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1325
    throw v1

    .line 1311
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    add-int v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1312
    iget-object v2, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-static {p2, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    .line 1313
    iget-object v2, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 1314
    iget-object v3, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1315
    sub-int v1, v2, v1

    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(I)V

    .line 1316
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1326
    :goto_0
    return-void

    .line 1318
    :cond_1
    invoke-static {p2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(I)V

    .line 1319
    iget-object v0, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-static {p2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catch Ljava/nio/BufferOverflowException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final a(IZ)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 144
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(II)V

    .line 1292
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(I)V

    .line 146
    return-void
.end method

.method public final a(I[B)V
    .locals 3
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 173
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(II)V

    .line 1517
    array-length v0, p2

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(I)V

    .line 1960
    array-length v0, p2

    .line 1966
    iget-object v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 1967
    iget-object v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void

    .line 1970
    :cond_0
    new-instance v0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object v1, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw v0
.end method

.method public final b(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 991
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 992
    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(I)V

    .line 993
    return-void

    .line 995
    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(I)V

    .line 996
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public final b(IILjava/lang/Object;)V
    .locals 25
    .param p1, "number"    # I
    .param p2, "type"    # I
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1136
    packed-switch p2, :pswitch_data_0

    .line 1210
    new-instance v22, Ljava/io/IOException;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string/jumbo v24, "Unknown type: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v22

    :pswitch_0
    move-object/from16 v6, p3

    .line 1138
    check-cast v6, Ljava/lang/Double;

    .line 1139
    .local v6, "doubleValue":Ljava/lang/Double;
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    .line 13095
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(II)V

    .line 13252
    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(J)V

    .line 1208
    .end local v6    # "doubleValue":Ljava/lang/Double;
    .end local p3    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .restart local p3    # "value":Ljava/lang/Object;
    :pswitch_1
    move-object/from16 v10, p3

    .line 1142
    check-cast v10, Ljava/lang/Float;

    .line 1143
    .local v10, "floatValue":Ljava/lang/Float;
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v22

    .line 14102
    const/16 v23, 0x5

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(II)V

    .line 14257
    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(I)V

    goto :goto_0

    .end local v10    # "floatValue":Ljava/lang/Float;
    :pswitch_2
    move-object/from16 v13, p3

    .line 1146
    check-cast v13, Ljava/lang/Long;

    .line 1147
    .local v13, "int64Value":Ljava/lang/Long;
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IJ)V

    goto :goto_0

    .end local v13    # "int64Value":Ljava/lang/Long;
    :pswitch_3
    move-object/from16 v21, p3

    .line 1150
    check-cast v21, Ljava/lang/Long;

    .line 1151
    .local v21, "uint64Value":Ljava/lang/Long;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    .line 15109
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(II)V

    .line 15262
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(J)V

    goto :goto_0

    .end local v21    # "uint64Value":Ljava/lang/Long;
    :pswitch_4
    move-object/from16 v12, p3

    .line 1154
    check-cast v12, Ljava/lang/Integer;

    .line 1155
    .local v12, "int32Value":Ljava/lang/Integer;
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(II)V

    goto :goto_0

    .end local v12    # "int32Value":Ljava/lang/Integer;
    :pswitch_5
    move-object/from16 v9, p3

    .line 1158
    check-cast v9, Ljava/lang/Long;

    .line 1159
    .local v9, "fixed64Value":Ljava/lang/Long;
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    .line 16130
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(II)V

    .line 16282
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(J)V

    goto/16 :goto_0

    .end local v9    # "fixed64Value":Ljava/lang/Long;
    :pswitch_6
    move-object/from16 v8, p3

    .line 1162
    check-cast v8, Ljava/lang/Integer;

    .line 1163
    .local v8, "fixed32Value":Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 17137
    const/16 v23, 0x5

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(II)V

    .line 17287
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(I)V

    goto/16 :goto_0

    .end local v8    # "fixed32Value":Ljava/lang/Integer;
    :pswitch_7
    move-object/from16 v4, p3

    .line 1166
    check-cast v4, Ljava/lang/Boolean;

    .line 1167
    .local v4, "boolValue":Ljava/lang/Boolean;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(IZ)V

    goto/16 :goto_0

    .end local v4    # "boolValue":Ljava/lang/Boolean;
    :pswitch_8
    move-object/from16 v19, p3

    .line 1170
    check-cast v19, Ljava/lang/String;

    .line 1171
    .local v19, "stringValue":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1174
    .end local v19    # "stringValue":Ljava/lang/String;
    :pswitch_9
    check-cast p3, [B

    .end local p3    # "value":Ljava/lang/Object;
    move-object/from16 v5, p3

    check-cast v5, [B

    .line 1175
    .local v5, "bytesValue":[B
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(I[B)V

    goto/16 :goto_0

    .end local v5    # "bytesValue":[B
    .restart local p3    # "value":Ljava/lang/Object;
    :pswitch_a
    move-object/from16 v20, p3

    .line 1178
    check-cast v20, Ljava/lang/Integer;

    .line 1179
    .local v20, "uint32Value":Ljava/lang/Integer;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 18180
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(II)V

    .line 18523
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(I)V

    goto/16 :goto_0

    .end local v20    # "uint32Value":Ljava/lang/Integer;
    :pswitch_b
    move-object/from16 v7, p3

    .line 1182
    check-cast v7, Ljava/lang/Integer;

    .line 1183
    .local v7, "enumValue":Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 19190
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(II)V

    .line 19531
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(I)V

    goto/16 :goto_0

    .end local v7    # "enumValue":Ljava/lang/Integer;
    :pswitch_c
    move-object/from16 v15, p3

    .line 1186
    check-cast v15, Ljava/lang/Integer;

    .line 1187
    .local v15, "sfixed32Value":Ljava/lang/Integer;
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 20197
    const/16 v23, 0x5

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(II)V

    .line 20536
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(I)V

    goto/16 :goto_0

    .end local v15    # "sfixed32Value":Ljava/lang/Integer;
    :pswitch_d
    move-object/from16 v16, p3

    .line 1190
    check-cast v16, Ljava/lang/Long;

    .line 1191
    .local v16, "sfixed64Value":Ljava/lang/Long;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    .line 21204
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(II)V

    .line 21541
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(J)V

    goto/16 :goto_0

    .end local v16    # "sfixed64Value":Ljava/lang/Long;
    :pswitch_e
    move-object/from16 v17, p3

    .line 1194
    check-cast v17, Ljava/lang/Integer;

    .line 1195
    .local v17, "sint32Value":Ljava/lang/Integer;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 22211
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(II)V

    .line 22546
    invoke-static/range {v22 .. v22}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->f(I)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(I)V

    goto/16 :goto_0

    .end local v17    # "sint32Value":Ljava/lang/Integer;
    :pswitch_f
    move-object/from16 v18, p3

    .line 1198
    check-cast v18, Ljava/lang/Long;

    .line 1199
    .local v18, "sint64Value":Ljava/lang/Long;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    .line 23218
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(II)V

    .line 23551
    invoke-static/range {v22 .. v23}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(J)J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(J)V

    goto/16 :goto_0

    .end local v18    # "sint64Value":Ljava/lang/Long;
    :pswitch_10
    move-object/from16 v14, p3

    .line 1202
    check-cast v14, Lixd;

    .line 1203
    .local v14, "messageValue":Lixd;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILixd;)V

    goto/16 :goto_0

    .end local v14    # "messageValue":Lixd;
    :pswitch_11
    move-object/from16 v11, p3

    .line 1206
    check-cast v11, Lixd;

    .line 24158
    .local v11, "groupValue":Lixd;
    const/16 v22, 0x3

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(II)V

    .line 24506
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Lixd;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 24160
    const/16 v22, 0x4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(II)V

    goto/16 :goto_0

    .line 1136
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_11
        :pswitch_10
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public final c(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "wireType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 977
    invoke-static {p1, p2}, Lixf;->a(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(I)V

    .line 978
    return-void
.end method
