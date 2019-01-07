.class public Lcom/alivc/live/conf/AlivcVideoConfConfig;
.super Ljava/lang/Object;
.source "AlivcVideoConfConfig.java"


# instance fields
.field private audioMode:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;

.field private enableAudioControl:Z

.field private enableCamera:Z

.field private enableMic:Z

.field private enablePreview:Z

.field private joinMode:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfJoinMode;

.field private mExtras:Ljava/lang/String;

.field private mediaMode:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;

.field private playVolume:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean v0, p0, Lcom/alivc/live/conf/AlivcVideoConfConfig;->enablePreview:Z

    .line 17
    iput-boolean v0, p0, Lcom/alivc/live/conf/AlivcVideoConfConfig;->enableCamera:Z

    .line 18
    iput-boolean v0, p0, Lcom/alivc/live/conf/AlivcVideoConfConfig;->enableMic:Z

    .line 23
    iput-boolean v0, p0, Lcom/alivc/live/conf/AlivcVideoConfConfig;->enableAudioControl:Z

    .line 28
    sget-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;->AlivcVideoConfAudioOutputModeSpeaker:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;

    iput-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfConfig;->audioMode:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;

    return-void
.end method


# virtual methods
.method public getAudioMode()Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfConfig;->audioMode:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;

    return-object v0
.end method

.method public getExtras()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfConfig;->mExtras:Ljava/lang/String;

    return-object v0
.end method

.method public getJoinMode()Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfJoinMode;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfConfig;->joinMode:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfJoinMode;

    return-object v0
.end method

.method public getMediaMode()Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcVideoConfConfig;->mediaMode:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;

    return-object v0
.end method

.method public getPlayVolume()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/alivc/live/conf/AlivcVideoConfConfig;->playVolume:I

    return v0
.end method

.method public isEnableAudioControl()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/alivc/live/conf/AlivcVideoConfConfig;->enableAudioControl:Z

    return v0
.end method

.method public isEnableCamera()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/alivc/live/conf/AlivcVideoConfConfig;->enableCamera:Z

    return v0
.end method

.method public isEnableMic()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/alivc/live/conf/AlivcVideoConfConfig;->enableMic:Z

    return v0
.end method

.method public isEnablePreview()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/alivc/live/conf/AlivcVideoConfConfig;->enablePreview:Z

    return v0
.end method

.method public setAudioMode(Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;)V
    .locals 0
    .param p1, "audioMode"    # Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/alivc/live/conf/AlivcVideoConfConfig;->audioMode:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfAudioOutputMode;

    .line 115
    return-void
.end method

.method public setEnableAudioControl(Z)V
    .locals 0
    .param p1, "enableAudioControl"    # Z

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/alivc/live/conf/AlivcVideoConfConfig;->enableAudioControl:Z

    .line 175
    return-void
.end method

.method public setEnableCamera(Z)V
    .locals 0
    .param p1, "enableCamera"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/alivc/live/conf/AlivcVideoConfConfig;->enableCamera:Z

    .line 79
    return-void
.end method

.method public setEnableMic(Z)V
    .locals 0
    .param p1, "enableMic"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/alivc/live/conf/AlivcVideoConfConfig;->enableMic:Z

    .line 97
    return-void
.end method

.method public setEnablePreview(Z)V
    .locals 0
    .param p1, "enablePreview"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/alivc/live/conf/AlivcVideoConfConfig;->enablePreview:Z

    .line 62
    return-void
.end method

.method public setExtras(Ljava/lang/String;)V
    .locals 0
    .param p1, "extras"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/alivc/live/conf/AlivcVideoConfConfig;->mExtras:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setJoinMode(Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfJoinMode;)V
    .locals 0
    .param p1, "joinMode"    # Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfJoinMode;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/alivc/live/conf/AlivcVideoConfConfig;->joinMode:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfJoinMode;

    .line 167
    return-void
.end method

.method public setMediaMode(Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;)V
    .locals 0
    .param p1, "mediaMode"    # Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/alivc/live/conf/AlivcVideoConfConfig;->mediaMode:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfMediaMode;

    .line 131
    return-void
.end method

.method public setPlayVolume(I)V
    .locals 0
    .param p1, "playVolume"    # I

    .prologue
    .line 148
    iput p1, p0, Lcom/alivc/live/conf/AlivcVideoConfConfig;->playVolume:I

    .line 149
    return-void
.end method
