.class Lorg/webrtc/voiceengine/ArtcAudioRecord$AudioRecordThread;
.super Ljava/lang/Thread;
.source "ArtcAudioRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/voiceengine/ArtcAudioRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AudioRecordThread"
.end annotation


# instance fields
.field private volatile keepAlive:Z

.field final synthetic this$0:Lorg/webrtc/voiceengine/ArtcAudioRecord;


# direct methods
.method public constructor <init>(Lorg/webrtc/voiceengine/ArtcAudioRecord;Ljava/lang/String;)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord$AudioRecordThread;->this$0:Lorg/webrtc/voiceengine/ArtcAudioRecord;

    .line 109
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord$AudioRecordThread;->keepAlive:Z

    .line 110
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 114
    const/16 v2, -0x13

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 115
    const-string/jumbo v2, "ArtcAudioRecord"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "AudioRecordThread"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    iget-object v2, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord$AudioRecordThread;->this$0:Lorg/webrtc/voiceengine/ArtcAudioRecord;

    invoke-static {v2}, Lorg/webrtc/voiceengine/ArtcAudioRecord;->access$000(Lorg/webrtc/voiceengine/ArtcAudioRecord;)Landroid/media/AudioRecord;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lorg/webrtc/voiceengine/ArtcAudioRecord;->access$100(Z)V

    .line 118
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 119
    :cond_0
    :goto_1
    iget-boolean v2, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord$AudioRecordThread;->keepAlive:Z

    if-eqz v2, :cond_4

    .line 120
    iget-object v2, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord$AudioRecordThread;->this$0:Lorg/webrtc/voiceengine/ArtcAudioRecord;

    invoke-static {v2}, Lorg/webrtc/voiceengine/ArtcAudioRecord;->access$000(Lorg/webrtc/voiceengine/ArtcAudioRecord;)Landroid/media/AudioRecord;

    move-result-object v2

    iget-object v4, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord$AudioRecordThread;->this$0:Lorg/webrtc/voiceengine/ArtcAudioRecord;

    invoke-static {v4}, Lorg/webrtc/voiceengine/ArtcAudioRecord;->access$200(Lorg/webrtc/voiceengine/ArtcAudioRecord;)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord$AudioRecordThread;->this$0:Lorg/webrtc/voiceengine/ArtcAudioRecord;

    invoke-static {v5}, Lorg/webrtc/voiceengine/ArtcAudioRecord;->access$200(Lorg/webrtc/voiceengine/ArtcAudioRecord;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v0

    .line 121
    .local v0, "bytesRead":I
    iget-object v2, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord$AudioRecordThread;->this$0:Lorg/webrtc/voiceengine/ArtcAudioRecord;

    invoke-static {v2}, Lorg/webrtc/voiceengine/ArtcAudioRecord;->access$200(Lorg/webrtc/voiceengine/ArtcAudioRecord;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 122
    invoke-static {}, Lorg/webrtc/voiceengine/ArtcAudioRecord;->access$300()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    iget-object v2, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord$AudioRecordThread;->this$0:Lorg/webrtc/voiceengine/ArtcAudioRecord;

    invoke-static {v2}, Lorg/webrtc/voiceengine/ArtcAudioRecord;->access$200(Lorg/webrtc/voiceengine/ArtcAudioRecord;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 124
    iget-object v2, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord$AudioRecordThread;->this$0:Lorg/webrtc/voiceengine/ArtcAudioRecord;

    invoke-static {v2}, Lorg/webrtc/voiceengine/ArtcAudioRecord;->access$200(Lorg/webrtc/voiceengine/ArtcAudioRecord;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v4, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord$AudioRecordThread;->this$0:Lorg/webrtc/voiceengine/ArtcAudioRecord;

    invoke-static {v4}, Lorg/webrtc/voiceengine/ArtcAudioRecord;->access$400(Lorg/webrtc/voiceengine/ArtcAudioRecord;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 126
    :cond_1
    iget-object v2, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord$AudioRecordThread;->this$0:Lorg/webrtc/voiceengine/ArtcAudioRecord;

    iget-object v4, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord$AudioRecordThread;->this$0:Lorg/webrtc/voiceengine/ArtcAudioRecord;

    invoke-static {v4}, Lorg/webrtc/voiceengine/ArtcAudioRecord;->access$500(Lorg/webrtc/voiceengine/ArtcAudioRecord;)J

    move-result-wide v4

    invoke-static {v2, v0, v4, v5}, Lorg/webrtc/voiceengine/ArtcAudioRecord;->access$600(Lorg/webrtc/voiceengine/ArtcAudioRecord;IJ)V

    goto :goto_1

    .end local v0    # "bytesRead":I
    :cond_2
    move v2, v3

    .line 116
    goto :goto_0

    .line 128
    .restart local v0    # "bytesRead":I
    :cond_3
    const-string/jumbo v2, "ArtcAudioRecord"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "AudioRecord.read failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    iget-object v2, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord$AudioRecordThread;->this$0:Lorg/webrtc/voiceengine/ArtcAudioRecord;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "AudioRecord.read failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/webrtc/voiceengine/ArtcAudioRecord;->audioRecordReadError(Ljava/lang/String;)V

    .line 130
    const/4 v2, -0x3

    if-ne v0, v2, :cond_0

    .line 131
    iput-boolean v3, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord$AudioRecordThread;->keepAlive:Z

    goto/16 :goto_1

    .line 143
    .end local v0    # "bytesRead":I
    :cond_4
    :try_start_0
    iget-object v2, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord$AudioRecordThread;->this$0:Lorg/webrtc/voiceengine/ArtcAudioRecord;

    invoke-static {v2}, Lorg/webrtc/voiceengine/ArtcAudioRecord;->access$000(Lorg/webrtc/voiceengine/ArtcAudioRecord;)Landroid/media/AudioRecord;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 144
    iget-object v2, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord$AudioRecordThread;->this$0:Lorg/webrtc/voiceengine/ArtcAudioRecord;

    invoke-static {v2}, Lorg/webrtc/voiceengine/ArtcAudioRecord;->access$000(Lorg/webrtc/voiceengine/ArtcAudioRecord;)Landroid/media/AudioRecord;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :cond_5
    :goto_2
    return-void

    .line 146
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "ArtcAudioRecord"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "AudioRecord.stop failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v3}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public stopThread()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 154
    const-string/jumbo v0, "ArtcAudioRecord"

    const-string/jumbo v1, "stopThread"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    iput-boolean v3, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord$AudioRecordThread;->keepAlive:Z

    .line 156
    return-void
.end method
