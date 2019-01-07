.class public Lcom/laiwang/protocol/media/MediaIdPacker;
.super Ljava/lang/Object;
.source "MediaIdPacker.java"


# instance fields
.field protected final out:Ljava/io/DataOutput;

.field protected final stream:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/laiwang/protocol/media/MediaIdPacker;->stream:Ljava/io/ByteArrayOutputStream;

    .line 7
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/laiwang/protocol/media/MediaIdPacker;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/laiwang/protocol/media/MediaIdPacker;->out:Ljava/io/DataOutput;

    .line 10
    return-void
.end method

.method private writeArrayBegin(I)V
    .locals 2
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 141
    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/laiwang/protocol/media/MediaIdPacker;->out:Ljava/io/DataOutput;

    or-int/lit16 v1, p1, 0x90

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 149
    :goto_0
    return-void

    .line 144
    :cond_0
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_1

    .line 145
    const/16 v0, -0x24

    int-to-short v1, p1

    invoke-direct {p0, v0, v1}, Lcom/laiwang/protocol/media/MediaIdPacker;->writeByteAndShort(BS)V

    goto :goto_0

    .line 147
    :cond_1
    const/16 v0, -0x23

    invoke-direct {p0, v0, p1}, Lcom/laiwang/protocol/media/MediaIdPacker;->writeByteAndInt(BI)V

    goto :goto_0
.end method

.method private writeBoolean(Z)V
    .locals 2
    .param p1, "d"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 152
    if-eqz p1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/laiwang/protocol/media/MediaIdPacker;->out:Ljava/io/DataOutput;

    const/16 v1, -0x3d

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/laiwang/protocol/media/MediaIdPacker;->out:Ljava/io/DataOutput;

    const/16 v1, -0x3e

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_0
.end method

.method private writeByte(B)V
    .locals 1
    .param p1, "d"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    const/16 v0, -0x20

    if-ge p1, v0, :cond_0

    .line 38
    const/16 v0, -0x30

    invoke-direct {p0, v0, p1}, Lcom/laiwang/protocol/media/MediaIdPacker;->writeByteAndByte(BB)V

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/laiwang/protocol/media/MediaIdPacker;->out:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_0
.end method

.method private writeByteAndByte(BB)V
    .locals 1
    .param p1, "b"    # B
    .param p2, "v"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/laiwang/protocol/media/MediaIdPacker;->out:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->write(I)V

    .line 163
    iget-object v0, p0, Lcom/laiwang/protocol/media/MediaIdPacker;->out:Ljava/io/DataOutput;

    invoke-interface {v0, p2}, Ljava/io/DataOutput;->write(I)V

    .line 164
    return-void
.end method

