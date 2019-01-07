.class public Lcom/alipay/mobile/security/faceauth/util/EnvCheck;
.super Ljava/lang/Object;
.source "EnvCheck.java"


# instance fields
.field private a:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;)V
    .locals 1
    .param p1, "deviceSetting"    # Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    if-nez p1, :cond_0

    .line 18
    new-instance v0, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    invoke-direct {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/util/EnvCheck;->a:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    .line 22
    :goto_0
    return-void

    .line 20
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/util/EnvCheck;->a:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    goto :goto_0
.end method

.method private static a(Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;)I
    .locals 8
    .param p0, "deviceSetting"    # Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    .prologue
    .line 42
    const/4 v0, -0x1

    .line 44
    .local v0, "cameraId":I
    const/4 v4, 0x0

    .line 47
    .local v4, "numberOfCameras":I
    :try_start_0
    sget-object v6, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 48
    .local v5, "sysVersion":I
    const/16 v6, 0x8

    if-le v5, v6, :cond_0

    .line 49
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 56
    .end local v5    # "sysVersion":I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->isCameraAuto()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 57
    const/4 v6, 0x1

    if-le v4, v6, :cond_2

    .line 58
    const/4 v0, 0x1

    .line 79
    :cond_1
    :goto_1
    return v0

    .line 51
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "face"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_2
    const/4 v0, 0x0

    .line 62
    goto :goto_1

    .line 65
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v4, :cond_1

    .line 67
    :try_start_1
    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 68
    .local v3, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {v2, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 69
    iget v6, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    invoke-virtual {p0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->getCameraID()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    if-ne v6, v7, :cond_4

    .line 70
    move v0, v2

    goto :goto_1

    .end local v3    # "info":Landroid/hardware/Camera$CameraInfo;
    :catch_1
    move-exception v6

    .line 65
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method


# virtual methods
.method public check()Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 83
    sget-object v1, Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;->ENV_ERROR_INVALID:Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;

    .line 96
    .local v1, "code":Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;
    const-string/jumbo v2, "armeabi-v7a"

    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 97
    sget-object v1, Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;->ENV_ERROR_UNSUPPORTED_CPU:Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;

    .line 111
    :cond_0
    :goto_0
    return-object v1

    .line 101
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/util/EnvCheck;->a:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    invoke-static {v2}, Lcom/alipay/mobile/security/faceauth/util/EnvCheck;->a(Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;)I

    move-result v0

    .line 102
    .local v0, "cameraid":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 103
    sget-object v1, Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;->ENV_ERROR_NO_FRONT_CAMERA:Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;

    goto :goto_0
.end method
