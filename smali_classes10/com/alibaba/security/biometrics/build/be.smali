.class public Lcom/alibaba/security/biometrics/build/be;
.super Ljava/lang/Object;

# interfaces
.implements Lhwm;


# instance fields
.field private a:I

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/security/biometrics/build/be;->b:Landroid/content/Context;

    return-void
.end method

.method private static a(Z)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "checkBackCamera="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x8

    if-le v0, v3, :cond_1

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_0

    new-instance v4, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v4}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    invoke-static {v3, v4}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    if-nez p0, :cond_2

    iget v5, v4, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v5, v2, :cond_2

    move v1, v2

    :cond_0
    :goto_2
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhzj;->a(Ljava/lang/String;)V

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_3

    iget v4, v4, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v4, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/alibaba/security/biometrics/build/be;->a:I

    return v0
.end method

.method public a(Landroid/os/Bundle;)Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v4, 0x9a

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 0
    .line 1000
    iput v0, p0, Lcom/alibaba/security/biometrics/build/be;->a:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Build.CPU_ABI:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", Build.CPU_ABI2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "armeabi-v7a"

    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "armeabi"

    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "x86"

    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iput v4, p0, Lcom/alibaba/security/biometrics/build/be;->a:I

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "check mErrorCode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alibaba/security/biometrics/build/be;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 0
    return v0

    .line 1000
    :cond_0
    if-eqz p1, :cond_1

    const-string/jumbo v2, "KEY_SUPPORT_X86"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    :goto_1
    if-nez v2, :cond_2

    invoke-static {}, Lhwv;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    iput v4, p0, Lcom/alibaba/security/biometrics/build/be;->a:I

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_1

    .line 2000
    :cond_2
    iget-object v2, p0, Lcom/alibaba/security/biometrics/build/be;->b:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.CAMERA"

    .line 3000
    if-nez v2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "context or permission is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    .line 2000
    if-nez v2, :cond_4

    move v2, v1

    .line 1000
    :goto_2
    if-nez v2, :cond_5

    const/16 v1, 0x66

    iput v1, p0, Lcom/alibaba/security/biometrics/build/be;->a:I

    goto :goto_0

    :cond_4
    move v2, v0

    .line 2000
    goto :goto_2

    .line 1000
    :cond_5
    invoke-static {}, Lhyv;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/alibaba/security/biometrics/build/be;->a(Z)Z

    move-result v2

    if-nez v2, :cond_6

    const/16 v1, 0x67

    iput v1, p0, Lcom/alibaba/security/biometrics/build/be;->a:I

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0
.end method