.method private writeByteAndInt(BI)V
    .locals 1
    .param p1, "b"    # B
    .param p2, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/laiwang/protocol/media/MediaIdPacker;->out:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->write(I)V

    .line 173
    iget-object v0, p0, Lcom/laiwang/protocol/media/MediaIdPacker;->out:Ljava/io/DataOutput;

    invoke-interface {v0, p2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 174
    return-void
.end method

.method private writeByteAndLong(BJ)V
    .locals 2
    .param p1, "b"    # B
    .param p2, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/laiwang/protocol/media/MediaIdPacker;->out:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->write(I)V

    .line 178
    iget-object v0, p0, Lcom/laiwang/protocol/media/MediaIdPacker;->out:Ljava/io/DataOutput;

    invoke-interface {v0, p2, p3}, Ljava/io/DataOutput;->writeLong(J)V

    .line 179
    return-void
.end method

.method private writeByteAndShort(BS)V
    .locals 1
    .param p1, "b"    # B
    .param p2, "v"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/laiwang/protocol/media/MediaIdPacker;->out:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->write(I)V

    .line 168
    iget-object v0, p0, Lcom/laiwang/protocol/media/MediaIdPacker;->out:Ljava/io/DataOutput;

    invoke-interface {v0, p2}, Ljava/io/DataOutput;->writeShort(I)V

    .line 169
    return-void
.end method

.method private writeByteArray([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 182
    const/16 v0, 0x20

    if-ge p3, v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/laiwang/protocol/media/MediaIdPacker;->out:Ljava/io/DataOutput;

    or-int/lit16 v1, p3, 0xa0

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 191
    :goto_0
    iget-object v0, p0, Lcom/laiwang/protocol/media/MediaIdPacker;->out:Ljava/io/DataOutput;

    invoke-interface {v0, p1, p2, p3}, Ljava/io/DataOutput;->write([BII)V

    .line 192
    return-void

    .line 184
    :cond_0
    const/high16 v0, 0x10000

    if-ge p3, v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/laiwang/protocol/media/MediaIdPacker;->out:Ljava/io/DataOutput;

    const/16 v1, -0x26

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->write(I)V

    .line 186
    iget-object v0, p0, Lcom/laiwang/protocol/media/MediaIdPacker;->out:Ljava/io/DataOutput;

    int-to-short v1, p3

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->writeShort(I)V

    goto :goto_0

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/laiwang/protocol/media/MediaIdPacker;->out:Ljava/io/DataOutput;

    const/16 v1, -0x25

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->write(I)V

    .line 189
    iget-object v0, p0, Lcom/laiwang/protocol/media/MediaIdPacker;->out:Ljava/io/DataOutput;

    invoke-interface {v0, p3}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_0
.end method

.method private writeInt(I)V
    .locals 2
    .param p1, "d"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 68
    const/16 v0, -0x20

    if-ge p1, v0, :cond_2

    .line 69
    const/16 v0, -0x8000

    if-ge p1, v0, :cond_0

    .line 71
    const/16 v0, -0x2e

    invoke-direct {p0, v0, p1}, Lcom/laiwang/protocol/media/MediaIdPacker;->writeByteAndInt(BI)V

    .line 94
    :goto_0
    return-void

    .line 72
    :cond_0
    const/16 v0, -0x80

    if-ge p1, v0, :cond_1

    .line 74
    const/16 v0, -0x2f

    int-to-short v1, p1

    invoke-direct {p0, v0, v1}, Lcom/laiwang/protocol/media/MediaIdPacker;->writeByteAndShort(BS)V

    goto :goto_0

    .line 77
    :cond_1
    const/16 v0, -0x30

    int-to-byte v1, p1

    invoke-direct {p0, v0, v1}, Lcom/laiwang/protocol/media/MediaIdPacker;->writeByteAndByte(BB)V

    goto :goto_0

    .line 79
    :cond_2
    const/16 v0, 0x80

    if-ge p1, v0, :cond_3

    .line 81
    int-to-byte v0, p1

    invoke-direct {p0, v0}, Lcom/laiwang/protocol/media/MediaIdPacker;->writeByte(B)V

    goto :goto_0

    .line 83
    :cond_3
    const/16 v0, 0x100

    if-ge p1, v0, :cond_4

    .line 85
    const/16 v0, -0x34

    int-to-byte v1, p1

    invoke-direct {p0, v0, v1}, Lcom/laiwang/protocol/media/MediaIdPacker;->writeByteAndByte(BB)V

    goto :goto_0

    .line 86
    :cond_4
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_5

    .line 88
    const/16 v0, -0x33

    int-to-short v1, p1

    invoke-direct {p0, v0, v1}, Lcom/laiwang/protocol/media/MediaIdPacker;->writeByteAndShort(BS)V

    goto :goto_0

    .line 91
    :cond_5
    const/16 v0, -0x32

    invoke-direct {p0, v0, p1}, Lcom/laiwang/protocol/media/MediaIdPacker;->writeByteAndInt(BI)V

    goto :goto_0
.end method

.method private writeLong(J)V
    .locals 3
    .param p1, "d"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    const-wide/16 v0, -0x20

    cmp-long v0, p1, v0

    if-gez v0, :cond_3

    .line 98
    const-wide/16 v0, -0x8000

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 99
    const-wide/32 v0, -0x80000000

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 101
    const/16 v0, -0x2d

    invoke-direct {p0, v0, p1, p2}, Lcom/laiwang/protocol/media/MediaIdPacker;->writeByteAndLong(BJ)V

    .line 137
    :goto_0
    return-void

    .line 104
    :cond_0
    const/16 v0, -0x2e

    long-to-int v1, p1

    invoke-direct {p0, v0, v1}, Lcom/laiwang/protocol/media/MediaIdPacker;->writeByteAndInt(BI)V

    goto :goto_0

    .line 107
    :cond_1
    const-wide/16 v0, -0x80

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 109
    const/16 v0, -0x2f

    long-to-int v1, p1

    int-to-short v1, v1

    invoke-direct {p0, v0, v1}, Lcom/laiwang/protocol/media/MediaIdPacker;->writeByteAndShort(BS)V

    goto :goto_0

    .line 112
    :cond_2
    const/16 v0, -0x30

    long-to-int v1, p1

    int-to-byte v1, v1

    invoke-direct {p0, v0, v1}, Lcom/laiwang/protocol/media/MediaIdPacker;->writeByteAndByte(BB)V

    goto :goto_0

    .line 115
    :cond_3
    const-wide/16 v0, 0x80

    cmp-long v0, p1, v0

    if-gez v0, :cond_4

    .line 117
    long-to-int v0, p1

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lcom/laiwang/protocol/media/MediaIdPacker;->writeByte(B)V

    goto :goto_0

    .line 119
    :cond_4
    const-wide/32 v0, 0x10000

    cmp-long v0, p1, v0

    if-gez v0, :cond_6

    .line 120
    const-wide/16 v0, 0x100

    cmp-long v0, p1, v0

    if-gez v0, :cond_5

    .line 122
    const/16 v0, -0x34

    long-to-int v1, p1

    int-to-byte v1, v1

    invoke-direct {p0, v0, v1}, Lcom/laiwang/protocol/media/MediaIdPacker;->writeByteAndByte(BB)V

    goto :goto_0

    .line 125
    :cond_5
    const/16 v0, -0x33

    long-to-int v1, p1

    int-to-short v1, v1

    invoke-direct {p0, v0, v1}, Lcom/laiwang/protocol/media/MediaIdPacker;->writeByteAndShort(BS)V

    goto :goto_0

    .line 128
    :cond_6
    const-wide v0, 0x100000000L

    cmp-long v0, p1, v0

    if-gez v0, :cond_7

    .line 130
    const/16 v0, -0x32

    long-to-int v1, p1

    invoke-direct {p0, v0, v1}, Lcom/laiwang/protocol/media/MediaIdPacker;->writeByteAndInt(BI)V

    goto :goto_0

    .line 133
    :cond_7
    const/16 v0, -0x31

    invoke-direct {p0, v0, p1, p2}, Lcom/laiwang/protocol/media/MediaIdPacker;->writeByteAndLong(BJ)V

    goto :goto_0
.end method

.method private writeShort(S)V
    .locals 2
    .param p1, "d"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 45
    const/16 v0, -0x20

    if-ge p1, v0, :cond_1

    .line 46
    const/16 v0, -0x80

    if-ge p1, v0, :cond_0

    .line 48
    const/16 v0, -0x2f

    invoke-direct {p0, v0, p1}, Lcom/laiwang/protocol/media/MediaIdPacker;->writeByteAndShort(BS)V

    .line 65
    :goto_0
    return-void

    .line 51
    :cond_0
    const/16 v0, -0x30

    int-to-byte v1, p1

    invoke-direct {p0, v0, v1}, Lcom/laiwang/protocol/media/MediaIdPacker;->writeByteAndByte(BB)V

    goto :goto_0

    .line 53
    :cond_1
    const/16 v0, 0x80

    if-ge p1, v0, :cond_2

    .line 55
    int-to-byte v0, p1

    invoke-direct {p0, v0}, Lcom/laiwang/protocol/media/MediaIdPacker;->writeByte(B)V

    goto :goto_0

    .line 57
    :cond_2
    const/16 v0, 0x100

    if-ge p1, v0, :cond_3

    .line 59
    const/16 v0, -0x34

    int-to-byte v1, p1

    invoke-direct {p0, v0, v1}, Lcom/laiwang/protocol/media/MediaIdPacker;->writeByteAndByte(BB)V

    goto :goto_0

    .line 62
    :cond_3
    const/16 v0, -0x33

    invoke-direct {p0, v0, p1}, Lcom/laiwang/protocol/media/MediaIdPacker;->writeByteAndShort(BS)V

    goto :goto_0
.end method


# virtual methods
.method public pack(Lcom/laiwang/protocol/media/MediaId;)[B
    .locals 5
    .param p1, "mediaId"    # Lcom/laiwang/protocol/media/MediaId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 13
    const/4 v1, 0x2

    .line 14
    .local v1, "size":I
    invoke-virtual {p1}, Lcom/laiwang/protocol/media/MediaId;->isBurn()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/laiwang/protocol/media/MediaId;->getHeight()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p1}, Lcom/laiwang/protocol/media/MediaId;->getWidth()I

    move-result v2

    if-lez v2, :cond_1

    add-int/lit8 v1, v1, 0x2

    .line 16
    :cond_1
    invoke-virtual {p1}, Lcom/laiwang/protocol/media/MediaId;->getRandomFactor()[B

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/laiwang/protocol/media/MediaId;->getRandomFactor()[B

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 18
    :cond_2
    invoke-direct {p0, v1}, Lcom/laiwang/protocol/media/MediaIdPacker;->writeArrayBegin(I)V

    .line 19
    invoke-virtual {p1}, Lcom/laiwang/protocol/media/MediaId;->getType()Lcom/laiwang/protocol/media/MediaType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/laiwang/protocol/media/MediaType;->getValue()I

    move-result v2

    int-to-short v2, v2

    invoke-direct {p0, v2}, Lcom/laiwang/protocol/media/MediaIdPacker;->writeShort(S)V

    .line 20
    invoke-virtual {p1}, Lcom/laiwang/protocol/media/MediaId;->getSequence()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/laiwang/protocol/media/MediaIdPacker;->writeLong(J)V

    .line 22
    invoke-virtual {p1}, Lcom/laiwang/protocol/media/MediaId;->isBurn()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/laiwang/protocol/media/MediaId;->isBurn()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/laiwang/protocol/media/MediaIdPacker;->writeBoolean(Z)V

    .line 24
    :cond_3
    const/4 v2, 0x4

    if-lt v1, v2, :cond_4

    .line 25
    invoke-virtual {p1}, Lcom/laiwang/protocol/media/MediaId;->getHeight()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/laiwang/protocol/media/MediaIdPacker;->writeInt(I)V

    .line 26
    invoke-virtual {p1}, Lcom/laiwang/protocol/media/MediaId;->getWidth()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/laiwang/protocol/media/MediaIdPacker;->writeInt(I)V

    .line 27
    invoke-virtual {p1}, Lcom/laiwang/protocol/media/MediaId;->getRandomFactor()[B

    move-result-object v2

    if-eqz v2, :cond_4

    .line 28
    invoke-virtual {p1}, Lcom/laiwang/protocol/media/MediaId;->getRandomFactor()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/laiwang/protocol/media/MediaId;->getRandomFactor()[B

    move-result-object v4

    array-length v4, v4

    invoke-direct {p0, v2, v3, v4}, Lcom/laiwang/protocol/media/MediaIdPacker;->writeByteArray([BII)V

    .line 31
    :cond_4
    iget-object v2, p0, Lcom/laiwang/protocol/media/MediaIdPacker;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 32
    .local v0, "packedMediaId":[B
    iget-object v2, p0, Lcom/laiwang/protocol/media/MediaIdPacker;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 33
    return-object v0
.end method
