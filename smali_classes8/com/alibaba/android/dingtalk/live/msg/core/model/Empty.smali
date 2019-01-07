.class public Lcom/alibaba/android/dingtalk/live/msg/core/model/Empty;
.super Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;
.source "Empty.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;-><init>(Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;)V

    .line 20
    return-void
.end method

.method public static create()Lcom/alibaba/android/dingtalk/live/msg/core/model/Empty;
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Empty;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/msg/core/model/Empty;-><init>()V

    .line 24
    .local v0, "myself":Lcom/alibaba/android/dingtalk/live/msg/core/model/Empty;
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/live/msg/core/model/Empty;->assemble()V

    .line 25
    return-object v0
.end method


# virtual methods
.method public bizCode()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Empty;->bizCode:I

    return v0
.end method

.method public bizToProtocol()[B
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public bodyToProtocol()[B
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public createTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Empty;->createTime:J

    return-wide v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Empty;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public msgType()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Empty;->msgType:I

    return v0
.end method

.method public needACK()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Empty;->needACK:Z

    return v0
.end method

.method public qosLevel()B
    .locals 1

    .prologue
    .line 65
    iget-byte v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Empty;->qosLevel:B

    return v0
.end method

.method public routerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Empty;->routerId:Ljava/lang/String;

    return-object v0
.end method

.method public setID(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Empty;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    iput-object p1, v0, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->messageId:Ljava/lang/String;

    goto :goto_0
.end method

.method public subType()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Empty;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    iget v0, v0, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->subType:I

    return v0
.end method

.method public sysCode()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Empty;->sysCode:I

    return v0
.end method

.method public topic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Empty;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->topic:Ljava/lang/String;

    return-object v0
.end method

.method public type()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Empty;->type:I

    return v0
.end method

.method public userId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/Empty;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->userId:Ljava/lang/String;

    return-object v0
.end method
