.class public Lorg/webrtc/voiceengine/WebRtcAudioRecord;
.super Ljava/lang/Object;
.source "WebRtcAudioRecord.java"


# static fields
.field private static final EMPTY_PACKET_CHECK_INTERVAL:J = 0xbb8L

.field private static final MAX_OUTPUT_TIMES:I = 0xa

.field private static final MAX_RESTART_TIMES:I = 0x3

.field private static final SAMPLE_INTERVAL:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "WebRTCAR"


# instance fields
.field private _audioRecord:Landroid/media/AudioRecord;

.field private _bufferedRecSamples:I

.field private _context:Landroid/content/Context;

.field private _doRecInit:Z

.field private _finalAudioSource:I

.field private _finalSampleRate:I

.field private _isRecording:Z

.field private _lastPacketTimestamp:J

.field private _lastTimestamp:J

.field private _recBuffer:Ljava/nio/ByteBuffer;

.field private final _recLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private _restartTimes:I

.field private _tempBufRec:[B

.field private _updateLogTimes:I


# direct methods
.method constructor <init>()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/16 v4, 0x3c0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    .line 42
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 44
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_doRecInit:Z

    .line 45
    iput-boolean v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_isRecording:Z

    .line 47
    iput v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_bufferedRecSamples:I

    .line 49
    iput-wide v6, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_lastTimestamp:J

    .line 50
    iput-wide v6, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_lastPacketTimestamp:J

    .line 51
    iput v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_updateLogTimes:I

    .line 52
    iput v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_restartTimes:I

    .line 53
    iput v3, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_finalAudioSource:I

    .line 54
    iput v3, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_finalSampleRate:I

    .line 58
    const/16 v1, 0x3c0

    :try_start_0
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recBuffer:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    new-array v1, v4, [B

    iput-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_tempBufRec:[B

    .line 65
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->DoLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private DoLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 309
    const-string/jumbo v0, "WebRTCAR"

    invoke-static {v0, p1}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method private DoLogErr(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 313
    const-string/jumbo v0, "WebRTCAR"

    invoke-static {v0, p1}, Lieg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method private InitRecording(II)I
    .locals 12
    .param p1, "audioSource"    # I
    .param p2, "sampleRate"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v11, 0x0

    const/16 v1, 0x10

    const/4 v0, 0x2

    const/4 v10, -0x1

    const/4 v9, -0x2

    .line 78
    invoke-static {p2, v1, v0}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v7

    .line 82
    .local v7, "minRecBufSize":I
    if-eq v7, v10, :cond_0

    if-ne v7, v9, :cond_1

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Get min rec buf err:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->DoLog(Ljava/lang/String;)V

    .line 133
    .end local v7    # "minRecBufSize":I
    :goto_0
    return v7

    .line 86
    .restart local v7    # "minRecBufSize":I
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Min rec buf: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->DoLog(Ljava/lang/String;)V

    .line 90
    mul-int/lit8 v5, v7, 0x4

    .line 93
    .local v5, "recBufSize":I
    div-int/lit16 v0, p2, 0x3e8

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_bufferedRecSamples:I

    .line 95
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_2

    .line 96
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 97
    iput-object v11, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    .line 101
    :cond_2
    :try_start_0
    new-instance v0, Landroid/media/AudioRecord;

    const/16 v3, 0x10

    const/4 v4, 0x2

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v8

    .line 118
    .local v8, "state":I
    const/4 v0, 0x1

    if-eq v8, v0, :cond_3

    .line 119
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 120
    iput-object v11, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    .line 123
    const-wide/16 v0, 0x1f4

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 127
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Init exp: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->DoLog(Ljava/lang/String;)V

    move v7, v9

    .line 128
    goto :goto_0

    .line 108
    .end local v8    # "state":I
    :catch_0
    move-exception v6

    .line 109
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->DoLog(Ljava/lang/String;)V

    move v7, v10

    .line 110
    goto :goto_0

    .line 124
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v8    # "state":I
    :catch_1
    move-exception v6

    .line 125
    .local v6, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 130
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :cond_3
    iput p1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_finalAudioSource:I

    .line 131
    iput p2, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_finalSampleRate:I

    .line 133
    iget v7, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_bufferedRecSamples:I

    goto/16 :goto_0
.end method

.method private RecordAudio(I)I
    .locals 8
    .param p1, "lengthInBytes"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 188
    iget-object v5, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 191
    :try_start_0
    iget-object v5, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    .line 246
    iget-object v5, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/16 v3, -0x10

    .line 249
    :goto_0
    return v3

    .line 197
    :cond_0
    :try_start_1
    iget-boolean v5, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_doRecInit:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 199
    const/16 v5, -0x13

    :try_start_2
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    :goto_1
    const/4 v5, 0x0

    :try_start_3
    iput-boolean v5, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_doRecInit:Z

    .line 205
    const-string/jumbo v5, "Record audio really"

    invoke-direct {p0, v5}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->DoLog(Ljava/lang/String;)V

    .line 206
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, v1

    .line 208
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_2
    iget-object v5, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v5}, Landroid/media/AudioRecord;->getRecordingState()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v4

    .line 209
    .local v4, "recordState":I
    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    .line 213
    const-wide/16 v6, 0x5

    :try_start_4
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 217
    :goto_3
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Recording restart from: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->DoLog(Ljava/lang/String;)V

    .line 219
    invoke-direct {p0}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->StartRecording()I

    .line 220
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    const/16 v5, 0x3c

    if-lt v2, v5, :cond_6

    .line 223
    .end local v1    # "i":I
    .end local v4    # "recordState":I
    :cond_1
    iget-object v5, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 225
    iget-object v5, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    iget-object v6, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_tempBufRec:[B

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, p1}, Landroid/media/AudioRecord;->read([BII)I

    move-result v3

    .line 227
    .local v3, "readBytes":I
    iget-object v5, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recBuffer:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_tempBufRec:[B

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 228
    if-eq v3, p1, :cond_3

    .line 229
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Data not enough/err: (read: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->DoLogErr(Ljava/lang/String;)V

    .line 230
    if-gtz v3, :cond_2

    .line 231
    invoke-direct {p0}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->restartAudioRecord()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 246
    iget-object v5, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 201
    .end local v3    # "readBytes":I
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Set rec thread priority failed: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->DoLogErr(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 241
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 242
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_7
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "RecordAudio try failed: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->DoLogErr(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 246
    iget-object v5, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 249
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    iget v3, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_bufferedRecSamples:I

    goto/16 :goto_0

    .line 214
    .restart local v2    # "i":I
    .restart local v4    # "recordState":I
    :catch_2
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_3

    .line 246
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "i":I
    .end local v4    # "recordState":I
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5

    .line 234
    .restart local v3    # "readBytes":I
    :cond_2
    :try_start_9
    div-int/lit8 v3, v3, 0x2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 246
    .end local v3    # "readBytes":I
    iget-object v5, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 236
    .restart local v3    # "readBytes":I
    :cond_3
    :try_start_a
    invoke-direct {p0}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->isEmptyPacketOutput()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_tempBufRec:[B

    invoke-direct {p0, v5}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->isEmptyArray([B)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 237
    const-string/jumbo v5, "16 bits of src is 0"

    invoke-direct {p0, v5}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->DoLogErr(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 246
    :cond_4
    :goto_5
    iget-object v5, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_4

    .line 238
    :cond_5
    :try_start_b
    invoke-direct {p0}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->isUpdateLogOutput()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 239
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Src data reading "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->DoLogErr(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_5

    .end local v3    # "readBytes":I
    .restart local v1    # "i":I
    .restart local v4    # "recordState":I
    :cond_6
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto/16 :goto_2
.end method

.method private StartRecording()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, -0x1

    .line 138
    iget-object v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    if-nez v2, :cond_0

    .line 139
    const-string/jumbo v2, "Start recording invalid obj"

    invoke-direct {p0, v2}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->DoLog(Ljava/lang/String;)V

    .line 151
    :goto_0
    return v1

    .line 144
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    const-string/jumbo v1, "Start recording"

    invoke-direct {p0, v1}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->DoLog(Ljava/lang/String;)V

    .line 150
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_isRecording:Z

    .line 151
    const/4 v1, 0x0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method private StopRecording()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 156
    iget-object v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 158
    :try_start_0
    iget-object v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    if-eqz v2, :cond_1

    .line 160
    iget-object v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getRecordingState()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 163
    :try_start_1
    iget-object v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->stop()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    :cond_0
    :try_start_2
    iget-object v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V

    .line 172
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_audioRecord:Landroid/media/AudioRecord;

    .line 173
    const-string/jumbo v2, "Stop recording"

    invoke-direct {p0, v2}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->DoLog(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    :cond_1
    iput-boolean v4, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_doRecInit:Z

    .line 179
    iget-object v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 182
    iput-boolean v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_isRecording:Z

    .line 183
    :goto_0
    return v1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 178
    iput-boolean v4, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_doRecInit:Z

    .line 179
    iget-object v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v1, -0x1

    goto :goto_0

    .line 178
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    iput-boolean v4, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_doRecInit:Z

    .line 179
    iget-object v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_recLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method private getDefaultAudioSource()I
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lorg/webrtc/deviceinfo/AudioUtils;->getDefaultAudioSource()I

    move-result v0

    return v0
.end method

.method private getDefaultSampleRate()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_context:Landroid/content/Context;

    invoke-static {v0}, Lorg/webrtc/deviceinfo/AudioUtils;->getAudioSampleRateHz(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private isEmptyArray([B)Z
    .locals 5
    .param p1, "buffer"    # [B

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v4, 0x10

    .line 269
    if-eqz p1, :cond_0

    array-length v3, p1

    if-ge v3, v4, :cond_2

    .line 270
    :cond_0
    const/4 v1, 0x1

    .line 280
    :cond_1
    :goto_0
    return v1

    .line 272
    :cond_2
    const/4 v1, 0x1

    .line 273
    .local v1, "isEmpty":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_1

    .line 274
    aget-byte v2, p1, v0

    .line 275
    .local v2, "value":B
    if-eqz v2, :cond_3

    .line 276
    const/4 v1, 0x0

    .line 277
    goto :goto_0

    .line 273
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private isEmptyPacketOutput()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 285
    .local v0, "now":J
    iget-wide v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_lastPacketTimestamp:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 286
    iput-wide v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_lastPacketTimestamp:J

    .line 288
    :cond_0
    iget-wide v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_lastPacketTimestamp:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 289
    iput-wide v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_lastPacketTimestamp:J

    .line 290
    const/4 v2, 0x1

    .line 292
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isUpdateLogOutput()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 296
    .local v0, "now":J
    iget-wide v4, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_lastTimestamp:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 297
    iput-wide v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_lastTimestamp:J

    .line 305
    :goto_0
    return v2

    .line 300
    :cond_0
    iget v3, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_updateLogTimes:I

    const/16 v4, 0xa

    if-ge v3, v4, :cond_1

    iget-wide v4, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_lastTimestamp:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x3e8

    cmp-long v3, v4, v6

    if-ltz v3, :cond_1

    .line 301
    iput-wide v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_lastTimestamp:J

    .line 302
    iget v3, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_updateLogTimes:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_updateLogTimes:I

    goto :goto_0

    .line 305
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private restartAudioRecord()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 253
    iget v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_restartTimes:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 254
    const-string/jumbo v0, "Restart trying has finished"

    invoke-direct {p0, v0}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->DoLog(Ljava/lang/String;)V

    .line 266
    :goto_0
    return-void

    .line 257
    :cond_0
    iget v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_finalAudioSource:I

    if-ltz v0, :cond_1

    iget v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_finalSampleRate:I

    if-gez v0, :cond_2

    .line 258
    :cond_1
    const-string/jumbo v0, "Restart fail because of invalid audioSource/sampleRate"

    invoke-direct {p0, v0}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->DoLog(Ljava/lang/String;)V

    goto :goto_0

    .line 261
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Read err and restart: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_finalAudioSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_finalSampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->DoLogErr(Ljava/lang/String;)V

    .line 262
    invoke-direct {p0}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->StopRecording()I

    .line 263
    iget v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_finalAudioSource:I

    iget v1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_finalSampleRate:I

    invoke-direct {p0, v0, v1}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->InitRecording(II)I

    .line 264
    invoke-direct {p0}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->StartRecording()I

    .line 265
    iget v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_restartTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->_restartTimes:I

    goto :goto_0
.end method
