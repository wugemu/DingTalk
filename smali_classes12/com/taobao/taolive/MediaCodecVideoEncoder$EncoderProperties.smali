.class Lcom/taobao/taolive/MediaCodecVideoEncoder$EncoderProperties;
.super Ljava/lang/Object;
.source "MediaCodecVideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/taolive/MediaCodecVideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EncoderProperties"
.end annotation


# instance fields
.field public final bitrateAdjustmentType:Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;

.field public final codecName:Ljava/lang/String;

.field public final colorFormat:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;)V
    .locals 0
    .param p1, "codecName"    # Ljava/lang/String;
    .param p2, "colorFormat"    # I
    .param p3, "bitrateAdjustmentType"    # Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput-object p1, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder$EncoderProperties;->codecName:Ljava/lang/String;

    .line 241
    iput p2, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder$EncoderProperties;->colorFormat:I

    .line 242
    iput-object p3, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder$EncoderProperties;->bitrateAdjustmentType:Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 243
    return-void
.end method
