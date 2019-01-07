.class public final Liii;
.super Ljava/lang/Object;
.source "OpenCameraInterface.java"


# static fields
.field public static a:I

.field public static b:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static a(I)Landroid/hardware/Camera;
    .locals 8
    .param p0, "cameraId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 28
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v3

    .line 29
    .local v3, "numCameras":I
    if-nez v3, :cond_0

    .line 30
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "No Cameras!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 32
    :cond_0
    const/4 v2, 0x0

    .line 33
    .local v2, "indexOfBack":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 34
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 35
    .local v1, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    invoke-static {v2, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 36
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v4, :cond_2

    .line 37
    const-string/jumbo v4, "OpenCameraInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "The original orientation of camera is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sput v4, Liii;->a:I

    .line 44
    .end local v1    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    :cond_1
    if-lt v2, v3, :cond_3

    .line 45
    const-string/jumbo v4, "OpenCameraInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Requested camera does not exist: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/bqcscanservice/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    sput v7, Liii;->a:I

    .line 47
    sput v7, Liii;->b:I

    .line 48
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Requested camera does not exist: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 41
    .restart local v1    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 42
    goto :goto_0

    .line 50
    .end local v1    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    :cond_3
    move p0, v2

    .line 51
    const-string/jumbo v4, "OpenCameraInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Opening camera #"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/bqcscanservice/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {p0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    .line 53
    .local v0, "camera":Landroid/hardware/Camera;
    sput p0, Liii;->b:I

    .line 55
    return-object v0
.end method
