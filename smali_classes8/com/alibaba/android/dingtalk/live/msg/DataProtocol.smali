.class public Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;
.super Ljava/lang/Object;
.source "DataProtocol.java"


# instance fields
.field public bizLength:I

.field public bodyLength:I

.field public dupFlag:B

.field public headerLength:I

.field public mqttMsgType:B

.field public namespace:I

.field public protocolData:[B

.field public qosLevel:B

.field public retain:B

.field public serializeType:B

.field public sysCode:B

.field public type:B

.field public typeVersion:B

.field public version:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public constructor <init>(IIIIIIIIII)V
    .locals 1
    .param p1, "mqttMsgType"    # I
    .param p2, "dupFlag"    # I
    .param p3, "qosLevel"    # I
    .param p4, "retain"    # I
    .param p5, "version"    # I
    .param p6, "serializeType"    # I
    .param p7, "sysCode"    # I
    .param p8, "type"    # I
    .param p9, "typeVersion"    # I
    .param p10, "namespace"    # I

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->mqttMsgType:B

    .line 155
    int-to-byte v0, p2

    iput-byte v0, p0, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->dupFlag:B

    .line 156
    int-to-byte v0, p3

    iput-byte v0, p0, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->qosLevel:B

    .line 157
    int-to-byte v0, p4

    iput-byte v0, p0, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->retain:B

    .line 158
    int-to-byte v0, p5

    iput-byte v0, p0, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->version:B

    .line 159
    int-to-byte v0, p6

    iput-byte v0, p0, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->serializeType:B

    .line 160
    int-to-byte v0, p7

    iput-byte v0, p0, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->sysCode:B

    .line 161
    int-to-byte v0, p8

    iput-byte v0, p0, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->type:B

    .line 162
    int-to-byte v0, p9

    iput-byte v0, p0, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->typeVersion:B

    .line 163
    iput p10, p0, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->namespace:I

    .line 164
    return-void
.end method

.method public static getBizLengthOffset(ILcom/alibaba/android/dingtalk/live/msg/DataProtocol;)I
    .locals 2
    .param p0, "offset"    # I
    .param p1, "dataProtocol"    # Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;

    .prologue
    .line 149
    invoke-static {p0, p1}, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->getBodyLengthOffset(ILcom/alibaba/android/dingtalk/live/msg/DataProtocol;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p1, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->bodyLength:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static getBodyLengthOffset(ILcom/alibaba/android/dingtalk/live/msg/DataProtocol;)I
    .locals 2
    .param p0, "offset"    # I
    .param p1, "dataProtocol"    # Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;

    .prologue
    .line 145
    invoke-static {p0}, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->getHeaderLengthOffset(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p1, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->headerLength:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static getHeaderLengthOffset(I)I
    .locals 1
    .param p0, "offset"    # I

    .prologue
    .line 141
    add-int/lit8 v0, p0, 0x5

    return v0
.end method

.method private getTotalDataLength([B[B[B)I
    .locals 2
    .param p1, "headerBytes"    # [B
    .param p2, "bodyBytes"    # [B
    .param p3, "bizBytes"    # [B

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 129
    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->headerLength:I

    .line 130
    if-nez p2, :cond_1

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->bodyLength:I

    .line 131
    if-nez p3, :cond_2

    move v0, v1

    :goto_2
    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->bizLength:I

    .line 133
    invoke-static {v1, p0}, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->getBizLengthOffset(ILcom/alibaba/android/dingtalk/live/msg/DataProtocol;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->bizLength:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 129
    :cond_0
    array-length v0, p1

    goto :goto_0

    .line 130
    :cond_1
    array-length v0, p2

    goto :goto_1

    .line 131
    :cond_2
    array-length v0, p3

    goto :goto_2
.end method

.method public static parse([B)Ljava/util/List;
    .locals 7
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "offset":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v2, "protocolList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;>;"
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_0

    .line 61
    new-instance v1, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;-><init>()V

    .line 63
    .local v1, "protocol":Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;
    add-int/lit8 v4, v0, 0x0

    aget-byte v4, p0, v4

    and-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    iput-byte v4, v1, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->retain:B

    .line 64
    add-int/lit8 v4, v0, 0x0

    aget-byte v4, p0, v4

    shr-int/lit8 v4, v4, 0x1

    and-int/lit8 v4, v4, 0x3

    int-to-byte v4, v4

    iput-byte v4, v1, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->qosLevel:B

    .line 65
    add-int/lit8 v4, v0, 0x0

    aget-byte v4, p0, v4

    shr-int/lit8 v4, v4, 0x3

    and-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    iput-byte v4, v1, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->dupFlag:B

    .line 66
    add-int/lit8 v4, v0, 0x0

    aget-byte v4, p0, v4

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    int-to-byte v4, v4

    iput-byte v4, v1, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->mqttMsgType:B

    .line 68
    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p0, v4

    and-int/lit8 v4, v4, 0x7

    int-to-byte v4, v4

    iput-byte v4, v1, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->serializeType:B

    .line 69
    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p0, v4

    shr-int/lit8 v4, v4, 0x3

    and-int/lit8 v4, v4, 0x1f

    int-to-byte v4, v4

    iput-byte v4, v1, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->version:B

    .line 71
    add-int/lit8 v4, v0, 0x2

    aget-byte v4, p0, v4

    and-int/lit8 v4, v4, 0x1f

    int-to-byte v4, v4

    iput-byte v4, v1, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->type:B

    .line 72
    add-int/lit8 v4, v0, 0x2

    aget-byte v4, p0, v4

    shr-int/lit8 v4, v4, 0x5

    and-int/lit8 v4, v4, 0x7

    int-to-byte v4, v4

    iput-byte v4, v1, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->sysCode:B

    .line 73
    add-int/lit8 v4, v0, 0x3

    aget-byte v4, p0, v4

    shr-int/lit8 v4, v4, 0x3

    and-int/lit8 v4, v4, 0x1f

    int-to-byte v4, v4

    iput-byte v4, v1, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->typeVersion:B

    .line 75
    add-int/lit8 v4, v0, 0x3

    aget-byte v4, p0, v4

    and-int/lit8 v4, v4, 0x7

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->changeByte(I)I

    move-result v4

    mul-int/lit16 v4, v4, 0x100

    add-int/lit8 v5, v0, 0x4

    aget-byte v5, p0, v5

    invoke-virtual {v1, v5}, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->changeByte(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v1, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->namespace:I

    .line 76
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->getHeaderLengthOffset(I)I

    move-result v4

    aget-byte v4, p0, v4

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->changeByte(I)I

    move-result v4

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->getHeaderLengthOffset(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p0, v5

    invoke-virtual {v1, v5}, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->changeByte(I)I

    move-result v5

    mul-int/lit16 v5, v5, 0x100

    add-int/2addr v4, v5

    iput v4, v1, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->headerLength:I

    .line 77
    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->getBodyLengthOffset(ILcom/alibaba/android/dingtalk/live/msg/DataProtocol;)I

    move-result v4

    aget-byte v4, p0, v4

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->changeByte(I)I

    move-result v4

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->getBodyLengthOffset(ILcom/alibaba/android/dingtalk/live/msg/DataProtocol;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p0, v5

    invoke-virtual {v1, v5}, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->changeByte(I)I

    move-result v5

    mul-int/lit16 v5, v5, 0x100

    add-int/2addr v4, v5

    iput v4, v1, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->bodyLength:I

    .line 78
    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->getBizLengthOffset(ILcom/alibaba/android/dingtalk/live/msg/DataProtocol;)I

    move-result v4

    aget-byte v4, p0, v4

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->changeByte(I)I

    move-result v4

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->getBizLengthOffset(ILcom/alibaba/android/dingtalk/live/msg/DataProtocol;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p0, v5

    invoke-virtual {v1, v5}, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->changeByte(I)I

    move-result v5

    mul-int/lit16 v5, v5, 0x100

    add-int/2addr v4, v5

    iput v4, v1, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->bizLength:I

    .line 79
    invoke-static {v6, v1}, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->getBizLengthOffset(ILcom/alibaba/android/dingtalk/live/msg/DataProtocol;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iget v5, v1, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->bizLength:I

    add-int/2addr v4, v5

    add-int/lit8 v3, v4, 0x1

    .line 80
    .local v3, "totalLength":I
    new-array v4, v3, [B

    iput-object v4, v1, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->protocolData:[B

    .line 81
    iget-object v4, v1, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->protocolData:[B

    invoke-static {p0, v0, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    add-int/2addr v0, v3

    .line 84
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 87
    .end local v1    # "protocol":Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;
    .end local v3    # "totalLength":I
    :cond_0
    return-object v2
.end method


# virtual methods
.method public changeByte(I)I
    .locals 0
    .param p1, "length"    # I

    .prologue
    .line 137
    if-ltz p1, :cond_0

    .end local p1    # "length":I
    :goto_0
    return p1

    .restart local p1    # "length":I
    :cond_0
    add-int/lit16 p1, p1, 0x100

    goto :goto_0
.end method

.method public write([B[B[B)[B
    .locals 7
    .param p1, "headerBytes"    # [B
    .param p2, "bodyBytes"    # [B
    .param p3, "bizBytes"    # [B

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->getTotalDataLength([B[B[B)I

    move-result v1

    new-array v0, v1, [B

    .line 93
    .local v0, "data":[B
    iget-byte v1, p0, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->mqttMsgType:B

    shl-int/lit8 v1, v1, 0x4

    and-int/lit16 v1, v1, 0xf0

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 94
    aget-byte v1, v0, v3

    iget-byte v2, p0, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->dupFlag:B

    shl-int/lit8 v2, v2, 0x3

    and-int/lit16 v2, v2, 0xf8

    int-to-byte v2, v2

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 95
    aget-byte v1, v0, v3

    iget-byte v2, p0, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->qosLevel:B

    shl-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xfe

    int-to-byte v2, v2

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 96
    aget-byte v1, v0, v3

    iget-byte v2, p0, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->retain:B

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 98
    iget-byte v1, p0, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->version:B

    shl-int/lit8 v1, v1, 0x3

    and-int/lit16 v1, v1, 0xf8

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 99
    aget-byte v1, v0, v4

    iget-byte v2, p0, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->serializeType:B

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 101
    iget-byte v1, p0, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->sysCode:B

    shl-int/lit8 v1, v1, 0x5

    and-int/lit16 v1, v1, 0xe0

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    .line 102
    aget-byte v1, v0, v5

    iget-byte v2, p0, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->type:B

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    .line 104
    iget-byte v1, p0, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->typeVersion:B

    shl-int/lit8 v1, v1, 0x3

    and-int/lit16 v1, v1, 0xf8

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    .line 105
    aget-byte v1, v0, v6

    iget v2, p0, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->namespace:I

    div-int/lit16 v2, v2, 0x100

    int-to-byte v2, v2

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    .line 107
    const/4 v1, 0x4

    iget v2, p0, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->namespace:I

    rem-int/lit16 v2, v2, 0x100

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 108
    invoke-static {v3}, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->getHeaderLengthOffset(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->headerLength:I

    div-int/lit16 v2, v2, 0x100

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 109
    invoke-static {v3}, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->getHeaderLengthOffset(I)I

    move-result v1

    iget v2, p0, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->headerLength:I

    rem-int/lit16 v2, v2, 0x100

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 110
    invoke-static {v3, p0}, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->getBodyLengthOffset(ILcom/alibaba/android/dingtalk/live/msg/DataProtocol;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->bodyLength:I

    div-int/lit16 v2, v2, 0x100

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 111
    invoke-static {v3, p0}, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->getBodyLengthOffset(ILcom/alibaba/android/dingtalk/live/msg/DataProtocol;)I

    move-result v1

    iget v2, p0, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->bodyLength:I

    rem-int/lit16 v2, v2, 0x100

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 112
    invoke-static {v3, p0}, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->getBizLengthOffset(ILcom/alibaba/android/dingtalk/live/msg/DataProtocol;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->bizLength:I

    div-int/lit16 v2, v2, 0x100

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 113
    invoke-static {v3, p0}, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->getBizLengthOffset(ILcom/alibaba/android/dingtalk/live/msg/DataProtocol;)I

    move-result v1

    iget v2, p0, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->bizLength:I

    rem-int/lit16 v2, v2, 0x100

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 115
    iget v1, p0, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->headerLength:I

    if-eqz v1, :cond_0

    .line 116
    invoke-static {v3}, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->getHeaderLengthOffset(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->headerLength:I

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    :cond_0
    iget v1, p0, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->bodyLength:I

    if-eqz v1, :cond_1

    .line 119
    invoke-static {v3, p0}, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->getBodyLengthOffset(ILcom/alibaba/android/dingtalk/live/msg/DataProtocol;)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->bodyLength:I

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    :cond_1
    iget v1, p0, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->bizLength:I

    if-eqz v1, :cond_2

    .line 122
    invoke-static {v3, p0}, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->getBizLengthOffset(ILcom/alibaba/android/dingtalk/live/msg/DataProtocol;)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->bizLength:I

    invoke-static {p3, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    :cond_2
    return-object v0
.end method
