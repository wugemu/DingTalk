.class public Lcom/alibaba/android/dingtalk/live/msg/core/model/ErrorMessage;
.super Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;
.source "ErrorMessage.java"


# instance fields
.field public content:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;-><init>(Lcom/alibaba/android/dingtalk/live/msg/core/model/BaseMessage;)V

    .line 27
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/ErrorMessage;->msgType:I

    .line 28
    const/16 v0, -0x64

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/ErrorMessage;->type:I

    .line 29
    return-void
.end method

.method public static create()Lcom/alibaba/android/dingtalk/live/msg/core/model/ErrorMessage;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/alibaba/android/dingtalk/live/msg/core/model/ErrorMessage;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/live/msg/core/model/ErrorMessage;-><init>()V

    .line 33
    .local v0, "myself":Lcom/alibaba/android/dingtalk/live/msg/core/model/ErrorMessage;
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/live/msg/core/model/ErrorMessage;->assemble()V

    .line 34
    const/4 v1, 0x3

    iput v1, v0, Lcom/alibaba/android/dingtalk/live/msg/core/model/ErrorMessage;->msgType:I

    .line 35
    const/16 v1, -0x64

    iput v1, v0, Lcom/alibaba/android/dingtalk/live/msg/core/model/ErrorMessage;->type:I

    .line 36
    return-object v0
.end method


# virtual methods
.method public bizCode()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/ErrorMessage;->bizCode:I

    return v0
.end method

.method public bizToProtocol()[B
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public bodyToProtocol()[B
    .locals 1

    .prologue
    .line 41
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
    .line 80
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/ErrorMessage;->createTime:J

    return-wide v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/ErrorMessage;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public msgType()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/ErrorMessage;->msgType:I

    return v0
.end method

.method public needACK()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/ErrorMessage;->needACK:Z

    return v0
.end method

.method public qosLevel()B
    .locals 1

    .prologue
    .line 75
    iget-byte v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/ErrorMessage;->qosLevel:B

    return v0
.end method

.method public routerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/ErrorMessage;->routerId:Ljava/lang/String;

    return-object v0
.end method

.method public setID(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/ErrorMessage;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    iput-object p1, v0, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->messageId:Ljava/lang/String;

    goto :goto_0
.end method

.method public subType()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/ErrorMessage;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    iget v0, v0, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->subType:I

    return v0
.end method

.method public sysCode()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/ErrorMessage;->sysCode:I

    return v0
.end method

.method public topic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/ErrorMessage;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->topic:Ljava/lang/String;

    return-object v0
.end method

.method public type()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/ErrorMessage;->type:I

    return v0
.end method

.method public userId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/msg/core/model/ErrorMessage;->header:Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/live/msg/nano/HeaderV1$Header;->userId:Ljava/lang/String;

    return-object v0
.end method
