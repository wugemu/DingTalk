.class Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedIntValue;
.super Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;
.source "Attribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnsignedIntValue"
.end annotation


# instance fields
.field private mLongValue:J


# direct methods
.method public constructor <init>(J)V
    .locals 3
    .param p1, "lv"    # J

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;-><init>()V

    .line 192
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedIntValue;->mLongValue:J

    .line 199
    iput-wide p1, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedIntValue;->mLongValue:J

    .line 200
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;)V
    .locals 2
    .param p1, "value"    # Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;-><init>()V

    .line 192
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedIntValue;->mLongValue:J

    .line 195
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedIntValue;->mRawAttrValue:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;

    .line 196
    return-void
.end method


# virtual methods
.method public dump(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "out"    # Ljava/nio/ByteBuffer;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x4

    .line 209
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedIntValue;->mLongValue:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 210
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedIntValue;->mLongValue:J

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedIntValue;->mRawAttrValue:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedIntValue;->mRawAttrValue:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;->mValue:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedIntValue;->mRawAttrValue:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;->mValue:[B

    array-length v0, v0

    if-lt v0, v4, :cond_0

    .line 215
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedIntValue;->mRawAttrValue:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;->mValue:[B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public intValue()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 220
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedIntValue;->mLongValue:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 221
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedIntValue;->mLongValue:J

    .line 228
    :goto_0
    return-wide v0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedIntValue;->mRawAttrValue:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedIntValue;->mRawAttrValue:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;->mValue:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedIntValue;->mRawAttrValue:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;->mValue:[B

    array-length v0, v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 224
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedIntValue;->mRawAttrValue:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;->mValue:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    and-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedIntValue;->mLongValue:J

    .line 225
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedIntValue;->mLongValue:J

    goto :goto_0

    .line 228
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x4

    return v0
.end method

.method public value()[B
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 233
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedIntValue;->mRawAttrValue:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedIntValue;->mRawAttrValue:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;->value()[B

    move-result-object v0

    .line 237
    :goto_0
    return-object v0

    .line 235
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedIntValue;->mLongValue:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 236
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedIntValue;->mLongValue:J

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/alibaba/doraemon/impl/nfcprotocol/Utils;->asBytes(JI)[B

    move-result-object v0

    goto :goto_0

    .line 237
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
