.class public Lcom/alivc/component/encoder/VideoCodecEncoder;
.super Ljava/lang/Object;
.source "VideoCodecEncoder.java"


# annotations
.annotation runtime Lcom/alivc/component/encoder/NativeUsed;
.end annotation


# static fields
.field public static final ERROR_API_LEVEL:I = 0x10003100

.field public static final ERROR_INPUT_BUFFER_ERROR:I = 0x10003102

.field public static final ERROR_NO_BUFFER_AVAILABLE:I = 0x10003103

.field public static final ERROR_STATE:I = 0x10003101

.field public static final OK:I = 0x0

.field private static final STATE_ENCODING:I = 0x2

.field private static final STATE_INITIALIZED:I = 0x1

.field private static final STATE_UNINITIALIZED:I

.field public static final SUPPORTED_COLOR_FORMATS:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private encodeFormat:I

.field inputCount:I

.field private mMediaCodec:Landroid/media/MediaCodec;

.field private mOutputBuffers:[Ljava/nio/ByteBuffer;

.field private mOutputCount:I

.field private mState:I

.field private useHighProfile:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alivc/component/encoder/VideoCodecEncoder;->SUPPORTED_COLOR_FORMATS:[I

    .line 44
    const-class v0, Lcom/alivc/component/encoder/VideoCodecEncoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alivc/component/encoder/VideoCodecEncoder;->TAG:Ljava/lang/String;

    return-void

    .line 30
    nop

    :array_0
    .array-data 4
        0x15
        0x27
        0x13
        0x14
        0x7f000100
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v1, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mState:I

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->encodeFormat:I

    .line 52
    iput v1, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mOutputCount:I

    .line 57
    iput-boolean v1, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->useHighProfile:Z

    .line 302
    iput v1, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->inputCount:I

    return-void
.end method

.method private static isRecognizedFormat(I)Z
    .locals 1
    .param p0, "colorFormat"    # I

    .prologue
    .line 481
    sparse-switch p0, :sswitch_data_0

    .line 490
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 488
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 481
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x27 -> :sswitch_0
        0x7f000100 -> :sswitch_0
    .end sparse-switch
.end method

.method private selectCodecInfo(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 6
    .param p1, "mimeType"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 440
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v3

    .line 441
    .local v3, "numCodecs":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 442
    invoke-static {v1}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 444
    .local v0, "codecInfo":Landroid/media/MediaCodecInfo;
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 448
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    .line 449
    .local v4, "types":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    array-length v5, v4

    if-ge v2, v5, :cond_1

    .line 450
    aget-object v5, v4, v2

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 455
    .end local v0    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v2    # "j":I
    .end local v4    # "types":[Ljava/lang/String;
    :goto_2
    return-object v0

    .line 449
    .restart local v0    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v2    # "j":I
    .restart local v4    # "types":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 441
    .end local v2    # "j":I
    .end local v4    # "types":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 455
    .end local v0    # "codecInfo":Landroid/media/MediaCodecInfo;
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private static selectColorFormat(Landroid/media/MediaCodecInfo;ZLjava/lang/String;)I
    .locals 4
    .param p0, "codecInfo"    # Landroid/media/MediaCodecInfo;
    .param p1, "inputSurface"    # Z
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 465
    if-eqz p1, :cond_1

    .line 466
    const v1, 0x7f000789

    .line 474
    :cond_0
    :goto_0
    return v1

    .line 467
    :cond_1
    invoke-virtual {p0, p2}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    .line 468
    .local v0, "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 469
    iget-object v3, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    aget v1, v3, v2

    .line 470
    .local v1, "colorFormat":I
    invoke-static {v1}, Lcom/alivc/component/encoder/VideoCodecEncoder;->isRecognizedFormat(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 468
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 474
    .end local v1    # "colorFormat":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createInputSurface()Landroid/view/Surface;
    .locals 4
    .annotation runtime Lcom/alivc/component/encoder/NativeUsed;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 272
    iget-object v2, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_0

    .line 274
    :try_start_0
    iget-object v2, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 282
    :goto_0
    return-object v1

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 277
    sget-object v2, Lcom/alivc/component/encoder/VideoCodecEncoder;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "create surface input failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 281
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    sget-object v2, Lcom/alivc/component/encoder/VideoCodecEncoder;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "not support surface input"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public init(Ljava/lang/String;Landroid/media/MediaFormat;ZI)I
    .locals 31
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "format"    # Landroid/media/MediaFormat;
    .param p3, "inputSurface"    # Z
    .param p4, "gopSize"    # I
    .annotation runtime Lcom/alivc/component/encoder/NativeUsed;
    .end annotation

    .prologue
    .line 65
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mState:I

    move/from16 v26, v0

    if-nez v26, :cond_13

    .line 67
    const/16 v26, 0x0

    :try_start_0
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alivc/component/encoder/VideoCodecEncoder;->mOutputCount:I

    .line 68
    invoke-direct/range {p0 .. p1}, Lcom/alivc/component/encoder/VideoCodecEncoder;->selectCodecInfo(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v9

    .line 69
    .local v9, "codecInfo":Landroid/media/MediaCodecInfo;
    if-nez v9, :cond_0

    .line 70
    new-instance v26, Ljava/lang/StringBuilder;

    const-string/jumbo v27, "not supported mime type ("

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, ")"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const/16 v26, -0x1

    .line 266
    .end local v9    # "codecInfo":Landroid/media/MediaCodecInfo;
    :goto_0
    return v26

    .line 73
    .restart local v9    # "codecInfo":Landroid/media/MediaCodecInfo;
    :cond_0
    sget-object v26, Lcom/alivc/component/encoder/VideoCodecEncoder;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string/jumbo v28, "Create MediaCodec "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {v9}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alivc/component/encoder/VideoCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 85
    sget-object v26, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v27, "Pixel XL"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_1

    sget-object v26, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v27, "LON-AL00"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_1

    sget-object v26, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v27, "VTR-AL00"

    .line 86
    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_1

    sget-object v26, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v27, "MHA-AL00"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_1

    sget-object v26, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v27, "VKY-AL00"

    .line 87
    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_1

    sget-object v26, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v27, "STF-AL00"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_1

    sget-object v26, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v27, "SM-N9108V"

    .line 88
    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_1

    sget-object v26, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v27, "SM-G9008V"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_1

    sget-object v26, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v27, "SM-G9500"

    .line 89
    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_1

    sget-object v26, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v27, "SM-G9006V"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 90
    :cond_1
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alivc/component/encoder/VideoCodecEncoder;->useHighProfile:Z

    .line 93
    :cond_2
    const/16 v21, 0x0

    .line 94
    .local v21, "selectedProfile":I
    const/16 v20, 0x0

    .line 95
    .local v20, "selectedLevel":I
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v15, "highlineLevels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v6, "baselineLevels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v8

    .line 98
    .local v8, "cap":Landroid/media/MediaCodecInfo$CodecCapabilities;
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    iget-object v0, v8, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v16

    move/from16 v1, v26

    if-ge v0, v1, :cond_4

    .line 99
    iget-object v0, v8, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-object/from16 v26, v0

    aget-object v19, v26, v16

    .line 100
    .local v19, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    move/from16 v26, v0

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_7

    .line 102
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alivc/component/encoder/VideoCodecEncoder;->useHighProfile:Z

    move/from16 v26, v0

    if-eqz v26, :cond_3

    .line 103
    move-object/from16 v0, v19

    iget v0, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    move/from16 v21, v0

    .line 105
    :cond_3
    move-object/from16 v0, v19

    iget v0, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alivc/component/encoder/VideoCodecEncoder;->useHighProfile:Z

    move/from16 v26, v0

    if-eqz v26, :cond_7

    move-object/from16 v0, v19

    iget v0, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    move/from16 v26, v0

    const/16 v27, 0x200

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_7

    .line 108
    move-object/from16 v0, v19

    iget v0, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    move/from16 v20, v0

    .line 125
    .end local v19    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_4
    :goto_2
    if-eqz v21, :cond_5

    if-nez v20, :cond_5

    .line 127
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alivc/component/encoder/VideoCodecEncoder;->useHighProfile:Z

    move/from16 v26, v0

    if-eqz v26, :cond_a

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v26

    if-lez v26, :cond_a

    .line 128
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 133
    :cond_5
    :goto_3
    if-nez v21, :cond_6

    iget-object v0, v8, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    if-lez v26, :cond_6

    .line 135
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alivc/component/encoder/VideoCodecEncoder;->useHighProfile:Z

    move/from16 v26, v0

    if-eqz v26, :cond_c

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v26

    if-lez v26, :cond_c

    .line 136
    const/16 v21, 0x1

    .line 137
    const/16 v26, 0x200

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_b

    .line 139
    const/16 v20, 0x200

    .line 157
    :cond_6
    :goto_4
    iget-object v0, v8, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    if-gtz v26, :cond_f

    .line 159
    sget-object v26, Lcom/alivc/component/encoder/VideoCodecEncoder;->TAG:Ljava/lang/String;

    const-string/jumbo v27, "donnot support hardware codec"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/16 v26, -0x1

    goto/16 :goto_0

    .line 112
    .restart local v19    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_7
    move-object/from16 v0, v19

    iget v0, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_9

    .line 114
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alivc/component/encoder/VideoCodecEncoder;->useHighProfile:Z

    move/from16 v26, v0

    if-nez v26, :cond_8

    .line 115
    move-object/from16 v0, v19

    iget v0, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    move/from16 v21, v0

    .line 117
    :cond_8
    move-object/from16 v0, v19

    iget v0, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alivc/component/encoder/VideoCodecEncoder;->useHighProfile:Z

    move/from16 v26, v0

    if-nez v26, :cond_9

    move-object/from16 v0, v19

    iget v0, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    move/from16 v26, v0

    const/16 v27, 0x200

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_9

    .line 120
    move-object/from16 v0, v19

    iget v0, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    move/from16 v20, v0

    .line 121
    goto/16 :goto_2

    .line 98
    :cond_9
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 129
    .end local v19    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alivc/component/encoder/VideoCodecEncoder;->useHighProfile:Z

    move/from16 v26, v0

    if-nez v26, :cond_5

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v26

    if-lez v26, :cond_5

    .line 130
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v20

    goto/16 :goto_3

    .line 141
    :cond_b
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v20

    goto/16 :goto_4

    .line 143
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alivc/component/encoder/VideoCodecEncoder;->useHighProfile:Z

    move/from16 v26, v0

    if-nez v26, :cond_e

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v26

    if-lez v26, :cond_e

    .line 144
    const/16 v21, 0x8

    .line 145
    const/16 v26, 0x200

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-interface {v15, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_d

    .line 147
    const/16 v20, 0x200

    goto/16 :goto_4

    .line 149
    :cond_d
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v20

    goto/16 :goto_4

    .line 152
    :cond_e
    sget-object v26, Lcom/alivc/component/encoder/VideoCodecEncoder;->TAG:Ljava/lang/String;

    const-string/jumbo v27, "donnot support hardware codec ---> AVCProfileHigh & AVCProfileBaseline"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, v8, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget-object v26, v26, v27

    move-object/from16 v0, v26

    iget v0, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    move/from16 v21, v0

    .line 154
    iget-object v0, v8, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget-object v26, v26, v27

    move-object/from16 v0, v26

    iget v0, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    move/from16 v20, v0

    goto/16 :goto_4

    .line 163
    :cond_f
    sget-object v26, Lcom/alivc/component/encoder/VideoCodecEncoder;->TAG:Ljava/lang/String;

    iget-object v0, v8, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    move/from16 v0, p3

    move-object/from16 v1, p1

    invoke-static {v9, v0, v1}, Lcom/alivc/component/encoder/VideoCodecEncoder;->selectColorFormat(Landroid/media/MediaCodecInfo;ZLjava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alivc/component/encoder/VideoCodecEncoder;->encodeFormat:I

    .line 165
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alivc/component/encoder/VideoCodecEncoder;->encodeFormat:I

    move/from16 v26, v0

    if-nez v26, :cond_10

    .line 166
    const/16 v26, -0x1

    goto/16 :goto_0

    .line 168
    :cond_10
    new-instance v26, Ljava/lang/StringBuilder;

    const-string/jumbo v27, "selected format "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alivc/component/encoder/VideoCodecEncoder;->encodeFormat:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    const-string/jumbo v26, "color-format"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alivc/component/encoder/VideoCodecEncoder;->encodeFormat:I

    move/from16 v27, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 170
    const-string/jumbo v26, "frame-rate"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 174
    const-string/jumbo v26, "i-frame-interval"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 175
    const-string/jumbo v26, "profile"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 176
    const-string/jumbo v26, "level"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 178
    sget v26, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v27, 0x15

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_11

    .line 179
    const-class v26, Landroid/media/MediaCodecInfo$VideoCapabilities;

    const-string/jumbo v27, "create"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-class v30, Landroid/media/MediaFormat;

    aput-object v30, v28, v29

    const/16 v29, 0x1

    const-class v30, Landroid/media/MediaCodecInfo$CodecCapabilities;

    aput-object v30, v28, v29

    invoke-virtual/range {v26 .. v28}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v18

    .line 181
    .local v18, "method":Ljava/lang/reflect/Method;
    const/16 v26, 0x0

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object p2, v27, v28

    const/16 v28, 0x1

    aput-object v8, v27, v28

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/media/MediaCodecInfo$VideoCapabilities;

    .line 182
    .local v22, "vcap":Landroid/media/MediaCodecInfo$VideoCapabilities;
    invoke-virtual/range {v22 .. v22}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBitrateRange()Landroid/util/Range;

    move-result-object v7

    .line 183
    .local v7, "bitrateRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual/range {v22 .. v22}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result v24

    .line 184
    .local v24, "widthAlignment":I
    invoke-virtual/range {v22 .. v22}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result v13

    .line 185
    .local v13, "heightAlignment":I
    invoke-virtual/range {v22 .. v22}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;

    move-result-object v25

    .line 186
    .local v25, "widthRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual/range {v22 .. v22}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeights()Landroid/util/Range;

    move-result-object v14

    .line 187
    .local v14, "heightRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const-string/jumbo v26, "width"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v23

    .line 188
    .local v23, "width":I
    const-string/jumbo v26, "height"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v12

    .line 189
    .local v12, "height":I
    const-string/jumbo v26, "frame-rate"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v11

    .line 190
    .local v11, "frameRate":I
    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v12}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result v17

    .line 191
    .local v17, "isSizeSupport":Z
    sget-object v26, Lcom/alivc/component/encoder/VideoCodecEncoder;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string/jumbo v28, "bitrateRange ["

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ","

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v7}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "], widthAlignment = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", heightAlignment = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", widthRange ["

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 194
    invoke-virtual/range {v25 .. v25}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ","

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v25 .. v25}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "], heightRange ["

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 195
    invoke-virtual {v14}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ","

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v14}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "], isSizeSupport = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", sizeAndRateSupport = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    int-to-double v0, v11

    move-wide/from16 v28, v0

    .line 197
    move-object/from16 v0, v22

    move/from16 v1, v23

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 191
    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    sget v26, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v27, 0x17

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_11

    .line 199
    const-string/jumbo v26, "stride"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 200
    const-string/jumbo v26, "slice-height"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v12}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 204
    .end local v7    # "bitrateRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v11    # "frameRate":I
    .end local v12    # "height":I
    .end local v13    # "heightAlignment":I
    .end local v14    # "heightRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v17    # "isSizeSupport":Z
    .end local v18    # "method":Ljava/lang/reflect/Method;
    .end local v22    # "vcap":Landroid/media/MediaCodecInfo$VideoCapabilities;
    .end local v23    # "width":I
    .end local v24    # "widthAlignment":I
    .end local v25    # "widthRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_11
    sget-object v26, Lcom/alivc/component/encoder/VideoCodecEncoder;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string/jumbo v28, "encoder bitrate = "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v28, "bitrate"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", encoder i frame interval = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "i-frame-interval"

    .line 205
    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", encoder frame rate = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "frame-rate"

    .line 206
    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", encoder profile = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "profile"

    .line 207
    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", encoder level = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "level"

    .line 208
    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", encoder width = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "width"

    .line 209
    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", encoder height = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "height"

    .line 210
    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 204
    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 213
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alivc/component/encoder/VideoCodecEncoder;->mState:I

    .line 214
    invoke-virtual {v9}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v27, "OMX.IMG.TOPAZ.VIDEO.Encoder"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_12

    .line 215
    new-instance v26, Ljava/lang/StringBuilder;

    const-string/jumbo v27, "Product:"

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v27, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alivc/component/encoder/VideoCodecEncoder;->encodeFormat:I

    move/from16 v26, v0

    sparse-switch v26, :sswitch_data_0

    .line 241
    :cond_12
    :goto_5
    new-instance v26, Ljava/lang/StringBuilder;

    const-string/jumbo v27, "Phone Model: "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v27, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alivc/component/encoder/VideoCodecEncoder;->encodeFormat:I

    move/from16 v26, v0

    goto/16 :goto_0

    .line 218
    :sswitch_0
    const/16 v26, 0x14

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alivc/component/encoder/VideoCodecEncoder;->encodeFormat:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_5

    .line 243
    .end local v6    # "baselineLevels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8    # "cap":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v9    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v15    # "highlineLevels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v16    # "i":I
    .end local v20    # "selectedLevel":I
    .end local v21    # "selectedProfile":I
    :catch_0
    move-exception v10

    .line 244
    .local v10, "e":Ljava/io/IOException;
    sget-object v26, Lcom/alivc/component/encoder/VideoCodecEncoder;->TAG:Ljava/lang/String;

    const-string/jumbo v27, "Create MediaCodec Failed"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    .line 246
    const v26, 0x10003101

    goto/16 :goto_0

    .line 221
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v6    # "baselineLevels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v8    # "cap":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .restart local v9    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v15    # "highlineLevels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v16    # "i":I
    .restart local v20    # "selectedLevel":I
    .restart local v21    # "selectedProfile":I
    :sswitch_1
    const/16 v26, 0x13

    :try_start_1
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alivc/component/encoder/VideoCodecEncoder;->encodeFormat:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_5

    .line 247
    .end local v6    # "baselineLevels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8    # "cap":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v9    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v15    # "highlineLevels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v16    # "i":I
    .end local v20    # "selectedLevel":I
    .end local v21    # "selectedProfile":I
    :catch_1
    move-exception v10

    .line 248
    .local v10, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v10}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 249
    const v26, 0x10003101

    goto/16 :goto_0

    .line 224
    .end local v10    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v6    # "baselineLevels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v8    # "cap":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .restart local v9    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v15    # "highlineLevels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v16    # "i":I
    .restart local v20    # "selectedLevel":I
    .restart local v21    # "selectedProfile":I
    :sswitch_2
    const/16 v26, 0x27

    :try_start_2
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alivc/component/encoder/VideoCodecEncoder;->encodeFormat:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_5

    .line 251
    .end local v6    # "baselineLevels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8    # "cap":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v9    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v15    # "highlineLevels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v16    # "i":I
    .end local v20    # "selectedLevel":I
    .end local v21    # "selectedProfile":I
    :catch_2
    move-exception v10

    .line 252
    .local v10, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v10}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 253
    const v26, 0x10003101

    goto/16 :goto_0

    .line 227
    .end local v10    # "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local v6    # "baselineLevels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v8    # "cap":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .restart local v9    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v15    # "highlineLevels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v16    # "i":I
    .restart local v20    # "selectedLevel":I
    .restart local v21    # "selectedProfile":I
    :sswitch_3
    const/16 v26, 0x15

    :try_start_3
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alivc/component/encoder/VideoCodecEncoder;->encodeFormat:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_5

    .line 255
    .end local v6    # "baselineLevels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8    # "cap":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v9    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v15    # "highlineLevels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v16    # "i":I
    .end local v20    # "selectedLevel":I
    .end local v21    # "selectedProfile":I
    :catch_3
    move-exception v10

    .line 256
    .local v10, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v10}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 257
    const v26, 0x10003101

    goto/16 :goto_0

    .line 259
    .end local v10    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v10

    .line 260
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 261
    const v26, 0x10003101

    goto/16 :goto_0

    .line 266
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_13
    const v26, 0x10003101

    goto/16 :goto_0

    .line 216
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x15 -> :sswitch_2
        0x27 -> :sswitch_3
    .end sparse-switch
