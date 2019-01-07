.class public Lali/mmpc/pwp/PwpClient;
.super Ljava/lang/Object;
.source "PwpClient.java"

# interfaces
.implements Lali/mmpc/pwp/LogCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lali/mmpc/pwp/PwpClient$DrawTask;,
        Lali/mmpc/pwp/PwpClient$getCodecOutThread;,
        Lali/mmpc/pwp/PwpClient$MediaProjectionStopCallback;,
        Lali/mmpc/pwp/PwpClient$ImageAvailableListener;,
        Lali/mmpc/pwp/PwpClient$PWPProjectionState;,
        Lali/mmpc/pwp/PwpClient$CODEC_TYPE;,
        Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;
    }
.end annotation


# static fields
.field private static final LOG_TAG_PWP:Ljava/lang/String; = "mmpc_pwp"

.field private static final OUTPUT_TIMEOUT_US:J = 0x9c40L

.field private static final SCREENCAP_TAG:Ljava/lang/String; = "screencap"

.field private static final VIRTUAL_DISPLAY_FLAGS:I = 0x9

.field private static instance:Lali/mmpc/pwp/PwpClient;

.field private static mediaProjection:Landroid/media/projection/MediaProjection;


# instance fields
.field private final AVC_NALU_START_CODE_PREFIX_LENGTH:I

.field private final IMAGE_FORMAT:I

.field private final MAX_FRAME_LENGHT_BYTE:I

.field private final NALU_TYPE_AUD:B

.field private final NALU_TYPE_IDR:B

.field private final NALU_TYPE_PPS:B

.field private final NALU_TYPE_SEI:B

.field private final NALU_TYPE_SPS:B

.field private final OMX_Video_ControlRateConstant:I

.field private final OMX_Video_ControlRateConstantSkipFrames:I

.field private final OMX_Video_ControlRateDisable:I

.field private final OMX_Video_ControlRateVariable:I

.field private final OMX_Video_ControlRateVariableSkipFrames:I

.field private codec:Landroid/media/MediaCodec;

