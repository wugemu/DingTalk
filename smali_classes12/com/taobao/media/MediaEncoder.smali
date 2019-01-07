.class public Lcom/taobao/media/MediaEncoder;
.super Ljava/lang/Object;
.source "MediaEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/media/MediaEncoder$OnReEncodeFinishListener;,
        Lcom/taobao/media/MediaEncoder$OnNativeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaEncoder"

.field private static loadMediaEncodeFailed:Z

.field protected static mAudioTrack:Landroid/media/AudioTrack;

.field private static mOnNativeListener:Lcom/taobao/media/MediaEncoder$OnNativeListener;

.field private static mOnReEncodeFinishListener:Lcom/taobao/media/MediaEncoder$OnReEncodeFinishListener;


# instance fields
.field private nativeHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/taobao/media/MediaEncoder;->loadMediaEncodeFailed:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-static {}, Lcom/taobao/media/MediaEncoder;->checkSupport()Z

    .line 122
    invoke-direct {p0}, Lcom/taobao/media/MediaEncoder;->createNativeHandle()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/media/MediaEncoder;->nativeHandle:J

    .line 123
    return-void
.end method

.method public static native OnStartPlay(J)V
.end method

.method public static native OnStopPlay(J)V
.end method

.method public static audioInit(IZZI)I
    .locals 10
    .param p0, "sampleRate"    # I
    .param p1, "is16Bit"    # Z
    .param p2, "isStereo"    # Z
    .param p3, "desiredFrames"    # I

    .prologue
    const/high16 v9, 0x447a0000    # 1000.0f

    const/4 v1, 0x3

    const/4 v6, 0x1

    const/4 v8, 0x2

    .line 177
    if-eqz p2, :cond_0

    move v3, v1

    .line 178
    .local v3, "channelConfig":I
    :goto_0
    if-eqz p1, :cond_1

    move v4, v8

    .line 179
    .local v4, "audioFormat":I
    :goto_1
    if-eqz p2, :cond_2

    move v2, v8

    :goto_2
    if-eqz p1, :cond_3

    move v0, v8

    :goto_3
    mul-int v7, v2, v0

    .line 180
    .local v7, "frameSize":I
    const-string/jumbo v2, "Geolo"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Geolo audio: wanted "

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_4

    const-string/jumbo v0, "stereo"

    :goto_4
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_5

    const-string/jumbo v0, "16-bit"

    :goto_5
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-float v5, p0

    div-float/2addr v5, v9

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "kHz, "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " frames buffer"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-static {p0, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    add-int/2addr v0, v7

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, v7

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 184
    sget-object v0, Lcom/taobao/media/MediaEncoder;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_7

    .line 185
    new-instance v0, Landroid/media/AudioTrack;

    mul-int v5, p3, v7

    move v2, p0

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 188
    sput-object v0, Lcom/taobao/media/MediaEncoder;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eq v0, v6, :cond_6

    .line 189
    const-string/jumbo v0, "SDL"

    const-string/jumbo v1, "Failed during initialization of Audio Track"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v0, 0x0

    sput-object v0, Lcom/taobao/media/MediaEncoder;->mAudioTrack:Landroid/media/AudioTrack;

    .line 191
    const/4 v0, -0x1

    .line 202
    :goto_6
    return v0

    .end local v3    # "channelConfig":I
    .end local v4    # "audioFormat":I
    .end local v7    # "frameSize":I
    :cond_0
    move v3, v8

    .line 177
    goto/16 :goto_0

    .restart local v3    # "channelConfig":I
    :cond_1
    move v4, v1

    .line 178
    goto/16 :goto_1

    .restart local v4    # "audioFormat":I
    :cond_2
    move v2, v6

    .line 179
    goto/16 :goto_2

    :cond_3
    move v0, v6

    goto/16 :goto_3

    .line 180
    .restart local v7    # "frameSize":I
    :cond_4
    const-string/jumbo v0, "mono"

    goto :goto_4

    :cond_5
    const-string/jumbo v0, "8-bit"

    goto :goto_5

    .line 194
    :cond_6
    sget-object v0, Lcom/taobao/media/MediaEncoder;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 198
    :cond_7
    const-string/jumbo v1, "Geolo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Geolo audio: got "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/taobao/media/MediaEncoder;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getChannelCount()I

    move-result v0

    if-lt v0, v8, :cond_8

    const-string/jumbo v0, "stereo"

    :goto_7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/taobao/media/MediaEncoder;->mAudioTrack:Landroid/media/AudioTrack;

    .line 199
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioFormat()I

    move-result v0

    if-ne v0, v8, :cond_9

    const-string/jumbo v0, "16-bit"

    :goto_8
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/taobao/media/MediaEncoder;->mAudioTrack:Landroid/media/AudioTrack;

    .line 200
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v9

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "kHz, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " frames buffer"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v0, 0x0

    goto :goto_6

    .line 198
    :cond_8
    const-string/jumbo v0, "mono"

    goto :goto_7

    .line 199
    :cond_9
    const-string/jumbo v0, "8-bit"

    goto :goto_8
.end method

.method public static audioWriteByteBuffer([B)V
    .locals 4
    .param p0, "buffer"    # [B

    .prologue
    .line 226
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 227
    sget-object v2, Lcom/taobao/media/MediaEncoder;->mAudioTrack:Landroid/media/AudioTrack;

    array-length v3, p0

    sub-int/2addr v3, v0

    invoke-virtual {v2, p0, v0, v3}, Landroid/media/AudioTrack;->write([BII)I

    move-result v1

    .line 228
    .local v1, "result":I
    if-lez v1, :cond_0

    .line 229
    add-int/2addr v0, v1

    goto :goto_0

    .line 230
    :cond_0
    if-nez v1, :cond_1

    .line 232
    const-wide/16 v2, 0x1

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    :catch_0
    move-exception v2

    goto :goto_0

    .line 237
    :cond_1
    const-string/jumbo v2, "Geolo"

    const-string/jumbo v3, "Geolo audio: error return from write(byte)"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .end local v1    # "result":I
    :cond_2
    return-void
.end method

.method public static audioWriteShortBuffer([S)V
    .locals 4
    .param p0, "buffer"    # [S

    .prologue
    .line 207
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 208
    sget-object v2, Lcom/taobao/media/MediaEncoder;->mAudioTrack:Landroid/media/AudioTrack;

    array-length v3, p0

    sub-int/2addr v3, v0

    invoke-virtual {v2, p0, v0, v3}, Landroid/media/AudioTrack;->write([SII)I

    move-result v1

    .line 209
    .local v1, "result":I
    if-lez v1, :cond_0

    .line 210
    add-int/2addr v0, v1

    goto :goto_0

    .line 211
    :cond_0
    if-nez v1, :cond_1

    .line 213
    const-wide/16 v2, 0x1

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 216
    :catch_0
    move-exception v2

    goto :goto_0

    .line 218
    :cond_1
    const-string/jumbo v2, "Geolo"

    const-string/jumbo v3, "Geolo audio: error return from write(short)"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    .end local v1    # "result":I
    :cond_2
    return-void
.end method

.method public static checkSupport()Z
    .locals 5

    .prologue
    .line 22
    const/4 v1, 0x1

    .line 25
    .local v1, "i":Z
    :try_start_0
    const-string/jumbo v2, "tpffmpeg"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    :try_start_1
    const-string/jumbo v2, "MediaEncode"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    .line 42
    :goto_1
    :try_start_2
    const-string/jumbo v2, "videostudio"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_2

    .line 50
    :goto_2
    return v1

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, "error":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 28
    const-string/jumbo v2, "MediaEncoder"

    const-string/jumbo v3, "pay attention don\'t forget add tpffmpeg.so!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    const/4 v1, 0x0

    goto :goto_0

    .line 34
    .end local v0    # "error":Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 35
    .restart local v0    # "error":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 36
    const/4 v2, 0x1

    sput-boolean v2, Lcom/taobao/media/MediaEncoder;->loadMediaEncodeFailed:Z

    .line 37
    const-string/jumbo v2, "MediaEncoder"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "no MediaEncode.so on this cpu strucature@"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    const/4 v1, 0x0

    goto :goto_1

    .line 43
    .end local v0    # "error":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v0

    .line 44
    .restart local v0    # "error":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 45
    const-string/jumbo v2, "MediaEncoder"

    const-string/jumbo v3, "pay attention don\'t forget add  videostudio.so!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private native createNativeHandle()J
.end method

.method public static native destroyPlay(J)V
.end method

.method public static native ffInit()V
.end method

.method public static native getProcessPercentage(J)F
.end method

.method public static native initBeautify(Ljava/lang/String;III)J
.end method

.method public static native initFilterRecord(Ljava/lang/String;Ljava/lang/String;III)J
.end method

.method public static native initImageFilter(Landroid/graphics/Bitmap;III)J
.end method

.method public static native initPlay(Ljava/lang/String;II)J
.end method

.method public static native initWatermarkRecord(Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;II)J
.end method

.method public static isLoadMediaEncodeFailed()Z
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/taobao/media/MediaEncoder;->loadMediaEncodeFailed:Z

    return v0
.end method

.method public static native nativeSetContext(Landroid/content/Context;)V
.end method

.method public static ndkNotify(II)I
    .locals 3
    .param p0, "key"    # I
    .param p1, "value"    # I

    .prologue
    .line 250
    sget-object v0, Lcom/taobao/media/MediaEncoder;->mOnNativeListener:Lcom/taobao/media/MediaEncoder$OnNativeListener;

    if-eqz v0, :cond_0

    .line 251
    sget-object v0, Lcom/taobao/media/MediaEncoder;->mOnNativeListener:Lcom/taobao/media/MediaEncoder$OnNativeListener;

    invoke-interface {v0, p0, p1}, Lcom/taobao/media/MediaEncoder$OnNativeListener;->ndkNotify(II)V

    .line 255
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 253
    :cond_0
    const-string/jumbo v0, "ndkNotify"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ndkNotify key:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static ndkNotify()V
    .locals 2

    .prologue
    .line 259
    sget-object v0, Lcom/taobao/media/MediaEncoder;->mOnNativeListener:Lcom/taobao/media/MediaEncoder$OnNativeListener;

    if-eqz v0, :cond_0

    .line 260
    sget-object v0, Lcom/taobao/media/MediaEncoder;->mOnNativeListener:Lcom/taobao/media/MediaEncoder$OnNativeListener;

    invoke-interface {v0}, Lcom/taobao/media/MediaEncoder$OnNativeListener;->ndkNotify()V

    .line 264
    :goto_0
    return-void

    .line 262
    :cond_0
    const-string/jumbo v0, "ndkNotify"

    const-string/jumbo v1, "ndkNotify listener null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static notifyReEncodeFinish()V
    .locals 1

    .prologue
    .line 288
    sget-object v0, Lcom/taobao/media/MediaEncoder;->mOnReEncodeFinishListener:Lcom/taobao/media/MediaEncoder$OnReEncodeFinishListener;

    if-eqz v0, :cond_0

    .line 289
    sget-object v0, Lcom/taobao/media/MediaEncoder;->mOnReEncodeFinishListener:Lcom/taobao/media/MediaEncoder$OnReEncodeFinishListener;

    invoke-interface {v0}, Lcom/taobao/media/MediaEncoder$OnReEncodeFinishListener;->notifyReEncodeFinish()V

    .line 291
    :cond_0
    return-void
.end method

.method public static registerNativeListener(Lcom/taobao/media/MediaEncoder$OnNativeListener;)V
    .locals 1
    .param p0, "l"    # Lcom/taobao/media/MediaEncoder$OnNativeListener;

    .prologue
    .line 270
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/taobao/media/MediaEncoder;->registerNativeListener(Lcom/taobao/media/MediaEncoder$OnNativeListener;Landroid/content/Context;)V

    .line 271
    return-void
.end method

.method public static registerNativeListener(Lcom/taobao/media/MediaEncoder$OnNativeListener;Landroid/content/Context;)V
    .locals 0
    .param p0, "l"    # Lcom/taobao/media/MediaEncoder$OnNativeListener;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 274
    sput-object p0, Lcom/taobao/media/MediaEncoder;->mOnNativeListener:Lcom/taobao/media/MediaEncoder$OnNativeListener;

    .line 275
    if-eqz p1, :cond_0

    .line 276
    invoke-static {p1}, Lcom/taobao/media/MediaEncoder;->nativeSetContext(Landroid/content/Context;)V

    .line 277
    :cond_0
    return-void
.end method

.method public static registerNativeListener(Lcom/taobao/media/MediaEncoder$OnReEncodeFinishListener;)V
    .locals 0
    .param p0, "l"    # Lcom/taobao/media/MediaEncoder$OnReEncodeFinishListener;

    .prologue
    .line 297
    sput-object p0, Lcom/taobao/media/MediaEncoder;->mOnReEncodeFinishListener:Lcom/taobao/media/MediaEncoder$OnReEncodeFinishListener;

    .line 298
    return-void
.end method

.method private native releaseNativeHanle(J)V
.end method

.method public static setLoadMediaEncodeFailed(Z)V
    .locals 0
    .param p0, "loadMediaEncodeFailed"    # Z

    .prologue
    .line 57
    sput-boolean p0, Lcom/taobao/media/MediaEncoder;->loadMediaEncodeFailed:Z

    .line 58
    return-void
.end method

.method public static native setPlayFilter(JI)V
.end method

.method public static native stepImage(JI)V
.end method

.method public static native stepPlay(J)V
.end method

.method public static unRegisterNativeListener()V
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    sput-object v0, Lcom/taobao/media/MediaEncoder;->mOnNativeListener:Lcom/taobao/media/MediaEncoder$OnNativeListener;

    .line 281
    return-void
.end method


# virtual methods
.method public native AacfileCopyToMp4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native CancelTimeBackFilter()I
.end method

.method public native CancelVideoSeekerAndRotation()I
.end method

.method public native EncodeAudioFrame([BJJ)I
.end method

.method public native EncodeAudioFrameWithAACMusic(Ljava/lang/String;)I
.end method

.method public native EncodeAudioFrameWithMusicMixed(Ljava/lang/String;J)I
.end method

.method public native EncodeVideoFrame([BJ)I
.end method

.method public native Finish()I
.end method

.method public native Init(Ljava/lang/String;JJJIIII)I
.end method

.method public native InitWithClip(Ljava/lang/String;JJJIIIIIZI)I
.end method

.method public native InitWithClipAndDegree(Ljava/lang/String;JJJIIIIIZI)I
.end method

.method public native InitWithClipAndDegreeAndResizeAndGop(Ljava/lang/String;JJJIIIIIZIIIIII)I
.end method

.method public native InitWithQuality(Ljava/lang/String;JJJIIIII)I
.end method

.method public native InputSamples()J
.end method

.method public native MaxOutBytes()I
.end method

.method public native Mp4UpdateVideoSpeed(Ljava/lang/String;Ljava/lang/String;[J[J[F)I
.end method

.method public native OverAgainFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[J[J)J
.end method

.method public native SetRealAudioSampleRate(I)I
.end method

.method public native SetVideoWaterMark([BIIII)I
.end method

.method public native TimeBackFilter(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native VideoSeekerAndRotationFilter(Ljava/lang/String;Ljava/lang/String;JJ)I
.end method

.method protected finalize()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 127
    iget-wide v0, p0, Lcom/taobao/media/MediaEncoder;->nativeHandle:J

    invoke-direct {p0, v0, v1}, Lcom/taobao/media/MediaEncoder;->releaseNativeHanle(J)V

    .line 128
    return-void
.end method

.method public native mergeMp4Files([Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native reEncodeMp4FilesCancel(J)I
.end method

.method public native reEncodeMp4FilesCreateHandle([Ljava/lang/String;[Ljava/lang/String;DI)J
.end method

.method public native reEncodeMp4FilesFinish(J)I
.end method

.method public native reEncodeMp4FilesStart(J)I
.end method

.method public native setFirstAudioFrameTimeStamp(J)I
.end method
