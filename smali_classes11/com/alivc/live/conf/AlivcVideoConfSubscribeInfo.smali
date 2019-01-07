.class public Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;
.super Ljava/lang/Object;
.source "AlivcVideoConfSubscribeInfo.java"


# instance fields
.field private mCallId:Ljava/lang/String;

.field private mDisplay:Ljava/lang/String;

.field private mSession:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;

.field private mVideoType:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)V
    .locals 1
    .param p1, "info"    # Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;
    .param p2, "type"    # Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->mUserId:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;->getSubscribeId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->mCallId:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;->getSession()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->mSession:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;->getDisplay()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->mDisplay:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->mVideoType:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    .line 29
    return-void
.end method


# virtual methods
.method public getCallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->mCallId:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->mDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public getSession()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->mSession:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoType()Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->mVideoType:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    return-object v0
.end method

.method public setCallId(Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->mCallId:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setDisplay(Ljava/lang/String;)V
    .locals 0
    .param p1, "display"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->mDisplay:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setSession(Ljava/lang/String;)V
    .locals 0
    .param p1, "session"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->mSession:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->mUserId:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setVideoType(Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)V
    .locals 0
    .param p1, "videoType"    # Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;->mVideoType:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    .line 69
    return-void
.end method
