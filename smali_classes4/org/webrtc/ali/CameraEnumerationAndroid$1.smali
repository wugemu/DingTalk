.class final Lorg/webrtc/ali/CameraEnumerationAndroid$1;
.super Lorg/webrtc/ali/CameraEnumerationAndroid$ClosestComparator;
.source "CameraEnumerationAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/ali/CameraEnumerationAndroid;->getClosestSupportedFramerateRange(Ljava/util/List;I)Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat$FramerateRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/webrtc/ali/CameraEnumerationAndroid$ClosestComparator",
        "<",
        "Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat$FramerateRange;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_FPS_DIFF_THRESHOLD:I = 0x1388

.field private static final MAX_FPS_HIGH_DIFF_WEIGHT:I = 0x3

.field private static final MAX_FPS_LOW_DIFF_WEIGHT:I = 0x1

.field private static final MIN_FPS_HIGH_VALUE_WEIGHT:I = 0x4

.field private static final MIN_FPS_LOW_VALUE_WEIGHT:I = 0x1

.field private static final MIN_FPS_THRESHOLD:I = 0x1f40


# instance fields
.field final synthetic val$requestedFps:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 160
    iput p1, p0, Lorg/webrtc/ali/CameraEnumerationAndroid$1;->val$requestedFps:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/webrtc/ali/CameraEnumerationAndroid$ClosestComparator;-><init>(Lorg/webrtc/ali/CameraEnumerationAndroid$1;)V

    return-void
.end method

.method private progressivePenalty(IIII)I
    .locals 2
    .param p1, "value"    # I
    .param p2, "threshold"    # I
    .param p3, "lowWeight"    # I
    .param p4, "highWeight"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 174
    if-ge p1, p2, :cond_0

    mul-int v0, p1, p3

    :goto_0
    return v0

    :cond_0
    mul-int v0, p2, p3

    sub-int v1, p1, p2

    mul-int/2addr v1, p4

    add-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method final bridge synthetic diff(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 160
    check-cast p1, Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    invoke-virtual {p0, p1}, Lorg/webrtc/ali/CameraEnumerationAndroid$1;->diff(Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat$FramerateRange;)I

    move-result v0

    return v0
.end method

.method final diff(Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat$FramerateRange;)I
    .locals 6
    .param p1, "range"    # Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 180
    iget v2, p1, Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->min:I

    const/16 v3, 0x1f40

    const/4 v4, 0x4

    invoke-direct {p0, v2, v3, v5, v4}, Lorg/webrtc/ali/CameraEnumerationAndroid$1;->progressivePenalty(IIII)I

    move-result v1

    .line 182
    .local v1, "minFpsError":I
    iget v2, p0, Lorg/webrtc/ali/CameraEnumerationAndroid$1;->val$requestedFps:I

    mul-int/lit16 v2, v2, 0x3e8

    iget v3, p1, Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->max:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x1388

    const/4 v4, 0x3

    invoke-direct {p0, v2, v3, v5, v4}, Lorg/webrtc/ali/CameraEnumerationAndroid$1;->progressivePenalty(IIII)I

    move-result v0

    .line 184
    .local v0, "maxFpsError":I
    add-int v2, v1, v0

    return v2
.end method
