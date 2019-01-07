.class public abstract Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;
.super Ljava/lang/Object;
.source "BaseMessage.java"

# interfaces
.implements Lcom/alibaba/android/dingtalk/live/msg/core/model/IProtocol;


# instance fields
.field public bizCode:I

.field public createTime:J

.field public ext:Ljava/lang/String;

.field public header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

.field public msgType:I

.field public needACK:Z

.field public qosLevel:B

.field public retain:B

.field public routerId:Ljava/lang/String;

.field public serializeType:B

.field public sysCode:I

.field public type:I

.field public typeVersion:B

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->routerId:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->ext:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->routerId:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->ext:Ljava/lang/String;

    .line 57
    iget v0, p1, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->msgType:I

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->msgType:I

    .line 58
    iget-boolean v0, p1, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->needACK:Z

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->needACK:Z

    .line 59
    iget-byte v0, p1, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->qosLevel:B

    iput-byte v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->qosLevel:B

    .line 60
    iget-byte v0, p1, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->retain:B

    iput-byte v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->retain:B

    .line 61
    iget v0, p1, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->version:I

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->version:I

    .line 62
    iget-byte v0, p1, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->serializeType:B

    iput-byte v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->serializeType:B

    .line 63
    iget v0, p1, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->sysCode:I

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->sysCode:I

    .line 64
    iget v0, p1, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->type:I

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->type:I

    .line 65
    iget-byte v0, p1, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->typeVersion:B

    iput-byte v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->typeVersion:B

    .line 66
    iget v0, p1, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->bizCode:I

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->bizCode:I

    .line 67
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    .line 69
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->routerId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->routerId:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method public assemble()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->createTime:J

    .line 81
    iput v2, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->version:I

    .line 82
    iput-byte v2, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->serializeType:B

    .line 85
    iput-byte v2, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->typeVersion:B

    .line 87
    new-instance v0, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    .line 88
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    invoke-static {}, Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment;->generateDataId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->messageId:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    invoke-static {}, Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment;->getVersionName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->appVersion:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    const-string/jumbo v1, "0.2.1"

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->sdkVersion:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    invoke-static {}, Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment;->getUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->userId:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    invoke-static {}, Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment;->getToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->token:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public bizCode()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->bizCode:I

    return v0
.end method

.method public abstract bizToProtocol()[B
.end method

.method public abstract bodyToProtocol()[B
.end method

.method public createTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 160
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->createTime:J

    return-wide v0
.end method

.method public fromProtocol(Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;)V
    .locals 1
    .param p1, "data"    # Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 107
    iget-byte v0, p1, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->mqttMsgType:B

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->msgType:I

    .line 108
    iget-byte v0, p1, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->dupFlag:B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->needACK:Z

    .line 109
    iget-byte v0, p1, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->qosLevel:B

    iput-byte v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->qosLevel:B

    .line 110
    iget-byte v0, p1, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->retain:B

    iput-byte v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->retain:B

    .line 111
    iget-byte v0, p1, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->version:B

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->version:I

    .line 113
    iget-byte v0, p1, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->serializeType:B

    iput-byte v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->serializeType:B

    .line 114
    iget-byte v0, p1, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->sysCode:B

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->sysCode:I

    .line 115
    iget-byte v0, p1, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->type:B

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->type:I

    .line 116
    iget-byte v0, p1, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->typeVersion:B

    iput-byte v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->typeVersion:B

    .line 117
    iget v0, p1, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->namespace:I

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->bizCode:I

    .line 119
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/live/msg/core/utils/ProtocolKIt;->getHeadBytes(Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->parseFrom([B)Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    .line 120
    return-void

    .line 108
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public monitorTag()I
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    iget v0, v0, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->monitorTag:I

    return v0
.end method

.method public msgType()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->msgType:I

    return v0
.end method

.method public needACK()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->needACK:Z

    return v0
.end method

.method public qosLevel()B
    .locals 1

    .prologue
    .line 155
    iget-byte v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->qosLevel:B

    return v0
.end method

.method public routerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->routerId:Ljava/lang/String;

    return-object v0
.end method

.method public setID(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 199
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    iput-object p1, v0, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->messageId:Ljava/lang/String;

    goto :goto_0
.end method

.method public statusCode()I
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    iget v0, v0, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->statusCode:I

    return v0
.end method

.method public subType()I
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    iget v0, v0, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->subType:I

    return v0
.end method

.method public sysCode()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->sysCode:I

    return v0
.end method

.method public toMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public toProtocol()[B
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 97
    new-instance v0, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;

    iget v1, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->msgType:I

    iget-boolean v2, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->needACK:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iget-byte v3, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->qosLevel:B

    iget-byte v4, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->retain:B

    iget v5, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->version:I

    iget-byte v6, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->serializeType:B

    iget v7, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->sysCode:I

    iget v8, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->type:I

    iget-byte v9, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->typeVersion:B

    iget v10, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->bizCode:I

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;-><init>(IIIIIIIIII)V

    .line 102
    .local v0, "protocol":Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->toByteArray(Lixd;)[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->bodyToProtocol()[B

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->bizToProtocol()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;->write([B[B[B)[B

    move-result-object v1

    return-object v1

    .line 97
    .end local v0    # "protocol":Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public topic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->topic:Ljava/lang/String;

    return-object v0
.end method

.method public type()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->type:I

    return v0
.end method

.method public userId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->userId:Ljava/lang/String;

    return-object v0
.end method
