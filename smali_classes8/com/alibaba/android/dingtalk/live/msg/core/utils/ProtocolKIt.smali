.class public Lcom/alibaba/android/dingtalk/live/msg/core/utils/ProtocolKIt;
.super Ljava/lang/Object;
.source "ProtocolKIt.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Protocol"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBizBytes(Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;)[B
    .locals 5
    .param p0, "protocol"    # Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;

    .prologue
    const/4 v4, 0x0

    .line 27
    iget v1, p0, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->bizLength:I

    new-array v0, v1, [B

    .line 28
    .local v0, "bytes":[B
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->protocolData:[B

    invoke-static {v4, p0}, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->getBizLengthOffset(ILcom/alibaba/android/dingtalk/live/msg/DataProtocol;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->bizLength:I

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    return-object v0
.end method

.method public static getBodyBytes(Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;)[B
    .locals 5
    .param p0, "protocol"    # Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;

    .prologue
    const/4 v4, 0x0

    .line 21
    iget v1, p0, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->bodyLength:I

    new-array v0, v1, [B

    .line 22
    .local v0, "bytes":[B
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->protocolData:[B

    invoke-static {v4, p0}, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->getBodyLengthOffset(ILcom/alibaba/android/dingtalk/live/msg/DataProtocol;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->bodyLength:I

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    return-object v0
.end method

.method public static getHeadBytes(Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;)[B
    .locals 5
    .param p0, "protocol"    # Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;

    .prologue
    const/4 v4, 0x0

    .line 15
    iget v1, p0, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->headerLength:I

    new-array v0, v1, [B

    .line 16
    .local v0, "bytes":[B
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->protocolData:[B

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->getHeaderLengthOffset(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->headerLength:I

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    return-object v0
.end method
