.class public Lcom/alibaba/android/dingtalk/live/msg/core/model/Ack;
.super Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;
.source "Ack.java"


# instance fields
.field public body:Ljava/lang/Object;

.field public data:Ljava/lang/Object;

.field public reContent:[B

.field public retBody:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;-><init>(Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;)V

    .line 52
    const/4 v0, 0x4

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Ack;->msgType:I

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/dingtalk/live/msg/core/model/IProtocol;)V
    .locals 2
    .param p1, "message"    # Lcom/alibaba/android/dingtalk/live/msg/core/model/IProtocol;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;-><init>()V

    .line 32
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/msg/core/model/Ack;->assemble()V

    .line 33
    invoke-interface {p1}, Lcom/alibaba/android/dingtalk/live/msg/core/model/IProtocol;->msgType()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Ack;->msgType:I

    .line 34
    invoke-interface {p1}, Lcom/alibaba/android/dingtalk/live/msg/core/model/IProtocol;->needACK()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Ack;->needACK:Z

    .line 35
    invoke-interface {p1}, Lcom/alibaba/android/dingtalk/live/msg/core/model/IProtocol;->qosLevel()B

    move-result v0

    iput-byte v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Ack;->qosLevel:B

    .line 36
    invoke-interface {p1}, Lcom/alibaba/android/dingtalk/live/msg/core/model/IProtocol;->sysCode()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Ack;->sysCode:I

    .line 37
    invoke-interface {p1}, Lcom/alibaba/android/dingtalk/live/msg/core/model/IProtocol;->type()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Ack;->type:I

    .line 38
    invoke-interface {p1}, Lcom/alibaba/android/dingtalk/live/msg/core/model/IProtocol;->bizCode()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Ack;->bizCode:I

    .line 40
    invoke-interface {p1}, Lcom/alibaba/android/dingtalk/live/msg/core/model/IProtocol;->routerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Ack;->routerId:Ljava/lang/String;

    .line 41
    const/4 v0, 0x4

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Ack;->msgType:I

    .line 42
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Ack;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    invoke-interface {p1}, Lcom/alibaba/android/dingtalk/live/msg/core/model/IProtocol;->topic()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->topic:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Ack;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    invoke-interface {p1}, Lcom/alibaba/android/dingtalk/live/msg/core/model/IProtocol;->statusCode()I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->statusCode:I

    .line 44
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Ack;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    invoke-interface {p1}, Lcom/alibaba/android/dingtalk/live/msg/core/model/IProtocol;->getID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->messageId:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Ack;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    invoke-interface {p1}, Lcom/alibaba/android/dingtalk/live/msg/core/model/IProtocol;->subType()I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->subType:I

    .line 46
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Ack;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    invoke-interface {p1}, Lcom/alibaba/android/dingtalk/live/msg/core/model/IProtocol;->userId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->userId:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Ack;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    invoke-interface {p1}, Lcom/alibaba/android/dingtalk/live/msg/core/model/IProtocol;->monitorTag()I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->monitorTag:I

    .line 48
    return-void
.end method

.method public static create()Lcom/alibaba/android/dingtalk/live/msg/core/model/Ack;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Ack;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/msg/core/model/Ack;-><init>()V

    .line 57
    .local v0, "myself":Lcom/alibaba/android/dingtalk/live/msg/core/model/Ack;
    const/4 v1, 0x4

    iput v1, v0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Ack;->msgType:I

    .line 59
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/live/msg/core/model/Ack;->assemble()V

    .line 60
    return-object v0
.end method


# virtual methods
.method public bizCode()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Ack;->bizCode:I

    return v0
.end method

.method public bizToProtocol()[B
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Ack;->reContent:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Ack;->reContent:[B

    .line 72
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method

.method public bodyToProtocol()[B
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Ack;->retBody:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Ack;->retBody:[B

    .line 66
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method

.method public createTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Ack;->createTime:J

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
    .line 77
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->fromProtocol(Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;)V

    .line 78
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/live/msg/core/utils/ProtocolKIt;->getBodyBytes(Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Ack;->retBody:[B

    .line 79
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/live/msg/core/utils/ProtocolKIt;->getBizBytes(Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Ack;->reContent:[B

    .line 80
    return-void
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Ack;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public monitorTag()I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Ack;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    iget v0, v0, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->monitorTag:I

    return v0
.end method

.method public msgType()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Ack;->msgType:I

    return v0
.end method

.method public needACK()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Ack;->needACK:Z

    return v0
.end method

.method public qosLevel()B
    .locals 1

    .prologue
    .line 109
    iget-byte v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Ack;->qosLevel:B

    return v0
.end method

.method public routerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Ack;->routerId:Ljava/lang/String;

    return-object v0
.end method

.method public setID(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 153
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Ack;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    iput-object p1, v0, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->messageId:Ljava/lang/String;

    goto :goto_0
.end method

.method public setStatus(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Ack;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    iput p1, v0, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->statusCode:I

    .line 159
    return-void
.end method

.method public statusCode()I
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Ack;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    iget v0, v0, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->statusCode:I

    return v0
.end method

.method public subType()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Ack;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    iget v0, v0, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->subType:I

    return v0
.end method

.method public sysCode()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Ack;->sysCode:I

    return v0
.end method

.method public topic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Ack;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->topic:Ljava/lang/String;

    return-object v0
.end method

.method public type()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Ack;->type:I

    return v0
.end method

.method public userId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Ack;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->userId:Ljava/lang/String;

    return-object v0
.end method
