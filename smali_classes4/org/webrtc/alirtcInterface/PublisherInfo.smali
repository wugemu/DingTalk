.class public Lorg/webrtc/alirtcInterface/PublisherInfo;
.super Ljava/lang/Object;
.source "PublisherInfo.java"


# instance fields
.field public audio_track_label:Ljava/lang/String;

.field public call_id:Ljava/lang/String;

.field public display:Ljava/lang/String;

.field public session:Ljava/lang/String;

.field public stream_label:Ljava/lang/String;

.field public user_id:Ljava/lang/String;

.field public video_track_labels:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAudio_track_label()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/PublisherInfo;->audio_track_label:Ljava/lang/String;

    return-object v0
.end method

.method public getCall_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/PublisherInfo;->call_id:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/PublisherInfo;->display:Ljava/lang/String;

    return-object v0
.end method

.method public getSession()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/PublisherInfo;->session:Ljava/lang/String;

    return-object v0
.end method

.method public getStream_label()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/PublisherInfo;->stream_label:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/PublisherInfo;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_track_labels()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/PublisherInfo;->video_track_labels:[Ljava/lang/String;

    return-object v0
.end method

.method public setAudio_track_label(Ljava/lang/String;)V
    .locals 0
    .param p1, "audio_track_label"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lorg/webrtc/alirtcInterface/PublisherInfo;->audio_track_label:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setCall_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "call_id"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lorg/webrtc/alirtcInterface/PublisherInfo;->call_id:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setDisplay(Ljava/lang/String;)V
    .locals 0
    .param p1, "display"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lorg/webrtc/alirtcInterface/PublisherInfo;->display:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setSession(Ljava/lang/String;)V
    .locals 0
    .param p1, "session"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lorg/webrtc/alirtcInterface/PublisherInfo;->session:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setStream_label(Ljava/lang/String;)V
    .locals 0
    .param p1, "stream_label"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lorg/webrtc/alirtcInterface/PublisherInfo;->stream_label:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setUser_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "user_id"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lorg/webrtc/alirtcInterface/PublisherInfo;->user_id:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setVideo_track_labels([Ljava/lang/String;)V
    .locals 0
    .param p1, "video_track_labels"    # [Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lorg/webrtc/alirtcInterface/PublisherInfo;->video_track_labels:[Ljava/lang/String;

    .line 70
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
