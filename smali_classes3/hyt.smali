.class public final Lhyt;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation


# static fields
.field private static i:Lhyt;


# instance fields
.field public a:Landroid/hardware/Camera;

.field public b:Z

.field public c:F

.field public d:Lhvo;

.field e:Landroid/hardware/Camera$ShutterCallback;

.field f:Landroid/hardware/Camera$PictureCallback;

.field g:Landroid/hardware/Camera$AutoFocusCallback;

.field private h:Landroid/hardware/Camera$Parameters;

.field private j:I

.field private k:Landroid/hardware/Camera$Size;

.field private l:Landroid/hardware/Camera$Size;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lhyt;->b:Z

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lhyt;->c:F

    new-instance v0, Lhvp;

    invoke-direct {v0, p0}, Lhvp;-><init>(Lhyt;)V

    iput-object v0, p0, Lhyt;->e:Landroid/hardware/Camera$ShutterCallback;

    new-instance v0, Lhvq;

    invoke-direct {v0, p0}, Lhvq;-><init>(Lhyt;)V

    iput-object v0, p0, Lhyt;->f:Landroid/hardware/Camera$PictureCallback;

    new-instance v0, Lhvr;

    invoke-direct {v0, p0}, Lhvr;-><init>(Lhyt;)V

    iput-object v0, p0, Lhyt;->g:Landroid/hardware/Camera$AutoFocusCallback;

    return-void
.end method

.method public static a(I)I
    .locals 4

    const/4 v1, -0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-le v0, v2, :cond_1

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    invoke-static {v0, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v3, p0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Camera found "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static declared-synchronized a()Lhyt;
    .locals 2

    const-class v1, Lhyt;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lhyt;->i:Lhyt;

    if-nez v0, :cond_0

    new-instance v0, Lhyt;

    invoke-direct {v0}, Lhyt;-><init>()V

    sput-object v0, Lhyt;->i:Lhyt;

    :cond_0
    sget-object v0, Lhyt;->i:Lhyt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Landroid/view/SurfaceHolder;F)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/16 v8, 0x3f6

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 0
    iget-boolean v0, p0, Lhyt;->b:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lhyt;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lhyt;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lhyt;->h:Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lhyt;->h:Landroid/hardware/Camera$Parameters;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    .line 1000
    iget-object v0, p0, Lhyt;->h:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_2

    invoke-static {}, Lhwr;->a()Lhwr;

    move-result-object v0

    iget-object v1, p0, Lhyt;->h:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v3

    .line 2000
    if-nez v3, :cond_6

    const/4 v0, 0x0

    .line 1000
    :goto_1
    iput-object v0, p0, Lhyt;->k:Landroid/hardware/Camera$Size;

    iget-object v0, p0, Lhyt;->h:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lhyt;->k:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    iget-object v2, p0, Lhyt;->k:Landroid/hardware/Camera$Size;

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 3000
    :cond_2
    iget-object v0, p0, Lhyt;->h:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_3

    invoke-static {}, Lhwr;->a()Lhwr;

    move-result-object v0

    iget-object v1, p0, Lhyt;->h:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x190

    const/16 v3, 0x3e8

    invoke-virtual {v0, v1, p2, v2, v3}, Lhwr;->a(Ljava/util/List;FII)Landroid/hardware/Camera$Size;

    move-result-object v0

    iput-object v0, p0, Lhyt;->l:Landroid/hardware/Camera$Size;

    iget-object v0, p0, Lhyt;->l:Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    iget-object v1, p0, Lhyt;->l:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    iget-object v2, p0, Lhyt;->h:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 0
    :cond_3
    invoke-static {}, Lhyv;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lhyt;->a:Landroid/hardware/Camera;

    const/16 v1, 0x10e

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    :goto_2
    iget-object v0, p0, Lhyt;->h:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v1, "continuous-video"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v0, p0, Lhyt;->h:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "continuous-video"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    const/4 v0, 0x2

    iput v0, p0, Lhyt;->j:I

    :cond_4
    :goto_3
    :try_start_1
    iget-object v0, p0, Lhyt;->a:Landroid/hardware/Camera;

    iget-object v1, p0, Lhyt;->h:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v0, p0, Lhyt;->a:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lhyt;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    iget-object v0, p0, Lhyt;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "paramsAfter="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lhyt;->d:Lhvo;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lhyt;->d:Lhvo;

    invoke-interface {v0}, Lhvo;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    iput-boolean v7, p0, Lhyt;->b:Z

    iput p2, p0, Lhyt;->c:F

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lhyt;->d:Lhvo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhyt;->d:Lhvo;

    invoke-interface {v0, v8}, Lhvo;->a(I)V

    goto/16 :goto_0

    .line 2000
    :cond_6
    iget-object v0, v0, Lhwr;->b:Ljava/util/Comparator;

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    const/16 v6, 0x258

    if-lt v5, v6, :cond_8

    invoke-static {v0, p2}, Lhwr;->a(Landroid/hardware/Camera$Size;F)Z

    move-result v5

    if-eqz v5, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "PictureSize : w = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "h = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ne v1, v0, :cond_b

    :goto_5
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    goto/16 :goto_1

    :cond_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 0
    :cond_9
    iget-object v0, p0, Lhyt;->a:Landroid/hardware/Camera;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto/16 :goto_2

    :cond_a
    const-string/jumbo v1, "auto"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput v7, p0, Lhyt;->j:I

    goto/16 :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhzj;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lhyt;->d:Lhvo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhyt;->d:Lhvo;

    invoke-interface {v0, v8}, Lhvo;->a(I)V

    goto/16 :goto_0

    :cond_b
    move v2, v1

    goto :goto_5
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lhyt;->h:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhyt;->h:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lhyt;->h:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhyt;->h:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
