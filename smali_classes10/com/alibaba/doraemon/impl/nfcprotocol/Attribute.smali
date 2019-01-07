.class public Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;
.super Ljava/lang/Object;
.source "Attribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;,
        Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedIntValue;,
        Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedShortValue;,
        Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrHeader;
    }
.end annotation


# instance fields
.field private mAttrHeader:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrHeader;

.field private mAttrValue:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "unsignedShort"    # I

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrHeader;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrHeader;-><init>(II)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;->mAttrHeader:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrHeader;

    .line 22
    new-instance v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedShortValue;

    int-to-long v2, p2

    invoke-direct {v0, v2, v3}, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedShortValue;-><init>(J)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;->mAttrValue:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;

    .line 23
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "unsignedInt"    # J

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrHeader;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrHeader;-><init>(II)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;->mAttrHeader:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrHeader;

    .line 17
    new-instance v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedIntValue;

    invoke-direct {v0, p2, p3}, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedIntValue;-><init>(J)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;->mAttrValue:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;

    .line 18
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;-><init>(I[B)V

    .line 27
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "bytes"    # [B

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrHeader;

    array-length v1, p2

    invoke-direct {v0, p1, v1}, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrHeader;-><init>(II)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;->mAttrHeader:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrHeader;

    .line 31
    new-instance v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;

    invoke-direct {v0, p2}, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;-><init>([B)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;->mAttrValue:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;

    .line 32
    return-void
.end method

.method public static load(Ljava/nio/ByteBuffer;)Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;
    .locals 5
    .param p0, "in"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-object v0

    .line 48
    :cond_1
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrHeader;->load(Ljava/nio/ByteBuffer;)Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrHeader;

    move-result-object v1

    .line 49
    .local v1, "attrHeader":Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrHeader;
    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    iget v4, v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrHeader;->mLength:I

    if-lt v3, v4, :cond_0

    .line 53
    new-instance v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;-><init>()V

    .line 54
    .local v0, "attr":Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;
    iput-object v1, v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;->mAttrHeader:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrHeader;

    .line 55
    iget v3, v1, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrHeader;->mLength:I

    new-array v2, v3, [B

    .line 56
    .local v2, "value":[B
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 57
    new-instance v3, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;

    invoke-direct {v3, v2}, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;-><init>([B)V

    iput-object v3, v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;->mAttrValue:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;->mAttrHeader:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrHeader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;->mAttrValue:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;

    if-nez v0, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;->mAttrHeader:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrHeader;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrHeader;->dump(Ljava/nio/ByteBuffer;)V

    .line 42
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;->mAttrValue:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;->dump(Ljava/nio/ByteBuffer;)V

    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;->mAttrValue:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x3

    .line 105
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;->mAttrValue:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    goto :goto_0
.end method

.method public toByteArray()[B
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;->mAttrValue:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;

    if-nez v0, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 90
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;->mAttrValue:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;->value()[B

    move-result-object v0

    goto :goto_0
.end method

.method public toStr()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 76
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;->mAttrValue:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;

    if-nez v1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-object v0

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;->mAttrValue:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;->value()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 80
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;->mAttrValue:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;->value()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public toUnsignedNumber()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;->mAttrValue:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;

    if-nez v0, :cond_0

    .line 64
    const-wide/16 v0, -0x1

    .line 70
    :goto_0
    return-wide v0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;->mAttrValue:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;

    instance-of v0, v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedIntValue;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;->mAttrValue:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;

    instance-of v0, v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedShortValue;

    if-eqz v0, :cond_2

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;->mAttrValue:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;

    check-cast v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedIntValue;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedIntValue;->intValue()J

    move-result-wide v0

    goto :goto_0

    .line 69
    :cond_2
    new-instance v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedIntValue;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;->mAttrValue:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;

    invoke-direct {v0, v1}, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedIntValue;-><init>(Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;->mAttrValue:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;

    .line 70
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;->mAttrValue:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrValue;

    check-cast v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedIntValue;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$UnsignedIntValue;->intValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public type()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;->mAttrHeader:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrHeader;

    if-nez v0, :cond_0

    .line 96
    const/4 v0, -0x1

    .line 98
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute;->mAttrHeader:Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrHeader;

    iget v0, v0, Lcom/alibaba/doraemon/impl/nfcprotocol/Attribute$AttrHeader;->mType:I

    goto :goto_0
.end method
