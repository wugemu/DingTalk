.class Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordThread;
.super Ljava/lang/Thread;
.source "WebRtcAudioRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AudioRecordThread"
.end annotation


# instance fields
.field private volatile keepAlive:Z

.field final synthetic this$0:Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;


# direct methods
.method public constructor <init>(Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;Ljava/lang/String;)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;

    .line 94
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordThread;->keepAlive:Z

    .line 95
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 99
    const/16 v3, -0x13

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 100
    const-string/jumbo v3, "WebRtcAudioRecord"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "AudioRecordThread"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v3, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;

    invoke-static {v3}, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->access$000(Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;)Landroid/media/AudioRecord;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_2

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->access$100(Z)V

    .line 103
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 104
    :cond_0
    :goto_1
    iget-boolean v3, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordThread;->keepAlive:Z

    if-eqz v3, :cond_4

    .line 105
    iget-object v3, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;

    invoke-static {v3}, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->access$000(Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;)Landroid/media/AudioRecord;

    move-result-object v3

    iget-object v5, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;

    invoke-static {v5}, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->access$200(Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    move-result-object v5

    iget-object v6, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;

    invoke-static {v6}, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->access$200(Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v0

    .line 106
    .local v0, "bytesRead":I
    iget-object v3, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;

    invoke-static {v3}, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->access$200(Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v0, v3, :cond_3

    .line 107
    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->access$300()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 108
    iget-object v3, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;

    invoke-static {v3}, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->access$200(Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 109
    iget-object v3, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;

    invoke-static {v3}, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->access$200(Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v5, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;

    invoke-static {v5}, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->access$400(Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 111
    :cond_1
    iget-object v3, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;

    iget-object v5, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;

    invoke-static {v5}, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->access$500(Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;)J

    move-result-wide v6

    invoke-static {v3, v0, v6, v7}, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->access$600(Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;IJ)V

    goto :goto_1

    .end local v0    # "bytesRead":I
    :cond_2
    move v3, v4

    .line 101
    goto :goto_0

    .line 113
    .restart local v0    # "bytesRead":I
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "AudioRecord.read failed: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "errorMessage":Ljava/lang/String;
    const-string/jumbo v3, "WebRtcAudioRecord"

    invoke-static {v3, v2}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const/4 v3, -0x3

    if-ne v0, v3, :cond_0

    .line 116
    iput-boolean v4, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordThread;->keepAlive:Z

    .line 117
    iget-object v3, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;

    invoke-static {v3, v2}, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->access$700(Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;Ljava/lang/String;)V

    goto :goto_1

    .line 129
    .end local v0    # "bytesRead":I
    .end local v2    # "errorMessage":Ljava/lang/String;
    :cond_4
    :try_start_0
    iget-object v3, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;

    invoke-static {v3}, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->access$000(Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;)Landroid/media/AudioRecord;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 130
    iget-object v3, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;

    invoke-static {v3}, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->access$000(Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;)Landroid/media/AudioRecord;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :cond_5
    :goto_2
    return-void

    .line 132
    :catch_0
    move-exception v1

    .line 133
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v3, "WebRtcAudioRecord"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "AudioRecord.stop failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public stopThread()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 140
    const-string/jumbo v0, "WebRtcAudioRecord"

    const-string/jumbo v1, "stopThread"

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordThread;->keepAlive:Z

    .line 142
    return-void
.end method
