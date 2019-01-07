.class public Lorg/webrtc/ali/MediaStream;
.super Ljava/lang/Object;
.source "MediaStream.java"


# instance fields
.field public final audioTracks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/webrtc/ali/AudioTrack;",
            ">;"
        }
    .end annotation
.end field

.field final nativeStream:J

.field public final preservedVideoTracks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/webrtc/ali/VideoTrack;",
            ">;"
        }
    .end annotation
.end field

.field public final videoTracks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/webrtc/ali/VideoTrack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "nativeStream"    # J

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/webrtc/ali/MediaStream;->audioTracks:Ljava/util/LinkedList;

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/webrtc/ali/MediaStream;->videoTracks:Ljava/util/LinkedList;

    .line 26
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/webrtc/ali/MediaStream;->preservedVideoTracks:Ljava/util/LinkedList;

    .line 27
    iput-wide p1, p0, Lorg/webrtc/ali/MediaStream;->nativeStream:J

    .line 28
    return-void
.end method

.method private static native free(J)V
.end method

.method private static native nativeAddAudioTrack(JJ)Z
.end method

.method private static native nativeAddVideoTrack(JJ)Z
.end method

.method private static native nativeLabel(J)Ljava/lang/String;
.end method

.method private static native nativeRemoveAudioTrack(JJ)Z
.end method

.method private static native nativeRemoveVideoTrack(JJ)Z
.end method


# virtual methods
.method public addPreservedTrack(Lorg/webrtc/ali/VideoTrack;)Z
    .locals 4
    .param p1, "track"    # Lorg/webrtc/ali/VideoTrack;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 50
    iget-wide v0, p0, Lorg/webrtc/ali/MediaStream;->nativeStream:J

    iget-wide v2, p1, Lorg/webrtc/ali/VideoTrack;->nativeTrack:J

    invoke-static {v0, v1, v2, v3}, Lorg/webrtc/ali/MediaStream;->nativeAddVideoTrack(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lorg/webrtc/ali/MediaStream;->preservedVideoTracks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 52
    const/4 v0, 0x1

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addTrack(Lorg/webrtc/ali/AudioTrack;)Z
    .locals 4
    .param p1, "track"    # Lorg/webrtc/ali/AudioTrack;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 31
    iget-wide v0, p0, Lorg/webrtc/ali/MediaStream;->nativeStream:J

    iget-wide v2, p1, Lorg/webrtc/ali/AudioTrack;->nativeTrack:J

    invoke-static {v0, v1, v2, v3}, Lorg/webrtc/ali/MediaStream;->nativeAddAudioTrack(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lorg/webrtc/ali/MediaStream;->audioTracks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 33
    const/4 v0, 0x1

    .line 35
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addTrack(Lorg/webrtc/ali/VideoTrack;)Z
    .locals 4
    .param p1, "track"    # Lorg/webrtc/ali/VideoTrack;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 39
    iget-wide v0, p0, Lorg/webrtc/ali/MediaStream;->nativeStream:J

    iget-wide v2, p1, Lorg/webrtc/ali/VideoTrack;->nativeTrack:J

    invoke-static {v0, v1, v2, v3}, Lorg/webrtc/ali/MediaStream;->nativeAddVideoTrack(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lorg/webrtc/ali/MediaStream;->videoTracks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 41
    const/4 v0, 0x1

    .line 43
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispose()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 70
    :goto_0
    iget-object v1, p0, Lorg/webrtc/ali/MediaStream;->audioTracks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    iget-object v1, p0, Lorg/webrtc/ali/MediaStream;->audioTracks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/ali/AudioTrack;

    .line 72
    .local v0, "track":Lorg/webrtc/ali/AudioTrack;
    invoke-virtual {p0, v0}, Lorg/webrtc/ali/MediaStream;->removeTrack(Lorg/webrtc/ali/AudioTrack;)Z

    .line 73
    invoke-virtual {v0}, Lorg/webrtc/ali/AudioTrack;->dispose()V

    goto :goto_0

    .line 75
    .end local v0    # "track":Lorg/webrtc/ali/AudioTrack;
    :cond_0
    :goto_1
    iget-object v1, p0, Lorg/webrtc/ali/MediaStream;->videoTracks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 76
    iget-object v1, p0, Lorg/webrtc/ali/MediaStream;->videoTracks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/ali/VideoTrack;

    .line 77
    .local v0, "track":Lorg/webrtc/ali/VideoTrack;
    invoke-virtual {p0, v0}, Lorg/webrtc/ali/MediaStream;->removeTrack(Lorg/webrtc/ali/VideoTrack;)Z

    .line 78
    invoke-virtual {v0}, Lorg/webrtc/ali/VideoTrack;->dispose()V

    goto :goto_1

    .line 81
    .end local v0    # "track":Lorg/webrtc/ali/VideoTrack;
    :cond_1
    :goto_2
    iget-object v1, p0, Lorg/webrtc/ali/MediaStream;->preservedVideoTracks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 82
    iget-object v1, p0, Lorg/webrtc/ali/MediaStream;->preservedVideoTracks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/webrtc/ali/VideoTrack;

    invoke-virtual {p0, v1}, Lorg/webrtc/ali/MediaStream;->removeTrack(Lorg/webrtc/ali/VideoTrack;)Z

    goto :goto_2

    .line 84
    :cond_2
    iget-wide v2, p0, Lorg/webrtc/ali/MediaStream;->nativeStream:J

    invoke-static {v2, v3}, Lorg/webrtc/ali/MediaStream;->free(J)V

    .line 85
    return-void
.end method

.method public label()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 88
    iget-wide v0, p0, Lorg/webrtc/ali/MediaStream;->nativeStream:J

    invoke-static {v0, v1}, Lorg/webrtc/ali/MediaStream;->nativeLabel(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeTrack(Lorg/webrtc/ali/AudioTrack;)Z
    .locals 4
    .param p1, "track"    # Lorg/webrtc/ali/AudioTrack;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 58
    iget-object v0, p0, Lorg/webrtc/ali/MediaStream;->audioTracks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 59
    iget-wide v0, p0, Lorg/webrtc/ali/MediaStream;->nativeStream:J

    iget-wide v2, p1, Lorg/webrtc/ali/AudioTrack;->nativeTrack:J

    invoke-static {v0, v1, v2, v3}, Lorg/webrtc/ali/MediaStream;->nativeRemoveAudioTrack(JJ)Z

    move-result v0

    return v0
.end method

.method public removeTrack(Lorg/webrtc/ali/VideoTrack;)Z
    .locals 4
    .param p1, "track"    # Lorg/webrtc/ali/VideoTrack;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 63
    iget-object v0, p0, Lorg/webrtc/ali/MediaStream;->videoTracks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lorg/webrtc/ali/MediaStream;->preservedVideoTracks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 65
    iget-wide v0, p0, Lorg/webrtc/ali/MediaStream;->nativeStream:J

    iget-wide v2, p1, Lorg/webrtc/ali/VideoTrack;->nativeTrack:J

    invoke-static {v0, v1, v2, v3}, Lorg/webrtc/ali/MediaStream;->nativeRemoveVideoTrack(JJ)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/webrtc/ali/MediaStream;->label()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":A="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/ali/MediaStream;->audioTracks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":V="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/ali/MediaStream;->videoTracks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
