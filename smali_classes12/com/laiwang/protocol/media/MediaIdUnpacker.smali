.class public Lcom/laiwang/protocol/media/MediaIdUnpacker;
.super Ljava/lang/Object;
.source "MediaIdUnpacker.java"


# instance fields
.field private final in:Ljava/io/DataInputStream;


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "bytes"    # [B

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/laiwang/protocol/media/MediaIdUnpacker;->in:Ljava/io/DataInputStream;

    .line 10
    return-void
.end method

.method private close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/laiwang/protocol/media/MediaIdUnpacker;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 113
    return-void
.end method

.method private getByte()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/laiwang/protocol/media/MediaIdUnpacker;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    return v0
.end method

.method private getInt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/laiwang/protocol/media/MediaIdUnpacker;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method private getLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 108
    iget-object v0, p0, Lcom/laiwang/protocol/media/MediaIdUnpacker;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method private getShort()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/laiwang/protocol/media/MediaIdUnpacker;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    return v0
.end method

.method private parseDigit(I)J
    .locals 6
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 58
    and-int/lit16 v2, p1, 0x80

    if-eqz v2, :cond_0

    and-int/lit16 v2, p1, 0xe0

    const/16 v3, 0xe0

    if-ne v2, v3, :cond_1

    .line 60
    :cond_0
    int-to-long v0, p1

    .line 81
    :goto_0
    return-wide v0

    .line 64
    :cond_1
    and-int/lit16 v2, p1, 0xff

    packed-switch v2, :pswitch_data_0

    .line 83
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Invalid byte: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :pswitch_0
    invoke-direct {p0}, Lcom/laiwang/protocol/media/MediaIdUnpacker;->getByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v0, v2

    goto :goto_0

    .line 68
    :pswitch_1
    invoke-direct {p0}, Lcom/laiwang/protocol/media/MediaIdUnpacker;->getShort()S

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    int-to-long v0, v2

    goto :goto_0

    .line 70
    :pswitch_2
    invoke-direct {p0}, Lcom/laiwang/protocol/media/MediaIdUnpacker;->getInt()I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long v0, v2, v4

    .line 71
    .local v0, "value":J
    goto :goto_0

    .line 73
    .end local v0    # "value":J
    :pswitch_3
    invoke-direct {p0}, Lcom/laiwang/protocol/media/MediaIdUnpacker;->getLong()J

    move-result-wide v0

    goto :goto_0

    .line 75
    :pswitch_4
    invoke-direct {p0}, Lcom/laiwang/protocol/media/MediaIdUnpacker;->getByte()B

    move-result v2

    int-to-long v0, v2

    goto :goto_0

    .line 77
    :pswitch_5
    invoke-direct {p0}, Lcom/laiwang/protocol/media/MediaIdUnpacker;->getShort()S

    move-result v2

    int-to-long v0, v2

    goto :goto_0

    .line 79
    :pswitch_6
    invoke-direct {p0}, Lcom/laiwang/protocol/media/MediaIdUnpacker;->getInt()I

    move-result v2

    int-to-long v0, v2

    goto :goto_0

    .line 81
    :pswitch_7
    invoke-direct {p0}, Lcom/laiwang/protocol/media/MediaIdUnpacker;->getLong()J

    move-result-wide v0

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0xcc
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private readByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 88
    iget-object v1, p0, Lcom/laiwang/protocol/media/MediaIdUnpacker;->in:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 89
    .local v0, "n":I
    if-gez v0, :cond_0

    .line 90
    const/4 v1, -0x1

    .line 92
    :goto_0
    return v1

    :cond_0
    int-to-byte v1, v0

    goto :goto_0
.end method

