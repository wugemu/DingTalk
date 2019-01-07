.class public Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;
.super Ljava/lang/Object;
.source "AlivcVideoConfParticipantInfo.java"


# instance fields
.field private mDisplay:Ljava/lang/String;

.field private mEnableAudio:Z

.field private mEnableScreenShareStream:Z

.field private mEnableVideoLargeStream:Z

.field private mEnableVideoSmallStream:Z

.field private mReceivedTimeStamp:J

.field private mSession:Ljava/lang/String;

.field private mSubscribeId:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;->mDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public getReceivedTimeStamp()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;->mReceivedTimeStamp:J

    return-wide v0
.end method

.method public getSession()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;->mSession:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscribeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;->mSubscribeId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public isEnableAudio()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;->mEnableAudio:Z

    return v0
.end method

.method public isEnableScreenShareStream()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;->mEnableScreenShareStream:Z

    return v0
.end method

.method public isEnableVideoLargeStream()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;->mEnableVideoLargeStream:Z

    return v0
.end method

.method public isEnableVideoSmallStream()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;->mEnableVideoSmallStream:Z

    return v0
.end method

.method public setDisplay(Ljava/lang/String;)V
    .locals 0
    .param p1, "display"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;->mDisplay:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setEnableAudio(Z)V
    .locals 0
    .param p1, "enableAudio"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;->mEnableAudio:Z

    .line 87
    return-void
.end method

.method public setEnableScreenShareStream(Z)V
    .locals 0
    .param p1, "enableScreenShareStream"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;->mEnableScreenShareStream:Z

    .line 119
    return-void
.end method

.method public setEnableVideoLargeStream(Z)V
    .locals 0
    .param p1, "enableVideoLargeStream"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;->mEnableVideoLargeStream:Z

    .line 95
    return-void
.end method

.method public setEnableVideoSmallStream(Z)V
    .locals 0
    .param p1, "enableVideoSmallStream"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;->mEnableVideoSmallStream:Z

    .line 103
    return-void
.end method

.method public setReceivedTimeStamp(J)V
    .locals 1
    .param p1, "receivedTimeStamp"    # J

    .prologue
    .line 126
    iput-wide p1, p0, Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;->mReceivedTimeStamp:J

    .line 127
    return-void
.end method

.method public setSession(Ljava/lang/String;)V
    .locals 0
    .param p1, "session"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;->mSession:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setSubscribeId(Ljava/lang/String;)V
    .locals 0
    .param p1, "subscribeId"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;->mSubscribeId:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;->mUserId:Ljava/lang/String;

    .line 63
    return-void
.end method
