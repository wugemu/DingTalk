.class public Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;
.super Ljava/lang/Object;
.source "WebRtcAudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$AudioTrackThread;,
        Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$WebRtcAudioTrackErrorCallback;
    }
.end annotation


# static fields
.field private static final BITS_PER_SAMPLE:I = 0x10

.field private static final BUFFERS_PER_SECOND:I = 0x64

.field private static final CALLBACK_BUFFER_SIZE_MS:I = 0xa

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WebRtcAudioTrack"

.field private static errorCallback:Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$WebRtcAudioTrackErrorCallback;

.field private static volatile speakerMute:Z


# instance fields
.field private final audioManager:Landroid/media/AudioManager;

.field private audioThread:Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$AudioTrackThread;

.field private audioTrack:Landroid/media/AudioTrack;

.field private byteBuffer:Ljava/nio/ByteBuffer;

.field private emptyBytes:[B

.field private final nativeAudioTrack:J

.field private streamType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->speakerMute:Z

    .line 61
    const/4 v0, 0x0

    sput-object v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->errorCallback:Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$WebRtcAudioTrackErrorCallback;

    return-void
.end method

.method constructor <init>(J)V
    .locals 3
    .param p1, "nativeAudioTrack"    # J

    .prologue
    const/4 v0, 0x0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 46
    iput-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->audioThread:Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$AudioTrackThread;

    .line 171
    const-string/jumbo v0, "WebRtcAudioTrack"

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

    .line 172
    iput-wide p1, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->nativeAudioTrack:J

    .line 174
    invoke-static {}, Lorg/webrtc/ali/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    .line 178
    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;)Landroid/media/AudioTrack;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;

    .prologue
    .line 25
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    return-object v0
.end method

