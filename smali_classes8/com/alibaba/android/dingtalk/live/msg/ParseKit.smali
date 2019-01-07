.class public Lcom/alibaba/android/dingtalk/live/msg/ParseKit;
.super Ljava/lang/Object;
.source "ParseKit.java"


# static fields
.field static final TAG:Ljava/lang/String; = "ParseKit"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toPackage(Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;Ljava/lang/String;ILjava/lang/String;J)Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;
    .locals 8
    .param p0, "data"    # Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "dataId"    # Ljava/lang/String;
    .param p2, "source"    # I
    .param p3, "sid"    # Ljava/lang/String;
    .param p4, "offset"    # J
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "J)",
            "Lcom/alibaba/android/dingtalk/live/msg/core/model/Package",
            "<",
            "Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 31
    iget-byte v3, p0, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->mqttMsgType:B

    .line 32
    .local v3, "mqttType":I
    iget-byte v5, p0, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->type:B

    .line 33
    .local v5, "type":I
    const/4 v1, 0x0

    .line 36
    .local v1, "m":Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;
    const/4 v6, 0x4

    if-eq v3, v6, :cond_0

    const/16 v6, 0x9

    if-eq v3, v6, :cond_0

    const/16 v6, 0xb

    if-ne v3, v6, :cond_5

    .line 39
    :cond_0
    :try_start_0
    new-instance v2, Lcom/alibaba/android/dingtalk/live/msg/core/model/Ack;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/live/msg/core/model/Ack;-><init>()V

    .end local v1    # "m":Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;
    .local v2, "m":Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;
    move-object v1, v2

    .line 58
    .end local v2    # "m":Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;
    .restart local v1    # "m":Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 59
    invoke-virtual {v1, p0}, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->fromProtocol(Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;)V
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :cond_2
    :goto_1
    if-eqz v1, :cond_4

    iget v6, v1, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->version:I

    if-ne v7, v6, :cond_4

    iget-byte v6, v1, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->serializeType:B

    if-ne v7, v6, :cond_4

    iget-byte v6, v1, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->typeVersion:B

    if-ne v7, v6, :cond_4

    iget-object v6, v1, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->sdkVersion:Ljava/lang/String;

    .line 134
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "0.2.1"

    iget-object v7, v1, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    iget-object v6, v1, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->messageId:Ljava/lang/String;

    .line 135
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 142
    :cond_4
    const/4 v4, 0x0

    .line 150
    :goto_2
    return-object v4

    .line 41
    :cond_5
    const/4 v6, 0x3

    if-ne v5, v6, :cond_6

    .line 42
    :try_start_1
    new-instance v2, Lcom/alibaba/android/dingtalk/live/msg/Command;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/live/msg/Command;-><init>()V

    .end local v1    # "m":Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;
    .restart local v2    # "m":Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;
    move-object v1, v2

    .end local v2    # "m":Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;
    .restart local v1    # "m":Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;
    goto :goto_0

    .line 43
    :cond_6
    if-ne v5, v7, :cond_1

    .line 44
    new-instance v2, Lcom/alibaba/android/dingtalk/live/msg/Message;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/live/msg/Message;-><init>()V
    :try_end_1
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v1    # "m":Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;
    .restart local v2    # "m":Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;
    move-object v1, v2

    .end local v2    # "m":Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;
    .restart local v1    # "m":Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;
    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    const/4 v1, 0x0

    .line 127
    invoke-virtual {v0}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->printStackTrace()V

    goto :goto_1

    .line 145
    .end local v0    # "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    :cond_7
    new-instance v4, Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;

    invoke-direct {v4, v1}, Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;-><init>(Lcom/alibaba/android/dingtalk/live/msg/core/model/IProtocol;)V

    .line 146
    .local v4, "p":Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;, "Lcom/alibaba/android/dingtalk/live/msg/core/model/Package<Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;>;"
    iput-object p1, v4, Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;->dataId:Ljava/lang/String;

    .line 147
    iput p2, v4, Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;->dataSourceType:I

    .line 148
    iput-object p3, v4, Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;->tag:Ljava/lang/String;

    .line 149
    iput-wide p4, v4, Lcom/alibaba/android/dingtalk/live/msg/core/model/Package;->offset:J

    goto :goto_2
.end method
