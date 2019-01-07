.class Lorg/webrtc/voiceengine/ArtcAudioTrack$AudioTrackThread;
.super Ljava/lang/Thread;
.source "ArtcAudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/voiceengine/ArtcAudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AudioTrackThread"
.end annotation


# instance fields
.field private volatile keepAlive:Z

.field final synthetic this$0:Lorg/webrtc/voiceengine/ArtcAudioTrack;


# direct methods
.method public constructor <init>(Lorg/webrtc/voiceengine/ArtcAudioTrack;Ljava/lang/String;)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/voiceengine/ArtcAudioTrack;

    .line 68
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack$AudioTrackThread;->keepAlive:Z

    .line 69
    return-void
.end method

.method private writeOnLollipop(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .locals 1
    .param p1, "audioTrack"    # Landroid/media/AudioTrack;
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .param p3, "sizeInBytes"    # I

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method

.method private writePreLollipop(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .locals 2
    .param p1, "audioTrack"    # Landroid/media/AudioTrack;
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .param p3, "sizeInBytes"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 142
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1, v0, v1, p3}, Landroid/media/AudioTrack;->write([BII)I

    move-result v0

    return v0
.end method


# virtual methods
.method public joinThread()V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack$AudioTrackThread;->keepAlive:Z

    .line 147
    :goto_0
    invoke-virtual {p0}, Lorg/webrtc/voiceengine/ArtcAudioTrack$AudioTrackThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    :try_start_0
    invoke-virtual {p0}, Lorg/webrtc/voiceengine/ArtcAudioTrack$AudioTrackThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    goto :goto_0

    .line 154
    :cond_0
    return-void
.end method

.method public run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 73
    const/16 v3, -0x13

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 74
    const-string/jumbo v3, "ArtcAudioTrack"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "AudioTrackThread"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    :try_start_0
    iget-object v3, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/voiceengine/ArtcAudioTrack;

    invoke-static {v3}, Lorg/webrtc/voiceengine/ArtcAudioTrack;->access$000(Lorg/webrtc/voiceengine/ArtcAudioTrack;)Landroid/media/AudioTrack;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioTrack;->play()V

    .line 82
    iget-object v3, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/voiceengine/ArtcAudioTrack;

    invoke-static {v3}, Lorg/webrtc/voiceengine/ArtcAudioTrack;->access$000(Lorg/webrtc/voiceengine/ArtcAudioTrack;)Landroid/media/AudioTrack;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v3

    const/4 v6, 0x3

    if-ne v3, v6, :cond_2

    move v3, v4

    :goto_0
    invoke-static {v3}, Lorg/webrtc/voiceengine/ArtcAudioTrack;->access$100(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    iget-object v3, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/voiceengine/ArtcAudioTrack;

    invoke-static {v3}, Lorg/webrtc/voiceengine/ArtcAudioTrack;->access$200(Lorg/webrtc/voiceengine/ArtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    .line 92
    .local v2, "sizeInBytes":I
    :goto_1
    iget-boolean v3, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack$AudioTrackThread;->keepAlive:Z

    if-eqz v3, :cond_5

    .line 96
    iget-object v3, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/voiceengine/ArtcAudioTrack;

    iget-object v6, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/voiceengine/ArtcAudioTrack;

    invoke-static {v6}, Lorg/webrtc/voiceengine/ArtcAudioTrack;->access$300(Lorg/webrtc/voiceengine/ArtcAudioTrack;)J

    move-result-wide v6

    invoke-static {v3, v2, v6, v7}, Lorg/webrtc/voiceengine/ArtcAudioTrack;->access$400(Lorg/webrtc/voiceengine/ArtcAudioTrack;IJ)V

    .line 100
    iget-object v3, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/voiceengine/ArtcAudioTrack;

    invoke-static {v3}, Lorg/webrtc/voiceengine/ArtcAudioTrack;->access$200(Lorg/webrtc/voiceengine/ArtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-gt v2, v3, :cond_3

    move v3, v4

    :goto_2
    invoke-static {v3}, Lorg/webrtc/voiceengine/ArtcAudioTrack;->access$100(Z)V

    .line 101
    invoke-static {}, Lorg/webrtc/voiceengine/ArtcAudioTrack;->access$500()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    iget-object v3, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/voiceengine/ArtcAudioTrack;

    invoke-static {v3}, Lorg/webrtc/voiceengine/ArtcAudioTrack;->access$200(Lorg/webrtc/voiceengine/ArtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 103
    iget-object v3, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/voiceengine/ArtcAudioTrack;

    invoke-static {v3}, Lorg/webrtc/voiceengine/ArtcAudioTrack;->access$200(Lorg/webrtc/voiceengine/ArtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v6, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/voiceengine/ArtcAudioTrack;

    invoke-static {v6}, Lorg/webrtc/voiceengine/ArtcAudioTrack;->access$600(Lorg/webrtc/voiceengine/ArtcAudioTrack;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 104
    iget-object v3, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/voiceengine/ArtcAudioTrack;

    invoke-static {v3}, Lorg/webrtc/voiceengine/ArtcAudioTrack;->access$200(Lorg/webrtc/voiceengine/ArtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 107
    :cond_0
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->runningOnLollipopOrHigher()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 108
    iget-object v3, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/voiceengine/ArtcAudioTrack;

    invoke-static {v3}, Lorg/webrtc/voiceengine/ArtcAudioTrack;->access$000(Lorg/webrtc/voiceengine/ArtcAudioTrack;)Landroid/media/AudioTrack;

    move-result-object v3

    iget-object v6, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/voiceengine/ArtcAudioTrack;

    invoke-static {v6}, Lorg/webrtc/voiceengine/ArtcAudioTrack;->access$200(Lorg/webrtc/voiceengine/ArtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-direct {p0, v3, v6, v2}, Lorg/webrtc/voiceengine/ArtcAudioTrack$AudioTrackThread;->writeOnLollipop(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v0

    .line 112
    .local v0, "bytesWritten":I
    :goto_3
    if-eq v0, v2, :cond_1

    .line 113
    const-string/jumbo v3, "ArtcAudioTrack"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "AudioTrack.write failed: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    const/4 v3, -0x3

    if-ne v0, v3, :cond_1

    .line 115
    iput-boolean v5, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack$AudioTrackThread;->keepAlive:Z

    .line 121
    :cond_1
    iget-object v3, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/voiceengine/ArtcAudioTrack;

    invoke-static {v3}, Lorg/webrtc/voiceengine/ArtcAudioTrack;->access$200(Lorg/webrtc/voiceengine/ArtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto/16 :goto_1

    .end local v0    # "bytesWritten":I
    .end local v2    # "sizeInBytes":I
    :cond_2
    move v3, v5

    .line 82
    goto/16 :goto_0

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v3, "ArtcAudioTrack"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "AudioTrack.play failed: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :goto_4
    return-void

    .restart local v2    # "sizeInBytes":I
    :cond_3
    move v3, v5

    .line 100
    goto/16 :goto_2

    .line 110
    :cond_4
    iget-object v3, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/voiceengine/ArtcAudioTrack;

    invoke-static {v3}, Lorg/webrtc/voiceengine/ArtcAudioTrack;->access$000(Lorg/webrtc/voiceengine/ArtcAudioTrack;)Landroid/media/AudioTrack;

    move-result-object v3

    iget-object v6, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/voiceengine/ArtcAudioTrack;

    invoke-static {v6}, Lorg/webrtc/voiceengine/ArtcAudioTrack;->access$200(Lorg/webrtc/voiceengine/ArtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-direct {p0, v3, v6, v2}, Lorg/webrtc/voiceengine/ArtcAudioTrack$AudioTrackThread;->writePreLollipop(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v0

    .restart local v0    # "bytesWritten":I
    goto :goto_3

    .line 129
    .end local v0    # "bytesWritten":I
    :cond_5
    :try_start_1
    iget-object v3, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/voiceengine/ArtcAudioTrack;

    invoke-static {v3}, Lorg/webrtc/voiceengine/ArtcAudioTrack;->access$000(Lorg/webrtc/voiceengine/ArtcAudioTrack;)Landroid/media/AudioTrack;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioTrack;->stop()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 133
    :goto_5
    iget-object v3, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/voiceengine/ArtcAudioTrack;

    invoke-static {v3}, Lorg/webrtc/voiceengine/ArtcAudioTrack;->access$000(Lorg/webrtc/voiceengine/ArtcAudioTrack;)Landroid/media/AudioTrack;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v3

    if-ne v3, v4, :cond_6

    :goto_6
    invoke-static {v4}, Lorg/webrtc/voiceengine/ArtcAudioTrack;->access$100(Z)V

    .line 134
    iget-object v3, p0, Lorg/webrtc/voiceengine/ArtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/voiceengine/ArtcAudioTrack;

    invoke-static {v3}, Lorg/webrtc/voiceengine/ArtcAudioTrack;->access$000(Lorg/webrtc/voiceengine/ArtcAudioTrack;)Landroid/media/AudioTrack;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioTrack;->flush()V

    goto :goto_4

    .line 130
    :catch_1
    move-exception v1

    .line 131
    .restart local v1    # "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v3, "ArtcAudioTrack"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "AudioTrack.stop failed: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_6
    move v4, v5

    .line 133
    goto :goto_6
.end method
