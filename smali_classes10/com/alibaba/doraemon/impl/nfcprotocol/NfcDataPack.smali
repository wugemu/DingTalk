.class public Lcom/alibaba/doraemon/impl/nfcprotocol/NfcDataPack;
.super Ljava/lang/Object;
.source "NfcDataPack.java"


# static fields
.field public static final PACKET_BUSY_EXCEPTION_NUMBER:S = 0x803s

.field public static final PACKET_DECODE_EXCEPTION_NUMBER:S = 0x802s

.field public static final PACKET_MAGIC_NUMBER:S = 0x800s

.field public static final PACKET_TIMEOUT_EXCEPTION_NUMBER:S = 0x801s

.field public static final PACKET_VERSION:B = 0x1t


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Ljava/nio/ByteBuffer;)Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;
    .locals 9
    .param p1, "in"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/doraemon/impl/nfcprotocol/NotMagicNumberException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 40
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    new-array v3, v8, [Ljava/lang/Object;

    const-string/jumbo v4, "read position:"

    aput-object v4, v3, v6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-static {v3, v4, v5}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 44
    .local v0, "inRead":Ljava/nio/ByteBuffer;
    invoke-static {v0}, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;->load(Ljava/nio/ByteBuffer;)Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;

    move-result-object v1

    .line 45
    .local v1, "packHeader":Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;
    if-nez v1, :cond_1

    .line 74
    :goto_0
    return-object v2

    .line 49
    :cond_1
    iget-short v3, v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;->mMagicNumber:S

    const/16 v4, 0x800

    if-eq v3, v4, :cond_2

    .line 50
    new-instance v3, Lcom/alibaba/doraemon/impl/nfcprotocol/NotMagicNumberException;

    invoke-direct {v3}, Lcom/alibaba/doraemon/impl/nfcprotocol/NotMagicNumberException;-><init>()V

    throw v3

    .line 52
    :cond_2
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 53
    new-array v3, v8, [Ljava/lang/Object;

    const-string/jumbo v4, "read length:"

    aput-object v4, v3, v6

    iget v4, v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;->mLength:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    :cond_3
    iget v3, v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;->mLength:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-le v3, v4, :cond_4

    .line 56
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    goto :goto_0

    .line 62
    :cond_4
    const/4 v2, 0x0

    .line 65
    .local v2, "packet":Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;
    iget-byte v3, v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;->mType:B

    sget-object v4, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PacketType;->CALL:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PacketType;

    iget-byte v4, v4, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PacketType;->code:B

    if-ne v3, v4, :cond_7

    .line 66
    new-instance v2, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;

    .end local v2    # "packet":Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;
    iget-short v3, v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;->mAttsCount:S

    iget v4, v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;->mLength:I

    invoke-static {v0, v3, v4}, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;->load(Ljava/nio/ByteBuffer;II)Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/alibaba/doraemon/impl/nfcprotocol/Call;-><init>(Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;)V

    .line 70
    .restart local v2    # "packet":Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;
    :cond_5
    :goto_1
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 71
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "package type:"

    aput-object v4, v3, v6

    iget-byte v4, v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;->mType:B

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v7

    const-string/jumbo v4, "; length:"

    aput-object v4, v3, v8

    const/4 v4, 0x3

    iget v5, v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;->mLength:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    :cond_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;->length()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;->mLength:I

    add-int/2addr v3, v4

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 67
    :cond_7
    iget-byte v3, v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;->mType:B

    sget-object v4, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PacketType;->ACK:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PacketType;

    iget-byte v4, v4, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PacketType;->code:B

    if-ne v3, v4, :cond_5

    .line 68
    new-instance v2, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack;

    .end local v2    # "packet":Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;
    iget-short v3, v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;->mAttsCount:S

    iget v4, v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;->mLength:I

    invoke-static {v0, v3, v4}, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;->load(Ljava/nio/ByteBuffer;II)Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/alibaba/doraemon/impl/nfcprotocol/Ack;-><init>(Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;)V

    .restart local v2    # "packet":Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;
    goto :goto_1
.end method

.method public encode(Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "packet"    # Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 22
    if-nez p1, :cond_0

    .line 23
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    .line 24
    :cond_0
    iget-object v1, p1, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;->mPackHeader:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;

    iget-object v2, p1, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;->mPackBody:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;

    invoke-virtual {v2}, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;->length()I

    move-result v2

    iput v2, v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;->mLength:I

    .line 25
    iget-object v1, p1, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;->mPackHeader:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;

    iget-object v2, p1, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;->mPackBody:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;

    iget-short v2, v2, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;->mAttsCount:S

    iput-short v2, v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;->mAttsCount:S

    .line 28
    iget-object v1, p1, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;->mPackHeader:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;

    iget v1, v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;->mLength:I

    iget-object v2, p1, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;->mPackHeader:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;

    invoke-virtual {v2}, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/nfcprotocol/MemoryPool;->obtainByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 29
    .local v0, "packetBuffer":Ljava/nio/ByteBuffer;
    iget-object v1, p1, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;->mPackHeader:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;

    invoke-virtual {v1, v0}, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;->dump(Ljava/nio/ByteBuffer;)V

    .line 33
    iget-object v1, p1, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;->mPackHeader:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;

    iget v1, v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;->mLength:I

    if-lez v1, :cond_1

    .line 34
    iget-object v1, p1, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;->mPackBody:Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;

    invoke-virtual {v1, v0}, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;->dump(Ljava/nio/ByteBuffer;)V

    .line 35
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_0
.end method
