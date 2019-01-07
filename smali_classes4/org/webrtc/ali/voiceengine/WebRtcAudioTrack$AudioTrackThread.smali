.class Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$AudioTrackThread;
.super Ljava/lang/Thread;
.source "WebRtcAudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AudioTrackThread"
.end annotation


# instance fields
.field private volatile keepAlive:Z

.field final synthetic this$0:Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;


# direct methods
.method public constructor <init>(Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;Ljava/lang/String;)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;

    .line 78
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$AudioTrackThread;->keepAlive:Z

    .line 79
    return-void
.end method

.method private writeOnLollipop(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .locals 1
    .param p1, "audioTrack"    # Landroid/media/AudioTrack;
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .param p3, "sizeInBytes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 151
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
    .line 155
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
    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$AudioTrackThread;->keepAlive:Z

    .line 160
    :goto_0
    invoke-virtual {p0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$AudioTrackThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    :try_start_0
    invoke-virtual {p0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$AudioTrackThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    goto :goto_0

    .line 167
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

    .line 83
    const/16 v3, -0x13

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 84
    const-string/jumbo v3, "WebRtcAudioTrack"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "AudioTrackThread"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :try_start_0
    iget-object v3, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;

    invoke-static {v3}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->access$000(Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;)Landroid/media/AudioTrack;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioTrack;->play()V

    .line 92
    iget-object v3, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;

    invoke-static {v3}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->access$000(Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;)Landroid/media/AudioTrack;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v3

    const/4 v6, 0x3

    if-ne v3, v6, :cond_2

    move v3, v4

    :goto_0
    invoke-static {v3}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->access$100(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    iget-object v3, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;

    invoke-static {v3}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->access$400(Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    .line 103
    .local v2, "sizeInBytes":I
    :goto_1
    iget-boolean v3, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$AudioTrackThread;->keepAlive:Z

    if-eqz v3, :cond_5

    .line 107
    iget-object v3, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;

    iget-object v6, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;

    invoke-static {v6}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->access$500(Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;)J

    move-result-wide v6

    invoke-static {v3, v2, v6, v7}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->access$600(Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;IJ)V

    .line 111
    iget-object v3, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;

    invoke-static {v3}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->access$400(Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-gt v2, v3, :cond_3

    move v3, v4

    :goto_2
    invoke-static {v3}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->access$100(Z)V

    .line 112
    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->access$700()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    iget-object v3, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;

    invoke-static {v3}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->access$400(Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 114
    iget-object v3, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;

    invoke-static {v3}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->access$400(Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v6, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;

    invoke-static {v6}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->access$800(Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 115
    iget-object v3, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;

    invoke-static {v3}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->access$400(Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 118
    :cond_0
    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioUtils;->runningOnLollipopOrHigher()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 119
    iget-object v3, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;

    invoke-static {v3}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->access$000(Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;)Landroid/media/AudioTrack;

    move-result-object v3

    iget-object v6, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;

    invoke-static {v6}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->access$400(Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-direct {p0, v3, v6, v2}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$AudioTrackThread;->writeOnLollipop(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v0

    .line 123
    .local v0, "bytesWritten":I
    :goto_3
    if-eq v0, v2, :cond_1

    .line 124
    const-string/jumbo v3, "WebRtcAudioTrack"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "AudioTrack.write failed: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const/4 v3, -0x3

    if-ne v0, v3, :cond_1

    .line 126
    iput-boolean v5, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$AudioTrackThread;->keepAlive:Z

    .line 127
    iget-object v3, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "AudioTrack.write failed: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->access$900(Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;Ljava/lang/String;)V

    .line 133
    :cond_1
    iget-object v3, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;

    invoke-static {v3}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->access$400(Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto/16 :goto_1

    .end local v0    # "bytesWritten":I
    .end local v2    # "sizeInBytes":I
    :cond_2
    move v3, v5

    .line 92
    goto/16 :goto_0

    .line 93
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/IllegalStateException;
    iget-object v3, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "AudioTrack.play failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->access$200(Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;Ljava/lang/String;)V

    .line 95
    iget-object v3, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;

    invoke-static {v3}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->access$300(Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;)V

    .line 147
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :goto_4
    return-void

    .restart local v2    # "sizeInBytes":I
    :cond_3
    move v3, v5

    .line 111
    goto/16 :goto_2

    .line 121
    :cond_4
    iget-object v3, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;

    invoke-static {v3}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->access$000(Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;)Landroid/media/AudioTrack;

    move-result-object v3

    iget-object v6, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;

    invoke-static {v6}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->access$400(Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-direct {p0, v3, v6, v2}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$AudioTrackThread;->writePreLollipop(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v0

    .restart local v0    # "bytesWritten":I
    goto :goto_3

    .line 141
    .end local v0    # "bytesWritten":I
    :cond_5
    :try_start_1
    iget-object v3, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;

    invoke-static {v3}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->access$000(Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;)Landroid/media/AudioTrack;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioTrack;->stop()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 145
    :goto_5
    iget-object v3, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;

    invoke-static {v3}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->access$000(Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;)Landroid/media/AudioTrack;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v3

    if-ne v3, v4, :cond_6

    :goto_6
    invoke-static {v4}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->access$100(Z)V

    .line 146
    iget-object v3, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;

    invoke-static {v3}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->access$000(Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;)Landroid/media/AudioTrack;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioTrack;->flush()V

    goto :goto_4

    .line 142
    :catch_1
    move-exception v1

    .line 143
    .restart local v1    # "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v3, "WebRtcAudioTrack"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "AudioTrack.stop failed: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_6
    move v4, v5

    .line 145
    goto :goto_6
.end method
