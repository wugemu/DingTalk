.class public Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat$FramerateRange;
.super Ljava/lang/Object;
.source "CameraEnumerationAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FramerateRange"
.end annotation


# instance fields
.field public max:I

.field public min:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->min:I

    .line 59
    iput p2, p0, Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->max:I

    .line 60
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 69
    instance-of v2, p1, Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    if-nez v2, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 72
    check-cast v0, Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    .line 73
    .local v0, "otherFramerate":Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat$FramerateRange;
    iget v2, p0, Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->min:I

    iget v3, v0, Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->min:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->max:I

    iget v3, v0, Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->max:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 79
    const v0, 0x10001

    iget v1, p0, Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->min:I

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->max:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->min:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/webrtc/ali/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->max:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
