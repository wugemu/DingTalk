.class final Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$4;
.super Ljava/lang/Object;
.source "FaceCircleWorkspace.java"

# interfaces
.implements Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->init(Lcom/alipay/mobile/security/bio/service/BioServiceManager;Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$4;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreviewFrame([BLandroid/hardware/Camera;II)V
    .locals 5
    .param p1, "yuv"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;
    .param p3, "rotation"    # I
    .param p4, "cameraNumber"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 360
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$4;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-static {v3}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->f(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 363
    if-eqz p2, :cond_0

    .line 367
    new-instance v2, Lcom/alipay/mobile/security/faceauth/api/YUVFrame;

    invoke-direct {v2}, Lcom/alipay/mobile/security/faceauth/api/YUVFrame;-><init>()V

    .line 368
    .local v2, "yuvFrame":Lcom/alipay/mobile/security/faceauth/api/YUVFrame;
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$4;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-static {v3}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->g(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 369
    rsub-int v3, p3, 0x168

    iput v3, v2, Lcom/alipay/mobile/security/faceauth/api/YUVFrame;->angle:I

    .line 373
    :goto_0
    iput-object p1, v2, Lcom/alipay/mobile/security/faceauth/api/YUVFrame;->yuvData:[B

    .line 374
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$4;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-static {v3}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->i(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 375
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$4;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;Z)Z

    .line 377
    :try_start_0
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    iget v3, v3, Landroid/hardware/Camera$Size;->width:I

    iput v3, v2, Lcom/alipay/mobile/security/faceauth/api/YUVFrame;->previewWidth:I

    .line 378
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    iput v3, v2, Lcom/alipay/mobile/security/faceauth/api/YUVFrame;->previewHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :goto_1
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$4;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    iget v4, v2, Lcom/alipay/mobile/security/faceauth/api/YUVFrame;->previewWidth:I

    invoke-static {v3, v4}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;I)I

    .line 383
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$4;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    iget v4, v2, Lcom/alipay/mobile/security/faceauth/api/YUVFrame;->previewHeight:I

    invoke-static {v3, v4}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->b(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;I)I

    .line 384
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$4;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    iget v4, v2, Lcom/alipay/mobile/security/faceauth/api/YUVFrame;->angle:I

    invoke-static {v3, v4}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->c(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;I)I

    .line 390
    :goto_2
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$4;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    iget-object v3, v3, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->b:Lcom/alipay/mobile/security/faceauth/FaceService;

    iget-object v4, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$4;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    iget-object v4, v4, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->mFaceCallback:Lcom/alipay/mobile/security/faceauth/api/FaceCallback;

    invoke-virtual {v3, v2, v4}, Lcom/alipay/mobile/security/faceauth/FaceService;->faceQualityDetection(Lcom/alipay/mobile/security/faceauth/api/YUVFrame;Lcom/alipay/mobile/security/faceauth/api/FaceCallback;)Lcom/alipay/mobile/security/faceauth/api/RESULT;

    move-result-object v1

    .line 392
    .local v1, "result":Lcom/alipay/mobile/security/faceauth/api/RESULT;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onPreviewFrame result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 398
    .end local v1    # "result":Lcom/alipay/mobile/security/faceauth/api/RESULT;
    .end local v2    # "yuvFrame":Lcom/alipay/mobile/security/faceauth/api/YUVFrame;
    :cond_0
    return-void

    .line 371
    .restart local v2    # "yuvFrame":Lcom/alipay/mobile/security/faceauth/api/YUVFrame;
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$4;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-static {v3}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->h(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)I

    move-result v3

    iput v3, v2, Lcom/alipay/mobile/security/faceauth/api/YUVFrame;->angle:I

    goto :goto_0

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 386
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$4;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-static {v3}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->j(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)I

    move-result v3

    iput v3, v2, Lcom/alipay/mobile/security/faceauth/api/YUVFrame;->previewWidth:I

    .line 387
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$4;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-static {v3}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->k(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)I

    move-result v3

    iput v3, v2, Lcom/alipay/mobile/security/faceauth/api/YUVFrame;->previewHeight:I

    goto :goto_2
.end method

.method public final onSurfaceError(I)V
    .locals 2
    .param p1, "errorCode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 402
    const/16 v0, 0x3f6

    if-ne p1, v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$4;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    sget-object v1, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_NO_PERMISSION_OF_CAMERA:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;)V

    .line 405
    :cond_0
    return-void
.end method

.method public final surfaceChanged(DD)V
    .locals 0
    .param p1, "previewWidth"    # D
    .param p3, "previewHeight"    # D

    .prologue
    .line 350
    return-void
.end method

.method public final surfaceCreated()V
    .locals 0

    .prologue
    .line 345
    return-void
.end method

.method public final surfaceDestroyed()V
    .locals 0

    .prologue
    .line 355
    return-void
.end method
