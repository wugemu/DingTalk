.class public final Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
.super Ljava/lang/Object;
.source "TeleVideoUserWindowObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;,
        Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

.field public c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

.field public d:Lorg/webrtc/sdk/SophonSurfaceView;

.field public e:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

.field private f:Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a:Z

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    .line 41
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    .line 42
    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;->MODE_ALL_RENDER:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->e:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    .line 43
    return-void
.end method

.method private declared-synchronized b(Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)Z
    .locals 3
    .param p1, "streamType"    # Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 83
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->f:Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 103
    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    .line 86
    :cond_2
    :try_start_1
    sget-object v2, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeScreenShare:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    if-ne p1, v2, :cond_4

    .line 87
    iget-object v2, p0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->f:Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;

    invoke-virtual {v2}, Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;->isEnableScreenShareStream()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    move v0, v1

    .line 103
    goto :goto_0

    .line 90
    :cond_4
    sget-object v2, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeLarge:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    if-ne p1, v2, :cond_5

    .line 91
    iget-object v2, p0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->f:Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;

    invoke-virtual {v2}, Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;->isEnableVideoLargeStream()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 94
    :cond_5
    sget-object v2, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeSmall:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    if-ne p1, v2, :cond_6

    .line 95
    iget-object v2, p0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->f:Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;

    invoke-virtual {v2}, Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;->isEnableVideoSmallStream()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 98
    :cond_6
    sget-object v2, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeAudioOnly:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    if-ne p1, v2, :cond_3

    .line 99
    iget-object v2, p0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->f:Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;

    invoke-virtual {v2}, Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;->isEnableAudio()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;
    .locals 2
    .param p1, "streamType"    # Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 107
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->f:Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 108
    :cond_0
    const/4 v0, 0x0

    .line 114
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 110
    :cond_2
    const/4 v0, 0x0

    .line 111
    .local v0, "destInfo":Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;
    :try_start_1
    invoke-direct {p0, p1}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b(Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;

    .end local v0    # "destInfo":Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;
    iget-object v1, p0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->f:Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;

    invoke-direct {v0, v1, p1}, Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;-><init>(Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0    # "destInfo":Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;
    goto :goto_0

    .line 107
    .end local v0    # "destInfo":Lcom/alivc/live/conf/AlivcVideoConfSubscribeInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized a(Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;)V
    .locals 1
    .param p1, "participantInfo"    # Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->f:Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a()Z
    .locals 1

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeScreenShare:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b(Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Z
    .locals 1

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeLarge:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b(Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;->AlivcVideoConfVideoStreamTypeSmall:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;

    .line 71
    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b(Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfVideoStreamType;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 47
    if-ne p0, p1, :cond_1

    .line 62
    :cond_0
    :goto_0
    return v1

    .line 50
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 51
    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 54
    goto :goto_0

    .line 56
    :cond_3
    instance-of v3, p1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 57
    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    .line 58
    .local v0, "other":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    iget-object v3, p0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    iget-object v4, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v3, v4}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .end local v0    # "other":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    :cond_4
    move v1, v2

    .line 62
    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 119
    const-string/jumbo v4, ""

    .line 120
    .local v4, "userStr":Ljava/lang/String;
    iget-object v6, p0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-eqz v6, :cond_0

    .line 121
    iget-object v6, p0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v6}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 123
    :cond_0
    const-string/jumbo v5, ""

    .line 124
    .local v5, "userSubStr":Ljava/lang/String;
    iget-object v6, p0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->f:Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;

    if-eqz v6, :cond_1

    .line 125
    iget-object v6, p0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->f:Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;

    invoke-virtual {v6}, Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;->isEnableVideoSmallStream()Z

    move-result v2

    .line 126
    .local v2, "smallEnabled":Z
    iget-object v6, p0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->f:Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;

    invoke-virtual {v6}, Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;->isEnableVideoLargeStream()Z

    move-result v0

    .line 127
    .local v0, "largeEnabled":Z
    iget-object v6, p0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->f:Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;

    invoke-virtual {v6}, Lcom/alivc/live/conf/AlivcVideoConfParticipantInfo;->isEnableScreenShareStream()Z

    move-result v1

    .line 128
    .local v1, "shareEnabled":Z
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    const-string/jumbo v7, ","

    aput-object v7, v6, v9

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    const-string/jumbo v7, ","

    aput-object v7, v6, v11

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v12

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 130
    .end local v0    # "largeEnabled":Z
    .end local v1    # "shareEnabled":Z
    .end local v2    # "smallEnabled":Z
    :cond_1
    const-string/jumbo v3, ""

    .line 131
    .local v3, "stateStr":Ljava/lang/String;
    iget-object v6, p0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    if-eqz v6, :cond_2

    .line 132
    iget-object v6, p0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->c:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;

    invoke-virtual {v6}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$a;->toString()Ljava/lang/String;

    move-result-object v3

    .line 135
    :cond_2
    const/16 v6, 0xa

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "UserWindowObject{"

    aput-object v7, v6, v8

    const-string/jumbo v7, "beMainSurface="

    aput-object v7, v6, v9

    iget-boolean v7, p0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->a:Z

    .line 136
    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    const-string/jumbo v7, ", userObj="

    aput-object v7, v6, v11

    aput-object v4, v6, v12

    const/4 v7, 0x5

    const-string/jumbo v8, ", userSubInfo="

    aput-object v8, v6, v7

    const/4 v7, 0x6

    aput-object v5, v6, v7

    const/4 v7, 0x7

    const-string/jumbo v8, ", userWindowState="

    aput-object v8, v6, v7

    const/16 v7, 0x8

    aput-object v3, v6, v7

    const/16 v7, 0x9

    const-string/jumbo v8, "}"

    aput-object v8, v6, v7

    .line 135
    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
