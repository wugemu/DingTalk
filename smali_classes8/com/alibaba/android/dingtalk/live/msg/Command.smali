.class public Lcom/alibaba/android/dingtalk/live/msg/Command;
.super Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;
.source "Command.java"


# instance fields
.field public body:Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;

    .prologue
    const/4 v1, 0x3

    .line 25
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;-><init>(Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;)V

    .line 26
    iput v1, p0, Lcom/alibaba/android/dingtalk/live/msg/Command;->msgType:I

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/Command;->sysCode:I

    .line 28
    iput v1, p0, Lcom/alibaba/android/dingtalk/live/msg/Command;->type:I

    .line 29
    new-instance v0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/Command;->body:Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;

    .line 31
    return-void
.end method

.method public static create()Lcom/alibaba/android/dingtalk/live/msg/Command;
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 34
    new-instance v0, Lcom/alibaba/android/dingtalk/live/msg/Command;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/msg/Command;-><init>()V

    .line 35
    .local v0, "myself":Lcom/alibaba/android/dingtalk/live/msg/Command;
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/live/msg/Command;->assemble()V

    .line 36
    iput v2, v0, Lcom/alibaba/android/dingtalk/live/msg/Command;->msgType:I

    .line 37
    const/4 v1, 0x1

    iput v1, v0, Lcom/alibaba/android/dingtalk/live/msg/Command;->sysCode:I

    .line 38
    iput v2, v0, Lcom/alibaba/android/dingtalk/live/msg/Command;->type:I

    .line 39
    new-instance v1, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;-><init>()V

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/live/msg/Command;->body:Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;

    .line 40
    return-object v0
.end method


# virtual methods
.method public bizToProtocol()[B
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public bodyToProtocol()[B
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/Command;->body:Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/Command;->body:Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;->toByteArray(Lixd;)[B

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
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
    .line 57
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;->fromProtocol(Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;)V

    .line 58
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/live/msg/core/utils/ProtocolKIt;->getBodyBytes(Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;->parseFrom([B)Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/Command;->body:Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Command;

    .line 59
    return-void
.end method