.end method

.method public inputFrame([BJJZ)I
    .locals 10
    .param p1, "frame"    # [B
    .param p2, "presentationTimeUs"    # J
    .param p4, "timeoutUs"    # J
    .param p6, "isKeyFrame"    # Z
    .annotation runtime Lcom/alivc/component/encoder/NativeUsed;
    .end annotation

    .prologue
    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 325
    .local v8, "inputBuffers":[Ljava/nio/ByteBuffer;
    iget-object v0, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p4, p5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 326
    .local v1, "bufferIndex":I
    if-ltz v1, :cond_3

    .line 327
    aget-object v0, v8, v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 328
    if-nez p1, :cond_1

    .line 329
    sget-object v0, Lcom/alivc/component/encoder/VideoCodecEncoder;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Symptom of the \"Callback buffer was to small\" problem..."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :goto_0
    iget v0, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->inputCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->inputCount:I

    .line 334
    if-eqz p6, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_0

    .line 338
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 339
    .local v9, "params":Landroid/os/Bundle;
    const-string/jumbo v0, "request-sync"

    const/4 v2, 0x0

    invoke-virtual {v9, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 340
    iget-object v0, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, v9}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 342
    .end local v9    # "params":Landroid/os/Bundle;
    :cond_0
    if-eqz p6, :cond_2

    const/4 v6, 0x1

    .line 343
    .local v6, "flag":I
    :goto_1
    iget-object v0, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    aget-object v3, v8, v1

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 353
    const/4 v0, 0x0

    .end local v1    # "bufferIndex":I
    .end local v6    # "flag":I
    .end local v8    # "inputBuffers":[Ljava/nio/ByteBuffer;
    :goto_2
    return v0

    .line 331
    .restart local v1    # "bufferIndex":I
    .restart local v8    # "inputBuffers":[Ljava/nio/ByteBuffer;
    :cond_1
    aget-object v0, v8, v1

    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {v0, p1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 349
    .end local v1    # "bufferIndex":I
    .end local v8    # "inputBuffers":[Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v7

    .line 350
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 351
    const/4 v0, -0x1

    goto :goto_2

    .line 342
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v1    # "bufferIndex":I
    .restart local v8    # "inputBuffers":[Ljava/nio/ByteBuffer;
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 346
    :cond_3
    :try_start_1
    sget-object v0, Lcom/alivc/component/encoder/VideoCodecEncoder;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "No buffer available !"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 347
    const v0, 0x10003103

    goto :goto_2
.end method

.method public release()I
    .locals 4
    .annotation runtime Lcom/alivc/component/encoder/NativeUsed;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 428
    const-string/jumbo v1, "dyt"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "input"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->inputCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "output"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mOutputCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget v1, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 430
    iget-object v1, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 431
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 432
    iput v0, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mState:I

    .line 435
    :goto_0
    return v0

    :cond_0
    const v0, 0x10003101

    goto :goto_0
.end method

.method public start()I
    .locals 4
    .annotation runtime Lcom/alivc/component/encoder/NativeUsed;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const v1, 0x10003101

    .line 288
    iget-object v2, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 290
    :try_start_0
    iget-object v2, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    iget-object v1, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 296
    const/4 v1, 0x2

    iput v1, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mState:I

    .line 297
    const/4 v1, 0x0

    .line 299
    :cond_0
    :goto_0
    return v1

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public stop()I
    .locals 2
    .annotation runtime Lcom/alivc/component/encoder/NativeUsed;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 415
    iget v0, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    .line 416
    iget v0, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mOutputCount:I

    if-lez v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 419
    const/4 v0, 0x1

    iput v0, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mState:I

    .line 420
    const/4 v0, 0x0

    .line 422
    :goto_0
    return v0

    :cond_1
    const v0, 0x10003101

    goto :goto_0
.end method

.method public tryRead(J)Lcom/alivc/component/encoder/MediaCodecData;
    .locals 7
    .param p1, "timeoutUs"    # J
    .annotation runtime Lcom/alivc/component/encoder/NativeUsed;
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v6, 0x1

    .line 358
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 360
    .local v2, "outputBufferInfo":Landroid/media/MediaCodec$BufferInfo;
    new-instance v3, Lcom/alivc/component/encoder/MediaCodecData;

    invoke-direct {v3}, Lcom/alivc/component/encoder/MediaCodecData;-><init>()V

    .line 361
    .local v3, "resultData":Lcom/alivc/component/encoder/MediaCodecData;
    iget-object v4, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4, v2, p1, p2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    .line 362
    .local v1, "outputBufferId":I
    if-ltz v1, :cond_3

    .line 365
    iget-object v4, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v4, v1

    .line 366
    .local v0, "outputBuffer":Ljava/nio/ByteBuffer;
    iget v4, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v4, :cond_0

    .line 367
    iget v4, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 368
    iget v4, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v5, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 371
    :cond_0
    iget-object v4, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v3, v0, v4, v1}, Lcom/alivc/component/encoder/MediaCodecData;->setCodecData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec;I)V

    .line 372
    iget v4, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mOutputCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mOutputCount:I

    .line 373
    iget v4, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-lez v4, :cond_1

    .line 374
    invoke-virtual {v3, v6}, Lcom/alivc/component/encoder/MediaCodecData;->setDataType(I)V

    .line 380
    :goto_0
    iget-wide v4, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v3, v4, v5}, Lcom/alivc/component/encoder/MediaCodecData;->setPts(J)V

    .line 381
    iget-wide v4, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v3, v4, v5}, Lcom/alivc/component/encoder/MediaCodecData;->setDts(J)V

    .line 396
    .end local v0    # "outputBuffer":Ljava/nio/ByteBuffer;
    :goto_1
    return-object v3

    .line 375
    .restart local v0    # "outputBuffer":Ljava/nio/ByteBuffer;
    :cond_1
    iget v4, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-lez v4, :cond_2

    .line 376
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/alivc/component/encoder/MediaCodecData;->setDataType(I)V

    goto :goto_0

    .line 378
    :cond_2
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/alivc/component/encoder/MediaCodecData;->setDataType(I)V

    goto :goto_0

    .line 383
    .end local v0    # "outputBuffer":Ljava/nio/ByteBuffer;
    :cond_3
    const/4 v4, -0x2

    if-ne v1, v4, :cond_4

    .line 386
    iget-object v4, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 387
    invoke-virtual {v3, v6}, Lcom/alivc/component/encoder/MediaCodecData;->setCode(I)V

    goto :goto_1

    .line 388
    :cond_4
    if-ne v1, v5, :cond_5

    .line 389
    invoke-virtual {v3, v6}, Lcom/alivc/component/encoder/MediaCodecData;->setCode(I)V

    goto :goto_1

    .line 390
    :cond_5
    const/4 v4, -0x3

    if-ne v1, v4, :cond_6

    .line 391
    iget-object v4, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 392
    invoke-virtual {v3, v6}, Lcom/alivc/component/encoder/MediaCodecData;->setCode(I)V

    goto :goto_1

    .line 394
    :cond_6
    invoke-virtual {v3, v5}, Lcom/alivc/component/encoder/MediaCodecData;->setCode(I)V

    goto :goto_1
.end method

.method public updateBitrate(I)I
    .locals 3
    .param p1, "bitrate"    # I
    .annotation runtime Lcom/alivc/component/encoder/NativeUsed;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 400
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_0

    .line 401
    const v1, 0x10003100

    .line 409
    :goto_0
    return v1

    .line 403
    :cond_0
    iget v1, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v1, :cond_1

    .line 404
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 405
    .local v0, "params":Landroid/os/Bundle;
    const-string/jumbo v1, "video-bitrate"

    mul-int/lit16 v2, p1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 406
    iget-object v1, p0, Lcom/alivc/component/encoder/VideoCodecEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 407
    const/4 v1, 0x0

    goto :goto_0

    .line 409
    .end local v0    # "params":Landroid/os/Bundle;
    :cond_1
    const v1, 0x10003101

    goto :goto_0
.end method