.method private readRaw(I)[B
    .locals 5
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 123
    and-int/lit16 v2, p1, 0xe0

    const/16 v3, 0xa0

    if-ne v2, v3, :cond_0

    .line 124
    and-int/lit8 v1, p1, 0x1f

    .line 132
    .local v1, "count":I
    :goto_0
    if-nez v1, :cond_3

    .line 133
    new-array v0, v4, [B

    .line 137
    :goto_1
    return-object v0

    .line 125
    .end local v1    # "count":I
    :cond_0
    and-int/lit16 v2, p1, 0xff

    const/16 v3, 0xda

    if-ne v2, v3, :cond_1

    .line 126
    invoke-direct {p0}, Lcom/laiwang/protocol/media/MediaIdUnpacker;->readShortCount()I

    move-result v1

    .restart local v1    # "count":I
    goto :goto_0

    .line 127
    .end local v1    # "count":I
    :cond_1
    and-int/lit16 v2, p1, 0xff

    const/16 v3, 0xdb

    if-ne v2, v3, :cond_2

    .line 128
    invoke-direct {p0}, Lcom/laiwang/protocol/media/MediaIdUnpacker;->getInt()I

    move-result v1

    .restart local v1    # "count":I
    goto :goto_0

    .line 130
    .end local v1    # "count":I
    :cond_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Invalid Array count: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 135
    .restart local v1    # "count":I
    :cond_3
    new-array v0, v1, [B

    .line 136
    .local v0, "buff":[B
    iget-object v2, p0, Lcom/laiwang/protocol/media/MediaIdUnpacker;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2, v0, v4, v1}, Ljava/io/DataInputStream;->read([BII)I

    goto :goto_1
.end method

.method private readShortCount()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/laiwang/protocol/media/MediaIdUnpacker;->getShort()S

    move-result v0

    .line 117
    .local v0, "count":I
    if-gez v0, :cond_0

    const/high16 v1, 0x10000

    add-int/2addr v0, v1

    .line 118
    .end local v0    # "count":I
    :cond_0
    return v0
.end method


# virtual methods
.method public unpack()Lcom/laiwang/protocol/media/MediaId;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/laiwang/protocol/media/MediaIdEncodingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/laiwang/protocol/media/MediaIdUnpacker;->getByte()B

    move-result v0

    .line 20
    .local v0, "b":I
    const/4 v1, 0x0

    .line 21
    .local v1, "count":I
    and-int/lit16 v10, v0, 0xf0

    const/16 v11, 0x90

    if-ne v10, v11, :cond_0

    .line 23
    and-int/lit8 v1, v0, 0xf

    .line 25
    :cond_0
    if-gtz v1, :cond_1

    .line 26
    new-instance v10, Lcom/laiwang/protocol/media/MediaIdEncodingException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "count: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/laiwang/protocol/media/MediaIdEncodingException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 31
    :cond_1
    invoke-direct {p0}, Lcom/laiwang/protocol/media/MediaIdUnpacker;->readByte()B

    move-result v10

    invoke-direct {p0, v10}, Lcom/laiwang/protocol/media/MediaIdUnpacker;->parseDigit(I)J

    move-result-wide v10

    long-to-int v10, v10

    int-to-short v8, v10

    .line 32
    .local v8, "type":S
    new-instance v4, Lcom/laiwang/protocol/media/MediaId;

    invoke-static {v8}, Lcom/laiwang/protocol/media/MediaType;->getMediaType(I)Lcom/laiwang/protocol/media/MediaType;

    move-result-object v10

    invoke-direct {v4, v10}, Lcom/laiwang/protocol/media/MediaId;-><init>(Lcom/laiwang/protocol/media/MediaType;)V

    .line 33
    .local v4, "mediaId":Lcom/laiwang/protocol/media/MediaId;
    invoke-direct {p0}, Lcom/laiwang/protocol/media/MediaIdUnpacker;->readByte()B

    move-result v10

    invoke-direct {p0, v10}, Lcom/laiwang/protocol/media/MediaIdUnpacker;->parseDigit(I)J

    move-result-wide v6

    .line 34
    .local v6, "sequence":J
    invoke-virtual {v4, v6, v7}, Lcom/laiwang/protocol/media/MediaId;->setSequence(J)V

    .line 36
    const/4 v10, 0x2

    if-le v1, v10, :cond_3

    .line 37
    invoke-direct {p0}, Lcom/laiwang/protocol/media/MediaIdUnpacker;->readByte()B

    move-result v10

    and-int/lit16 v3, v10, 0xff

    .line 38
    .local v3, "isBurn":I
    const/16 v10, 0xc3

    if-ne v3, v10, :cond_4

    .line 39
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Lcom/laiwang/protocol/media/MediaId;->setBurn(Z)V

    .line 40
    invoke-direct {p0}, Lcom/laiwang/protocol/media/MediaIdUnpacker;->readByte()B

    move-result v10

    invoke-direct {p0, v10}, Lcom/laiwang/protocol/media/MediaIdUnpacker;->parseDigit(I)J

    move-result-wide v10

    long-to-int v2, v10

    .line 41
    .local v2, "height":I
    invoke-direct {p0}, Lcom/laiwang/protocol/media/MediaIdUnpacker;->readByte()B

    move-result v10

    invoke-direct {p0, v10}, Lcom/laiwang/protocol/media/MediaIdUnpacker;->parseDigit(I)J

    move-result-wide v10

    long-to-int v9, v10

    .line 46
    .local v9, "width":I
    :goto_0
    invoke-virtual {v4, v2}, Lcom/laiwang/protocol/media/MediaId;->setHeight(I)V

    .line 47
    invoke-virtual {v4, v9}, Lcom/laiwang/protocol/media/MediaId;->setWidth(I)V

    .line 48
    invoke-direct {p0}, Lcom/laiwang/protocol/media/MediaIdUnpacker;->readByte()B

    move-result v10

    and-int/lit16 v5, v10, 0xff

    .line 49
    .local v5, "randomByte":I
    const/16 v10, 0xdb

    if-eq v5, v10, :cond_2

    const/16 v10, 0xa0

    if-eq v5, v10, :cond_2

    const/16 v10, 0xda

    if-ne v5, v10, :cond_3

    .line 50
    :cond_2
    invoke-direct {p0, v5}, Lcom/laiwang/protocol/media/MediaIdUnpacker;->readRaw(I)[B

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/laiwang/protocol/media/MediaId;->setRandomFactor([B)V

    .line 53
    .end local v2    # "height":I
    .end local v3    # "isBurn":I
    .end local v5    # "randomByte":I
    .end local v9    # "width":I
    :cond_3
    invoke-direct {p0}, Lcom/laiwang/protocol/media/MediaIdUnpacker;->close()V

    .line 54
    return-object v4

    .line 43
    .restart local v3    # "isBurn":I
    :cond_4
    invoke-direct {p0, v3}, Lcom/laiwang/protocol/media/MediaIdUnpacker;->parseDigit(I)J

    move-result-wide v10

    long-to-int v2, v10

    .line 44
    .restart local v2    # "height":I
    invoke-direct {p0}, Lcom/laiwang/protocol/media/MediaIdUnpacker;->readByte()B

    move-result v10

    invoke-direct {p0, v10}, Lcom/laiwang/protocol/media/MediaIdUnpacker;->parseDigit(I)J

    move-result-wide v10

    long-to-int v9, v10

    .restart local v9    # "width":I
    goto :goto_0
.end method
