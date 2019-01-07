.class public abstract Lizr;
.super Ljava/lang/Object;
.source "Context.java"


# instance fields
.field protected c:Ljaa;

.field public d:I

.field protected final e:I

.field protected f:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lizq;",
            ">;"
        }
    .end annotation
.end field

.field protected h:I

.field protected i:I

.field protected final j:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lizr;->c:Ljaa;

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Lizr;->d:I

    .line 16
    const/16 v0, 0xfe9

    iput v0, p0, Lizr;->e:I

    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lizr;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lizr;->g:Ljava/util/Map;

    .line 24
    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lizr;->j:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final a([BLjava/util/List;)V
    .locals 16
    .param p1, "payload"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List",
            "<",
            "Lizt;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 27
    .local p2, "outs":Ljava/util/List;, "Ljava/util/List<Lizt;>;"
    const/16 v4, 0xfe9

    .line 28
    .local v4, "chunkSize":I
    move-object/from16 v0, p1

    array-length v11, v0

    const/16 v12, 0xfe9

    if-le v11, v12, :cond_3

    .line 29
    const/4 v5, 0x0

    .line 30
    .local v5, "cid":I
    move-object/from16 v0, p0

    iget v11, v0, Lizr;->d:I

    if-lez v11, :cond_0

    .line 31
    add-int/lit8 v4, v4, -0x8

    .line 32
    move-object/from16 v0, p0

    iget-object v11, v0, Lizr;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v11

    and-int/lit16 v5, v11, 0xff

    .line 35
    :cond_0
    const/4 v7, 0x0

    .local v7, "i":I
    const/4 v9, 0x0

    .local v9, "offset":I
    :goto_0
    move-object/from16 v0, p1

    array-length v11, v0

    if-ge v9, v11, :cond_5

    .line 36
    mul-int v10, v7, v4

    .line 37
    .local v10, "startPos":I
    move v8, v4

    .line 38
    .local v8, "len":I
    add-int/lit8 v11, v7, 0x1

    mul-int/2addr v11, v4

    move-object/from16 v0, p1

    array-length v12, v0

    if-le v11, v12, :cond_1

    .line 39
    move-object/from16 v0, p1

    array-length v11, v0

    mul-int v12, v7, v4

    sub-int v8, v11, v12

    .line 41
    :cond_1
    new-array v2, v8, [B

    .line 42
    .local v2, "buffer":[B
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v10, v2, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    move-object/from16 v0, p0

    iget-object v11, v0, Lizr;->c:Ljaa;

    move-object/from16 v0, p0

    iget v12, v0, Lizr;->d:I

    invoke-static {v11, v12, v2}, Lizz;->a(Ljaa;I[B)Lizt;

    move-result-object v6

    .line 44
    .local v6, "data":Lizt;
    move-object/from16 v0, p0

    iget v11, v0, Lizr;->d:I

    if-lez v11, :cond_2

    .line 45
    new-instance v3, Lcom/laiwang/lws/protocol/Attributes$b;

    invoke-direct {v3}, Lcom/laiwang/lws/protocol/Attributes$b;-><init>()V

    .line 46
    .local v3, "chunkAtt":Lcom/laiwang/lws/protocol/Attributes$b;
    iput v5, v3, Lcom/laiwang/lws/protocol/Attributes$b;->a:I

    .line 47
    move-object/from16 v0, p1

    array-length v11, v0

    int-to-long v12, v11

    iput-wide v12, v3, Lcom/laiwang/lws/protocol/Attributes$b;->b:J

    .line 48
    iget-object v11, v6, Lizt;->f:Lcom/laiwang/lws/protocol/Attributes;

    sget-object v12, Lcom/laiwang/lws/protocol/Attributes$Name;->CHUNK:Lcom/laiwang/lws/protocol/Attributes$Name;

    .line 1185
    const/4 v13, 0x6

    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 1186
    iget v14, v3, Lcom/laiwang/lws/protocol/Attributes$b;->a:I

    int-to-short v14, v14

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1187
    iget-wide v14, v3, Lcom/laiwang/lws/protocol/Attributes$b;->b:J

    long-to-int v14, v14

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1188
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1189
    invoke-static {v13}, Ljab;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v13

    .line 48
    invoke-virtual {v11, v12, v13}, Lcom/laiwang/lws/protocol/Attributes;->a(Lcom/laiwang/lws/protocol/Attributes$Name;[B)V

    .line 49
    move-object/from16 v0, p0

    iget v11, v0, Lizr;->h:I

    add-int/lit8 v11, v11, 0x1

    const v12, 0xffff

    and-int/2addr v11, v12

    move-object/from16 v0, p0

    iput v11, v0, Lizr;->h:I

    .line 50
    move-object/from16 v0, p0

    iget v11, v0, Lizr;->h:I

    invoke-virtual {v6, v11}, Lizt;->a(I)V

    .line 52
    .end local v3    # "chunkAtt":Lcom/laiwang/lws/protocol/Attributes$b;
    :cond_2
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    add-int/2addr v9, v4

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 55
    .end local v2    # "buffer":[B
    .end local v5    # "cid":I
    .end local v6    # "data":Lizt;
    .end local v7    # "i":I
    .end local v8    # "len":I
    .end local v9    # "offset":I
    .end local v10    # "startPos":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lizr;->c:Ljaa;

    move-object/from16 v0, p0

    iget v12, v0, Lizr;->d:I

    move-object/from16 v0, p1

    invoke-static {v11, v12, v0}, Lizz;->a(Ljaa;I[B)Lizt;

    move-result-object v6

    .line 56
    .restart local v6    # "data":Lizt;
    move-object/from16 v0, p0

    iget v11, v0, Lizr;->d:I

    if-lez v11, :cond_4

    .line 57
    move-object/from16 v0, p0

    iget v11, v0, Lizr;->h:I

    add-int/lit8 v11, v11, 0x1

    const v12, 0xffff

    and-int/2addr v11, v12

    move-object/from16 v0, p0

    iput v11, v0, Lizr;->h:I

    .line 58
    move-object/from16 v0, p0

    iget v11, v0, Lizr;->h:I

    invoke-virtual {v6, v11}, Lizt;->a(I)V

    .line 60
    :cond_4
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    .end local v6    # "data":Lizt;
    :cond_5
    return-void
.end method

.method public final a(Lizt;)[B
    .locals 10
    .param p1, "data"    # Lizt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/laiwang/lws/protocol/LwsException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v7, 0x0

    const v9, 0xffff

    .line 65
    invoke-virtual {p1}, Lizt;->L_()I

    move-result v8

    if-nez v8, :cond_1

    move-object v5, v7

    .line 103
    :cond_0
    :goto_0
    return-object v5

    .line 69
    :cond_1
    const/4 v5, 0x0

    .line 70
    .local v5, "message":[B
    iget v8, p0, Lizr;->d:I

    if-lez v8, :cond_8

    .line 71
    iget-object v8, p1, Lizt;->a:[B

    invoke-static {v8}, Ljab;->b([B)I

    move-result v1

    .line 72
    .local v1, "checkSum":I
    invoke-virtual {p1}, Lizt;->d()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    and-int v6, v8, v9

    .line 73
    .local v6, "pSeq":I
    iget v8, p0, Lizr;->i:I

    if-eq v8, v6, :cond_2

    .line 74
    new-instance v7, Lcom/laiwang/lws/protocol/LwsException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "replay attack! seq: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lizr;->i:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", peer seq: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/laiwang/lws/protocol/LwsException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 76
    :cond_2
    invoke-virtual {p1}, Lizt;->c()I

    move-result v8

    if-eq v1, v8, :cond_3

    .line 77
    new-instance v7, Lcom/laiwang/lws/protocol/LwsException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "checksum fail! checksum: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", peer checksum: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lizt;->c()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/laiwang/lws/protocol/LwsException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 79
    :cond_3
    iget v8, p0, Lizr;->i:I

    add-int/lit8 v8, v8, 0x1

    and-int/2addr v8, v9

    iput v8, p0, Lizr;->i:I

    .line 82
    iget-object v8, p1, Lizt;->f:Lcom/laiwang/lws/protocol/Attributes;

    sget-object v9, Lcom/laiwang/lws/protocol/Attributes$Name;->CHUNK:Lcom/laiwang/lws/protocol/Attributes$Name;

    invoke-virtual {v8, v9}, Lcom/laiwang/lws/protocol/Attributes;->b(Lcom/laiwang/lws/protocol/Attributes$Name;)[B

    move-result-object v4

    .line 83
    .local v4, "chunkBytes":[B
    if-eqz v4, :cond_7

    .line 84
    new-instance v3, Lcom/laiwang/lws/protocol/Attributes$b;

    invoke-direct {v3}, Lcom/laiwang/lws/protocol/Attributes$b;-><init>()V

    .line 85
    .local v3, "chunkAtt":Lcom/laiwang/lws/protocol/Attributes$b;
    invoke-virtual {v3, v4}, Lcom/laiwang/lws/protocol/Attributes$b;->a([B)V

    .line 86
    iget-object v8, p0, Lizr;->g:Ljava/util/Map;

    iget v9, v3, Lcom/laiwang/lws/protocol/Attributes$b;->a:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lizq;

    .line 87
    .local v2, "chunk":Lizq;
    if-nez v2, :cond_4

    .line 88
    new-instance v2, Lizq;

    .end local v2    # "chunk":Lizq;
    iget-wide v8, v3, Lcom/laiwang/lws/protocol/Attributes$b;->b:J

    long-to-int v8, v8

    invoke-direct {v2, v8}, Lizq;-><init>(I)V

    .line 89
    .restart local v2    # "chunk":Lizq;
    iget-object v8, p0, Lizr;->g:Ljava/util/Map;

    iget v9, v3, Lcom/laiwang/lws/protocol/Attributes$b;->a:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_4
    iget-object v8, p1, Lizt;->a:[B

    .line 2018
    if-nez v8, :cond_5

    .line 2019
    new-instance v7, Lcom/laiwang/lws/protocol/LwsException;

    const-string/jumbo v8, "chunk body can\'t be empty"

    invoke-direct {v7, v8}, Lcom/laiwang/lws/protocol/LwsException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2021
    :cond_5
    iget-object v9, v2, Lizq;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v9, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2026
    iget-object v8, v2, Lizq;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    iget v9, v2, Lizq;->a:I

    if-ge v8, v9, :cond_6

    move-object v0, v7

    .line 93
    .local v0, "allBody":[B
    :goto_1
    if-eqz v0, :cond_0

    .line 94
    move-object v5, v0

    .line 95
    iget-object v7, p0, Lizr;->g:Ljava/util/Map;

    iget v8, v3, Lcom/laiwang/lws/protocol/Attributes$b;->a:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2029
    .end local v0    # "allBody":[B
    :cond_6
    iget-object v7, v2, Lizq;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 2031
    iget-object v7, v2, Lizq;->b:Ljava/nio/ByteBuffer;

    invoke-static {v7}, Ljab;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    goto :goto_1

    .line 3021
    .end local v2    # "chunk":Lizq;
    .end local v3    # "chunkAtt":Lcom/laiwang/lws/protocol/Attributes$b;
    :cond_7
    iget-object v5, p1, Lizt;->a:[B

    .line 100
    goto/16 :goto_0

    .line 4021
    .end local v1    # "checkSum":I
    .end local v4    # "chunkBytes":[B
    .end local v6    # "pSeq":I
    :cond_8
    iget-object v5, p1, Lizt;->a:[B

    .line 101
    goto/16 :goto_0
.end method
