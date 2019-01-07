.class public final Lizp;
.super Ljava/lang/Object;
.source "ClientSideCodec.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lizy;)Ljava/nio/ByteBuffer;
    .locals 7
    .param p0, "in"    # Lizy;

    .prologue
    .line 13
    invoke-virtual {p0}, Lizy;->b()[B

    move-result-object v2

    .line 15
    .local v2, "packs":[B
    array-length v3, v2

    add-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 16
    .local v1, "out":Ljava/nio/ByteBuffer;
    new-instance v0, Lizu;

    iget v4, p0, Lizy;->c:I

    .line 1027
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 1028
    const-class v5, Lizw;

    if-ne v3, v5, :cond_1

    .line 1029
    const/4 v3, 0x0

    .line 16
    :goto_0
    array-length v5, v2

    iget-object v6, p0, Lizy;->f:Lcom/laiwang/lws/protocol/Attributes;

    invoke-virtual {v6}, Lcom/laiwang/lws/protocol/Attributes;->b()I

    move-result v6

    invoke-direct {v0, v4, v3, v5, v6}, Lizu;-><init>(IIII)V

    .line 2030
    .local v0, "h":Lizu;
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 2031
    iget v4, v0, Lizu;->b:I

    shl-int/lit8 v4, v4, 0xc

    iget v5, v0, Lizu;->c:I

    or-int/2addr v4, v5

    int-to-short v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2032
    iget v4, v0, Lizu;->a:I

    if-lez v4, :cond_0

    .line 2034
    iget v4, v0, Lizu;->a:I

    shl-int/lit8 v4, v4, 0xe

    iget v5, v0, Lizu;->d:I

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    int-to-short v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2036
    :cond_0
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 17
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 18
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 19
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 20
    return-object v1

    .line 1031
    .end local v0    # "h":Lizu;
    :cond_1
    const-class v5, Lizv;

    if-ne v3, v5, :cond_2

    .line 1032
    const/4 v3, 0x1

    goto :goto_0

    .line 1034
    :cond_2
    const-class v5, Lizs;

    if-ne v3, v5, :cond_3

    .line 1035
    const/4 v3, 0x2

    goto :goto_0

    .line 1037
    :cond_3
    const-class v5, Lizt;

    if-ne v3, v5, :cond_4

    .line 1038
    const/4 v3, 0x3

    goto :goto_0

    .line 1040
    :cond_4
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Unregistered packet type: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static a(Ljaa;Ljava/nio/ByteBuffer;Ljava/util/List;)V
    .locals 11
    .param p0, "cipher"    # Ljaa;
    .param p1, "in"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljaa;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/List",
            "<",
            "Lizy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "out":Ljava/util/List;, "Ljava/util/List<Lizy;>;"
    const/4 v10, 0x4

    const/4 v9, 0x2

    .line 26
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-le v5, v10, :cond_0

    .line 27
    new-array v2, v10, [B

    .line 28
    .local v2, "hValue":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 2043
    const/4 v5, 0x0

    invoke-static {v2, v5, v9}, Ljab;->b([BII)S

    move-result v5

    .line 2044
    const v6, 0xf000

    and-int/2addr v6, v5

    shr-int/lit8 v6, v6, 0xc

    int-to-short v6, v6

    .line 2045
    and-int/lit16 v5, v5, 0xfff

    .line 2047
    invoke-static {v2, v9, v9}, Ljab;->b([BII)S

    move-result v7

    .line 2048
    shr-int/lit8 v8, v7, 0xe

    .line 2049
    shr-int/lit8 v7, v7, 0x8

    and-int/lit8 v7, v7, 0x3f

    .line 2050
    new-instance v1, Lizu;

    invoke-direct {v1, v8, v6, v5, v7}, Lizu;-><init>(IIII)V

    .line 31
    .local v1, "h":Lizu;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    iget v6, v1, Lizu;->c:I

    add-int/lit8 v6, v6, 0x4

    if-ge v5, v6, :cond_1

    .line 49
    .end local v1    # "h":Lizu;
    .end local v2    # "hValue":[B
    :cond_0
    return-void

    .line 33
    .restart local v1    # "h":Lizu;
    .restart local v2    # "hValue":[B
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 35
    iget v5, v1, Lizu;->b:I

    iget v6, v1, Lizu;->a:I

    .line 2051
    packed-switch v5, :pswitch_data_0

    .line 2061
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "unknown type: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2053
    :pswitch_0
    new-instance v4, Lizw;

    invoke-direct {v4, p0, v6}, Lizw;-><init>(Ljaa;I)V

    .line 36
    .local v4, "packet":Lizy;
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 37
    .local v0, "duplicate":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    iget v6, v1, Lizu;->c:I

    add-int/2addr v5, v6

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 38
    iget v5, v1, Lizu;->c:I

    new-array v3, v5, [B

    .line 39
    .local v3, "p":[B
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 41
    iget v5, v1, Lizu;->d:I

    if-lez v5, :cond_2

    .line 42
    iget v5, v1, Lizu;->d:I

    invoke-virtual {v4, v3, v5}, Lizy;->a([BI)V

    .line 46
    :goto_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    iget v6, v1, Lizu;->c:I

    add-int/2addr v5, v6

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 47
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2055
    .end local v0    # "duplicate":Ljava/nio/ByteBuffer;
    .end local v3    # "p":[B
    .end local v4    # "packet":Lizy;
    :pswitch_1
    new-instance v4, Lizv;

    invoke-direct {v4, p0, v6}, Lizv;-><init>(Ljaa;I)V

    goto :goto_1

    .line 2057
    :pswitch_2
    new-instance v4, Lizt;

    invoke-direct {v4, p0, v6}, Lizt;-><init>(Ljaa;I)V

    goto :goto_1

    .line 2059
    :pswitch_3
    new-instance v4, Lizs;

    invoke-direct {v4, p0, v6}, Lizs;-><init>(Ljaa;I)V

    goto :goto_1

    .line 44
    .restart local v0    # "duplicate":Ljava/nio/ByteBuffer;
    .restart local v3    # "p":[B
    .restart local v4    # "packet":Lizy;
    :cond_2
    invoke-virtual {v4, v3}, Lizy;->a([B)V

    goto :goto_2

    .line 2051
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
