.class public Lorg/webrtc/voiceengine/ArtcAudioRecord;
.super Ljava/lang/Object;
.source "ArtcAudioRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/voiceengine/ArtcAudioRecord$AudioRecordThread;,
        Lorg/webrtc/voiceengine/ArtcAudioRecord$IAudioRecordEventHandler;
    }
.end annotation


# static fields
.field private static final AUDIO_RECORD_THREAD_JOIN_TIMEOUT_MS:J = 0x7d0L

.field private static final BITS_PER_SAMPLE:I = 0x10

.field private static final BUFFERS_PER_SECOND:I = 0x64

.field private static final BUFFER_SIZE_FACTOR:I = 0x2

.field private static final CALLBACK_BUFFER_SIZE_MS:I = 0xa

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ArtcAudioRecord"

.field private static eventAudioRecordHandler:Lorg/webrtc/voiceengine/ArtcAudioRecord$IAudioRecordEventHandler;

.field private static volatile microphoneMute:Z


# instance fields
.field private audioRecord:Landroid/media/AudioRecord;

.field private audioThread:Lorg/webrtc/voiceengine/ArtcAudioRecord$AudioRecordThread;

.field private byteBuffer:Ljava/nio/ByteBuffer;

.field private final context:Landroid/content/Context;

.field private effects:Lorg/webrtc/voiceengine/WebRtcAudioEffects;

.field private emptyBytes:[B

.field private final nativeAudioRecord:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->microphoneMute:Z

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->eventAudioRecordHandler:Lorg/webrtc/voiceengine/ArtcAudioRecord$IAudioRecordEventHandler;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;J)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nativeAudioRecord"    # J

    .prologue
    const/4 v0, 0x0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->effects:Lorg/webrtc/voiceengine/WebRtcAudioEffects;

    .line 56
    iput-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    .line 57
    iput-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->audioThread:Lorg/webrtc/voiceengine/ArtcAudioRecord$AudioRecordThread;

    .line 171
    const-string/jumbo v0, "ArtcAudioRecord"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ctor"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    iput-object p1, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->context:Landroid/content/Context;

    .line 173
    iput-wide p2, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->nativeAudioRecord:J

    .line 177
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->create()Lorg/webrtc/voiceengine/WebRtcAudioEffects;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->effects:Lorg/webrtc/voiceengine/WebRtcAudioEffects;

    .line 178
    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/voiceengine/ArtcAudioRecord;)Landroid/media/AudioRecord;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/voiceengine/ArtcAudioRecord;

    .prologue
    .line 25
    iget-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic access$100(Z)V
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 25
    invoke-static {p0}, Lorg/webrtc/voiceengine/ArtcAudioRecord;->assertTrue(Z)V

    return-void
.end method

