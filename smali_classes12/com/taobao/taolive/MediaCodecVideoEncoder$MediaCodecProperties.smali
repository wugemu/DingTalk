.class Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;
.super Ljava/lang/Object;
.source "MediaCodecVideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/taolive/MediaCodecVideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaCodecProperties"
.end annotation


# instance fields
.field public final bitrateAdjustmentType:Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;

.field public final codecPrefix:Ljava/lang/String;

.field public final minSdk:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;)V
    .locals 0
    .param p1, "codecPrefix"    # Ljava/lang/String;
    .param p2, "minSdk"    # I
    .param p3, "bitrateAdjustmentType"    # Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;->codecPrefix:Ljava/lang/String;

    .line 104
    iput p2, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;->minSdk:I

    .line 105
    iput-object p3, p0, Lcom/taobao/taolive/MediaCodecVideoEncoder$MediaCodecProperties;->bitrateAdjustmentType:Lcom/taobao/taolive/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 106
    return-void
.end method
