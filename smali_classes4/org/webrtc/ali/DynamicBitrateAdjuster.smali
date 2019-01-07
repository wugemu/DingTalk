.class Lorg/webrtc/ali/DynamicBitrateAdjuster;
.super Lorg/webrtc/ali/BaseBitrateAdjuster;
.source "DynamicBitrateAdjuster.java"


# static fields
.field private static final BITRATE_ADJUSTMENT_MAX_SCALE:D = 4.0

.field private static final BITRATE_ADJUSTMENT_SEC:D = 3.0

.field private static final BITRATE_ADJUSTMENT_STEPS:I = 0x14

.field private static final BITS_PER_BYTE:D = 8.0


# instance fields
.field private bitrateAdjustmentScaleExp:I

.field private deviationBytes:D

.field private timeSinceLastAdjustmentMs:D


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 18
    invoke-direct {p0}, Lorg/webrtc/ali/BaseBitrateAdjuster;-><init>()V

    .line 29
    iput-wide v0, p0, Lorg/webrtc/ali/DynamicBitrateAdjuster;->deviationBytes:D

    .line 30
    iput-wide v0, p0, Lorg/webrtc/ali/DynamicBitrateAdjuster;->timeSinceLastAdjustmentMs:D

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lorg/webrtc/ali/DynamicBitrateAdjuster;->bitrateAdjustmentScaleExp:I

    return-void
.end method


# virtual methods
.method public getAdjustedBitrateBps()I
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 91
    iget v0, p0, Lorg/webrtc/ali/DynamicBitrateAdjuster;->targetBitrateBps:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    iget v4, p0, Lorg/webrtc/ali/DynamicBitrateAdjuster;->bitrateAdjustmentScaleExp:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    div-double/2addr v4, v6

    .line 92
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 91
    return v0
.end method

