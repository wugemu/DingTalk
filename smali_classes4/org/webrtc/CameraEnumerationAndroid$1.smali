.class final Lorg/webrtc/CameraEnumerationAndroid$1;
.super Lorg/webrtc/CameraEnumerationAndroid$ClosestComparator;
.source "CameraEnumerationAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/CameraEnumerationAndroid;->getClosestSupportedFramerateRange(Ljava/util/List;I)Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/webrtc/CameraEnumerationAndroid$ClosestComparator",
        "<",
        "Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;",
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
    .line 163
    iput p1, p0, Lorg/webrtc/CameraEnumerationAndroid$1;->val$requestedFps:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/webrtc/CameraEnumerationAndroid$ClosestComparator;-><init>(Lorg/webrtc/CameraEnumerationAndroid$1;)V

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
    .line 177
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
    .line 163
    check-cast p1, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    invoke-virtual {p0, p1}, Lorg/webrtc/CameraEnumerationAndroid$1;->diff(Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;)I

    move-result v0

    return v0
.end method

.method final diff(Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;)I
    .locals 3
    .param p1, "range"    # Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 190
    iget v0, p0, Lorg/webrtc/CameraEnumerationAndroid$1;->val$requestedFps:I

    mul-int/lit16 v0, v0, 0x3e8

    iget v1, p1, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->min:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/webrtc/CameraEnumerationAndroid$1;->val$requestedFps:I

    mul-int/lit16 v1, v1, 0x3e8

    iget v2, p1, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->max:I

    sub-int/2addr v1, v2

    .line 191
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lorg/webrtc/CameraEnumerationAndroid$1;->val$requestedFps:I

    mul-int/lit16 v1, v1, 0x3e8

    iget v2, p1, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->min:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method