.method static synthetic access$200(Lorg/webrtc/voiceengine/ArtcAudioRecord;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/voiceengine/ArtcAudioRecord;

    .prologue
    .line 25
    iget-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->byteBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->microphoneMute:Z

    return v0
.end method

.method static synthetic access$400(Lorg/webrtc/voiceengine/ArtcAudioRecord;)[B
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/voiceengine/ArtcAudioRecord;

    .prologue
    .line 25
    iget-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->emptyBytes:[B

    return-object v0
.end method

.method static synthetic access$500(Lorg/webrtc/voiceengine/ArtcAudioRecord;)J
    .locals 2
    .param p0, "x0"    # Lorg/webrtc/voiceengine/ArtcAudioRecord;

    .prologue
    .line 25
    iget-wide v0, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->nativeAudioRecord:J

    return-wide v0
.end method

.method static synthetic access$600(Lorg/webrtc/voiceengine/ArtcAudioRecord;IJ)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/voiceengine/ArtcAudioRecord;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lorg/webrtc/voiceengine/ArtcAudioRecord;->nativeDataIsRecorded(IJ)V

    return-void
.end method

.method private areParametersValid(II)Z
    .locals 2
    .param p1, "sampleRate"    # I
    .param p2, "channels"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 304
    iget-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getAudioFormat()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    .line 305
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getChannelConfiguration()I

    move-result v0

    invoke-direct {p0, p2}, Lorg/webrtc/voiceengine/ArtcAudioRecord;->channelCountToConfiguration(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    .line 306
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getSampleRate()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static assertTrue(Z)V
    .locals 2
    .param p0, "condition"    # Z

    .prologue
    .line 326
    if-nez p0, :cond_0

    .line 327
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Expected condition to be true"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 329
    :cond_0
    return-void
.end method

.method private channelCountToConfiguration(I)I
    .locals 1
    .param p1, "channels"    # I

    .prologue
    .line 332
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
    .locals 4
    .param p1, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 181
    const-string/jumbo v1, "ArtcAudioRecord"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "enableBuiltInAEC("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    iget-object v1, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->effects:Lorg/webrtc/voiceengine/WebRtcAudioEffects;

    if-nez v1, :cond_0

    .line 183
    const-string/jumbo v1, "ArtcAudioRecord"

    const-string/jumbo v2, "Built-in AEC is not supported on this platform"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->effects:Lorg/webrtc/voiceengine/WebRtcAudioEffects;

    invoke-virtual {v0, p1}, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->setAEC(Z)Z

    move-result v0

    goto :goto_0
.end method

.method private enableBuiltInNS(Z)Z
    .locals 4
    .param p1, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 190
    const-string/jumbo v1, "ArtcAudioRecord"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "enableBuiltInNS("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    iget-object v1, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->effects:Lorg/webrtc/voiceengine/WebRtcAudioEffects;

    if-nez v1, :cond_0

    .line 192
    const-string/jumbo v1, "ArtcAudioRecord"

    const-string/jumbo v2, "Built-in NS is not supported on this platform"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->effects:Lorg/webrtc/voiceengine/WebRtcAudioEffects;

    invoke-virtual {v0, p1}, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->setNS(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static getAudioRecordThreadJoinTimeoutMs()J
    .locals 2

    .prologue
    .line 92
    const-wide/16 v0, 0x7d0

    return-wide v0
.end method

.method private initRecording(III)I
    .locals 12
    .param p1, "sampleRate"    # I
    .param p2, "channels"    # I
    .param p3, "mode"    # I

    .prologue
    .line 199
    const-string/jumbo v0, "ArtcAudioRecord"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "initRecording(sampleRate="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", channels="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", source:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    iget-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->context:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.RECORD_AUDIO"

    invoke-static {v0, v2}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    const-string/jumbo v0, "ArtcAudioRecord"

    const-string/jumbo v2, "RECORD_AUDIO permission is missing"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    const-string/jumbo v0, "RECORD_AUDIO permission is missing"

    invoke-virtual {p0, v0}, Lorg/webrtc/voiceengine/ArtcAudioRecord;->audioRecordInitError(Ljava/lang/String;)V

    .line 203
    const/4 v8, -0x1

    .line 261
    :goto_0
    return v8

    .line 205
    :cond_0
    iget-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    .line 206
    const-string/jumbo v0, "ArtcAudioRecord"

    const-string/jumbo v2, "InitRecording() called twice without StopRecording()"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    const/4 v8, -0x1

    goto :goto_0

    .line 209
    :cond_1
    mul-int/lit8 v6, p2, 0x2

    .line 210
    .local v6, "bytesPerFrame":I
    div-int/lit8 v8, p1, 0x64

    .line 211
    .local v8, "framesPerBuffer":I
    mul-int v0, v6, v8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 212
    const-string/jumbo v0, "ArtcAudioRecord"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "byteBuffer.capacity: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    iget-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->emptyBytes:[B

    .line 217
    iget-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-wide v10, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->nativeAudioRecord:J

    invoke-direct {p0, v0, v10, v11}, Lorg/webrtc/voiceengine/ArtcAudioRecord;->nativeCacheDirectBufferAddress(Ljava/nio/ByteBuffer;J)V

    .line 222
    invoke-direct {p0, p2}, Lorg/webrtc/voiceengine/ArtcAudioRecord;->channelCountToConfiguration(I)I

    move-result v3

    .line 223
    .local v3, "channelConfig":I
    const/4 v0, 0x2

    .line 224
    invoke-static {p1, v3, v0}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v9

    .line 225
    .local v9, "minBufferSize":I
    const/4 v0, -0x1

    if-eq v9, v0, :cond_2

    const/4 v0, -0x2

    if-ne v9, v0, :cond_3

    .line 226
    :cond_2
    const-string/jumbo v0, "ArtcAudioRecord"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "AudioRecord.getMinBufferSize failed: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "AudioRecord.getMinBufferSize failed: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/webrtc/voiceengine/ArtcAudioRecord;->audioRecordInitError(Ljava/lang/String;)V

    .line 228
    const/4 v8, -0x1

    goto/16 :goto_0

    .line 230
    :cond_3
    const-string/jumbo v0, "ArtcAudioRecord"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "AudioRecord.getMinBufferSize: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    mul-int/lit8 v0, v9, 0x2

    iget-object v2, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 236
    .local v5, "bufferSizeInBytes":I
    const-string/jumbo v0, "ArtcAudioRecord"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "bufferSizeInBytes: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    if-nez p3, :cond_5

    const/4 v1, 0x7

    .line 239
    .local v1, "audioSource":I
    :goto_1
    :try_start_0
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v4, 0x2

    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    iget-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    .line 247
    :cond_4
    const-string/jumbo v0, "ArtcAudioRecord"

    const-string/jumbo v2, "Failed to create a new AudioRecord instance"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "AudioRecord.getMinBufferSize failed: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/webrtc/voiceengine/ArtcAudioRecord;->audioRecordInitError(Ljava/lang/String;)V

    .line 249
    const/4 v8, -0x1

    goto/16 :goto_0

    .line 237
    .end local v1    # "audioSource":I
    :cond_5
    const/4 v1, 0x1

    goto :goto_1

    .line 241
    .restart local v1    # "audioSource":I
    :catch_0
    move-exception v7

    .line 242
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v0, "ArtcAudioRecord"

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "AudioRecord.getMinBufferSize failed: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/webrtc/voiceengine/ArtcAudioRecord;->audioRecordInitError(Ljava/lang/String;)V

    .line 244
    const/4 v8, -0x1

    goto/16 :goto_0

    .line 251
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :cond_6
    iget-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->effects:Lorg/webrtc/voiceengine/WebRtcAudioEffects;

    if-eqz v0, :cond_7

    .line 252
    iget-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->effects:Lorg/webrtc/voiceengine/WebRtcAudioEffects;

    iget-object v2, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->enable(I)V

    .line 255
    :cond_7
    invoke-direct {p0, p1, p2}, Lorg/webrtc/voiceengine/ArtcAudioRecord;->areParametersValid(II)Z

    move-result v0

    if-nez v0, :cond_8

    .line 256
    const-string/jumbo v0, "ArtcAudioRecord"

    const-string/jumbo v2, "At least one audio record parameter is invalid."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    const/4 v8, -0x1

    goto/16 :goto_0

    .line 259
    :cond_8
    invoke-direct {p0}, Lorg/webrtc/voiceengine/ArtcAudioRecord;->logMainParameters()V

    .line 260
    invoke-direct {p0}, Lorg/webrtc/voiceengine/ArtcAudioRecord;->logMainParametersExtended()V

    goto/16 :goto_0
.end method

.method private logMainParameters()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 310
    const-string/jumbo v0, "ArtcAudioRecord"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "AudioRecord: session ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    .line 311
    invoke-virtual {v2}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", channels: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    .line 312
    invoke-virtual {v2}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", sample rate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    .line 313
    invoke-virtual {v2}, Landroid/media/AudioRecord;->getSampleRate()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 310
    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    return-void
.end method

.method private logMainParametersExtended()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 317
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->runningOnMarshmallowOrHigher()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    const-string/jumbo v0, "ArtcAudioRecord"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "AudioRecord: buffer size in frames: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    .line 320
    invoke-virtual {v2}, Landroid/media/AudioRecord;->getBufferSizeInFrames()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 318
    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    :cond_0
    return-void
.end method

.method private native nativeCacheDirectBufferAddress(Ljava/nio/ByteBuffer;J)V
.end method

.method private native nativeDataIsRecorded(IJ)V
.end method

.method public static setAudioEventHandler(Lorg/webrtc/voiceengine/ArtcAudioRecord$IAudioRecordEventHandler;)V
    .locals 0
    .param p0, "handler"    # Lorg/webrtc/voiceengine/ArtcAudioRecord$IAudioRecordEventHandler;

    .prologue
    .line 96
    sput-object p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->eventAudioRecordHandler:Lorg/webrtc/voiceengine/ArtcAudioRecord$IAudioRecordEventHandler;

    .line 97
    return-void
.end method

.method public static setMicrophoneMute(Z)V
    .locals 3
    .param p0, "mute"    # Z

    .prologue
    .line 342
    const-string/jumbo v0, "ArtcAudioRecord"

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

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    sput-boolean p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->microphoneMute:Z

    .line 344
    return-void
.end method

.method private startRecording()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 265
    const-string/jumbo v1, "ArtcAudioRecord"

    const-string/jumbo v4, "startRecording"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    iget-object v1, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Lorg/webrtc/voiceengine/ArtcAudioRecord;->assertTrue(Z)V

    .line 267
    iget-object v1, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->audioThread:Lorg/webrtc/voiceengine/ArtcAudioRecord$AudioRecordThread;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    invoke-static {v1}, Lorg/webrtc/voiceengine/ArtcAudioRecord;->assertTrue(Z)V

    .line 269
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    iget-object v1, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_2

    .line 276
    const-string/jumbo v1, "ArtcAudioRecord"

    const-string/jumbo v2, "AudioRecord.startRecording failed"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    const-string/jumbo v1, "AudioRecord.startRecording failed"

    invoke-virtual {p0, v1}, Lorg/webrtc/voiceengine/ArtcAudioRecord;->audioRecordStartError(Ljava/lang/String;)V

    .line 282
    :goto_2
    return v3

    :cond_0
    move v1, v3

    .line 266
    goto :goto_0

    :cond_1
    move v1, v3

    .line 267
    goto :goto_1

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v1, "ArtcAudioRecord"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "AudioRecord.startRecording failed: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "AudioRecord.startRecording failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/webrtc/voiceengine/ArtcAudioRecord;->audioRecordStartError(Ljava/lang/String;)V

    goto :goto_2

    .line 280
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_2
    new-instance v1, Lorg/webrtc/voiceengine/ArtcAudioRecord$AudioRecordThread;

    const-string/jumbo v3, "AudioRecordJavaThread"

    invoke-direct {v1, p0, v3}, Lorg/webrtc/voiceengine/ArtcAudioRecord$AudioRecordThread;-><init>(Lorg/webrtc/voiceengine/ArtcAudioRecord;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->audioThread:Lorg/webrtc/voiceengine/ArtcAudioRecord$AudioRecordThread;

    .line 281
    iget-object v1, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->audioThread:Lorg/webrtc/voiceengine/ArtcAudioRecord$AudioRecordThread;

    invoke-virtual {v1}, Lorg/webrtc/voiceengine/ArtcAudioRecord$AudioRecordThread;->start()V

    move v3, v2

    .line 282
    goto :goto_2
.end method

.method private stopRecording()Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 286
    const-string/jumbo v0, "ArtcAudioRecord"

    const-string/jumbo v3, "stopRecording"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    iget-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->audioThread:Lorg/webrtc/voiceengine/ArtcAudioRecord$AudioRecordThread;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/webrtc/voiceengine/ArtcAudioRecord;->assertTrue(Z)V

    .line 288
    iget-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->audioThread:Lorg/webrtc/voiceengine/ArtcAudioRecord$AudioRecordThread;

    invoke-virtual {v0}, Lorg/webrtc/voiceengine/ArtcAudioRecord$AudioRecordThread;->stopThread()V

    .line 289
    iget-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->audioThread:Lorg/webrtc/voiceengine/ArtcAudioRecord$AudioRecordThread;

    const-wide/16 v4, 0x7d0

    invoke-static {v0, v4, v5}, Lorg/webrtc/ThreadUtils;->joinUninterruptibly(Ljava/lang/Thread;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    const-string/jumbo v0, "ArtcAudioRecord"

    const-string/jumbo v3, "Join of AudioRecordJavaThread timed out"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/taobao/artc/utils/ArtcLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    :cond_0
    iput-object v6, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->audioThread:Lorg/webrtc/voiceengine/ArtcAudioRecord$AudioRecordThread;

    .line 293
    iget-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->effects:Lorg/webrtc/voiceengine/WebRtcAudioEffects;

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->effects:Lorg/webrtc/voiceengine/WebRtcAudioEffects;

    invoke-virtual {v0}, Lorg/webrtc/voiceengine/WebRtcAudioEffects;->release()V

    .line 296
    :cond_1
    iget-object v0, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 297
    iput-object v6, p0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    .line 298
    return v1

    :cond_2
    move v0, v2

    .line 287
    goto :goto_0
.end method


# virtual methods
.method audioRecordInitError(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorDescription"    # Ljava/lang/String;

    .prologue
    .line 80
    sget-object v0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->eventAudioRecordHandler:Lorg/webrtc/voiceengine/ArtcAudioRecord$IAudioRecordEventHandler;

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->eventAudioRecordHandler:Lorg/webrtc/voiceengine/ArtcAudioRecord$IAudioRecordEventHandler;

    invoke-interface {v0, p1}, Lorg/webrtc/voiceengine/ArtcAudioRecord$IAudioRecordEventHandler;->onInitError(Ljava/lang/String;)V

    .line 83
    :cond_0
    return-void
.end method

.method audioRecordReadError(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorDescription"    # Ljava/lang/String;

    .prologue
    .line 86
    sget-object v0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->eventAudioRecordHandler:Lorg/webrtc/voiceengine/ArtcAudioRecord$IAudioRecordEventHandler;

    if-eqz v0, :cond_0

    .line 87
    sget-object v0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->eventAudioRecordHandler:Lorg/webrtc/voiceengine/ArtcAudioRecord$IAudioRecordEventHandler;

    invoke-interface {v0, p1}, Lorg/webrtc/voiceengine/ArtcAudioRecord$IAudioRecordEventHandler;->onReadError(Ljava/lang/String;)V

    .line 89
    :cond_0
    return-void
.end method

.method audioRecordStartError(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorDescription"    # Ljava/lang/String;

    .prologue
    .line 74
    sget-object v0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->eventAudioRecordHandler:Lorg/webrtc/voiceengine/ArtcAudioRecord$IAudioRecordEventHandler;

    if-eqz v0, :cond_0

    .line 75
    sget-object v0, Lorg/webrtc/voiceengine/ArtcAudioRecord;->eventAudioRecordHandler:Lorg/webrtc/voiceengine/ArtcAudioRecord$IAudioRecordEventHandler;

    invoke-interface {v0, p1}, Lorg/webrtc/voiceengine/ArtcAudioRecord$IAudioRecordEventHandler;->onStartError(Ljava/lang/String;)V

    .line 77
    :cond_0
    return-void
.end method
