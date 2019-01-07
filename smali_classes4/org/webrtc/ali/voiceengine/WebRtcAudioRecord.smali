.class public Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;
.super Ljava/lang/Object;
.source "WebRtcAudioRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordThread;,
        Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$WebRtcAudioRecordErrorCallback;,
        Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;
    }
.end annotation


# static fields
.field private static final AUDIO_RECORD_THREAD_JOIN_TIMEOUT_MS:J = 0x7d0L

.field private static final BITS_PER_SAMPLE:I = 0x10

.field private static final BUFFERS_PER_SECOND:I = 0x64

.field private static final BUFFER_SIZE_FACTOR:I = 0x2

.field private static final CALLBACK_BUFFER_SIZE_MS:I = 0xa

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WebRtcAudioRecord"

.field private static errorCallback:Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$WebRtcAudioRecordErrorCallback;

.field private static volatile microphoneMute:Z


# instance fields
.field private audioRecord:Landroid/media/AudioRecord;

.field private audioSource:I

.field private audioThread:Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordThread;

.field private byteBuffer:Ljava/nio/ByteBuffer;

.field private effects:Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;

.field private emptyBytes:[B

.field private final nativeAudioRecord:J

.field private final threadChecker:Lorg/webrtc/ali/ThreadUtils$ThreadChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-boolean v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->microphoneMute:Z

    .line 77
    const/4 v0, 0x0

    sput-object v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->errorCallback:Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$WebRtcAudioRecordErrorCallback;

    return-void
.end method

.method constructor <init>(J)V
    .locals 3
    .param p1, "nativeAudioRecord"    # J

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lorg/webrtc/ali/ThreadUtils$ThreadChecker;

    invoke-direct {v0}, Lorg/webrtc/ali/ThreadUtils$ThreadChecker;-><init>()V

    iput-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->threadChecker:Lorg/webrtc/ali/ThreadUtils$ThreadChecker;

    .line 53
    iput-object v1, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->effects:Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;

    .line 57
    iput-object v1, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    .line 58
    iput-object v1, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->audioThread:Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordThread;

    .line 146
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->threadChecker:Lorg/webrtc/ali/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lorg/webrtc/ali/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 147
    const-string/jumbo v0, "WebRtcAudioRecord"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ctor"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iput-wide p1, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->nativeAudioRecord:J

    .line 152
    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->create()Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->effects:Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;

    .line 153
    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;)Landroid/media/AudioRecord;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic access$100(Z)V
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 26
    invoke-static {p0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->assertTrue(Z)V

    return-void
.end method

.method static synthetic access$200(Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->byteBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->microphoneMute:Z

    return v0
.end method

.method static synthetic access$400(Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;)[B
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->emptyBytes:[B

    return-object v0
.end method

.method static synthetic access$500(Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;)J
    .locals 2
    .param p0, "x0"    # Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;

    .prologue
    .line 26
    iget-wide v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->nativeAudioRecord:J

    return-wide v0
.end method

.method static synthetic access$600(Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;IJ)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->nativeDataIsRecorded(IJ)V

    return-void
.end method

.method static synthetic access$700(Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->reportWebRtcAudioRecordError(Ljava/lang/String;)V

    return-void
.end method

.method private static assertTrue(Z)V
    .locals 2
    .param p0, "condition"    # Z

    .prologue
    .line 308
    if-nez p0, :cond_0

    .line 309
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Expected condition to be true"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 311
    :cond_0
    return-void
.end method

.method private channelCountToConfiguration(I)I
    .locals 1
    .param p1, "channels"    # I

    .prologue
    .line 314
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 v0, 0x10

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xc

    goto :goto_0
.end method

.method private enableBuiltInAEC(Z)Z
    .locals 3
    .param p1, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 156
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->threadChecker:Lorg/webrtc/ali/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lorg/webrtc/ali/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 157
    const-string/jumbo v0, "WebRtcAudioRecord"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "enableBuiltInAEC("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->effects:Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;

    if-nez v0, :cond_0

    .line 159
    const-string/jumbo v0, "WebRtcAudioRecord"

    const-string/jumbo v1, "Built-in AEC is not supported on this platform"

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const/4 v0, 0x0

    .line 162
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->effects:Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;

    invoke-virtual {v0, p1}, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->setAEC(Z)Z

    move-result v0

    goto :goto_0
.end method

.method private enableBuiltInNS(Z)Z
    .locals 3
    .param p1, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 166
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->threadChecker:Lorg/webrtc/ali/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lorg/webrtc/ali/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 167
    const-string/jumbo v0, "WebRtcAudioRecord"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "enableBuiltInNS("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->effects:Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;

    if-nez v0, :cond_0

    .line 169
    const-string/jumbo v0, "WebRtcAudioRecord"

    const-string/jumbo v1, "Built-in NS is not supported on this platform"

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const/4 v0, 0x0

    .line 172
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->effects:Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;

    invoke-virtual {v0, p1}, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->setNS(Z)Z

    move-result v0

    goto :goto_0
.end method

.method private initRecording(III)I
    .locals 12
    .param p1, "audioSource"    # I
    .param p2, "sampleRate"    # I
    .param p3, "channels"    # I

    .prologue
    .line 176
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->threadChecker:Lorg/webrtc/ali/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lorg/webrtc/ali/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 177
    const-string/jumbo v0, "WebRtcAudioRecord"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "initRecording(sampleRate="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", channels="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lorg/webrtc/ali/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.RECORD_AUDIO"

    .line 178
    invoke-static {v0, v1}, Lorg/webrtc/ali/voiceengine/WebRtcAudioUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    const-string/jumbo v0, "RECORD_AUDIO permission is missing"

    invoke-direct {p0, v0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->reportWebRtcAudioRecordInitError(Ljava/lang/String;)V

    .line 181
    const/4 v8, -0x1

    .line 233
    :goto_0
    return v8

    .line 183
    :cond_0
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    .line 184
    const-string/jumbo v0, "InitRecording called twice without StopRecording."

    invoke-direct {p0, v0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->reportWebRtcAudioRecordInitError(Ljava/lang/String;)V

    .line 185
    const/4 v8, -0x1

    goto :goto_0

    .line 187
    :cond_1
    mul-int/lit8 v6, p3, 0x2

    .line 188
    .local v6, "bytesPerFrame":I
    div-int/lit8 v8, p2, 0x64

    .line 189
    .local v8, "framesPerBuffer":I
    mul-int v0, v6, v8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 190
    const-string/jumbo v0, "WebRtcAudioRecord"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "byteBuffer.capacity: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iput p1, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->audioSource:I

    .line 192
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->emptyBytes:[B

    .line 196
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-wide v10, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->nativeAudioRecord:J

    invoke-direct {p0, v0, v10, v11}, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->nativeCacheDirectBufferAddress(Ljava/nio/ByteBuffer;J)V

    .line 201
    invoke-direct {p0, p3}, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->channelCountToConfiguration(I)I

    move-result v3

    .line 202
    .local v3, "channelConfig":I
    const/4 v0, 0x2

    .line 203
    invoke-static {p2, v3, v0}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v9

    .line 204
    .local v9, "minBufferSize":I
    const/4 v0, -0x1

    if-eq v9, v0, :cond_2

    const/4 v0, -0x2

    if-ne v9, v0, :cond_3

    .line 205
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AudioRecord.getMinBufferSize failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->reportWebRtcAudioRecordInitError(Ljava/lang/String;)V

    .line 206
    const/4 v8, -0x1

    goto :goto_0

    .line 208
    :cond_3
    const-string/jumbo v0, "WebRtcAudioRecord"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "AudioRecord.getMinBufferSize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    mul-int/lit8 v0, v9, 0x2

    iget-object v1, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 214
    .local v5, "bufferSizeInBytes":I
    const-string/jumbo v0, "WebRtcAudioRecord"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "bufferSizeInBytes: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :try_start_0
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v4, 0x2

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    .line 224
    :cond_4
    const-string/jumbo v0, "Failed to create a new AudioRecord instance"

    invoke-direct {p0, v0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->reportWebRtcAudioRecordInitError(Ljava/lang/String;)V

    .line 225
    invoke-direct {p0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->releaseAudioResources()V

    .line 226
    const/4 v8, -0x1

    goto/16 :goto_0

    .line 218
    :catch_0
    move-exception v7

    .line 219
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AudioRecord ctor error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->reportWebRtcAudioRecordInitError(Ljava/lang/String;)V

    .line 220
    invoke-direct {p0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->releaseAudioResources()V

    .line 221
    const/4 v8, -0x1

    goto/16 :goto_0

    .line 228
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :cond_5
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->effects:Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;

    if-eqz v0, :cond_6

    .line 229
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->effects:Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;

    iget-object v1, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->enable(I)V

    .line 231
    :cond_6
    invoke-direct {p0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->logMainParameters()V

    .line 232
    invoke-direct {p0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->logMainParametersExtended()V

    goto/16 :goto_0
.end method

.method private logMainParameters()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 291
    const-string/jumbo v0, "WebRtcAudioRecord"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "AudioRecord: session ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    .line 292
    invoke-virtual {v2}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", channels: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    .line 293
    invoke-virtual {v2}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", sample rate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    .line 294
    invoke-virtual {v2}, Landroid/media/AudioRecord;->getSampleRate()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 291
    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method private logMainParametersExtended()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 299
    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioUtils;->runningOnMarshmallowOrHigher()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    const-string/jumbo v0, "WebRtcAudioRecord"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "AudioRecord: buffer size in frames: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    .line 302
    invoke-virtual {v2}, Landroid/media/AudioRecord;->getBufferSizeInFrames()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 300
    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_0
    return-void
.end method

.method private native nativeCacheDirectBufferAddress(Ljava/nio/ByteBuffer;J)V
.end method

.method private native nativeDataIsRecorded(IJ)V
.end method

.method private releaseAudioResources()V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 332
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    .line 334
    :cond_0
    return-void
.end method

.method private reportWebRtcAudioRecordError(Ljava/lang/String;)V
    .locals 3
    .param p1, "errorMessage"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 352
    const-string/jumbo v0, "WebRtcAudioRecord"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Run-time recording error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    sget-object v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->errorCallback:Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$WebRtcAudioRecordErrorCallback;

    if-eqz v0, :cond_0

    .line 354
    sget-object v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->errorCallback:Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$WebRtcAudioRecordErrorCallback;

    invoke-interface {v0, p1}, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$WebRtcAudioRecordErrorCallback;->onWebRtcAudioRecordError(Ljava/lang/String;)V

    .line 356
    :cond_0
    return-void
.end method

.method private reportWebRtcAudioRecordInitError(Ljava/lang/String;)V
    .locals 3
    .param p1, "errorMessage"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 337
    const-string/jumbo v0, "WebRtcAudioRecord"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Init recording error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    sget-object v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->errorCallback:Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$WebRtcAudioRecordErrorCallback;

    if-eqz v0, :cond_0

    .line 339
    sget-object v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->errorCallback:Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$WebRtcAudioRecordErrorCallback;

    invoke-interface {v0, p1}, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$WebRtcAudioRecordErrorCallback;->onWebRtcAudioRecordInitError(Ljava/lang/String;)V

    .line 341
    :cond_0
    return-void
.end method

.method private reportWebRtcAudioRecordStartError(Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;Ljava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;
    .param p2, "errorMessage"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 345
    const-string/jumbo v0, "WebRtcAudioRecord"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Start recording error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    sget-object v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->errorCallback:Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$WebRtcAudioRecordErrorCallback;

    if-eqz v0, :cond_0

    .line 347
    sget-object v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->errorCallback:Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$WebRtcAudioRecordErrorCallback;

    invoke-interface {v0, p1, p2}, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$WebRtcAudioRecordErrorCallback;->onWebRtcAudioRecordStartError(Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;Ljava/lang/String;)V

    .line 349
    :cond_0
    return-void
.end method

.method public static setErrorCallback(Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$WebRtcAudioRecordErrorCallback;)V
    .locals 2
    .param p0, "errorCallback"    # Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$WebRtcAudioRecordErrorCallback;

    .prologue
    .line 80
    const-string/jumbo v0, "WebRtcAudioRecord"

    const-string/jumbo v1, "Set error callback"

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    sput-object p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->errorCallback:Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$WebRtcAudioRecordErrorCallback;

    .line 82
    return-void
.end method

.method public static setMicrophoneMute(Z)V
    .locals 3
    .param p0, "mute"    # Z

    .prologue
    .line 324
    const-string/jumbo v0, "WebRtcAudioRecord"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setMicrophoneMute("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    sput-boolean p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->microphoneMute:Z

    .line 326
    return-void
.end method

.method private startRecording()Z
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v8, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 237
    iget-object v2, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->threadChecker:Lorg/webrtc/ali/ThreadUtils$ThreadChecker;

    invoke-virtual {v2}, Lorg/webrtc/ali/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 238
    const-string/jumbo v2, "WebRtcAudioRecord"

    const-string/jumbo v5, "startRecording"

    invoke-static {v2, v5}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v2, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v2}, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->assertTrue(Z)V

    .line 240
    iget-object v2, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->audioThread:Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordThread;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    invoke-static {v2}, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->assertTrue(Z)V

    .line 244
    :try_start_0
    iget-object v2, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    const/4 v1, 0x0

    .line 254
    .local v1, "numberOfStateChecks":I
    :goto_2
    iget-object v2, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v2

    if-eq v2, v8, :cond_2

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    .line 256
    const-wide/16 v6, 0xc8

    invoke-direct {p0, v6, v7}, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->threadSleep(J)V

    goto :goto_2

    .end local v1    # "numberOfStateChecks":I
    :cond_0
    move v2, v4

    .line 239
    goto :goto_0

    :cond_1
    move v2, v4

    .line 240
    goto :goto_1

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v2, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;->AUDIO_RECORD_START_EXCEPTION:Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "AudioRecord.startRecording failed: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 246
    invoke-direct {p0, v2, v3}, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->reportWebRtcAudioRecordStartError(Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;Ljava/lang/String;)V

    .line 271
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_3
    return v4

    .line 258
    .restart local v1    # "numberOfStateChecks":I
    :cond_2
    iget-object v2, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v2

    if-eq v2, v8, :cond_3

    .line 259
    sget-object v2, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;->AUDIO_RECORD_START_STATE_MISMATCH:Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "AudioRecord.startRecording failed - incorrect state :"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    .line 262
    invoke-virtual {v5}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 259
    invoke-direct {p0, v2, v3}, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->reportWebRtcAudioRecordStartError(Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;Ljava/lang/String;)V

    goto :goto_3

    .line 269
    :cond_3
    new-instance v2, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordThread;

    const-string/jumbo v4, "AudioRecordJavaThread"

    invoke-direct {v2, p0, v4}, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordThread;-><init>(Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->audioThread:Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordThread;

    .line 270
    iget-object v2, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->audioThread:Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordThread;

    invoke-virtual {v2}, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordThread;->start()V

    move v4, v3

    .line 271
    goto :goto_3
.end method

.method private stopRecording()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 275
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->threadChecker:Lorg/webrtc/ali/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lorg/webrtc/ali/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 276
    const-string/jumbo v0, "WebRtcAudioRecord"

    const-string/jumbo v2, "stopRecording"

    invoke-static {v0, v2}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->audioThread:Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordThread;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->assertTrue(Z)V

    .line 278
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->audioThread:Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordThread;

    invoke-virtual {v0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordThread;->stopThread()V

    .line 279
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->audioThread:Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordThread;

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v2, v3}, Lorg/webrtc/ali/ThreadUtils;->joinUninterruptibly(Ljava/lang/Thread;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    const-string/jumbo v0, "WebRtcAudioRecord"

    const-string/jumbo v2, "Join of AudioRecordJavaThread timed out"

    invoke-static {v0, v2}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->audioThread:Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord$AudioRecordThread;

    .line 283
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->effects:Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->effects:Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;

    invoke-virtual {v0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioEffects;->release()V

    .line 286
    :cond_1
    invoke-direct {p0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioRecord;->releaseAudioResources()V

    .line 287
    return v1

    .line 277
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private threadSleep(J)V
    .locals 5
    .param p1, "millis"    # J

    .prologue
    .line 362
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :goto_0
    return-void

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "WebRtcAudioRecord"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Thread.sleep failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
