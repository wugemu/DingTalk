.class public Lcom/alibaba/android/dingtalk/live/msg/common/JoinPowerMessage;
.super Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;
.source "JoinPowerMessage.java"


# instance fields
.field public addUsers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected data:[B

.field public onlineCount:I

.field public pageViewCount:J

.field public totalCount:I

.field protected type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;-><init>()V

    .line 25
    const/16 v0, 0x67

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->type:I

    .line 26
    return-void
.end method


# virtual methods
.method public fromData()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 42
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->data:[B

    invoke-static {v2}, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;->parseFrom([B)Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;

    move-result-object v1

    .line 43
    .local v1, "msg":Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;
    iget v2, v1, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;->totalCount:I

    iput v2, p0, Lcom/alibaba/android/dingtalk/live/msg/common/JoinPowerMessage;->totalCount:I

    .line 44
    iget v2, v1, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;->onlineCount:I

    iput v2, p0, Lcom/alibaba/android/dingtalk/live/msg/common/JoinPowerMessage;->onlineCount:I

    .line 45
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;->addUsers:Ljava/util/Map;

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/live/msg/common/JoinPowerMessage;->addUsers:Ljava/util/Map;

    .line 46
    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;->pageViewCount:J

    iput-wide v2, p0, Lcom/alibaba/android/dingtalk/live/msg/common/JoinPowerMessage;->pageViewCount:J
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v1    # "msg":Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    invoke-virtual {v0}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->printStackTrace()V

    goto :goto_0
.end method

.method public toData()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 30
    const/16 v1, 0x67

    iput v1, p0, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->type:I

    .line 31
    new-instance v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;-><init>()V

    .line 32
    .local v0, "msg":Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;
    iget v1, p0, Lcom/alibaba/android/dingtalk/live/msg/common/JoinPowerMessage;->totalCount:I

    iput v1, v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;->totalCount:I

    .line 33
    iget v1, p0, Lcom/alibaba/android/dingtalk/live/msg/common/JoinPowerMessage;->onlineCount:I

    iput v1, v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;->onlineCount:I

    .line 34
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/common/JoinPowerMessage;->addUsers:Ljava/util/Map;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;->addUsers:Ljava/util/Map;

    .line 35
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/live/msg/common/JoinPowerMessage;->pageViewCount:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;->pageViewCount:J

    .line 36
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$JoinNotify;->toByteArray(Lixd;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->data:[B

    .line 37
    return-void
.end method
