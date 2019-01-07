.class public Lcom/alipay/mobile/security/faceauth/model/CommonInspector;
.super Ljava/lang/Object;
.source "CommonInspector.java"

# interfaces
.implements Lcom/alipay/mobile/security/faceauth/model/Inspector;


# instance fields
.field private a:I

.field private b:Landroid/content/Context;

.field private c:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceSetting"    # Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/model/CommonInspector;->b:Landroid/content/Context;

    .line 26
    if-nez p2, :cond_0

    .line 27
    new-instance v0, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    invoke-direct {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/model/CommonInspector;->c:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    .line 32
    :goto_0
    return-void

    .line 29
    :cond_0
    iput-object p2, p0, Lcom/alipay/mobile/security/faceauth/model/CommonInspector;->c:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    goto :goto_0
.end method

.method private static a(Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;)I
    .locals 8
    .param p0, "deviceSetting"    # Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    .prologue
    .line 66
    const/4 v0, -0x1

    .line 68
    .local v0, "cameraId":I
    const/4 v4, 0x0

    .line 71
    .local v4, "numberOfCameras":I
    :try_start_0
    sget-object v6, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 72
    .local v5, "sysVersion":I
    const/16 v6, 0x8

    if-le v5, v6, :cond_0

    .line 73
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 78
    .end local v5    # "sysVersion":I
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_1

    .line 79
    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 81
    .local v3, "info":Landroid/hardware/Camera$CameraInfo;
    :try_start_1
    invoke-static {v2, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 82
    iget v6, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    invoke-virtual {p0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->getCameraID()I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 83
    const-string/jumbo v6, "Camera found"

    invoke-static {v6}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 84
    move v0, v2

    .line 91
    .end local v3    # "info":Landroid/hardware/Camera$CameraInfo;
    :cond_1
    return v0

    .line 75
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v2    # "i":I
    .restart local v3    # "info":Landroid/hardware/Camera$CameraInfo;
    :catch_1
    move-exception v6

    .line 78
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public checkEnvironment()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 36
    .line 1041
    iput v0, p0, Lcom/alipay/mobile/security/faceauth/model/CommonInspector;->a:I

    .line 1044
    const-string/jumbo v1, "armeabi-v7a"

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "x86"

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1045
    const/16 v1, 0x66

    iput v1, p0, Lcom/alipay/mobile/security/faceauth/model/CommonInspector;->a:I

    .line 1060
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "check mErrorCode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/security/faceauth/model/CommonInspector;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 36
    return v0

    .line 1049
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/model/CommonInspector;->c:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    invoke-static {v1}, Lcom/alipay/mobile/security/faceauth/model/CommonInspector;->a(Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;)I

    move-result v1

    .line 1050
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "check cameraid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 1051
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1052
    const/16 v1, 0x65

    iput v1, p0, Lcom/alipay/mobile/security/faceauth/model/CommonInspector;->a:I

    goto :goto_0

    .line 1056
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/model/CommonInspector;->a:I

    return v0
.end method
