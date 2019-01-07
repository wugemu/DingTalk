.class Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;
.super Ljava/lang/Object;
.source "Packet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackHeader"
.end annotation


# static fields
.field public static final SIZE:I = 0xa


# instance fields
.field protected mAttsCount:S

.field protected mLength:I

.field protected mMagicNumber:S

.field protected mType:B

.field protected mVersion:B


# direct methods
.method public constructor <init>(BBS)V
    .locals 0
    .param p1, "version"    # B
    .param p2, "type"    # B
    .param p3, "magicNumber"    # S

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput-byte p1, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;->mVersion:B

    .line 203
    iput-byte p2, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;->mType:B

    .line 204
    iput-short p3, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;->mMagicNumber:S

    .line 205
    return-void
.end method

.method public constructor <init>(SBBIS)V
    .locals 0
    .param p1, "magicNumber"    # S
    .param p2, "version"    # B
    .param p3, "type"    # B
    .param p4, "length"    # I
    .param p5, "attsCount"    # S

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-short p1, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;->mMagicNumber:S

    .line 195
    iput-byte p2, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;->mVersion:B

    .line 196
    iput-byte p3, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;->mType:B

    .line 197
    iput p4, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;->mLength:I

    .line 198
    iput-short p5, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;->mAttsCount:S

    .line 199
    return-void
.end method

.method public static load(Ljava/nio/ByteBuffer;)Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;
    .locals 7
    .param p0, "in"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 221
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v6, 0xa

    if-lt v0, v6, :cond_0

    .line 223
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 224
    .local v1, "magicNumber":S
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 225
    .local v2, "version":B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 226
    .local v3, "type":B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 227
    .local v4, "length":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    .line 235
    .local v5, "attsCount":S
    new-instance v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;-><init>(SBBIS)V

    .line 237
    .end local v1    # "magicNumber":S
    .end local v2    # "version":B
    .end local v3    # "type":B
    .end local v4    # "length":I
    .end local v5    # "attsCount":S
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "out"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 209
    iget-short v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;->mMagicNumber:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 210
    iget-byte v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;->mVersion:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 211
    iget-byte v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;->mType:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 212
    iget v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;->mLength:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 213
    iget-short v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackHeader;->mAttsCount:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 218
    return-void
.end method

.method public length()I
    .locals 1

    .prologue
    .line 242
    const/16 v0, 0xa

    return v0
.end method
