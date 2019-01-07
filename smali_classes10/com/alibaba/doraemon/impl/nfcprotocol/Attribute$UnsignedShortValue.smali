.class Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedShortValue;
.super Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;
.source "Attribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnsignedShortValue"
.end annotation


# instance fields
.field private mLongValue:J


# direct methods
.method public constructor <init>(J)V
    .locals 3
    .param p1, "lv"    # J

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;-><init>()V

    .line 141
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedShortValue;->mLongValue:J

    .line 148
    iput-wide p1, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedShortValue;->mLongValue:J

    .line 149
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;)V
    .locals 2
    .param p1, "value"    # Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;-><init>()V

    .line 141
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedShortValue;->mLongValue:J

    .line 144
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedShortValue;->mRawAttrValue:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;

    .line 145
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
    const/4 v4, 0x2

    .line 158
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedShortValue;->mLongValue:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 159
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedShortValue;->mLongValue:J

    long-to-int v0, v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedShortValue;->mRawAttrValue:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedShortValue;->mRawAttrValue:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;->mValue:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedShortValue;->mRawAttrValue:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;->mValue:[B

    array-length v0, v0

    if-lt v0, v4, :cond_0

    .line 163
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedShortValue;->mRawAttrValue:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;

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
    .line 169
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedShortValue;->mLongValue:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 170
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedShortValue;->mLongValue:J

    .line 177
    :goto_0
    return-wide v0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedShortValue;->mRawAttrValue:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedShortValue;->mRawAttrValue:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;->mValue:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedShortValue;->mRawAttrValue:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;->mValue:[B

    array-length v0, v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 173
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedShortValue;->mRawAttrValue:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;

    iget-object v0, v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;->mValue:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedShortValue;->mLongValue:J

    .line 174
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedShortValue;->mLongValue:J

    goto :goto_0

    .line 177
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x2

    return v0
.end method

.method public value()[B
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 182
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedShortValue;->mRawAttrValue:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedShortValue;->mRawAttrValue:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;->value()[B

    move-result-object v0

    .line 186
    :goto_0
    return-object v0

    .line 184
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedShortValue;->mLongValue:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 185
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedShortValue;->mLongValue:J

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/alibaba/doraemon/impl/nfcprotocol/Utils;->asBytes(JI)[B

    move-result-object v0

    goto :goto_0

    .line 186
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
