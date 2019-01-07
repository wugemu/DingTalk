.class Lorg/webrtc/ali/FramerateBitrateAdjuster;
.super Lorg/webrtc/ali/BaseBitrateAdjuster;
.source "FramerateBitrateAdjuster.java"


# static fields
.field private static final INITIAL_FPS:I = 0x1e


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lorg/webrtc/ali/BaseBitrateAdjuster;-><init>()V

    return-void
.end method


# virtual methods
.method public setTargets(II)V
    .locals 3
    .param p1, "targetBitrateBps"    # I
    .param p2, "targetFps"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 22
    iget v0, p0, Lorg/webrtc/ali/FramerateBitrateAdjuster;->targetFps:I

    if-nez v0, :cond_0

    .line 24
    const/16 p2, 0x1e

    .line 26
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/webrtc/ali/BaseBitrateAdjuster;->setTargets(II)V

    .line 28
    iget v0, p0, Lorg/webrtc/ali/FramerateBitrateAdjuster;->targetBitrateBps:I

    const/16 v1, 0x1e

    iget v2, p0, Lorg/webrtc/ali/FramerateBitrateAdjuster;->targetFps:I

    div-int/2addr v1, v2

    mul-int/2addr v0, v1

    iput v0, p0, Lorg/webrtc/ali/FramerateBitrateAdjuster;->targetBitrateBps:I

    .line 29
    return-void
.end method
