.class public Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;
.super Landroid/view/SurfaceView;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView$a;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/view/SurfaceHolder;

.field c:F

.field public d:Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView$a;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    .line 0
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;->d:Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView$a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;->e:Z

    iput-object p1, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2000
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Screen---Width = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " Height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " densityDpi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 1000
    iget v1, v0, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 0
    iput v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;->c:F

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;->b:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;->b:Landroid/view/SurfaceHolder;

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;->b:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;->b:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method


# virtual methods
.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;->b:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public setSurfaceViewListener(Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;->d:Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView$a;

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "surfaceChanged...,"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lhyt;->a()Lhyt;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;->b:Landroid/view/SurfaceHolder;

    iget v2, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;->c:F

    invoke-virtual {v0, v1, v2}, Lhyt;->a(Landroid/view/SurfaceHolder;F)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;->d:Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;->d:Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView$a;

    invoke-interface {v0}, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView$a;->b()V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/16 v6, 0x3f6

    const/4 v1, -0x1

    .line 0
    iput-boolean v4, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;->e:Z

    invoke-static {}, Lhyt;->a()Lhyt;

    move-result-object v0

    new-instance v3, Lhxm;

    invoke-direct {v3, p0}, Lhxm;-><init>(Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;)V

    .line 3000
    iput-object v3, v0, Lhyt;->d:Lhvo;

    .line 0
    invoke-static {}, Lhyt;->a()Lhyt;

    move-result-object v3

    .line 4000
    invoke-static {}, Lhyv;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5000
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v5, :cond_6

    invoke-static {v2}, Lhyt;->a(I)I

    move-result v0

    .line 4000
    :goto_0
    if-eq v0, v1, :cond_4

    .line 7000
    :try_start_0
    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, v3, Lhyt;->a:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 0
    :cond_0
    :goto_1
    invoke-static {}, Lhyt;->a()Lhyt;

    move-result-object v0

    new-instance v1, Lhxn;

    invoke-direct {v1, p0}, Lhxn;-><init>(Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;)V

    .line 8000
    iget-object v2, v0, Lhyt;->a:Landroid/hardware/Camera;

    if-eqz v2, :cond_1

    :try_start_1
    iget-object v2, v0, Lhyt;->a:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 0
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;->d:Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;->d:Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView$a;

    invoke-interface {v0}, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView$a;->a()V

    :cond_2
    return-void

    .line 6000
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v5, :cond_6

    invoke-static {v4}, Lhyt;->a(I)I

    move-result v0

    goto :goto_0

    .line 7000
    :catch_0
    move-exception v0

    iget-object v0, v3, Lhyt;->d:Lhvo;

    if-eqz v0, :cond_0

    iget-object v0, v3, Lhyt;->d:Lhvo;

    invoke-interface {v0, v6}, Lhvo;->a(I)V

    goto :goto_1

    .line 4000
    :cond_4
    const-string/jumbo v0, "open camera fail"

    invoke-static {v0}, Lhzj;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Build.VERSION.SDK_INT="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhzj;->a(Ljava/lang/String;)V

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    move v0, v2

    :goto_3
    if-ge v0, v1, :cond_5

    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    invoke-static {v0, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Camera:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "face(b:0, f:1)="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",oriention="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhzj;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    iget-object v0, v3, Lhyt;->d:Lhvo;

    if-eqz v0, :cond_0

    iget-object v0, v3, Lhyt;->d:Lhvo;

    invoke-interface {v0, v6}, Lhvo;->a(I)V

    goto/16 :goto_1

    .line 8000
    :catch_1
    move-exception v1

    iget-object v1, v0, Lhyt;->d:Lhvo;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lhyt;->d:Lhvo;

    invoke-interface {v0, v6}, Lhvo;->a(I)V

    goto/16 :goto_2

    :cond_6
    move v0, v1

    goto/16 :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 0
    iget-boolean v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;->e:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lhyt;->a()Lhyt;

    move-result-object v1

    .line 9000
    iput-object v3, v1, Lhyt;->d:Lhvo;

    iget-object v0, v1, Lhyt;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, v1, Lhyt;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v0, v1, Lhyt;->a:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    iget-object v0, v1, Lhyt;->a:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    const/4 v0, 0x0

    iput-boolean v0, v1, Lhyt;->b:Z

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, v1, Lhyt;->c:F

    iget-object v0, v1, Lhyt;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v3, v1, Lhyt;->a:Landroid/hardware/Camera;

    .line 0
    :cond_0
    :goto_0
    iput-boolean v4, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;->e:Z

    :cond_1
    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;->d:Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView;->d:Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView$a;

    invoke-interface {v0}, Lcom/alibaba/security/biometrics/face/auth/widget/CameraSurfaceView$a;->c()V

    :cond_2
    return-void

    .line 9000
    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lhzj;->b(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v3, v1, Lhyt;->a:Landroid/hardware/Camera;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v3, v1, Lhyt;->a:Landroid/hardware/Camera;

    throw v0
.end method
