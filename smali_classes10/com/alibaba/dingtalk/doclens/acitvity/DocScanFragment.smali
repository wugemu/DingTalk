.class public Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;
.super Landroid/support/v4/app/Fragment;
.source "DocScanFragment.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Lcom/alibaba/android/dingtalk/permission/annotation/RuntimePermissions;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$ShootingState;,
        Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$a;
    }
.end annotation


# instance fields
.field a:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$a;

.field private b:Landroid/view/SurfaceView;

.field private c:Landroid/view/SurfaceHolder;

.field private d:Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

.field private e:Landroid/hardware/Camera$Size;

.field private f:Landroid/hardware/Camera$Size;

.field private g:Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;

.field private h:Lcom/alibaba/dingtalk/doclens/DocLensLib;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/TextView;

.field private l:[F

.field private m:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$ShootingState;

.field private n:Lcom/alibaba/doraemon/image/ImageMagician;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:I

.field private s:Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 79
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->l:[F

    .line 89
    sget-object v0, Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;->SCAN:Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;

    iput-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->s:Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;

    .line 102
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$ShootingState;)Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$ShootingState;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;
    .param p1, "x1"    # Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$ShootingState;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->m:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$ShootingState;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    .prologue
    .line 54
    .line 12382
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->m:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$ShootingState;

    sget-object v1, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$ShootingState;->PREPARE_SHOOT:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$ShootingState;

    if-ne v0, v1, :cond_0

    .line 12383
    invoke-direct {p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->d()V

    .line 54
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;)Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$ShootingState;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->m:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$ShootingState;

    return-object v0
.end method

.method private b()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 247
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->d:Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    if-eqz v3, :cond_11

    .line 248
    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->d:Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    iget-object v5, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->c:Landroid/view/SurfaceHolder;

    invoke-virtual {v3, v5}, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->a(Landroid/view/SurfaceHolder;)V

    .line 250
    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->d:Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    .line 5313
    iget-object v0, v3, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->a:Landroid/hardware/Camera;

    .line 251
    .local v0, "camera":Landroid/hardware/Camera;
    if-eqz v0, :cond_10

    .line 252
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 6033
    .local v2, "parameters":Landroid/hardware/Camera$Parameters;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_0
    move-object v3, v4

    .line 254
    :goto_0
    iput-object v3, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->e:Landroid/hardware/Camera$Size;

    .line 255
    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->e:Landroid/hardware/Camera$Size;

    if-nez v3, :cond_8

    .line 256
    const-string/jumbo v3, "DocScanFragment"

    const-string/jumbo v4, "DocCameraParamsConfig getPreviewSize null"

    .line 7018
    const-string/jumbo v5, "im"

    invoke-static {v3, v4, v5}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->d:Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->d:Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    invoke-virtual {v3}, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->a()Z

    move-result v3

    if-nez v3, :cond_1

    .line 283
    sget v3, Liff$f;->camera_open_confirm:I

    invoke-static {v3}, Lhcn;->a(I)V

    .line 286
    .end local v0    # "camera":Landroid/hardware/Camera;
    .end local v2    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_1
    :goto_1
    return-void

    .line 6036
    .restart local v0    # "camera":Landroid/hardware/Camera;
    .restart local v2    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v3

    .line 6037
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    move-object v3, v4

    .line 6038
    goto :goto_0

    .line 6040
    :cond_4
    const/16 v5, 0x500

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Lgrk;->a(Ljava/util/List;IZ)Ljava/util/List;

    move-result-object v5

    .line 6042
    if-eqz v5, :cond_5

    const v3, 0x3fe38e39

    invoke-static {v5, v3}, Lgrk;->a(Ljava/util/List;F)Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 6043
    :goto_2
    if-eqz v3, :cond_6

    .line 6044
    const-string/jumbo v5, "DocCameraParamsConfig"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    const-string/jumbo v7, "getPreviewSize : %d * %d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, v3, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget v10, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Liag;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 279
    .end local v0    # "camera":Landroid/hardware/Camera;
    .end local v2    # "parameters":Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v1

    .line 280
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v3, "DocScanFragment"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "doStartCamera fail : "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 10018
    const-string/jumbo v5, "im"

    invoke-static {v3, v4, v5}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 282
    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->d:Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->d:Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    invoke-virtual {v3}, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->a()Z

    move-result v3

    if-nez v3, :cond_1

    .line 283
    sget v3, Liff$f;->camera_open_confirm:I

    invoke-static {v3}, Lhcn;->a(I)V

    goto :goto_1

    .line 6042
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "camera":Landroid/hardware/Camera;
    .restart local v2    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_5
    const/4 v5, 0x0

    :try_start_3
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    goto :goto_2

    .line 6046
    :cond_6
    const-string/jumbo v5, "DocCameraParamsConfig"

    const-string/jumbo v6, "getPreviewSize result null"

    invoke-static {v5, v6}, Liag;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 282
    .end local v0    # "camera":Landroid/hardware/Camera;
    .end local v2    # "parameters":Landroid/hardware/Camera$Parameters;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->d:Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->d:Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    invoke-virtual {v4}, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->a()Z

    move-result v4

    if-nez v4, :cond_7

    .line 283
    sget v4, Liff$f;->camera_open_confirm:I

    invoke-static {v4}, Lhcn;->a(I)V

    :cond_7
    throw v3

    .line 7103
    .restart local v0    # "camera":Landroid/hardware/Camera;
    .restart local v2    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_8
    if-eqz v0, :cond_9

    :try_start_4
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    if-nez v3, :cond_a

    :cond_9
    move-object v3, v4

    .line 259
    :goto_3
    iput-object v3, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->f:Landroid/hardware/Camera$Size;

    .line 260
    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->f:Landroid/hardware/Camera$Size;

    if-nez v3, :cond_f

    .line 261
    const-string/jumbo v3, "DocScanFragment"

    const-string/jumbo v4, "DocCameraParamsConfig getPictureSize null"

    .line 8018
    const-string/jumbo v5, "im"

    invoke-static {v3, v4, v5}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 282
    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->d:Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->d:Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    invoke-virtual {v3}, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->a()Z

    move-result v3

    if-nez v3, :cond_1

    .line 283
    sget v3, Liff$f;->camera_open_confirm:I

    invoke-static {v3}, Lhcn;->a(I)V

    goto/16 :goto_1

    .line 7106
    :cond_a
    :try_start_5
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v3

    .line 7107
    if-eqz v3, :cond_b

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_c

    :cond_b
    move-object v3, v4

    .line 7108
    goto :goto_3

    .line 7110
    :cond_c
    const/16 v4, 0x780

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lgrk;->a(Ljava/util/List;IZ)Ljava/util/List;

    move-result-object v4

    .line 7112
    if-eqz v4, :cond_d

    const v3, 0x3fe38e39

    invoke-static {v4, v3}, Lgrk;->a(Ljava/util/List;F)Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 7113
    :goto_4
    if-eqz v3, :cond_e

    .line 7114
    const-string/jumbo v4, "DocCameraParamsConfig"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string/jumbo v6, "getPictureSize : %d * %d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, v3, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget v9, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Liag;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 7112
    :cond_d
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    goto :goto_4

    .line 7116
    :cond_e
    const-string/jumbo v4, "DocCameraParamsConfig"

    const-string/jumbo v5, "getPictureSize result null"

    invoke-static {v4, v5}, Liag;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 264
    :cond_f
    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->e:Landroid/hardware/Camera$Size;

    iget v3, v3, Landroid/hardware/Camera$Size;->width:I

    iget-object v4, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->e:Landroid/hardware/Camera$Size;

    iget v4, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 265
    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->f:Landroid/hardware/Camera$Size;

    iget v3, v3, Landroid/hardware/Camera$Size;->width:I

    iget-object v4, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->f:Landroid/hardware/Camera$Size;

    iget v4, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 268
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 270
    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 272
    const/16 v3, 0x8

    iput v3, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->r:I

    .line 273
    const-string/jumbo v3, "DocScanFragment"

    const-string/jumbo v4, "PreviewSize: %dx%d format:%d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->e:Landroid/hardware/Camera$Size;

    iget v7, v7, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->e:Landroid/hardware/Camera$Size;

    iget v7, v7, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/16 v7, 0x11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 9018
    const-string/jumbo v5, "im"

    invoke-static {v3, v4, v5}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->e:Landroid/hardware/Camera$Size;

    iget-object v4, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->b:Landroid/view/SurfaceView;

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->b:Landroid/view/SurfaceView;

    invoke-virtual {v5}, Landroid/view/SurfaceView;->getMeasuredHeight()I

    move-result v5

    .line 9310
    int-to-float v6, v4

    iget v7, v3, Landroid/hardware/Camera$Size;->height:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 9311
    int-to-float v7, v5

    iget v8, v3, Landroid/hardware/Camera$Size;->width:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 9313
    iget-object v8, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->b:Landroid/view/SurfaceView;

    invoke-virtual {v8}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 9314
    cmpl-float v9, v6, v7

    if-ltz v9, :cond_12

    .line 9315
    iput v4, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 9316
    iget v3, v3, Landroid/hardware/Camera$Size;->width:I

    int-to-float v3, v3

    mul-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 9321
    :goto_5
    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->b:Landroid/view/SurfaceView;

    invoke-virtual {v3, v8}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9324
    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->g:Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;

    iget v4, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v5, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->a(II)V

    .line 276
    .end local v2    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_10
    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->d:Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    invoke-virtual {v3}, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->c()V

    .line 277
    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->d:Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    invoke-virtual {v3, p0}, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->a(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 282
    .end local v0    # "camera":Landroid/hardware/Camera;
    :cond_11
    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->d:Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->d:Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    invoke-virtual {v3}, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->a()Z

    move-result v3

    if-nez v3, :cond_1

    .line 283
    sget v3, Liff$f;->camera_open_confirm:I

    invoke-static {v3}, Lhcn;->a(I)V

    goto/16 :goto_1

    .line 9318
    .restart local v0    # "camera":Landroid/hardware/Camera;
    .restart local v2    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_12
    :try_start_6
    iput v5, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 9319
    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    int-to-float v3, v3

    mul-float/2addr v3, v7

    float-to-int v3, v3

    iput v3, v8, Landroid/view/ViewGroup$LayoutParams;->width:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5
.end method

.method private c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 289
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    const-string/jumbo v1, "token_msg_auto_focus_delay"

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 290
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->d:Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->d:Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->a(Landroid/hardware/Camera$PreviewCallback;)V

    .line 292
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->d:Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->d()V

    .line 293
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->d:Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->b()V

    .line 295
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;)[F
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->l:[F

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;)Landroid/hardware/Camera$Size;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->e:Landroid/hardware/Camera$Size;

    return-object v0
.end method

.method private d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 388
    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->m:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$ShootingState;

    sget-object v2, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$ShootingState;->SHOOTING:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$ShootingState;

    if-eq v1, v2, :cond_0

    .line 389
    sget-object v1, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$ShootingState;->SHOOTING:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$ShootingState;

    iput-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->m:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$ShootingState;

    .line 390
    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->d:Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    .line 10313
    iget-object v0, v1, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->a:Landroid/hardware/Camera;

    .line 391
    .local v0, "camera":Landroid/hardware/Camera;
    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {v0, v3, v3, p0}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 395
    .end local v0    # "camera":Landroid/hardware/Camera;
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    .prologue
    .line 54
    iget v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->r:I

    return v0
.end method

.method private e()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 445
    :try_start_0
    sget-object v1, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$ShootingState;->PREVIEW:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$ShootingState;

    iput-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->m:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$ShootingState;

    .line 446
    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->d:Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    .line 11313
    iget-object v1, v1, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->a:Landroid/hardware/Camera;

    .line 446
    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    :goto_0
    return-void

    .line 447
    :catch_0
    move-exception v0

    .line 449
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "DocScanFragment"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "onPicture taken restart preview fail "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 12018
    const-string/jumbo v3, "im"

    invoke-static {v1, v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;)Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->g:Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->j:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;)Lcom/alibaba/doraemon/image/ImageMagician;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->n:Lcom/alibaba/doraemon/image/ImageMagician;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->e()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5
    .annotation runtime Lcom/alibaba/android/dingtalk/permission/annotation/NeedsPermission;
        value = {
            "android.permission.CAMERA"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 228
    :try_start_0
    new-instance v1, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->d:Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    .line 229
    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->d:Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->a(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->d:Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    if-nez v1, :cond_1

    .line 243
    :cond_0
    :goto_1
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "DocScanFragment"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "init camera manager fail "

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4018
    const-string/jumbo v3, "im"

    invoke-static {v1, v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 236
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->d:Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    .line 4321
    const-wide/16 v2, 0x5dc

    iput-wide v2, v1, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->c:J

    .line 237
    iget-object v2, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->d:Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$1;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$1;-><init>(Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;)V

    const-class v4, Lhbq$b;

    invoke-interface {v1, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/support/v4/app/Fragment;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhbq$b;

    .line 4325
    iput-object v1, v2, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->d:Lhbq$b;

    .line 4326
    iget-object v3, v2, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->b:Lhbq;

    if-eqz v3, :cond_0

    .line 4327
    iget-object v2, v2, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->b:Lhbq;

    .line 5160
    iput-object v1, v2, Lhbq;->c:Lhbq$b;

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 338
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 339
    .local v0, "id":I
    sget v1, Liff$d;->btn_shoot:I

    if-ne v0, v1, :cond_3

    .line 342
    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->m:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$ShootingState;

    sget-object v2, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$ShootingState;->PREPARE_SHOOT:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$ShootingState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->m:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$ShootingState;

    sget-object v2, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$ShootingState;->SHOOTING:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$ShootingState;

    if-ne v1, v2, :cond_1

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    sget-object v1, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$ShootingState;->PREPARE_SHOOT:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$ShootingState;

    iput-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->m:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$ShootingState;

    .line 346
    iget-boolean v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->o:Z

    if-eqz v1, :cond_2

    .line 348
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$2;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$2;-><init>(Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;)V

    const-string/jumbo v3, "token_msg_auto_focus_delay"

    .line 353
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x1388

    add-long/2addr v4, v6

    .line 348
    invoke-virtual {v1, v2, v3, v4, v5}, Lhcv;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_0

    .line 356
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->d()V

    goto :goto_0

    .line 358
    :cond_3
    sget v1, Liff$d;->btn_cancel:I

    if-ne v0, v1, :cond_4

    .line 360
    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$a;

    if-eqz v1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$a;

    invoke-interface {v1}, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$a;->b()V

    goto :goto_0

    .line 363
    :cond_4
    sget v1, Liff$d;->image_selected:I

    if-ne v0, v1, :cond_5

    .line 365
    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$a;

    if-eqz v1, :cond_0

    .line 366
    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$a;

    iget-object v2, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->i:Ljava/util/List;

    invoke-interface {v1, v2}, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$a;->a(Ljava/util/List;)V

    goto :goto_0

    .line 368
    :cond_5
    sget v1, Liff$d;->btn_to_see_space:I

    if-ne v0, v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$a;

    if-eqz v1, :cond_0

    .line 370
    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$a;

    invoke-interface {v1}, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$a;->d()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 117
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 133
    :goto_0
    return-void

    .line 121
    :cond_0
    new-instance v2, Lcom/alibaba/dingtalk/doclens/DocLensLib;

    invoke-direct {v2}, Lcom/alibaba/dingtalk/doclens/DocLensLib;-><init>()V

    iput-object v2, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->h:Lcom/alibaba/dingtalk/doclens/DocLensLib;

    .line 122
    sget-object v2, Lhcp;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    .line 123
    .local v1, "docInfos":Ljava/io/Serializable;
    instance-of v2, v1, Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 125
    :try_start_0
    check-cast v1, Ljava/util/ArrayList;

    .end local v1    # "docInfos":Ljava/io/Serializable;
    iput-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->i:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_1
    :goto_1
    sget-object v2, Lhcp;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;

    iput-object v2, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->s:Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;

    .line 132
    const-string/jumbo v2, "IMAGE"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v2, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->n:Lcom/alibaba/doraemon/image/ImageMagician;

    goto :goto_0

    .line 127
    :catch_0
    move-exception v2

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 128
    const-string/jumbo v2, "DocScanFragment"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "fragment argument extra cast to ArrayList<DocCorrectInfo> exception"

    aput-object v5, v3, v4

    invoke-static {v3}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1018
    const-string/jumbo v4, "im"

    invoke-static {v2, v3, v4}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 137
    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->i:Ljava/util/List;

    if-nez v1, :cond_0

    move-object v0, v2

    .line 176
    :goto_0
    return-object v0

    .line 140
    :cond_0
    sget v1, Liff$e;->fragment_layout_doc_scan:I

    invoke-virtual {p1, v1, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 141
    .local v0, "root":Landroid/view/View;
    sget v1, Liff$d;->surface_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->b:Landroid/view/SurfaceView;

    .line 142
    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->b:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->c:Landroid/view/SurfaceHolder;

    .line 143
    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->b:Landroid/view/SurfaceView;

    invoke-virtual {v1, v6}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 145
    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->c:Landroid/view/SurfaceHolder;

    const/4 v3, -0x2

    invoke-interface {v1, v3}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 146
    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->c:Landroid/view/SurfaceHolder;

    const/4 v3, 0x3

    invoke-interface {v1, v3}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 147
    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->c:Landroid/view/SurfaceHolder;

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 148
    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->b:Landroid/view/SurfaceView;

    invoke-virtual {v1, v7}, Landroid/view/SurfaceView;->setDrawingCacheEnabled(Z)V

    .line 151
    sget v1, Liff$d;->quad_edge_detect_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->g:Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;

    .line 152
    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->g:Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;

    sget-object v3, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView$Mode;->DETECT:Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView$Mode;

    invoke-virtual {v1, v3}, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->setMode(Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView$Mode;)V

    .line 154
    sget v1, Liff$d;->btn_shoot:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    sget v1, Liff$d;->btn_cancel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->s:Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;

    sget-object v3, Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;->SCAN:Lcom/alibaba/dingtalk/doclens/DocLensNavFrom;

    if-ne v1, v3, :cond_1

    invoke-static {}, Lgzo;->a()Lgzo;

    move-result-object v1

    invoke-virtual {v1}, Lgzo;->d()Lgrm;

    move-result-object v1

    invoke-interface {v1}, Lgrm;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    sget v1, Liff$d;->rl_title_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 159
    sget v1, Liff$d;->btn_to_see_space:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    :cond_1
    sget v1, Liff$d;->tv_red_dot:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->k:Landroid/widget/TextView;

    .line 163
    sget v1, Liff$d;->image_selected:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->j:Landroid/widget/ImageView;

    .line 164
    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->j:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->i:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 166
    :cond_2
    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->j:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    :goto_1
    invoke-static {p0}, Lgrp;->a(Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;)V

    .line 1329
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "android.hardware.camera.autofocus"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->o:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_2
    sget-object v1, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$ShootingState;->PREVIEW:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$ShootingState;

    iput-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->m:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$ShootingState;

    goto/16 :goto_0

    .line 169
    :cond_3
    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->n:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v4, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->i:Ljava/util/List;

    iget-object v5, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->i:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;->getCorrectDocPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v1, v2}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 170
    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1331
    :catch_0
    move-exception v1

    .line 1332
    const-string/jumbo v2, "DocScanFragment"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "checkAutoFocus fail: "

    aput-object v4, v3, v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-static {v3}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2018
    const-string/jumbo v3, "im"

    invoke-static {v2, v1, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 211
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 212
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->d:Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->d:Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->p:Z

    .line 214
    invoke-direct {p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->c()V

    .line 216
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->q:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->c:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->c:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->c:Landroid/view/SurfaceHolder;

    .line 220
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 198
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 199
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->i:Ljava/util/List;

    if-nez v0, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->c()V

    .line 203
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->p:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->q:Z

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->c:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->q:Z

    goto :goto_0
.end method

.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 8
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 455
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->l:[F

    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->e:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    iget-object v2, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->e:Landroid/hardware/Camera$Size;

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    iget-object v4, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->f:Landroid/hardware/Camera$Size;

    iget v3, v4, Landroid/hardware/Camera$Size;->width:I

    iget-object v4, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->f:Landroid/hardware/Camera$Size;

    iget v4, v4, Landroid/hardware/Camera$Size;->height:I

    iget v5, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->r:I

    iget v6, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->r:I

    invoke-static/range {v0 .. v6}, Lgro;->a([FIIIIII)[F

    move-result-object v7

    .line 456
    .local v7, "sourcePts":[F
    invoke-static {v7}, Lcom/alibaba/dingtalk/doclens/DocLensLib;->a([F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Liff$f;->dt_photo_scan_doc_not_found:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcac;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 458
    invoke-direct {p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->e()V

    .line 493
    :goto_0
    return-void

    .line 461
    :cond_0
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$4;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$4;-><init>(Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;)V

    const-class v2, Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, v1, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/support/v4/app/Fragment;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/Callback;

    .line 492
    .local v3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;>;"
    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->h:Lcom/alibaba/dingtalk/doclens/DocLensLib;

    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->f:Landroid/hardware/Camera$Size;

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->f:Landroid/hardware/Camera$Size;

    iget v6, v0, Landroid/hardware/Camera$Size;->height:I

    iget v4, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->r:I

    .line 12127
    new-instance v0, Lcom/alibaba/dingtalk/doclens/DocLensLib$3;

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/dingtalk/doclens/DocLensLib$3;-><init>(Lcom/alibaba/dingtalk/doclens/DocLensLib;[BLcom/alibaba/wukong/Callback;III[F)V

    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/doclens/DocLensLib;->a(Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 8
    .param p1, "bytes"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 402
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->e:Landroid/hardware/Camera$Size;

    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    iput v1, v0, Landroid/hardware/Camera$Size;->width:I

    .line 403
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->e:Landroid/hardware/Camera$Size;

    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    iput v1, v0, Landroid/hardware/Camera$Size;->height:I

    .line 405
    sget-object v0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$5;->a:[I

    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->m:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$ShootingState;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$ShootingState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 441
    :goto_0
    return-void

    .line 407
    :pswitch_0
    sget-object v0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$ShootingState;->EDGE_DETECTING:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$ShootingState;

    iput-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->m:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$ShootingState;

    .line 408
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/doraemon/eventbus/EventButler;

    .line 409
    .local v7, "eventButler":Lcom/alibaba/doraemon/eventbus/EventButler;
    new-instance v0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$3;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$3;-><init>(Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;)V

    const-class v1, Lcom/alibaba/wukong/Callback;

    invoke-interface {v7, v0, v1, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/support/v4/app/Fragment;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/wukong/Callback;

    .line 433
    .local v6, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->h:Lcom/alibaba/dingtalk/doclens/DocLensLib;

    iget-object v2, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->l:[F

    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->e:Landroid/hardware/Camera$Size;

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->e:Landroid/hardware/Camera$Size;

    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    .line 11067
    new-instance v0, Lcom/alibaba/dingtalk/doclens/DocLensLib$2;

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/dingtalk/doclens/DocLensLib$2;-><init>(Lcom/alibaba/dingtalk/doclens/DocLensLib;[F[BIILcom/alibaba/wukong/Callback;)V

    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/doclens/DocLensLib;->a(Lcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 405
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 377
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 378
    invoke-static {p0, p1, p3}, Lgrp;->a(Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;I[I)V

    .line 379
    return-void
.end method

.method public onResume()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 181
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 182
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->i:Ljava/util/List;

    if-nez v0, :cond_1

    .line 2305
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->p:Z

    if-eqz v0, :cond_2

    .line 186
    invoke-direct {p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->b()V

    goto :goto_0

    .line 188
    :cond_2
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->q:Z

    if-nez v0, :cond_3

    .line 189
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->c:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 190
    iput-boolean v5, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->q:Z

    .line 2299
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->d:Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->d:Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2300
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->d:Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->c()V

    .line 2301
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->d:Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->a(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2303
    :catch_0
    move-exception v0

    .line 2304
    const-string/jumbo v1, "DocScanFragment"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "restart camera preview fail : "

    aput-object v4, v2, v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v2}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3018
    const-string/jumbo v2, "im"

    invoke-static {v1, v0, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .prologue
    .line 509
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 501
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->p:Z

    if-nez v0, :cond_0

    .line 502
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->p:Z

    .line 503
    invoke-direct {p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->b()V

    .line 505
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 513
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->p:Z

    if-eqz v0, :cond_0

    .line 514
    invoke-direct {p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->c()V

    .line 515
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->p:Z

    .line 517
    :cond_0
    return-void
.end method
