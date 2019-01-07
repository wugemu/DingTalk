.class public Lcom/alibaba/android/dingtalk/live/msg/core/model/Monitor;
.super Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;
.source "Monitor.java"


# instance fields
.field public body:Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;-><init>(Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;)V

    .line 33
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Monitor;->msgType:I

    .line 34
    const/4 v0, 0x7

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Monitor;->type:I

    .line 35
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Monitor;->sysCode:I

    .line 36
    new-instance v0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Monitor;->body:Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;

    .line 37
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Monitor;->body:Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;

    const-string/jumbo v1, "0.2.1"

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;->sdkVersion:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public static create()Lcom/alibaba/android/dingtalk/live/msg/core/model/Monitor;
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Monitor;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/msg/core/model/Monitor;-><init>()V

    .line 42
    .local v0, "myself":Lcom/alibaba/android/dingtalk/live/msg/core/model/Monitor;
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/live/msg/core/model/Monitor;->assemble()V

    .line 43
    const/4 v1, 0x3

    iput v1, v0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Monitor;->msgType:I

    .line 44
    const/4 v1, 0x7

    iput v1, v0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Monitor;->type:I

    .line 45
    const/4 v1, 0x2

    iput v1, v0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Monitor;->sysCode:I

    .line 46
    new-instance v1, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;-><init>()V

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Monitor;->body:Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;

    .line 47
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Monitor;->body:Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;

    const-string/jumbo v2, "0.2.1"

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;->sdkVersion:Ljava/lang/String;

    .line 48
    return-object v0
.end method


# virtual methods
.method public bizCode()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Monitor;->bizCode:I

    return v0
.end method

.method public bizToProtocol()[B
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public bodyToProtocol()[B
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Monitor;->body:Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Monitor;->body:Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Count;->toByteArray(Lixd;)[B

    move-result-object v0

    .line 55
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
    .line 116
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Monitor;->createTime:J

    return-wide v0
.end method

.method public fromProtocol(Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;)V
    .locals 2
    .param p1, "data"    # Lcom/alibaba/android/dingtalk/live/msg/DataProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 65
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Monitor;->msgType:I

    .line 66
    const/4 v0, 0x7

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Monitor;->type:I

    .line 67
    new-instance v0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Monitor;->body:Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;

    .line 68
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Monitor;->body:Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;

    const-string/jumbo v1, "0.2.1"

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;->sdkVersion:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Monitor;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public msgType()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Monitor;->msgType:I

    return v0
.end method

.method public needACK()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Monitor;->needACK:Z

    return v0
.end method

.method public qosLevel()B
    .locals 1

    .prologue
    .line 111
    iget-byte v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Monitor;->qosLevel:B

    return v0
.end method

.method public routerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Monitor;->routerId:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Monitor;->body:Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;

    iput-object p1, v0, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;->data:Ljava/lang/String;

    .line 151
    :cond_0
    return-void
.end method

.method public setID(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Monitor;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    iput-object p1, v0, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->messageId:Ljava/lang/String;

    goto :goto_0
.end method

.method public subType()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Monitor;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    iget v0, v0, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->subType:I

    return v0
.end method

.method public sysCode()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Monitor;->sysCode:I

    return v0
.end method

.method public toMap()Ljava/util/Map;
    .locals 3
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

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 74
    .local v0, "dataParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "data"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Monitor;->body:Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;->data:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string/jumbo v1, "sdkversion"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Monitor;->body:Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/live/msg/nano/BodyV1$Monitor;->sdkVersion:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-object v0
.end method

.method public toProtocol()[B
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/msg/core/model/Monitor;->bodyToProtocol()[B

    move-result-object v0

    return-object v0
.end method

.method public topic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Monitor;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->topic:Ljava/lang/String;

    return-object v0
.end method

.method public type()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Monitor;->type:I

    return v0
.end method

.method public userId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Monitor;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->userId:Ljava/lang/String;

    return-object v0
.end method