.method static synthetic access$100(Z)V
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 25
    invoke-static {p0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->assertTrue(Z)V

    return-void
.end method

.method static synthetic access$200(Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->reportWebRtcAudioTrackStartError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->releaseAudioResources()V

    return-void
.end method

.method static synthetic access$400(Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;

    .prologue
    .line 25
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->byteBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static synthetic access$500(Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;)J
    .locals 2
    .param p0, "x0"    # Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;

    .prologue
    .line 25
    iget-wide v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->nativeAudioTrack:J

    return-wide v0
.end method

.method static synthetic access$600(Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;IJ)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->nativeGetPlayoutData(IJ)V

    return-void
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->speakerMute:Z

    return v0
.end method

.method static synthetic access$800(Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;)[B
    .locals 1
    .param p0, "x0"    # Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;

    .prologue
    .line 25
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->emptyBytes:[B

    return-object v0
.end method

.method static synthetic access$900(Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->reportWebRtcAudioTrackError(Ljava/lang/String;)V

    return-void
.end method

.method private static assertTrue(Z)V
    .locals 2
    .param p0, "condition"    # Z

    .prologue
    .line 378
    if-nez p0, :cond_0

    .line 379
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Expected condition to be true"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 381
    :cond_0
    return-void
.end method

.method private channelCountToConfiguration(I)I
    .locals 1
    .param p1, "channels"    # I

    .prologue
    .line 384
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xc

    goto :goto_0
.end method

.method private createAudioTrackOnLollipopOrHigher(III)Landroid/media/AudioTrack;
    .locals 7
    .param p1, "sampleRateInHz"    # I
    .param p2, "channelConfig"    # I
    .param p3, "bufferSizeInBytes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 324
    const-string/jumbo v0, "WebRtcAudioTrack"

    const-string/jumbo v1, "createAudioTrackOnLollipopOrHigher"

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-static {v5}, Landroid/media/AudioTrack;->getNativeOutputSampleRate(I)I

    move-result v6

    .line 329
    .local v6, "nativeOutputSampleRate":I
    const-string/jumbo v0, "WebRtcAudioTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "nativeOutputSampleRate: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    if-eq p1, v6, :cond_0

    .line 331
    const-string/jumbo v0, "WebRtcAudioTrack"

    const-string/jumbo v1, "Unable to use fast mode since requested sample rate is not native"

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :cond_0
    new-instance v0, Landroid/media/AudioTrack;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 336
    invoke-virtual {v1, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 337
    invoke-virtual {v1, v4}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 338
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    new-instance v2, Landroid/media/AudioFormat$Builder;

    invoke-direct {v2}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 340
    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    .line 341
    invoke-virtual {v2, p1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    .line 342
    invoke-virtual {v2, p2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    .line 343
    invoke-virtual {v2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    .line 334
    return-object v0
.end method

.method private getStreamMaxVolume()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 279
    const-string/jumbo v0, "WebRtcAudioTrack"

    const-string/jumbo v2, "getStreamMaxVolume"

    invoke-static {v0, v2}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->assertTrue(Z)V

    .line 281
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0

    :cond_0
    move v0, v1

    .line 280
    goto :goto_0
.end method

.method private getStreamVolume()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 304
    const-string/jumbo v0, "WebRtcAudioTrack"

    const-string/jumbo v2, "getStreamVolume"

    invoke-static {v0, v2}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->assertTrue(Z)V

    .line 306
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0

    :cond_0
    move v0, v1

    .line 305
    goto :goto_0
.end method

.method private initPlayout(III)Z
    .locals 12
    .param p1, "streamType"    # I
    .param p2, "sampleRate"    # I
    .param p3, "channels"    # I

    .prologue
    .line 181
    const-string/jumbo v0, "WebRtcAudioTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "initPlayout(sampleRate="

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

    .line 182
    mul-int/lit8 v7, p3, 0x2

    .line 183
    .local v7, "bytesPerFrame":I
    div-int/lit8 v0, p2, 0x64

    mul-int/2addr v0, v7

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 184
    const-string/jumbo v0, "WebRtcAudioTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "byteBuffer.capacity: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->emptyBytes:[B

    .line 189
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-wide v10, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->nativeAudioTrack:J

    invoke-direct {p0, v0, v10, v11}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->nativeCacheDirectBufferAddress(Ljava/nio/ByteBuffer;J)V

    .line 195
    invoke-direct {p0, p3}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->channelCountToConfiguration(I)I

    move-result v3

    .line 196
    .local v3, "channelConfig":I
    const/4 v0, 0x2

    .line 197
    invoke-static {p2, v3, v0}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    .line 198
    .local v5, "minBufferSizeInBytes":I
    const-string/jumbo v0, "WebRtcAudioTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "AudioTrack.getMinBufferSize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v5, v0, :cond_0

    .line 205
    const-string/jumbo v0, "AudioTrack.getMinBufferSize returns an invalid value."

    invoke-direct {p0, v0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->reportWebRtcAudioTrackInitError(Ljava/lang/String;)V

    .line 206
    const/4 v0, 0x0

    .line 251
    :goto_0
    return v0

    .line 211
    :cond_0
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    .line 212
    const-string/jumbo v0, "Conflict with existing AudioTrack."

    invoke-direct {p0, v0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->reportWebRtcAudioTrackInitError(Ljava/lang/String;)V

    .line 213
    const/4 v0, 0x0

    goto :goto_0

    .line 215
    :cond_1
    iput p1, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->streamType:I

    .line 220
    :try_start_0
    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioUtils;->runningOnLollipopOrHigher()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 226
    invoke-direct {p0, p2, v3, v5}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->createAudioTrackOnLollipopOrHigher(III)Landroid/media/AudioTrack;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_1
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    .line 245
    :cond_2
    const-string/jumbo v0, "Initialization of audio track failed."

    invoke-direct {p0, v0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->reportWebRtcAudioTrackInitError(Ljava/lang/String;)V

    .line 246
    invoke-direct {p0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->releaseAudioResources()V

    .line 247
    const/4 v0, 0x0

    goto :goto_0

    .line 232
    :cond_3
    :try_start_1
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v4, 0x2

    const/4 v6, 0x1

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 235
    :catch_0
    move-exception v8

    .line 236
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->reportWebRtcAudioTrackInitError(Ljava/lang/String;)V

    .line 237
    invoke-direct {p0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->releaseAudioResources()V

    .line 238
    const/4 v0, 0x0

    goto :goto_0

    .line 249
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :cond_4
    invoke-direct {p0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->logMainParameters()V

    .line 250
    invoke-direct {p0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->logMainParametersExtended()V

    .line 251
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isVolumeFixed()Z
    .locals 1

    .prologue
    .line 297
    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioUtils;->runningOnLollipopOrHigher()Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    const/4 v0, 0x0

    .line 299
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isVolumeFixed()Z

    move-result v0

    goto :goto_0
.end method

.method private logMainParameters()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 310
    const-string/jumbo v0, "WebRtcAudioTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "AudioTrack: session ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 311
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", channels: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 312
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getChannelCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", sample rate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 313
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", max gain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 315
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 310
    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method private logMainParametersExtended()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 351
    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioUtils;->runningOnMarshmallowOrHigher()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    const-string/jumbo v0, "WebRtcAudioTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "AudioTrack: buffer size in frames: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 354
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getBufferSizeInFrames()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 352
    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_0
    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioUtils;->runningOnNougatOrHigher()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    const-string/jumbo v0, "WebRtcAudioTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "AudioTrack: buffer capacity in frames: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 359
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getBufferCapacityInFrames()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 357
    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :cond_1
    return-void
.end method

.method private logUnderrunCount()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 371
    invoke-static {}, Lorg/webrtc/ali/voiceengine/WebRtcAudioUtils;->runningOnNougatOrHigher()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    const-string/jumbo v0, "WebRtcAudioTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "underrun count: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getUnderrunCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    :cond_0
    return-void
.end method

.method private native nativeCacheDirectBufferAddress(Ljava/nio/ByteBuffer;J)V
.end method

.method private native nativeGetPlayoutData(IJ)V
.end method

.method private releaseAudioResources()V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 402
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 404
    :cond_0
    return-void
.end method

.method private reportWebRtcAudioTrackError(Ljava/lang/String;)V
    .locals 3
    .param p1, "errorMessage"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 421
    const-string/jumbo v0, "WebRtcAudioTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Run-time playback error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    sget-object v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->errorCallback:Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$WebRtcAudioTrackErrorCallback;

    if-eqz v0, :cond_0

    .line 423
    sget-object v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->errorCallback:Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$WebRtcAudioTrackErrorCallback;

    invoke-interface {v0, p1}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$WebRtcAudioTrackErrorCallback;->onWebRtcAudioTrackError(Ljava/lang/String;)V

    .line 425
    :cond_0
    return-void
.end method

.method private reportWebRtcAudioTrackInitError(Ljava/lang/String;)V
    .locals 3
    .param p1, "errorMessage"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 407
    const-string/jumbo v0, "WebRtcAudioTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Init error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    sget-object v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->errorCallback:Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$WebRtcAudioTrackErrorCallback;

    if-eqz v0, :cond_0

    .line 409
    sget-object v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->errorCallback:Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$WebRtcAudioTrackErrorCallback;

    invoke-interface {v0, p1}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$WebRtcAudioTrackErrorCallback;->onWebRtcAudioTrackInitError(Ljava/lang/String;)V

    .line 411
    :cond_0
    return-void
.end method

.method private reportWebRtcAudioTrackStartError(Ljava/lang/String;)V
    .locals 3
    .param p1, "errorMessage"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 414
    const-string/jumbo v0, "WebRtcAudioTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Start error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    sget-object v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->errorCallback:Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$WebRtcAudioTrackErrorCallback;

    if-eqz v0, :cond_0

    .line 416
    sget-object v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->errorCallback:Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$WebRtcAudioTrackErrorCallback;

    invoke-interface {v0, p1}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$WebRtcAudioTrackErrorCallback;->onWebRtcAudioTrackStartError(Ljava/lang/String;)V

    .line 418
    :cond_0
    return-void
.end method

.method public static setErrorCallback(Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$WebRtcAudioTrackErrorCallback;)V
    .locals 2
    .param p0, "errorCallback"    # Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$WebRtcAudioTrackErrorCallback;

    .prologue
    .line 64
    const-string/jumbo v0, "WebRtcAudioTrack"

    const-string/jumbo v1, "Set error callback"

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    sput-object p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->errorCallback:Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$WebRtcAudioTrackErrorCallback;

    .line 66
    return-void
.end method

.method public static setSpeakerMute(Z)V
    .locals 3
    .param p0, "mute"    # Z

    .prologue
    .line 394
    const-string/jumbo v0, "WebRtcAudioTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setSpeakerMute("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    sput-boolean p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->speakerMute:Z

    .line 396
    return-void
.end method

.method private setStreamVolume(I)Z
    .locals 5
    .param p1, "volume"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 286
    const-string/jumbo v0, "WebRtcAudioTrack"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setStreamVolume("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->assertTrue(Z)V

    .line 288
    invoke-direct {p0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->isVolumeFixed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    const-string/jumbo v0, "WebRtcAudioTrack"

    const-string/jumbo v1, "The device implements a fixed volume policy."

    invoke-static {v0, v1}, Lorg/webrtc/ali/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :goto_1
    return v2

    :cond_0
    move v0, v2

    .line 287
    goto :goto_0

    .line 292
    :cond_1
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    move v2, v1

    .line 293
    goto :goto_1
.end method

.method private startPlayout()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 255
    const-string/jumbo v0, "WebRtcAudioTrack"

    const-string/jumbo v3, "startPlayout"

    invoke-static {v0, v3}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->assertTrue(Z)V

    .line 257
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->audioThread:Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$AudioTrackThread;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->assertTrue(Z)V

    .line 258
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 259
    const-string/jumbo v0, "AudioTrack instance is not successfully initialized."

    invoke-direct {p0, v0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->reportWebRtcAudioTrackStartError(Ljava/lang/String;)V

    .line 264
    :goto_2
    return v2

    :cond_0
    move v0, v2

    .line 256
    goto :goto_0

    :cond_1
    move v0, v2

    .line 257
    goto :goto_1

    .line 262
    :cond_2
    new-instance v0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$AudioTrackThread;

    const-string/jumbo v2, "AudioTrackJavaThread"

    invoke-direct {v0, p0, v2}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$AudioTrackThread;-><init>(Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->audioThread:Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$AudioTrackThread;

    .line 263
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->audioThread:Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$AudioTrackThread;

    invoke-virtual {v0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$AudioTrackThread;->start()V

    move v2, v1

    .line 264
    goto :goto_2
.end method

.method private stopPlayout()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 268
    const-string/jumbo v0, "WebRtcAudioTrack"

    const-string/jumbo v2, "stopPlayout"

    invoke-static {v0, v2}, Lorg/webrtc/ali/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->audioThread:Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$AudioTrackThread;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->assertTrue(Z)V

    .line 270
    invoke-direct {p0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->logUnderrunCount()V

    .line 271
    iget-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->audioThread:Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$AudioTrackThread;

    invoke-virtual {v0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$AudioTrackThread;->joinThread()V

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->audioThread:Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack$AudioTrackThread;

    .line 273
    invoke-direct {p0}, Lorg/webrtc/ali/voiceengine/WebRtcAudioTrack;->releaseAudioResources()V

    .line 274
    return v1

    .line 269
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