.method public reportEncodedFrame(I)V
    .locals 14
    .param p1, "size"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 44
    iget v1, p0, Lorg/webrtc/ali/DynamicBitrateAdjuster;->targetFps:I

    if-nez v1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    iget v1, p0, Lorg/webrtc/ali/DynamicBitrateAdjuster;->targetBitrateBps:I

    int-to-double v8, v1

    const-wide/high16 v10, 0x4020000000000000L    # 8.0

    div-double/2addr v8, v10

    iget v1, p0, Lorg/webrtc/ali/DynamicBitrateAdjuster;->targetFps:I

    int-to-double v10, v1

    div-double v6, v8, v10

    .line 50
    .local v6, "expectedBytesPerFrame":D
    iget-wide v8, p0, Lorg/webrtc/ali/DynamicBitrateAdjuster;->deviationBytes:D

    int-to-double v10, p1

    sub-double/2addr v10, v6

    add-double/2addr v8, v10

    iput-wide v8, p0, Lorg/webrtc/ali/DynamicBitrateAdjuster;->deviationBytes:D

    .line 51
    iget-wide v8, p0, Lorg/webrtc/ali/DynamicBitrateAdjuster;->timeSinceLastAdjustmentMs:D

    const-wide v10, 0x408f400000000000L    # 1000.0

    iget v1, p0, Lorg/webrtc/ali/DynamicBitrateAdjuster;->targetFps:I

    int-to-double v12, v1

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    iput-wide v8, p0, Lorg/webrtc/ali/DynamicBitrateAdjuster;->timeSinceLastAdjustmentMs:D

    .line 55
    iget v1, p0, Lorg/webrtc/ali/DynamicBitrateAdjuster;->targetBitrateBps:I

    int-to-double v8, v1

    const-wide/high16 v10, 0x4020000000000000L    # 8.0

    div-double v4, v8, v10

    .line 59
    .local v4, "deviationThresholdBytes":D
    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    mul-double v2, v8, v4

    .line 60
    .local v2, "deviationCap":D
    iget-wide v8, p0, Lorg/webrtc/ali/DynamicBitrateAdjuster;->deviationBytes:D

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    iput-wide v8, p0, Lorg/webrtc/ali/DynamicBitrateAdjuster;->deviationBytes:D

    .line 61
    iget-wide v8, p0, Lorg/webrtc/ali/DynamicBitrateAdjuster;->deviationBytes:D

    neg-double v10, v2

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    iput-wide v8, p0, Lorg/webrtc/ali/DynamicBitrateAdjuster;->deviationBytes:D

    .line 65
    iget-wide v8, p0, Lorg/webrtc/ali/DynamicBitrateAdjuster;->timeSinceLastAdjustmentMs:D

    const-wide v10, 0x40a7700000000000L    # 3000.0

    cmpg-double v1, v8, v10

    if-lez v1, :cond_0

    .line 69
    iget-wide v8, p0, Lorg/webrtc/ali/DynamicBitrateAdjuster;->deviationBytes:D

    cmpl-double v1, v8, v4

    if-lez v1, :cond_3

    .line 71
    iget-wide v8, p0, Lorg/webrtc/ali/DynamicBitrateAdjuster;->deviationBytes:D

    div-double/2addr v8, v4

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    double-to-int v0, v8

    .line 72
    .local v0, "bitrateAdjustmentInc":I
    iget v1, p0, Lorg/webrtc/ali/DynamicBitrateAdjuster;->bitrateAdjustmentScaleExp:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/webrtc/ali/DynamicBitrateAdjuster;->bitrateAdjustmentScaleExp:I

    .line 75
    iget v1, p0, Lorg/webrtc/ali/DynamicBitrateAdjuster;->bitrateAdjustmentScaleExp:I

    const/16 v8, -0x14

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lorg/webrtc/ali/DynamicBitrateAdjuster;->bitrateAdjustmentScaleExp:I

    .line 76
    iput-wide v4, p0, Lorg/webrtc/ali/DynamicBitrateAdjuster;->deviationBytes:D

    .line 86
    .end local v0    # "bitrateAdjustmentInc":I
    :cond_2
    :goto_1
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/webrtc/ali/DynamicBitrateAdjuster;->timeSinceLastAdjustmentMs:D

    goto :goto_0

    .line 77
    :cond_3
    iget-wide v8, p0, Lorg/webrtc/ali/DynamicBitrateAdjuster;->deviationBytes:D

    neg-double v10, v4

    cmpg-double v1, v8, v10

    if-gez v1, :cond_2

    .line 79
    iget-wide v8, p0, Lorg/webrtc/ali/DynamicBitrateAdjuster;->deviationBytes:D

    neg-double v8, v8

    div-double/2addr v8, v4

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    double-to-int v0, v8

    .line 80
    .restart local v0    # "bitrateAdjustmentInc":I
    iget v1, p0, Lorg/webrtc/ali/DynamicBitrateAdjuster;->bitrateAdjustmentScaleExp:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/webrtc/ali/DynamicBitrateAdjuster;->bitrateAdjustmentScaleExp:I

    .line 83
    iget v1, p0, Lorg/webrtc/ali/DynamicBitrateAdjuster;->bitrateAdjustmentScaleExp:I

    const/16 v8, 0x14

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lorg/webrtc/ali/DynamicBitrateAdjuster;->bitrateAdjustmentScaleExp:I

    .line 84
    neg-double v8, v4

    iput-wide v8, p0, Lorg/webrtc/ali/DynamicBitrateAdjuster;->deviationBytes:D

    goto :goto_1
.end method

.method public setTargets(II)V
    .locals 4
    .param p1, "targetBitrateBps"    # I
    .param p2, "targetFps"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 35
    iget v0, p0, Lorg/webrtc/ali/DynamicBitrateAdjuster;->targetBitrateBps:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/webrtc/ali/DynamicBitrateAdjuster;->targetBitrateBps:I

    if-ge p1, v0, :cond_0

    .line 37
    iget-wide v0, p0, Lorg/webrtc/ali/DynamicBitrateAdjuster;->deviationBytes:D

    int-to-double v2, p1

    mul-double/2addr v0, v2

    iget v2, p0, Lorg/webrtc/ali/DynamicBitrateAdjuster;->targetBitrateBps:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/webrtc/ali/DynamicBitrateAdjuster;->deviationBytes:D

    .line 39
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/webrtc/ali/BaseBitrateAdjuster;->setTargets(II)V

    .line 40
    return-void
.end method
