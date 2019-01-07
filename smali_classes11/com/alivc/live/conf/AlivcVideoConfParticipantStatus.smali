.class public Lcom/alivc/live/conf/AlivcVideoConfParticipantStatus;
.super Ljava/lang/Object;
.source "AlivcVideoConfParticipantStatus.java"


# instance fields
.field private enableCamera:Z

.field private enableMic:Z

.field private enableScreenShare:Z

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfParticipantStatus;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public isEnableCamera()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/alivc/live/conf/AlivcVideoConfParticipantStatus;->enableCamera:Z

    return v0
.end method

.method public isEnableMic()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/alivc/live/conf/AlivcVideoConfParticipantStatus;->enableMic:Z

    return v0
.end method

.method public isEnableScreenShare()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/alivc/live/conf/AlivcVideoConfParticipantStatus;->enableScreenShare:Z

    return v0
.end method

.method public setEnableCamera(Z)V
    .locals 0
    .param p1, "enableCamera"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/alivc/live/conf/AlivcVideoConfParticipantStatus;->enableCamera:Z

    .line 46
    return-void
.end method

.method public setEnableMic(Z)V
    .locals 0
    .param p1, "enableMic"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/alivc/live/conf/AlivcVideoConfParticipantStatus;->enableMic:Z

    .line 38
    return-void
.end method

.method public setEnableScreenShare(Z)V
    .locals 0
    .param p1, "enableScreenShare"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/alivc/live/conf/AlivcVideoConfParticipantStatus;->enableScreenShare:Z

    .line 30
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/alivc/live/conf/AlivcVideoConfParticipantStatus;->userId:Ljava/lang/String;

    .line 22
    return-void
.end method
