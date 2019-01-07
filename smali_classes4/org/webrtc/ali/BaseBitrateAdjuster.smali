.class Lorg/webrtc/ali/BaseBitrateAdjuster;
.super Ljava/lang/Object;
.source "BaseBitrateAdjuster.java"

# interfaces
.implements Lorg/webrtc/ali/BitrateAdjuster;


# instance fields
.field protected targetBitrateBps:I

.field protected targetFps:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v0, p0, Lorg/webrtc/ali/BaseBitrateAdjuster;->targetBitrateBps:I

    .line 16
    iput v0, p0, Lorg/webrtc/ali/BaseBitrateAdjuster;->targetFps:I

    return-void
.end method


# virtual methods
.method public getAdjustedBitrateBps()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lorg/webrtc/ali/BaseBitrateAdjuster;->targetBitrateBps:I

    return v0
.end method

.method public getAdjustedFramerate()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lorg/webrtc/ali/BaseBitrateAdjuster;->targetFps:I

    return v0
.end method

.method public reportEncodedFrame(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 27
    return-void
.end method

.method public setTargets(II)V
    .locals 0
    .param p1, "targetBitrateBps"    # I
    .param p2, "targetFps"    # I

    .prologue
    .line 20
    iput p1, p0, Lorg/webrtc/ali/BaseBitrateAdjuster;->targetBitrateBps:I

    .line 21
    iput p2, p0, Lorg/webrtc/ali/BaseBitrateAdjuster;->targetFps:I

    .line 22
    return-void
.end method
