.class Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;
.super Ljava/lang/Object;
.source "Packet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/nfcprotocol/Packet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackBody"
.end annotation


# instance fields
.field protected mAttributes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field protected mAttsCount:S

.field protected mData:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;->mAttributes:Landroid/util/SparseArray;

    .line 40
    return-void
.end method

.method private addAttr(Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;)V
    .locals 2
    .param p1, "attribute"    # Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 155
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;->type()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 156
    iget-short v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;->mAttsCount:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;->mAttsCount:S

    .line 157
    return-void
.end method

.method public static load(Ljava/nio/ByteBuffer;II)Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;
    .locals 6
    .param p0, "in"    # Ljava/nio/ByteBuffer;
    .param p1, "attsCount"    # I
    .param p2, "length"    # I

    .prologue
    const/4 v4, 0x0

    .line 43
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-ge v5, p2, :cond_1

    move-object v3, v4

    .line 57
    :cond_0
    :goto_0
    return-object v3

    .line 45
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int v2, v5, p2

    .line 46
    .local v2, "limit":I
    new-instance v3, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;

    invoke-direct {v3}, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;-><init>()V

    .line 47
    .local v3, "packBody":Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p1, :cond_3

    .line 48
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;->load(Ljava/nio/ByteBuffer;)Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;

    move-result-object v0

    .line 49
    .local v0, "attr":Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;
    if-nez v0, :cond_2

    move-object v3, v4

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-direct {v3, v0}, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;->addAttr(Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;)V

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 53
    .end local v0    # "attr":Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;
    :cond_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    if-le v2, v4, :cond_0

    .line 54
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    sub-int v4, v2, v4

    new-array v4, v4, [B

    iput-object v4, v3, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;->mData:[B

    .line 55
    iget-object v4, v3, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;->mData:[B

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method


# virtual methods
.method public addAttr(IB)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "value"    # B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 106
    new-instance v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte p2, v1, v2

    invoke-direct {v0, p1, v1}, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;-><init>(I[B)V

    .line 107
    .local v0, "attr":Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;
    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;->addAttr(Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;)V

    .line 108
    return-void
.end method

.method public addAttr(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "unsignedShort"    # I

    .prologue
    .line 98
    if-gez p2, :cond_0

    .line 103
    :goto_0
    return-void

    .line 100
    :cond_0
    new-instance v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;-><init>(II)V

    .line 101
    .local v0, "attr":Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;
    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;->addAttr(Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;)V

    goto :goto_0
.end method

.method public addAttr(IJ)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "unsignedInt"    # J

    .prologue
    .line 111
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-gez v1, :cond_0

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    new-instance v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;

    invoke-direct {v0, p1, p2, p3}, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;-><init>(IJ)V

    .line 114
    .local v0, "attr":Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;
    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;->addAttr(Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;)V

    goto :goto_0
.end method

.method public addAttr(ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 90
    if-nez p2, :cond_0

    .line 95
    :goto_0
    return-void

    .line 92
    :cond_0
    new-instance v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;-><init>(ILjava/lang/String;)V

    .line 93
    .local v0, "attr":Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;
    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;->addAttr(Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;)V

    goto :goto_0
.end method

.method public addAttr(I[B)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "byteArray"    # [B

    .prologue
    .line 118
    if-nez p2, :cond_0

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    new-instance v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;-><init>(I[B)V

    .line 121
    .local v0, "attr":Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;
    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;->addAttr(Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;)V

    goto :goto_0
.end method

.method public attrCount()I
    .locals 1

    .prologue
    .line 78
    iget-short v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;->mAttsCount:S

    return v0
.end method

.method public attrLength()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 169
    const/4 v1, 0x0

    .line 171
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 172
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;

    invoke-virtual {v2}, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;->length()I

    move-result v2

    add-int/2addr v1, v2

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_0
    return v1
.end method

.method public data()[B
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;->mData:[B

    return-object v0
.end method

.method public dump(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "out"    # Ljava/nio/ByteBuffer;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 61
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 62
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;

    .line 63
    .local v0, "attr":Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;
    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;->dump(Ljava/nio/ByteBuffer;)V

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    .end local v0    # "attr":Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;
    :cond_0
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;->mData:[B

    if-eqz v2, :cond_1

    .line 67
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;->mData:[B

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 68
    :cond_1
    return-void
.end method

.method public getByteArrayAttr(I)[B
    .locals 2
    .param p1, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 141
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;

    .line 142
    .local v0, "attr":Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;
    if-nez v0, :cond_0

    .line 143
    const/4 v1, 0x0

    .line 145
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;->toByteArray()[B

    move-result-object v1

    goto :goto_0
.end method

.method public getStringAttr(I)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 133
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;

    .line 134
    .local v0, "attr":Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;
    if-nez v0, :cond_0

    .line 135
    const/4 v1, 0x0

    .line 137
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;->toStr()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getUnsignedNumberAttr(I)J
    .locals 4
    .param p1, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 125
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;->mAttributes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;

    .line 126
    .local v0, "attr":Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;
    if-nez v0, :cond_0

    .line 127
    const-wide/16 v2, -0x1

    .line 129
    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;->toUnsignedNumber()J

    move-result-wide v2

    goto :goto_0
.end method

.method public length()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;->attrLength()I

    move-result v0

    .line 162
    .local v0, "len":I
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;->mData:[B

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;->mData:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 165
    :cond_0
    return v0
.end method

.method public setData([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Packet$PackBody;->mData:[B

    .line 87
    return-void
.end method