.field private codecOutputBuffers:[Ljava/nio/ByteBuffer;

.field private codecTypeUsed:Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

.field private context:Landroid/content/Context;

.field private csdBitsBuffer:[B

.field private frameBuffer:Ljava/nio/ByteBuffer;

.field private frameData:[B

.field private frameSize:I

.field private getCodecOutThread:Ljava/lang/Thread;

.field private lastIdrFrameTimeMs:J

.field private mDensity:I

.field private mDisplay:Landroid/view/Display;

.field private mEncHeight:I

.field private mEncWidth:I

.field private mImageReader:Landroid/media/ImageReader;

.field private volatile mIsRecording:Z

.field private mLogcallback:Lali/mmpc/pwp/LogCallback;

.field private mMaxBitRate:I

.field private mMaxFrameRate:I

.field private mMediaProjectionStopCallback:Lali/mmpc/pwp/PwpClient$MediaProjectionStopCallback;

.field private mMinBitRate:I

.field private mProjectionManager:Landroid/media/projection/MediaProjectionManager;

.field private mScreenCaptureTask:Lali/mmpc/pwp/PwpClient$DrawTask;

.field private mScreenCaptureThread:Ljava/lang/Thread;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mStartBitRate:I

.field private mSurfaceEncoder:Landroid/view/Surface;

.field private final mSync:Ljava/lang/Object;

.field private mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

.field private pwpClientNative:Lali/mmpc/pwp/PwpClientNative;

.field private pwpProjectionState:Lali/mmpc/pwp/PwpClient$PWPProjectionState;

.field private quitEncode:Z

.field private final requestIdrFrameIntervalMs:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 84
    sput-object v0, Lali/mmpc/pwp/PwpClient;->mediaProjection:Landroid/media/projection/MediaProjection;

    .line 149
    sput-object v0, Lali/mmpc/pwp/PwpClient;->instance:Lali/mmpc/pwp/PwpClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object v2, p0, Lali/mmpc/pwp/PwpClient;->context:Landroid/content/Context;

    .line 81
    iput-object v2, p0, Lali/mmpc/pwp/PwpClient;->pwpClientNative:Lali/mmpc/pwp/PwpClientNative;

    .line 83
    iput-object v2, p0, Lali/mmpc/pwp/PwpClient;->mProjectionManager:Landroid/media/projection/MediaProjectionManager;

    .line 97
    const/16 v0, 0x19

    iput v0, p0, Lali/mmpc/pwp/PwpClient;->mMaxFrameRate:I

    .line 101
    iput v3, p0, Lali/mmpc/pwp/PwpClient;->IMAGE_FORMAT:I

    .line 102
    iput-object v2, p0, Lali/mmpc/pwp/PwpClient;->frameData:[B

    .line 104
    iput-boolean v1, p0, Lali/mmpc/pwp/PwpClient;->quitEncode:Z

    .line 105
    iput-object v2, p0, Lali/mmpc/pwp/PwpClient;->codec:Landroid/media/MediaCodec;

    .line 106
    iput-object v2, p0, Lali/mmpc/pwp/PwpClient;->getCodecOutThread:Ljava/lang/Thread;

    .line 107
    iput-object v2, p0, Lali/mmpc/pwp/PwpClient;->mScreenCaptureThread:Ljava/lang/Thread;

    .line 110
    iput v4, p0, Lali/mmpc/pwp/PwpClient;->AVC_NALU_START_CODE_PREFIX_LENGTH:I

    .line 111
    const/4 v0, 0x5

    iput-byte v0, p0, Lali/mmpc/pwp/PwpClient;->NALU_TYPE_IDR:B

    .line 112
    const/4 v0, 0x6

    iput-byte v0, p0, Lali/mmpc/pwp/PwpClient;->NALU_TYPE_SEI:B

    .line 113
    const/4 v0, 0x7

    iput-byte v0, p0, Lali/mmpc/pwp/PwpClient;->NALU_TYPE_SPS:B

    .line 114
    const/16 v0, 0x8

    iput-byte v0, p0, Lali/mmpc/pwp/PwpClient;->NALU_TYPE_PPS:B

    .line 115
    const/16 v0, 0x9

    iput-byte v0, p0, Lali/mmpc/pwp/PwpClient;->NALU_TYPE_AUD:B

    .line 118
    iput v1, p0, Lali/mmpc/pwp/PwpClient;->OMX_Video_ControlRateDisable:I

    .line 119
    iput v3, p0, Lali/mmpc/pwp/PwpClient;->OMX_Video_ControlRateVariable:I

    .line 120
    const/4 v0, 0x2

    iput v0, p0, Lali/mmpc/pwp/PwpClient;->OMX_Video_ControlRateConstant:I

    .line 121
    const/4 v0, 0x3

    iput v0, p0, Lali/mmpc/pwp/PwpClient;->OMX_Video_ControlRateVariableSkipFrames:I

    .line 122
    iput v4, p0, Lali/mmpc/pwp/PwpClient;->OMX_Video_ControlRateConstantSkipFrames:I

    .line 124
    const/high16 v0, 0x200000

    iput v0, p0, Lali/mmpc/pwp/PwpClient;->MAX_FRAME_LENGHT_BYTE:I

    .line 128
    iput-object v2, p0, Lali/mmpc/pwp/PwpClient;->csdBitsBuffer:[B

    .line 138
    sget-object v0, Lali/mmpc/pwp/PwpClient$PWPProjectionState;->PWP_PROJECTION_STATE_UNINITED:Lali/mmpc/pwp/PwpClient$PWPProjectionState;

    iput-object v0, p0, Lali/mmpc/pwp/PwpClient;->pwpProjectionState:Lali/mmpc/pwp/PwpClient$PWPProjectionState;

    .line 140
    iput-object v2, p0, Lali/mmpc/pwp/PwpClient;->mSurfaceEncoder:Landroid/view/Surface;

    .line 142
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lali/mmpc/pwp/PwpClient;->mSync:Ljava/lang/Object;

    .line 144
    iput-object v2, p0, Lali/mmpc/pwp/PwpClient;->mScreenCaptureTask:Lali/mmpc/pwp/PwpClient$DrawTask;

    .line 145
    iput-object v2, p0, Lali/mmpc/pwp/PwpClient;->mMediaProjectionStopCallback:Lali/mmpc/pwp/PwpClient$MediaProjectionStopCallback;

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lali/mmpc/pwp/PwpClient;->lastIdrFrameTimeMs:J

    .line 147
    const/16 v0, 0x3e8

    iput v0, p0, Lali/mmpc/pwp/PwpClient;->requestIdrFrameIntervalMs:I

    .line 150
    sget-object v0, Lali/mmpc/pwp/PwpClient$CODEC_TYPE;->INDIRECT_MEDIACODEC:Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

    iput-object v0, p0, Lali/mmpc/pwp/PwpClient;->codecTypeUsed:Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

    .line 151
    iput-object v2, p0, Lali/mmpc/pwp/PwpClient;->mLogcallback:Lali/mmpc/pwp/LogCallback;

    .line 171
    iput-object p0, p0, Lali/mmpc/pwp/PwpClient;->mLogcallback:Lali/mmpc/pwp/LogCallback;

    .line 172
    return-void
.end method

.method static synthetic access$000(Lali/mmpc/pwp/PwpClient;)[B
    .locals 1
    .param p0, "x0"    # Lali/mmpc/pwp/PwpClient;

    .prologue
    .line 57
    iget-object v0, p0, Lali/mmpc/pwp/PwpClient;->frameData:[B

    return-object v0
.end method

.method static synthetic access$002(Lali/mmpc/pwp/PwpClient;[B)[B
    .locals 0
    .param p0, "x0"    # Lali/mmpc/pwp/PwpClient;
    .param p1, "x1"    # [B

    .prologue
    .line 57
    iput-object p1, p0, Lali/mmpc/pwp/PwpClient;->frameData:[B

    return-object p1
.end method

.method static synthetic access$100(Lali/mmpc/pwp/PwpClient;)I
    .locals 1
    .param p0, "x0"    # Lali/mmpc/pwp/PwpClient;

    .prologue
    .line 57
    iget v0, p0, Lali/mmpc/pwp/PwpClient;->mEncWidth:I

    return v0
.end method

.method static synthetic access$1000(Lali/mmpc/pwp/PwpClient;)[Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "x0"    # Lali/mmpc/pwp/PwpClient;

    .prologue
    .line 57
    iget-object v0, p0, Lali/mmpc/pwp/PwpClient;->codecOutputBuffers:[Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static synthetic access$1002(Lali/mmpc/pwp/PwpClient;[Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;
    .locals 0
    .param p0, "x0"    # Lali/mmpc/pwp/PwpClient;
    .param p1, "x1"    # [Ljava/nio/ByteBuffer;

    .prologue
    .line 57
    iput-object p1, p0, Lali/mmpc/pwp/PwpClient;->codecOutputBuffers:[Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method static synthetic access$1100(Lali/mmpc/pwp/PwpClient;)[B
    .locals 1
    .param p0, "x0"    # Lali/mmpc/pwp/PwpClient;

    .prologue
    .line 57
    iget-object v0, p0, Lali/mmpc/pwp/PwpClient;->csdBitsBuffer:[B

    return-object v0
.end method

.method static synthetic access$1102(Lali/mmpc/pwp/PwpClient;[B)[B
    .locals 0
    .param p0, "x0"    # Lali/mmpc/pwp/PwpClient;
    .param p1, "x1"    # [B

    .prologue
    .line 57
    iput-object p1, p0, Lali/mmpc/pwp/PwpClient;->csdBitsBuffer:[B

    return-object p1
.end method

.method static synthetic access$1200(Lali/mmpc/pwp/PwpClient;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "x0"    # Lali/mmpc/pwp/PwpClient;

    .prologue
    .line 57
    iget-object v0, p0, Lali/mmpc/pwp/PwpClient;->frameBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static synthetic access$1300(Lali/mmpc/pwp/PwpClient;)I
    .locals 1
    .param p0, "x0"    # Lali/mmpc/pwp/PwpClient;

    .prologue
    .line 57
    iget v0, p0, Lali/mmpc/pwp/PwpClient;->frameSize:I

    return v0
.end method

.method static synthetic access$1302(Lali/mmpc/pwp/PwpClient;I)I
    .locals 0
    .param p0, "x0"    # Lali/mmpc/pwp/PwpClient;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lali/mmpc/pwp/PwpClient;->frameSize:I

    return p1
.end method

.method static synthetic access$1400(Lali/mmpc/pwp/PwpClient;)Landroid/view/Surface;
    .locals 1
    .param p0, "x0"    # Lali/mmpc/pwp/PwpClient;

    .prologue
    .line 57
    iget-object v0, p0, Lali/mmpc/pwp/PwpClient;->mSurfaceEncoder:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$1502(Lali/mmpc/pwp/PwpClient;Landroid/hardware/display/VirtualDisplay;)Landroid/hardware/display/VirtualDisplay;
    .locals 0
    .param p0, "x0"    # Lali/mmpc/pwp/PwpClient;
    .param p1, "x1"    # Landroid/hardware/display/VirtualDisplay;

    .prologue
    .line 57
    iput-object p1, p0, Lali/mmpc/pwp/PwpClient;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    return-object p1
.end method

.method static synthetic access$1600(Lali/mmpc/pwp/PwpClient;)I
    .locals 1
    .param p0, "x0"    # Lali/mmpc/pwp/PwpClient;

    .prologue
    .line 57
    iget v0, p0, Lali/mmpc/pwp/PwpClient;->mDensity:I

    return v0
.end method

.method static synthetic access$1700()Landroid/media/projection/MediaProjection;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lali/mmpc/pwp/PwpClient;->mediaProjection:Landroid/media/projection/MediaProjection;

    return-object v0
.end method

.method static synthetic access$1800(Lali/mmpc/pwp/PwpClient;)Z
    .locals 1
    .param p0, "x0"    # Lali/mmpc/pwp/PwpClient;

    .prologue
    .line 57
    iget-boolean v0, p0, Lali/mmpc/pwp/PwpClient;->mIsRecording:Z

    return v0
.end method

.method static synthetic access$1900(Lali/mmpc/pwp/PwpClient;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lali/mmpc/pwp/PwpClient;

    .prologue
    .line 57
    iget-object v0, p0, Lali/mmpc/pwp/PwpClient;->mSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lali/mmpc/pwp/PwpClient;)I
    .locals 1
    .param p0, "x0"    # Lali/mmpc/pwp/PwpClient;

    .prologue
    .line 57
    iget v0, p0, Lali/mmpc/pwp/PwpClient;->mEncHeight:I

    return v0
.end method

.method static synthetic access$2100(Lali/mmpc/pwp/PwpClient;)I
    .locals 1
    .param p0, "x0"    # Lali/mmpc/pwp/PwpClient;

    .prologue
    .line 57
    iget v0, p0, Lali/mmpc/pwp/PwpClient;->mMaxFrameRate:I

    return v0
.end method

.method static synthetic access$300(Lali/mmpc/pwp/PwpClient;)Lali/mmpc/pwp/PwpClientNative;
    .locals 1
    .param p0, "x0"    # Lali/mmpc/pwp/PwpClient;

    .prologue
    .line 57
    iget-object v0, p0, Lali/mmpc/pwp/PwpClient;->pwpClientNative:Lali/mmpc/pwp/PwpClientNative;

    return-object v0
.end method

.method static synthetic access$400(Lali/mmpc/pwp/PwpClient;)Lali/mmpc/pwp/LogCallback;
    .locals 1
    .param p0, "x0"    # Lali/mmpc/pwp/PwpClient;

    .prologue
    .line 57
    iget-object v0, p0, Lali/mmpc/pwp/PwpClient;->mLogcallback:Lali/mmpc/pwp/LogCallback;

    return-object v0
.end method

.method static synthetic access$800(Lali/mmpc/pwp/PwpClient;)Z
    .locals 1
    .param p0, "x0"    # Lali/mmpc/pwp/PwpClient;

    .prologue
    .line 57
    iget-boolean v0, p0, Lali/mmpc/pwp/PwpClient;->quitEncode:Z

    return v0
.end method

.method static synthetic access$900(Lali/mmpc/pwp/PwpClient;)Landroid/media/MediaCodec;
    .locals 1
    .param p0, "x0"    # Lali/mmpc/pwp/PwpClient;

    .prologue
    .line 57
    iget-object v0, p0, Lali/mmpc/pwp/PwpClient;->codec:Landroid/media/MediaCodec;

    return-object v0
.end method

.method public static getInstance()Lali/mmpc/pwp/PwpClient;
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lali/mmpc/pwp/PwpClient;->instance:Lali/mmpc/pwp/PwpClient;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lali/mmpc/pwp/PwpClient;

    invoke-direct {v0}, Lali/mmpc/pwp/PwpClient;-><init>()V

    sput-object v0, Lali/mmpc/pwp/PwpClient;->instance:Lali/mmpc/pwp/PwpClient;

    .line 162
    :cond_0
    sget-object v0, Lali/mmpc/pwp/PwpClient;->instance:Lali/mmpc/pwp/PwpClient;

    return-object v0
.end method

.method private isNativeLogFileExists()Z
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 702
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v7, Lali/mmpc/util/MmpcGlobal;->MMPC_NATIVE_LOG_PATH:Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 703
    .local v0, "destFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 722
    .end local v0    # "destFile":Ljava/io/File;
    :cond_0
    :goto_0
    return v5

    .line 706
    .restart local v0    # "destFile":Ljava/io/File;
    :cond_1
    sget-object v7, Lali/mmpc/util/MmpcGlobal;->MMPC_NATIVE_LOG_PATH:Ljava/lang/String;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 707
    .local v4, "index":I
    if-ltz v4, :cond_0

    .line 708
    sget-object v7, Lali/mmpc/util/MmpcGlobal;->MMPC_NATIVE_LOG_PATH:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 709
    .local v1, "dir":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 710
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 711
    .local v2, "dirFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 712
    if-eqz v0, :cond_0

    .line 713
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 719
    .end local v0    # "destFile":Ljava/io/File;
    .end local v1    # "dir":Ljava/lang/String;
    .end local v2    # "dirFile":Ljava/io/File;
    .end local v4    # "index":I
    :catch_0
    move-exception v3

    .line 720
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move v5, v6

    .line 722
    goto :goto_0
.end method

.method private listComponentsName()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 660
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v3

    .line 661
    .local v3, "numCodecs":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 662
    invoke-static {v0}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v1

    .line 663
    .local v1, "info":Landroid/media/MediaCodecInfo;
    if-eqz v1, :cond_0

    .line 667
    iget-object v5, p0, Lali/mmpc/pwp/PwpClient;->mLogcallback:Lali/mmpc/pwp/LogCallback;

    sget-object v6, Lali/mmpc/pwp/LogCallback$LogLevel;->LOG_LEVEL_DEBUG:Lali/mmpc/pwp/LogCallback$LogLevel;

    const-string/jumbo v7, "mmpc_pwp"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "OMX component["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "], name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v6, v7, v8}, Lali/mmpc/pwp/LogCallback;->LogPrint(Lali/mmpc/pwp/LogCallback$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    .line 670
    .local v4, "types":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    array-length v5, v4

    if-ge v2, v5, :cond_0

    .line 671
    iget-object v5, p0, Lali/mmpc/pwp/PwpClient;->mLogcallback:Lali/mmpc/pwp/LogCallback;

    sget-object v6, Lali/mmpc/pwp/LogCallback$LogLevel;->LOG_LEVEL_DEBUG:Lali/mmpc/pwp/LogCallback$LogLevel;

    const-string/jumbo v7, "mmpc_pwp"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "  component support type["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "], type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v4, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v6, v7, v8}, Lali/mmpc/pwp/LogCallback;->LogPrint(Lali/mmpc/pwp/LogCallback$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 661
    .end local v2    # "j":I
    .end local v4    # "types":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 674
    .end local v1    # "info":Landroid/media/MediaCodecInfo;
    :cond_1
    return-void
.end method

.method private onCapturedScreenFrame([BIIII)V
    .locals 6
    .param p1, "data"    # [B
    .param p2, "len"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "frameFormat"    # I

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 513
    iget-object v0, p0, Lali/mmpc/pwp/PwpClient;->pwpClientNative:Lali/mmpc/pwp/PwpClientNative;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lali/mmpc/pwp/PwpClientNative;->onCapturedScreenFrame([BIIII)V

    .line 514
    return-void
.end method

.method private requestIdrFrame()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 533
    iget-object v4, p0, Lali/mmpc/pwp/PwpClient;->mLogcallback:Lali/mmpc/pwp/LogCallback;

    sget-object v5, Lali/mmpc/pwp/LogCallback$LogLevel;->LOG_LEVEL_WARNING:Lali/mmpc/pwp/LogCallback$LogLevel;

    const-string/jumbo v6, "mmpc_pwp"

    const-string/jumbo v7, "mediacodec requestIdrFrame"

    invoke-interface {v4, v5, v6, v7}, Lali/mmpc/pwp/LogCallback;->LogPrint(Lali/mmpc/pwp/LogCallback$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object v4, p0, Lali/mmpc/pwp/PwpClient;->codec:Landroid/media/MediaCodec;

    if-eqz v4, :cond_0

    .line 536
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 537
    .local v2, "nowMs":J
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_0

    iget-object v4, p0, Lali/mmpc/pwp/PwpClient;->codec:Landroid/media/MediaCodec;

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lali/mmpc/pwp/PwpClient;->lastIdrFrameTimeMs:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 538
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 539
    .local v1, "params":Landroid/os/Bundle;
    const-string/jumbo v4, "request-sync"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 540
    iget-object v4, p0, Lali/mmpc/pwp/PwpClient;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v4, v1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 541
    iput-wide v2, p0, Lali/mmpc/pwp/PwpClient;->lastIdrFrameTimeMs:J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    .end local v1    # "params":Landroid/os/Bundle;
    .end local v2    # "nowMs":J
    :cond_0
    :goto_0
    return-void

    .line 543
    :catch_0
    move-exception v0

    .line 544
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v4, p0, Lali/mmpc/pwp/PwpClient;->mLogcallback:Lali/mmpc/pwp/LogCallback;

    sget-object v5, Lali/mmpc/pwp/LogCallback$LogLevel;->LOG_LEVEL_ERROR:Lali/mmpc/pwp/LogCallback$LogLevel;

    const-string/jumbo v6, "mmpc_pwp"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "requestIdrFrame occur exception: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lali/mmpc/pwp/LogCallback;->LogPrint(Lali/mmpc/pwp/LogCallback$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private searchOmxEncoderName()Ljava/lang/String;
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 678
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v3

    .line 679
    .local v3, "numCodecs":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 680
    invoke-static {v0}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v1

    .line 681
    .local v1, "info":Landroid/media/MediaCodecInfo;
    iget-object v5, p0, Lali/mmpc/pwp/PwpClient;->mLogcallback:Lali/mmpc/pwp/LogCallback;

    sget-object v6, Lali/mmpc/pwp/LogCallback$LogLevel;->LOG_LEVEL_DEBUG:Lali/mmpc/pwp/LogCallback$LogLevel;

    const-string/jumbo v7, "mmpc_pwp"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "OMX component["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "], name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v6, v7, v8}, Lali/mmpc/pwp/LogCallback;->LogPrint(Lali/mmpc/pwp/LogCallback$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 685
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    .line 686
    .local v4, "types":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    array-length v5, v4

    if-ge v2, v5, :cond_1

    .line 687
    aget-object v5, v4, v2

    const-string/jumbo v6, "video/avc"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 688
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "OMX."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 689
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "OMX.GOOGLE."

    .line 690
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 692
    iget-object v5, p0, Lali/mmpc/pwp/PwpClient;->mLogcallback:Lali/mmpc/pwp/LogCallback;

    sget-object v6, Lali/mmpc/pwp/LogCallback$LogLevel;->LOG_LEVEL_DEBUG:Lali/mmpc/pwp/LogCallback$LogLevel;

    const-string/jumbo v7, "mmpc_pwp"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "found OMX encoder component, name: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v6, v7, v8}, Lali/mmpc/pwp/LogCallback;->LogPrint(Lali/mmpc/pwp/LogCallback$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v5

    .line 697
    .end local v1    # "info":Landroid/media/MediaCodecInfo;
    .end local v2    # "j":I
    .end local v4    # "types":[Ljava/lang/String;
    :goto_2
    return-object v5

    .line 686
    .restart local v1    # "info":Landroid/media/MediaCodecInfo;
    .restart local v2    # "j":I
    .restart local v4    # "types":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 679
    .end local v2    # "j":I
    .end local v4    # "types":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 697
    .end local v1    # "info":Landroid/media/MediaCodecInfo;
    :cond_2
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public static setInstance(Lali/mmpc/pwp/PwpClient;)V
    .locals 0
    .param p0, "instance"    # Lali/mmpc/pwp/PwpClient;

    .prologue
    .line 166
    sput-object p0, Lali/mmpc/pwp/PwpClient;->instance:Lali/mmpc/pwp/PwpClient;

    .line 167
    return-void
.end method

.method private setRates(II)V
    .locals 7
    .param p1, "bitRate"    # I
    .param p2, "frameRate"    # I

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 517
    iget-object v2, p0, Lali/mmpc/pwp/PwpClient;->mLogcallback:Lali/mmpc/pwp/LogCallback;

    sget-object v3, Lali/mmpc/pwp/LogCallback$LogLevel;->LOG_LEVEL_INFO:Lali/mmpc/pwp/LogCallback$LogLevel;

    const-string/jumbo v4, "mmpc_pwp"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setRates, bitRate:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", frameRate:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lali/mmpc/pwp/LogCallback;->LogPrint(Lali/mmpc/pwp/LogCallback$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    iput p2, p0, Lali/mmpc/pwp/PwpClient;->mMaxFrameRate:I

    .line 519
    iget-object v2, p0, Lali/mmpc/pwp/PwpClient;->codec:Landroid/media/MediaCodec;

    if-eqz v2, :cond_0

    .line 521
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 522
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 523
    .local v1, "params":Landroid/os/Bundle;
    const-string/jumbo v2, "video-bitrate"

    mul-int/lit16 v3, p1, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 524
    iget-object v2, p0, Lali/mmpc/pwp/PwpClient;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    .end local v1    # "params":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 526
    :catch_0
    move-exception v0

    .line 527
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v2, p0, Lali/mmpc/pwp/PwpClient;->mLogcallback:Lali/mmpc/pwp/LogCallback;

    sget-object v3, Lali/mmpc/pwp/LogCallback$LogLevel;->LOG_LEVEL_ERROR:Lali/mmpc/pwp/LogCallback$LogLevel;

    const-string/jumbo v4, "mmpc_pwp"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setRates occur exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lali/mmpc/pwp/LogCallback;->LogPrint(Lali/mmpc/pwp/LogCallback$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public LogPrint(Lali/mmpc/pwp/LogCallback$LogLevel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "level"    # Lali/mmpc/pwp/LogCallback$LogLevel;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    .line 856
    sget-object v0, Lali/mmpc/pwp/LogCallback$LogLevel;->LOG_LEVEL_DEBUG:Lali/mmpc/pwp/LogCallback$LogLevel;

    if-eq p1, v0, :cond_0

    .line 858
    sget-object v0, Lali/mmpc/pwp/LogCallback$LogLevel;->LOG_LEVEL_INFO:Lali/mmpc/pwp/LogCallback$LogLevel;

    if-eq p1, v0, :cond_0

    .line 860
    sget-object v0, Lali/mmpc/pwp/LogCallback$LogLevel;->LOG_LEVEL_WARNING:Lali/mmpc/pwp/LogCallback$LogLevel;

    if-ne p1, v0, :cond_1

    .line 861
    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    :cond_0
    :goto_0
    return-void

    .line 862
    :cond_1
    sget-object v0, Lali/mmpc/pwp/LogCallback$LogLevel;->LOG_LEVEL_ERROR:Lali/mmpc/pwp/LogCallback$LogLevel;

    if-ne p1, v0, :cond_0

    .line 863
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public changePeerRenderLayout(Lali/mmpc/pwp/RenderLayout;)I
    .locals 5
    .param p1, "peerRenderLayout"    # Lali/mmpc/pwp/RenderLayout;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 550
    iget-object v0, p0, Lali/mmpc/pwp/PwpClient;->mLogcallback:Lali/mmpc/pwp/LogCallback;

    sget-object v1, Lali/mmpc/pwp/LogCallback$LogLevel;->LOG_LEVEL_DEBUG:Lali/mmpc/pwp/LogCallback$LogLevel;

    const-string/jumbo v2, "mmpc_pwp"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "changePeerRenderLayout peerRenderLayout="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lali/mmpc/pwp/LogCallback;->LogPrint(Lali/mmpc/pwp/LogCallback$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lali/mmpc/pwp/PwpClient;->pwpClientNative:Lali/mmpc/pwp/PwpClientNative;

    invoke-virtual {v0, p1}, Lali/mmpc/pwp/PwpClientNative;->changePeerRenderLayout(Lali/mmpc/pwp/RenderLayout;)I

    move-result v0

    return v0
.end method

.method public getNativeLogDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lali/mmpc/util/MmpcGlobal;->MMPC_NATIVE_LOG_PATH:Ljava/lang/String;

    return-object v0
.end method

.method public init(Lali/mmpc/pwp/PwpClientCallback;Landroid/content/Context;Landroid/view/Display;)V
    .locals 7
    .param p1, "pwpClientCallback"    # Lali/mmpc/pwp/PwpClientCallback;
    .param p2, "applicationContext"    # Landroid/content/Context;
    .param p3, "display"    # Landroid/view/Display;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lali/mmpc/interfaces/ConferenceException;
        }
    .end annotation

    .prologue
    .line 186
    iget-object v2, p0, Lali/mmpc/pwp/PwpClient;->mLogcallback:Lali/mmpc/pwp/LogCallback;

    sget-object v3, Lali/mmpc/pwp/LogCallback$LogLevel;->LOG_LEVEL_DEBUG:Lali/mmpc/pwp/LogCallback$LogLevel;

    const-string/jumbo v4, "mmpc_pwp"

    const-string/jumbo v5, "init"

    invoke-interface {v2, v3, v4, v5}, Lali/mmpc/pwp/LogCallback;->LogPrint(Lali/mmpc/pwp/LogCallback$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v2, p0, Lali/mmpc/pwp/PwpClient;->pwpProjectionState:Lali/mmpc/pwp/PwpClient$PWPProjectionState;

    sget-object v3, Lali/mmpc/pwp/PwpClient$PWPProjectionState;->PWP_PROJECTION_STATE_UNINITED:Lali/mmpc/pwp/PwpClient$PWPProjectionState;

    if-eq v2, v3, :cond_0

    .line 188
    iget-object v2, p0, Lali/mmpc/pwp/PwpClient;->mLogcallback:Lali/mmpc/pwp/LogCallback;

    sget-object v3, Lali/mmpc/pwp/LogCallback$LogLevel;->LOG_LEVEL_ERROR:Lali/mmpc/pwp/LogCallback$LogLevel;

    const-string/jumbo v4, "mmpc_pwp"

    const-string/jumbo v5, "current pwpProjectionState is not PWP_PROJECTION_STATE_UNINITED, will not init"

    invoke-interface {v2, v3, v4, v5}, Lali/mmpc/pwp/LogCallback;->LogPrint(Lali/mmpc/pwp/LogCallback$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v2, p0, Lali/mmpc/pwp/PwpClient;->mLogcallback:Lali/mmpc/pwp/LogCallback;

    sget-object v3, Lali/mmpc/pwp/LogCallback$LogLevel;->LOG_LEVEL_DEBUG:Lali/mmpc/pwp/LogCallback$LogLevel;

    const-string/jumbo v4, "mmpc_pwp"

    const-string/jumbo v5, "init pwp client"

    invoke-interface {v2, v3, v4, v5}, Lali/mmpc/pwp/LogCallback;->LogPrint(Lali/mmpc/pwp/LogCallback$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string/jumbo v2, "pwp_client"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 204
    iput-object p2, p0, Lali/mmpc/pwp/PwpClient;->context:Landroid/content/Context;

    .line 207
    iget-object v2, p0, Lali/mmpc/pwp/PwpClient;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 208
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, p0, Lali/mmpc/pwp/PwpClient;->mDensity:I

    .line 211
    iput-object p3, p0, Lali/mmpc/pwp/PwpClient;->mDisplay:Landroid/view/Display;

    .line 212
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 213
    .local v1, "size":Landroid/graphics/Point;
    iget-object v2, p0, Lali/mmpc/pwp/PwpClient;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 214
    iget v2, v1, Landroid/graphics/Point;->x:I

    iput v2, p0, Lali/mmpc/pwp/PwpClient;->mScreenWidth:I

    .line 215
    iget v2, v1, Landroid/graphics/Point;->y:I

    iput v2, p0, Lali/mmpc/pwp/PwpClient;->mScreenHeight:I

    .line 217
    iget-object v2, p0, Lali/mmpc/pwp/PwpClient;->mLogcallback:Lali/mmpc/pwp/LogCallback;

    sget-object v3, Lali/mmpc/pwp/LogCallback$LogLevel;->LOG_LEVEL_DEBUG:Lali/mmpc/pwp/LogCallback$LogLevel;

    const-string/jumbo v4, "mmpc_pwp"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "original display width:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lali/mmpc/pwp/PwpClient;->mScreenWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", height:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lali/mmpc/pwp/PwpClient;->mScreenHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lali/mmpc/pwp/LogCallback;->LogPrint(Lali/mmpc/pwp/LogCallback$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v2, p0, Lali/mmpc/pwp/PwpClient;->mLogcallback:Lali/mmpc/pwp/LogCallback;

    sget-object v3, Lali/mmpc/pwp/LogCallback$LogLevel;->LOG_LEVEL_DEBUG:Lali/mmpc/pwp/LogCallback$LogLevel;

    const-string/jumbo v4, "mmpc_pwp"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "native log path:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lali/mmpc/util/MmpcGlobal;->MMPC_NATIVE_LOG_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lali/mmpc/pwp/LogCallback;->LogPrint(Lali/mmpc/pwp/LogCallback$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-direct {p0}, Lali/mmpc/pwp/PwpClient;->isNativeLogFileExists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 221
    sget-object v2, Lali/mmpc/util/MmpcGlobal;->MMPC_NATIVE_LOG_PATH:Ljava/lang/String;

    invoke-static {v2}, Lali/mmpc/pwp/PwpClientNative;->enableMmpcNativeLog(Ljava/lang/String;)Z

    .line 224
    :cond_1
    new-instance v2, Lali/mmpc/pwp/PwpClientNative;

    iget v3, p0, Lali/mmpc/pwp/PwpClient;->mScreenWidth:I

    iget v4, p0, Lali/mmpc/pwp/PwpClient;->mScreenHeight:I

    invoke-direct {v2, p1, p0, v3, v4}, Lali/mmpc/pwp/PwpClientNative;-><init>(Lali/mmpc/pwp/PwpClientCallback;Lali/mmpc/pwp/PwpClient;II)V

    iput-object v2, p0, Lali/mmpc/pwp/PwpClient;->pwpClientNative:Lali/mmpc/pwp/PwpClientNative;

    .line 226
    iget-object v2, p0, Lali/mmpc/pwp/PwpClient;->context:Landroid/content/Context;

    const-string/jumbo v3, "media_projection"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/projection/MediaProjectionManager;

    iput-object v2, p0, Lali/mmpc/pwp/PwpClient;->mProjectionManager:Landroid/media/projection/MediaProjectionManager;

    .line 228
    const/high16 v2, 0x200000

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lali/mmpc/pwp/PwpClient;->frameBuffer:Ljava/nio/ByteBuffer;

    .line 230
    sget-object v2, Lali/mmpc/pwp/PwpClient$PWPProjectionState;->PWP_PROJECTION_STATE_INITED:Lali/mmpc/pwp/PwpClient$PWPProjectionState;

    iput-object v2, p0, Lali/mmpc/pwp/PwpClient;->pwpProjectionState:Lali/mmpc/pwp/PwpClient$PWPProjectionState;

    goto/16 :goto_0
.end method

.method public requestProjection(Ljava/lang/String;Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;Lali/mmpc/pwp/PwpClient$CODEC_TYPE;)I
    .locals 9
    .param p1, "verfCode"    # Ljava/lang/String;
    .param p2, "adaptionStrategy"    # Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;
    .param p3, "codecType"    # Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/16 v5, 0x1388

    const/4 v8, -0x1

    .line 297
    iget-object v0, p0, Lali/mmpc/pwp/PwpClient;->mLogcallback:Lali/mmpc/pwp/LogCallback;

    sget-object v1, Lali/mmpc/pwp/LogCallback$LogLevel;->LOG_LEVEL_DEBUG:Lali/mmpc/pwp/LogCallback$LogLevel;

    const-string/jumbo v2, "mmpc_pwp"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "requestProjection verfCode:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", adaptionStrategy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", codecType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lali/mmpc/pwp/LogCallback;->LogPrint(Lali/mmpc/pwp/LogCallback$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 299
    iget-object v0, p0, Lali/mmpc/pwp/PwpClient;->mLogcallback:Lali/mmpc/pwp/LogCallback;

    sget-object v1, Lali/mmpc/pwp/LogCallback$LogLevel;->LOG_LEVEL_ERROR:Lali/mmpc/pwp/LogCallback$LogLevel;

    const-string/jumbo v2, "mmpc_pwp"

    const-string/jumbo v3, "verfCode is wrong!"

    invoke-interface {v0, v1, v2, v3}, Lali/mmpc/pwp/LogCallback;->LogPrint(Lali/mmpc/pwp/LogCallback$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :goto_0
    return v8

    .line 308
    :cond_0
    sget-object v0, Lali/mmpc/pwp/PwpClient;->instance:Lali/mmpc/pwp/PwpClient;

    if-nez v0, :cond_1

    .line 309
    iget-object v0, p0, Lali/mmpc/pwp/PwpClient;->mLogcallback:Lali/mmpc/pwp/LogCallback;

    sget-object v1, Lali/mmpc/pwp/LogCallback$LogLevel;->LOG_LEVEL_ERROR:Lali/mmpc/pwp/LogCallback$LogLevel;

    const-string/jumbo v2, "mmpc_pwp"

    const-string/jumbo v3, "instance is null"

    invoke-interface {v0, v1, v2, v3}, Lali/mmpc/pwp/LogCallback;->LogPrint(Lali/mmpc/pwp/LogCallback$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 313
    :cond_1
    iget-object v0, p0, Lali/mmpc/pwp/PwpClient;->pwpProjectionState:Lali/mmpc/pwp/PwpClient$PWPProjectionState;

    sget-object v1, Lali/mmpc/pwp/PwpClient$PWPProjectionState;->PWP_PROJECTION_STATE_UNINITED:Lali/mmpc/pwp/PwpClient$PWPProjectionState;

    if-ne v0, v1, :cond_2

    .line 314
    iget-object v0, p0, Lali/mmpc/pwp/PwpClient;->mLogcallback:Lali/mmpc/pwp/LogCallback;

    sget-object v1, Lali/mmpc/pwp/LogCallback$LogLevel;->LOG_LEVEL_ERROR:Lali/mmpc/pwp/LogCallback$LogLevel;

    const-string/jumbo v2, "mmpc_pwp"

    const-string/jumbo v3, "current pwpProjectionState is PWP_PROJECTION_STATE_UNINITED,should init first"

    invoke-interface {v0, v1, v2, v3}, Lali/mmpc/pwp/LogCallback;->LogPrint(Lali/mmpc/pwp/LogCallback$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 316
    :cond_2
    iget-object v0, p0, Lali/mmpc/pwp/PwpClient;->pwpProjectionState:Lali/mmpc/pwp/PwpClient$PWPProjectionState;

    sget-object v1, Lali/mmpc/pwp/PwpClient$PWPProjectionState;->PWP_PROJECTION_STATE_REQUESTED:Lali/mmpc/pwp/PwpClient$PWPProjectionState;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lali/mmpc/pwp/PwpClient;->pwpProjectionState:Lali/mmpc/pwp/PwpClient$PWPProjectionState;

    sget-object v1, Lali/mmpc/pwp/PwpClient$PWPProjectionState;->PWP_PROJECTION_STATE_STARTED:Lali/mmpc/pwp/PwpClient$PWPProjectionState;

    if-ne v0, v1, :cond_4

    .line 318
    :cond_3
    iget-object v0, p0, Lali/mmpc/pwp/PwpClient;->mLogcallback:Lali/mmpc/pwp/LogCallback;

    sget-object v1, Lali/mmpc/pwp/LogCallback$LogLevel;->LOG_LEVEL_ERROR:Lali/mmpc/pwp/LogCallback$LogLevel;

    const-string/jumbo v2, "mmpc_pwp"

    const-string/jumbo v3, "current pwpProjectionState is PWP_PROJECTION_STATE_REQUESTED or PWP_PROJECTION_STATE_STARTED,we will stop first"

    invoke-interface {v0, v1, v2, v3}, Lali/mmpc/pwp/LogCallback;->LogPrint(Lali/mmpc/pwp/LogCallback$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0}, Lali/mmpc/pwp/PwpClient;->stopScreenCapture()I

    .line 322
    :cond_4
    iget v0, p0, Lali/mmpc/pwp/PwpClient;->mScreenWidth:I

    iget v1, p0, Lali/mmpc/pwp/PwpClient;->mScreenHeight:I

    mul-int/2addr v0, v1

    const v1, 0xe1000

    if-le v0, v1, :cond_5

    sget-object v0, Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;->CLARITY_FIRST:Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

    if-ne p2, v0, :cond_5

    sget-object v0, Lali/mmpc/pwp/PwpClient$CODEC_TYPE;->SOFTWARE_CODEC:Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

    if-eq p3, v0, :cond_5

    .line 324
    const/16 v0, 0x780

    iput v0, p0, Lali/mmpc/pwp/PwpClient;->mEncWidth:I

    .line 325
    const/16 v0, 0x438

    iput v0, p0, Lali/mmpc/pwp/PwpClient;->mEncHeight:I

    .line 326
    const/16 v0, 0x320

    iput v0, p0, Lali/mmpc/pwp/PwpClient;->mMinBitRate:I

    .line 327
    iput v5, p0, Lali/mmpc/pwp/PwpClient;->mStartBitRate:I

    .line 328
    const/16 v0, 0x1b58

    iput v0, p0, Lali/mmpc/pwp/PwpClient;->mMaxBitRate:I

    .line 337
    :goto_1
    iget-object v0, p0, Lali/mmpc/pwp/PwpClient;->pwpClientNative:Lali/mmpc/pwp/PwpClientNative;

    invoke-virtual {p2}, Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;->ordinal()I

    move-result v2

    invoke-virtual {p3}, Lali/mmpc/pwp/PwpClient$CODEC_TYPE;->ordinal()I

    move-result v3

    iget v4, p0, Lali/mmpc/pwp/PwpClient;->mMinBitRate:I

    iget v5, p0, Lali/mmpc/pwp/PwpClient;->mStartBitRate:I

    iget v6, p0, Lali/mmpc/pwp/PwpClient;->mMaxBitRate:I

    iget v7, p0, Lali/mmpc/pwp/PwpClient;->mMaxFrameRate:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lali/mmpc/pwp/PwpClientNative;->startScreenCapture(Ljava/lang/String;IIIIII)I

    move-result v8

    .line 338
    .local v8, "ret":I
    iput-object p3, p0, Lali/mmpc/pwp/PwpClient;->codecTypeUsed:Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

    .line 339
    sget-object v0, Lali/mmpc/pwp/PwpClient$PWPProjectionState;->PWP_PROJECTION_STATE_REQUESTED:Lali/mmpc/pwp/PwpClient$PWPProjectionState;

    iput-object v0, p0, Lali/mmpc/pwp/PwpClient;->pwpProjectionState:Lali/mmpc/pwp/PwpClient$PWPProjectionState;

    goto/16 :goto_0

    .line 330
    .end local v8    # "ret":I
    :cond_5
    const/16 v0, 0x500

    iput v0, p0, Lali/mmpc/pwp/PwpClient;->mEncWidth:I

    .line 331
    const/16 v0, 0x2d0

    iput v0, p0, Lali/mmpc/pwp/PwpClient;->mEncHeight:I

    .line 332
    const/16 v0, 0x258

    iput v0, p0, Lali/mmpc/pwp/PwpClient;->mMinBitRate:I

    .line 333
    const/16 v0, 0xbb8

    iput v0, p0, Lali/mmpc/pwp/PwpClient;->mStartBitRate:I

    .line 334
    iput v5, p0, Lali/mmpc/pwp/PwpClient;->mMaxBitRate:I

    goto :goto_1
.end method

.method public setJavaLogcallback(Lali/mmpc/pwp/LogCallback;)V
    .locals 0
    .param p1, "logcallback"    # Lali/mmpc/pwp/LogCallback;

    .prologue
    .line 175
    if-eqz p1, :cond_0

    .line 176
    iput-object p1, p0, Lali/mmpc/pwp/PwpClient;->mLogcallback:Lali/mmpc/pwp/LogCallback;

    .line 178
    :cond_0
    return-void
.end method

.method public startScreenCapture(Landroid/content/Intent;)V
    .locals 16
    .param p1, "screenCaptureIntent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 344
    move-object/from16 v0, p0

    iget-object v1, v0, Lali/mmpc/pwp/PwpClient;->mLogcallback:Lali/mmpc/pwp/LogCallback;

    sget-object v2, Lali/mmpc/pwp/LogCallback$LogLevel;->LOG_LEVEL_DEBUG:Lali/mmpc/pwp/LogCallback$LogLevel;

    const-string/jumbo v3, "mmpc_pwp"

    const-string/jumbo v4, "startScreenCapture"

    invoke-interface {v1, v2, v3, v4}, Lali/mmpc/pwp/LogCallback;->LogPrint(Lali/mmpc/pwp/LogCallback$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    sget-object v1, Lali/mmpc/pwp/PwpClient;->instance:Lali/mmpc/pwp/PwpClient;

    if-nez v1, :cond_1

    .line 347
    move-object/from16 v0, p0

    iget-object v1, v0, Lali/mmpc/pwp/PwpClient;->mLogcallback:Lali/mmpc/pwp/LogCallback;

    sget-object v2, Lali/mmpc/pwp/LogCallback$LogLevel;->LOG_LEVEL_ERROR:Lali/mmpc/pwp/LogCallback$LogLevel;

    const-string/jumbo v3, "mmpc_pwp"

    const-string/jumbo v4, "instance is null"

    invoke-interface {v1, v2, v3, v4}, Lali/mmpc/pwp/LogCallback;->LogPrint(Lali/mmpc/pwp/LogCallback$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lali/mmpc/pwp/PwpClient;->pwpProjectionState:Lali/mmpc/pwp/PwpClient$PWPProjectionState;

    sget-object v2, Lali/mmpc/pwp/PwpClient$PWPProjectionState;->PWP_PROJECTION_STATE_REQUESTED:Lali/mmpc/pwp/PwpClient$PWPProjectionState;

    if-eq v1, v2, :cond_2

    .line 352
    move-object/from16 v0, p0

    iget-object v1, v0, Lali/mmpc/pwp/PwpClient;->mLogcallback:Lali/mmpc/pwp/LogCallback;

    sget-object v2, Lali/mmpc/pwp/LogCallback$LogLevel;->LOG_LEVEL_ERROR:Lali/mmpc/pwp/LogCallback$LogLevel;

    const-string/jumbo v3, "mmpc_pwp"

    const-string/jumbo v4, "current pwpProjectionState is not PWP_PROJECTION_STATE_REQUESTED, will not startScreenCapture"

    invoke-interface {v1, v2, v3, v4}, Lali/mmpc/pwp/LogCallback;->LogPrint(Lali/mmpc/pwp/LogCallback$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 356
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lali/mmpc/pwp/PwpClient;->mProjectionManager:Landroid/media/projection/MediaProjectionManager;

    const/4 v2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v1, v2, v0}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object v1

    .line 358
    sput-object v1, Lali/mmpc/pwp/PwpClient;->mediaProjection:Landroid/media/projection/MediaProjection;

    if-eqz v1, :cond_0

    .line 359
    move-object/from16 v0, p0

    iget-object v1, v0, Lali/mmpc/pwp/PwpClient;->codecTypeUsed:Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

    sget-object v2, Lali/mmpc/pwp/PwpClient$CODEC_TYPE;->SOFTWARE_CODEC:Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

    if-ne v1, v2, :cond_4

    .line 360
    move-object/from16 v0, p0

    iget v1, v0, Lali/mmpc/pwp/PwpClient;->mEncWidth:I

    move-object/from16 v0, p0

    iget v2, v0, Lali/mmpc/pwp/PwpClient;->mEncHeight:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lali/mmpc/pwp/PwpClient;->mImageReader:Landroid/media/ImageReader;

    .line 361
    sget-object v1, Lali/mmpc/pwp/PwpClient;->mediaProjection:Landroid/media/projection/MediaProjection;

    const-string/jumbo v2, "screencap"

    move-object/from16 v0, p0

    iget v3, v0, Lali/mmpc/pwp/PwpClient;->mEncWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lali/mmpc/pwp/PwpClient;->mEncHeight:I

    move-object/from16 v0, p0

    iget v5, v0, Lali/mmpc/pwp/PwpClient;->mDensity:I

    const/16 v6, 0x9

    move-object/from16 v0, p0

    iget-object v7, v0, Lali/mmpc/pwp/PwpClient;->mImageReader:Landroid/media/ImageReader;

    .line 362
    invoke-virtual {v7}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 361
    invoke-virtual/range {v1 .. v9}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lali/mmpc/pwp/PwpClient;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 363
    move-object/from16 v0, p0

    iget-object v1, v0, Lali/mmpc/pwp/PwpClient;->mImageReader:Landroid/media/ImageReader;

    new-instance v2, Lali/mmpc/pwp/PwpClient$ImageAvailableListener;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lali/mmpc/pwp/PwpClient$ImageAvailableListener;-><init>(Lali/mmpc/pwp/PwpClient;Lali/mmpc/pwp/PwpClient$1;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 437
    :cond_3
    :goto_1
    new-instance v1, Lali/mmpc/pwp/PwpClient$MediaProjectionStopCallback;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lali/mmpc/pwp/PwpClient$MediaProjectionStopCallback;-><init>(Lali/mmpc/pwp/PwpClient;Lali/mmpc/pwp/PwpClient$1;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lali/mmpc/pwp/PwpClient;->mMediaProjectionStopCallback:Lali/mmpc/pwp/PwpClient$MediaProjectionStopCallback;

    .line 438
    sget-object v1, Lali/mmpc/pwp/PwpClient;->mediaProjection:Landroid/media/projection/MediaProjection;

    move-object/from16 v0, p0

    iget-object v2, v0, Lali/mmpc/pwp/PwpClient;->mMediaProjectionStopCallback:Lali/mmpc/pwp/PwpClient$MediaProjectionStopCallback;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/projection/MediaProjection;->registerCallback(Landroid/media/projection/MediaProjection$Callback;Landroid/os/Handler;)V

    .line 440
    sget-object v1, Lali/mmpc/pwp/PwpClient$PWPProjectionState;->PWP_PROJECTION_STATE_STARTED:Lali/mmpc/pwp/PwpClient$PWPProjectionState;

    move-object/from16 v0, p0

    iput-object v1, v0, Lali/mmpc/pwp/PwpClient;->pwpProjectionState:Lali/mmpc/pwp/PwpClient$PWPProjectionState;

    goto/16 :goto_0

    .line 367
    :cond_4
    invoke-static {}, Lali/mmpc/util/MmpcUtils;->getProductBrandTypeString()Ljava/lang/String;

    move-result-object v11

    .line 368
    .local v11, "deviceBrand":Ljava/lang/String;
    invoke-static {}, Lali/mmpc/util/MmpcUtils;->getProductBrandName()Ljava/lang/String;

    move-result-object v12

    .line 369
    .local v12, "deviceName":Ljava/lang/String;
    invoke-static {}, Lali/mmpc/util/MmpcUtils;->getCpuInfoHardware()Ljava/lang/String;

    move-result-object v10

    .line 371
    .local v10, "cpuHardware":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lali/mmpc/pwp/PwpClient;->mLogcallback:Lali/mmpc/pwp/LogCallback;

    sget-object v2, Lali/mmpc/pwp/LogCallback$LogLevel;->LOG_LEVEL_DEBUG:Lali/mmpc/pwp/LogCallback$LogLevel;

    const-string/jumbo v3, "mmpc_pwp"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "device info, deviceBrand:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", deviceName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", cpuHardware:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lali/mmpc/pwp/LogCallback;->LogPrint(Lali/mmpc/pwp/LogCallback$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-direct/range {p0 .. p0}, Lali/mmpc/pwp/PwpClient;->listComponentsName()V

    .line 375
    invoke-direct/range {p0 .. p0}, Lali/mmpc/pwp/PwpClient;->searchOmxEncoderName()Ljava/lang/String;

    move-result-object v15

    .line 376
    .local v15, "omxEncoderName":Ljava/lang/String;
    if-nez v15, :cond_5

    .line 377
    move-object/from16 v0, p0

    iget-object v1, v0, Lali/mmpc/pwp/PwpClient;->mLogcallback:Lali/mmpc/pwp/LogCallback;

    sget-object v2, Lali/mmpc/pwp/LogCallback$LogLevel;->LOG_LEVEL_ERROR:Lali/mmpc/pwp/LogCallback$LogLevel;

    const-string/jumbo v3, "mmpc_pwp"

    const-string/jumbo v4, "can not found encoder!!!"

    invoke-interface {v1, v2, v3, v4}, Lali/mmpc/pwp/LogCallback;->LogPrint(Lali/mmpc/pwp/LogCallback$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 381
    :cond_5
    const-string/jumbo v1, "video/avc"

    move-object/from16 v0, p0

    iget v2, v0, Lali/mmpc/pwp/PwpClient;->mEncWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lali/mmpc/pwp/PwpClient;->mEncHeight:I

    invoke-static {v1, v2, v3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v14

    .line 382
    .local v14, "format":Landroid/media/MediaFormat;
    const-string/jumbo v1, "color-format"

    const v2, 0x7f000789

    invoke-virtual {v14, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 383
    const-string/jumbo v1, "bitrate"

    move-object/from16 v0, p0

    iget v2, v0, Lali/mmpc/pwp/PwpClient;->mStartBitRate:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v14, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 384
    const-string/jumbo v1, "frame-rate"

    move-object/from16 v0, p0

    iget v2, v0, Lali/mmpc/pwp/PwpClient;->mMaxFrameRate:I

    invoke-virtual {v14, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 385
    const-string/jumbo v1, "capture-rate"

    move-object/from16 v0, p0

    iget v2, v0, Lali/mmpc/pwp/PwpClient;->mMaxFrameRate:I

    invoke-virtual {v14, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 386
    const-string/jumbo v1, "operating-rate"

    move-object/from16 v0, p0

    iget v2, v0, Lali/mmpc/pwp/PwpClient;->mMaxFrameRate:I

    invoke-virtual {v14, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 387
    const-string/jumbo v1, "repeat-previous-frame-after"

    const v2, 0xf4240

    move-object/from16 v0, p0

    iget v3, v0, Lali/mmpc/pwp/PwpClient;->mMaxFrameRate:I

    div-int/2addr v2, v3

    invoke-virtual {v14, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 388
    const-string/jumbo v1, "priority"

    const/4 v2, 0x0

    invoke-virtual {v14, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 389
    const-string/jumbo v1, "bitrate-mode"

    const/4 v2, 0x2

    invoke-virtual {v14, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 390
    const-string/jumbo v1, "max-bitrate"

    move-object/from16 v0, p0

    iget v2, v0, Lali/mmpc/pwp/PwpClient;->mMaxBitRate:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v14, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 391
    const-string/jumbo v1, "i-frame-interval"

    const/16 v2, 0xa

    invoke-virtual {v14, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 400
    :try_start_0
    invoke-static {v15}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lali/mmpc/pwp/PwpClient;->codec:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lali/mmpc/pwp/PwpClient;->codec:Landroid/media/MediaCodec;

    if-nez v1, :cond_6

    .line 406
    move-object/from16 v0, p0

    iget-object v1, v0, Lali/mmpc/pwp/PwpClient;->mLogcallback:Lali/mmpc/pwp/LogCallback;

    sget-object v2, Lali/mmpc/pwp/LogCallback$LogLevel;->LOG_LEVEL_ERROR:Lali/mmpc/pwp/LogCallback$LogLevel;

    const-string/jumbo v3, "mmpc_pwp"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "codec create failed!omxEncoderName:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lali/mmpc/pwp/LogCallback;->LogPrint(Lali/mmpc/pwp/LogCallback$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 401
    :catch_0
    move-exception v13

    .line 402
    .local v13, "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 410
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lali/mmpc/pwp/PwpClient;->mLogcallback:Lali/mmpc/pwp/LogCallback;

    sget-object v2, Lali/mmpc/pwp/LogCallback$LogLevel;->LOG_LEVEL_DEBUG:Lali/mmpc/pwp/LogCallback$LogLevel;

    const-string/jumbo v3, "mmpc_pwp"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "MediaCodec name:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lali/mmpc/pwp/PwpClient;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", configure format info:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lali/mmpc/pwp/LogCallback;->LogPrint(Lali/mmpc/pwp/LogCallback$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    move-object/from16 v0, p0

    iget-object v1, v0, Lali/mmpc/pwp/PwpClient;->codec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v14, v2, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 413
    move-object/from16 v0, p0

    iget-object v1, v0, Lali/mmpc/pwp/PwpClient;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lali/mmpc/pwp/PwpClient;->mSurfaceEncoder:Landroid/view/Surface;

    .line 415
    move-object/from16 v0, p0

    iget-object v1, v0, Lali/mmpc/pwp/PwpClient;->codecTypeUsed:Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

    sget-object v2, Lali/mmpc/pwp/PwpClient$CODEC_TYPE;->DIRECT_MEDIACODEC:Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

    if-ne v1, v2, :cond_7

    .line 416
    sget-object v1, Lali/mmpc/pwp/PwpClient;->mediaProjection:Landroid/media/projection/MediaProjection;

    const-string/jumbo v2, "screencap"

    move-object/from16 v0, p0

    iget v3, v0, Lali/mmpc/pwp/PwpClient;->mEncWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lali/mmpc/pwp/PwpClient;->mEncHeight:I

    move-object/from16 v0, p0

    iget v5, v0, Lali/mmpc/pwp/PwpClient;->mDensity:I

    const/16 v6, 0x9

    move-object/from16 v0, p0

    iget-object v7, v0, Lali/mmpc/pwp/PwpClient;->mSurfaceEncoder:Landroid/view/Surface;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lali/mmpc/pwp/PwpClient;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 421
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lali/mmpc/pwp/PwpClient;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 422
    move-object/from16 v0, p0

    iget-object v1, v0, Lali/mmpc/pwp/PwpClient;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lali/mmpc/pwp/PwpClient;->codecOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 424
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lali/mmpc/pwp/PwpClient;->quitEncode:Z

    .line 426
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lali/mmpc/pwp/PwpClient$getCodecOutThread;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lali/mmpc/pwp/PwpClient$getCodecOutThread;-><init>(Lali/mmpc/pwp/PwpClient;Lali/mmpc/pwp/PwpClient$1;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lali/mmpc/pwp/PwpClient;->getCodecOutThread:Ljava/lang/Thread;

    .line 427
    move-object/from16 v0, p0

    iget-object v1, v0, Lali/mmpc/pwp/PwpClient;->getCodecOutThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 429
    move-object/from16 v0, p0

    iget-object v1, v0, Lali/mmpc/pwp/PwpClient;->codecTypeUsed:Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

    sget-object v2, Lali/mmpc/pwp/PwpClient$CODEC_TYPE;->INDIRECT_MEDIACODEC:Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

    if-ne v1, v2, :cond_3

    .line 430
    new-instance v1, Lali/mmpc/pwp/PwpClient$DrawTask;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2, v3}, Lali/mmpc/pwp/PwpClient$DrawTask;-><init>(Lali/mmpc/pwp/PwpClient;Ljfz$b;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lali/mmpc/pwp/PwpClient;->mScreenCaptureTask:Lali/mmpc/pwp/PwpClient$DrawTask;

    .line 431
    new-instance v1, Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v2, v0, Lali/mmpc/pwp/PwpClient;->mScreenCaptureTask:Lali/mmpc/pwp/PwpClient$DrawTask;

    const-string/jumbo v3, "ScreenCaptureThread"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lali/mmpc/pwp/PwpClient;->mScreenCaptureThread:Ljava/lang/Thread;

    .line 432
    move-object/from16 v0, p0

    iget-object v1, v0, Lali/mmpc/pwp/PwpClient;->mScreenCaptureThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 433
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lali/mmpc/pwp/PwpClient;->mIsRecording:Z

    goto/16 :goto_1
.end method

.method public stopScreenCapture()I
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 445
    iget-object v2, p0, Lali/mmpc/pwp/PwpClient;->mLogcallback:Lali/mmpc/pwp/LogCallback;

    sget-object v3, Lali/mmpc/pwp/LogCallback$LogLevel;->LOG_LEVEL_DEBUG:Lali/mmpc/pwp/LogCallback$LogLevel;

    const-string/jumbo v4, "mmpc_pwp"

    const-string/jumbo v5, "stopScreenCapture"

    invoke-interface {v2, v3, v4, v5}, Lali/mmpc/pwp/LogCallback;->LogPrint(Lali/mmpc/pwp/LogCallback$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    sget-object v2, Lali/mmpc/pwp/PwpClient;->instance:Lali/mmpc/pwp/PwpClient;

    if-nez v2, :cond_0

    .line 448
    iget-object v2, p0, Lali/mmpc/pwp/PwpClient;->mLogcallback:Lali/mmpc/pwp/LogCallback;

    sget-object v3, Lali/mmpc/pwp/LogCallback$LogLevel;->LOG_LEVEL_ERROR:Lali/mmpc/pwp/LogCallback$LogLevel;

    const-string/jumbo v4, "mmpc_pwp"

    const-string/jumbo v5, "instance is null"

    invoke-interface {v2, v3, v4, v5}, Lali/mmpc/pwp/LogCallback;->LogPrint(Lali/mmpc/pwp/LogCallback$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const/4 v1, -0x1

    .line 509
    :goto_0
    return v1

    .line 452
    :cond_0
    iget-object v2, p0, Lali/mmpc/pwp/PwpClient;->pwpProjectionState:Lali/mmpc/pwp/PwpClient$PWPProjectionState;

    sget-object v3, Lali/mmpc/pwp/PwpClient$PWPProjectionState;->PWP_PROJECTION_STATE_STARTED:Lali/mmpc/pwp/PwpClient$PWPProjectionState;

    if-eq v2, v3, :cond_1

    .line 453
    iget-object v2, p0, Lali/mmpc/pwp/PwpClient;->mLogcallback:Lali/mmpc/pwp/LogCallback;

    sget-object v3, Lali/mmpc/pwp/LogCallback$LogLevel;->LOG_LEVEL_ERROR:Lali/mmpc/pwp/LogCallback$LogLevel;

    const-string/jumbo v4, "mmpc_pwp"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "current pwpProjectionState is not PWP_PROJECTION_STATE_STARTED, stop anyway, current state:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lali/mmpc/pwp/PwpClient;->pwpProjectionState:Lali/mmpc/pwp/PwpClient$PWPProjectionState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lali/mmpc/pwp/LogCallback;->LogPrint(Lali/mmpc/pwp/LogCallback$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    :cond_1
    iget-object v2, p0, Lali/mmpc/pwp/PwpClient;->codecTypeUsed:Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

    sget-object v3, Lali/mmpc/pwp/PwpClient$CODEC_TYPE;->SOFTWARE_CODEC:Lali/mmpc/pwp/PwpClient$CODEC_TYPE;

    if-ne v2, v3, :cond_2

    .line 459
    iget-object v2, p0, Lali/mmpc/pwp/PwpClient;->mImageReader:Landroid/media/ImageReader;

    if-eqz v2, :cond_2

    .line 460
    iget-object v2, p0, Lali/mmpc/pwp/PwpClient;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v2, v7, v7}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 461
    iget-object v2, p0, Lali/mmpc/pwp/PwpClient;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->close()V

    .line 462
    iput-object v7, p0, Lali/mmpc/pwp/PwpClient;->mImageReader:Landroid/media/ImageReader;

    .line 466
    :cond_2
    iget-object v2, p0, Lali/mmpc/pwp/PwpClient;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v2, :cond_3

    .line 467
    iget-object v2, p0, Lali/mmpc/pwp/PwpClient;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v2}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 468
    iput-object v7, p0, Lali/mmpc/pwp/PwpClient;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 471
    :cond_3
    sget-object v2, Lali/mmpc/pwp/PwpClient;->mediaProjection:Landroid/media/projection/MediaProjection;

    if-eqz v2, :cond_5

    .line 472
    iget-object v2, p0, Lali/mmpc/pwp/PwpClient;->mMediaProjectionStopCallback:Lali/mmpc/pwp/PwpClient$MediaProjectionStopCallback;

    if-eqz v2, :cond_4

    .line 473
    sget-object v2, Lali/mmpc/pwp/PwpClient;->mediaProjection:Landroid/media/projection/MediaProjection;

    iget-object v3, p0, Lali/mmpc/pwp/PwpClient;->mMediaProjectionStopCallback:Lali/mmpc/pwp/PwpClient$MediaProjectionStopCallback;

    invoke-virtual {v2, v3}, Landroid/media/projection/MediaProjection;->unregisterCallback(Landroid/media/projection/MediaProjection$Callback;)V

    .line 475
    :cond_4
    sget-object v2, Lali/mmpc/pwp/PwpClient;->mediaProjection:Landroid/media/projection/MediaProjection;

    invoke-virtual {v2}, Landroid/media/projection/MediaProjection;->stop()V

    .line 476
    sput-object v7, Lali/mmpc/pwp/PwpClient;->mediaProjection:Landroid/media/projection/MediaProjection;

    .line 479
    :cond_5
    const/4 v2, 0x1

    iput-boolean v2, p0, Lali/mmpc/pwp/PwpClient;->quitEncode:Z

    .line 481
    :try_start_0
    iget-object v2, p0, Lali/mmpc/pwp/PwpClient;->getCodecOutThread:Ljava/lang/Thread;

    if-eqz v2, :cond_6

    .line 482
    iget-object v2, p0, Lali/mmpc/pwp/PwpClient;->getCodecOutThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    :cond_6
    :goto_1
    iget-object v3, p0, Lali/mmpc/pwp/PwpClient;->mSync:Ljava/lang/Object;

    monitor-enter v3

    .line 489
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lali/mmpc/pwp/PwpClient;->mIsRecording:Z

    .line 490
    iget-object v2, p0, Lali/mmpc/pwp/PwpClient;->mSync:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 491
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 493
    iget-object v2, p0, Lali/mmpc/pwp/PwpClient;->mScreenCaptureTask:Lali/mmpc/pwp/PwpClient$DrawTask;

    if-eqz v2, :cond_7

    .line 494
    iget-object v2, p0, Lali/mmpc/pwp/PwpClient;->mScreenCaptureTask:Lali/mmpc/pwp/PwpClient$DrawTask;

    invoke-virtual {v2}, Lali/mmpc/pwp/PwpClient$DrawTask;->release()V

    .line 497
    :cond_7
    iget-object v2, p0, Lali/mmpc/pwp/PwpClient;->pwpClientNative:Lali/mmpc/pwp/PwpClientNative;

    invoke-virtual {v2}, Lali/mmpc/pwp/PwpClientNative;->stopScreenCapture()I

    move-result v1

    .line 499
    .local v1, "ret":I
    iget-object v2, p0, Lali/mmpc/pwp/PwpClient;->codec:Landroid/media/MediaCodec;

    if-eqz v2, :cond_8

    .line 500
    iget-object v2, p0, Lali/mmpc/pwp/PwpClient;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V

    .line 501
    iget-object v2, p0, Lali/mmpc/pwp/PwpClient;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    .line 502
    iput-object v7, p0, Lali/mmpc/pwp/PwpClient;->codec:Landroid/media/MediaCodec;

    .line 505
    :cond_8
    iput-object v7, p0, Lali/mmpc/pwp/PwpClient;->csdBitsBuffer:[B

    .line 506
    iput-object v7, p0, Lali/mmpc/pwp/PwpClient;->frameData:[B

    .line 508
    sget-object v2, Lali/mmpc/pwp/PwpClient$PWPProjectionState;->PWP_PROJECTION_STATE_STOPED:Lali/mmpc/pwp/PwpClient$PWPProjectionState;

    iput-object v2, p0, Lali/mmpc/pwp/PwpClient;->pwpProjectionState:Lali/mmpc/pwp/PwpClient$PWPProjectionState;

    goto/16 :goto_0

    .line 484
    .end local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 485
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 491
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public terminate()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 282
    iget-object v0, p0, Lali/mmpc/pwp/PwpClient;->mLogcallback:Lali/mmpc/pwp/LogCallback;

    sget-object v1, Lali/mmpc/pwp/LogCallback$LogLevel;->LOG_LEVEL_DEBUG:Lali/mmpc/pwp/LogCallback$LogLevel;

    const-string/jumbo v2, "mmpc_pwp"

    const-string/jumbo v3, "terminate"

    invoke-interface {v0, v1, v2, v3}, Lali/mmpc/pwp/LogCallback;->LogPrint(Lali/mmpc/pwp/LogCallback$LogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    sget-object v0, Lali/mmpc/pwp/PwpClient;->instance:Lali/mmpc/pwp/PwpClient;

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lali/mmpc/pwp/PwpClient;->stopScreenCapture()I

    .line 291
    sget-object v0, Lali/mmpc/pwp/PwpClient$PWPProjectionState;->PWP_PROJECTION_STATE_UNINITED:Lali/mmpc/pwp/PwpClient$PWPProjectionState;

    iput-object v0, p0, Lali/mmpc/pwp/PwpClient;->pwpProjectionState:Lali/mmpc/pwp/PwpClient$PWPProjectionState;

    .line 292
    const/4 v0, 0x0

    sput-object v0, Lali/mmpc/pwp/PwpClient;->instance:Lali/mmpc/pwp/PwpClient;

    .line 294
    :cond_0
    return-void
.end method
