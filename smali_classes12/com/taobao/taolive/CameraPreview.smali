.class public Lcom/taobao/taolive/CameraPreview;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/taolive/CameraPreview$PreviewView;
    }
.end annotation


# static fields
.field private static final NUM_CAPTURE_CALLBACK_BUFFERS:I = 0x4

.field private static final TAG:Ljava/lang/String; = "CameraPreview"


# instance fields
.field private final DUMP:Z

.field private cameraID:I

.field private cameraStatus:I

.field private ctx_:Landroid/content/Context;

.field dump_yuv:Ljava/io/File;

.field private facing_:I

.field private height_:I

.field listPrewSize:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation
.end field

.field private mCamera:Landroid/hardware/Camera;

.field private mDropped:Z

.field mFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mParams:Landroid/hardware/Camera$Parameters;

.field private mPreviewView:Lcom/taobao/taolive/CameraPreview$PreviewView;

.field out:Ljava/io/FileOutputStream;

.field private pointer_:J

.field private sf:Landroid/view/Surface;

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private viewerMirror_:I

.field private width_:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/taolive/CameraPreview;->DUMP:Z

    .line 29
    iput-object v1, p0, Lcom/taobao/taolive/CameraPreview;->mPreviewView:Lcom/taobao/taolive/CameraPreview$PreviewView;

    .line 30
    iput-object v1, p0, Lcom/taobao/taolive/CameraPreview;->mCamera:Landroid/hardware/Camera;

    .line 31
    iput-boolean v2, p0, Lcom/taobao/taolive/CameraPreview;->mDropped:Z

    .line 35
    const/16 v0, 0x280

    iput v0, p0, Lcom/taobao/taolive/CameraPreview;->width_:I

    .line 36
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/taobao/taolive/CameraPreview;->height_:I

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/taobao/taolive/CameraPreview;->cameraID:I

    .line 38
    iput-object v1, p0, Lcom/taobao/taolive/CameraPreview;->sf:Landroid/view/Surface;

    .line 39
    iput-object v1, p0, Lcom/taobao/taolive/CameraPreview;->dump_yuv:Ljava/io/File;

    .line 40
    iput-object v1, p0, Lcom/taobao/taolive/CameraPreview;->out:Ljava/io/FileOutputStream;

    .line 42
    iput-object v1, p0, Lcom/taobao/taolive/CameraPreview;->ctx_:Landroid/content/Context;

    .line 43
    iput v2, p0, Lcom/taobao/taolive/CameraPreview;->facing_:I

    .line 44
    iput v2, p0, Lcom/taobao/taolive/CameraPreview;->viewerMirror_:I

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/taobao/taolive/CameraPreview;->pointer_:J

    .line 47
    iput v2, p0, Lcom/taobao/taolive/CameraPreview;->cameraStatus:I

    .line 55
    new-instance v0, Landroid/graphics/SurfaceTexture;

    const v1, 0x8d65

    invoke-static {v1}, Lcom/taobao/taolive/util;->generateTexture(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/taolive/CameraPreview;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 57
    iput-object p1, p0, Lcom/taobao/taolive/CameraPreview;->ctx_:Landroid/content/Context;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/taolive/CameraPreview;)Z
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taolive/CameraPreview;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/taobao/taolive/CameraPreview;->mDropped:Z

    return v0
.end method

.method static synthetic access$100(Lcom/taobao/taolive/CameraPreview;)Landroid/view/Surface;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taolive/CameraPreview;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/taobao/taolive/CameraPreview;->sf:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$102(Lcom/taobao/taolive/CameraPreview;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/taolive/CameraPreview;
    .param p1, "x1"    # Landroid/view/Surface;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/taobao/taolive/CameraPreview;->sf:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$200(Lcom/taobao/taolive/CameraPreview;)Landroid/hardware/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taolive/CameraPreview;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/taobao/taolive/CameraPreview;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$300(Lcom/taobao/taolive/CameraPreview;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taolive/CameraPreview;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/taobao/taolive/CameraPreview;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic access$400(Lcom/taobao/taolive/CameraPreview;)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taolive/CameraPreview;

    .prologue
    .line 25
    iget v0, p0, Lcom/taobao/taolive/CameraPreview;->width_:I

    return v0
.end method

.method static synthetic access$500(Lcom/taobao/taolive/CameraPreview;)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taolive/CameraPreview;

    .prologue
    .line 25
    iget v0, p0, Lcom/taobao/taolive/CameraPreview;->height_:I

    return v0
.end method

.method private findCamera(I)I
    .locals 10
    .param p1, "_cameraID"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 198
    const/4 v1, 0x0

    .line 200
    .local v1, "camera_id":I
    :try_start_0
    new-instance v5, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v5}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 201
    .local v5, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v6

    .line 202
    .local v6, "numCameras":I
    const/4 v3, -0x1

    .line 203
    .local v3, "frontCamId":I
    const/4 v0, -0x1

    .line 204
    .local v0, "backCamId":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_3

    .line 205
    invoke-static {v4, v5}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 206
    iget v7, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v7, :cond_1

    .line 207
    move v0, v4

    .line 208
    iget v7, p0, Lcom/taobao/taolive/CameraPreview;->cameraStatus:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/taobao/taolive/CameraPreview;->cameraStatus:I

    .line 204
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 209
    :cond_1
    iget v7, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v7, v9, :cond_0

    .line 210
    move v3, v4

    .line 211
    iget v7, p0, Lcom/taobao/taolive/CameraPreview;->cameraStatus:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/taobao/taolive/CameraPreview;->cameraStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 219
    .end local v0    # "backCamId":I
    .end local v3    # "frontCamId":I
    .end local v4    # "i":I
    .end local v5    # "info":Landroid/hardware/Camera$CameraInfo;
    .end local v6    # "numCameras":I
    :catch_0
    move-exception v2

    .line 220
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 223
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return v1

    .line 214
    .restart local v0    # "backCamId":I
    .restart local v3    # "frontCamId":I
    .restart local v4    # "i":I
    .restart local v5    # "info":Landroid/hardware/Camera$CameraInfo;
    .restart local v6    # "numCameras":I
    :cond_3
    if-eq v3, v8, :cond_4

    if-ne v9, p1, :cond_4

    .line 215
    move v1, v3

    goto :goto_2

    .line 216
    :cond_4
    if-eq v0, v8, :cond_2

    if-nez p1, :cond_2

    .line 217
    move v1, v0

    goto :goto_2
.end method

.method private setCameraDisplayOrientation(I)V
    .locals 6
    .param p1, "rotation"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 339
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 340
    .local v1, "info":Landroid/hardware/Camera$CameraInfo;
    iget v3, p0, Lcom/taobao/taolive/CameraPreview;->cameraID:I

    invoke-static {v3, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 341
    const/4 v0, 0x0

    .line 342
    .local v0, "degrees":I
    packed-switch p1, :pswitch_data_0

    .line 358
    :goto_0
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 359
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v3, v0

    rem-int/lit16 v2, v3, 0x168

    .line 360
    .local v2, "result":I
    rsub-int v3, v2, 0x168

    rem-int/lit16 v2, v3, 0x168

    .line 364
    :goto_1
    iget-object v3, p0, Lcom/taobao/taolive/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 365
    iget-wide v4, p0, Lcom/taobao/taolive/CameraPreview;->pointer_:J

    invoke-virtual {p0, v2, v4, v5}, Lcom/taobao/taolive/CameraPreview;->set_camera_DisplayOrientation(IJ)V

    .line 366
    return-void

    .line 344
    .end local v2    # "result":I
    :pswitch_0
    const/4 v0, 0x0

    .line 345
    goto :goto_0

    .line 347
    :pswitch_1
    const/16 v0, 0x5a

    .line 348
    goto :goto_0

    .line 350
    :pswitch_2
    const/16 v0, 0xb4

    .line 351
    goto :goto_0

    .line 353
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 362
    :cond_0
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v3, v0

    add-int/lit16 v3, v3, 0x168

    rem-int/lit16 v2, v3, 0x168

    .restart local v2    # "result":I
    goto :goto_1

    .line 342
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public Close()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 267
    iget-object v1, p0, Lcom/taobao/taolive/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 268
    const-string/jumbo v1, "CameraPreview"

    const-string/jumbo v2, "mCamera is null"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/taobao/living/utils/TBLSLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    const/4 v0, -0x1

    .line 277
    :goto_0
    return v0

    .line 271
    :cond_0
    const-class v1, Lcom/taobao/taolive/CameraPreview;

    monitor-enter v1

    .line 272
    :try_start_0
    iget-object v2, p0, Lcom/taobao/taolive/CameraPreview;->mCamera:Landroid/hardware/Camera;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 273
    iget-object v2, p0, Lcom/taobao/taolive/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 274
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/taobao/taolive/CameraPreview;->mCamera:Landroid/hardware/Camera;

    .line 275
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/taobao/taolive/CameraPreview;->mDropped:Z

    .line 276
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public Open(III)Landroid/view/SurfaceView;
    .locals 3
    .param p1, "_cameraID"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 227
    const-class v1, Lcom/taobao/taolive/CameraPreview;

    monitor-enter v1

    .line 228
    :try_start_0
    invoke-direct {p0, p1}, Lcom/taobao/taolive/CameraPreview;->findCamera(I)I

    move-result v0

    iput v0, p0, Lcom/taobao/taolive/CameraPreview;->cameraID:I

    .line 229
    iput p2, p0, Lcom/taobao/taolive/CameraPreview;->width_:I

    .line 230
    iput p3, p0, Lcom/taobao/taolive/CameraPreview;->height_:I

    .line 231
    new-instance v0, Lcom/taobao/taolive/CameraPreview$PreviewView;

    iget-object v2, p0, Lcom/taobao/taolive/CameraPreview;->ctx_:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lcom/taobao/taolive/CameraPreview$PreviewView;-><init>(Lcom/taobao/taolive/CameraPreview;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/taolive/CameraPreview;->mPreviewView:Lcom/taobao/taolive/CameraPreview$PreviewView;

    .line 232
    iget-object v0, p0, Lcom/taobao/taolive/CameraPreview;->mPreviewView:Lcom/taobao/taolive/CameraPreview$PreviewView;

    invoke-virtual {v0}, Lcom/taobao/taolive/CameraPreview$PreviewView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 234
    iget-object v0, p0, Lcom/taobao/taolive/CameraPreview;->mPreviewView:Lcom/taobao/taolive/CameraPreview$PreviewView;

    invoke-virtual {v0}, Lcom/taobao/taolive/CameraPreview$PreviewView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v2, p0, Lcom/taobao/taolive/CameraPreview;->mPreviewView:Lcom/taobao/taolive/CameraPreview$PreviewView;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 235
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    iget-object v0, p0, Lcom/taobao/taolive/CameraPreview;->mPreviewView:Lcom/taobao/taolive/CameraPreview$PreviewView;

    return-object v0

    .line 235
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public Start()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 240
    iget-object v2, p0, Lcom/taobao/taolive/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-nez v2, :cond_0

    .line 241
    const-string/jumbo v2, "CameraPreview"

    const-string/jumbo v3, "mCamera is null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/taobao/living/utils/TBLSLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    const/4 v1, -0x1

    .line 252
    :goto_0
    return v1

    .line 244
    :cond_0
    const-class v2, Lcom/taobao/taolive/CameraPreview;

    monitor-enter v2

    .line 245
    const/4 v3, 0x0

    :try_start_0
    iput v3, p0, Lcom/taobao/taolive/CameraPreview;->viewerMirror_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    :try_start_1
    iget-object v3, p0, Lcom/taobao/taolive/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->startPreview()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public Stop()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 256
    iget-object v0, p0, Lcom/taobao/taolive/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 257
    const-string/jumbo v0, "CameraPreview"

    const-string/jumbo v1, "mCamera is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/living/utils/TBLSLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    :goto_0
    return-void

    .line 260
    :cond_0
    const-class v1, Lcom/taobao/taolive/CameraPreview;

    monitor-enter v1

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/taobao/taolive/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 262
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/taolive/CameraPreview;->viewerMirror_:I

    .line 263
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCameraStatus()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lcom/taobao/taolive/CameraPreview;->cameraStatus:I

    return v0
.end method

.method public native get_pic_prew(J)[B
.end method

.method public get_pic_prew_rgb565()[B
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 368
    iget-wide v0, p0, Lcom/taobao/taolive/CameraPreview;->pointer_:J

    invoke-virtual {p0, v0, v1}, Lcom/taobao/taolive/CameraPreview;->get_pic_prew(J)[B

    move-result-object v0

    return-object v0
.end method

.method public native onFrameCallback(Landroid/view/Surface;[BIIIJIII)V
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 12
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 374
    monitor-enter p0

    .line 376
    :try_start_0
    iget-object v1, p0, Lcom/taobao/taolive/CameraPreview;->sf:Landroid/view/Surface;

    array-length v3, p1

    iget v4, p0, Lcom/taobao/taolive/CameraPreview;->width_:I

    iget v5, p0, Lcom/taobao/taolive/CameraPreview;->height_:I

    iget-wide v6, p0, Lcom/taobao/taolive/CameraPreview;->pointer_:J

    const/16 v8, 0x11

    iget v9, p0, Lcom/taobao/taolive/CameraPreview;->facing_:I

    iget v10, p0, Lcom/taobao/taolive/CameraPreview;->viewerMirror_:I

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v10}, Lcom/taobao/taolive/CameraPreview;->onFrameCallback(Landroid/view/Surface;[BIIIJIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 381
    :try_start_1
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 383
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 377
    :catch_0
    move-exception v11

    .line 378
    .local v11, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v0, "onPreviewFrame"

    const-string/jumbo v1, "failed on frame callback"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/living/utils/TBLSLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 379
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 381
    :try_start_3
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto :goto_0

    .line 383
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 381
    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public open_camera()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v14, 0x4

    .line 160
    :try_start_0
    iget v10, p0, Lcom/taobao/taolive/CameraPreview;->cameraID:I

    invoke-static {v10}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v10

    iput-object v10, p0, Lcom/taobao/taolive/CameraPreview;->mCamera:Landroid/hardware/Camera;

    .line 161
    iget-object v10, p0, Lcom/taobao/taolive/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-nez v10, :cond_0

    .line 195
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v10, p0, Lcom/taobao/taolive/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v10}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v10

    iput-object v10, p0, Lcom/taobao/taolive/CameraPreview;->mParams:Landroid/hardware/Camera$Parameters;

    .line 163
    iget-object v10, p0, Lcom/taobao/taolive/CameraPreview;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v6

    .line 164
    .local v6, "mSupportedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Size;

    .line 165
    .local v8, "size":Landroid/hardware/Camera$Size;
    const-string/jumbo v11, "CameraPreview"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "w: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v13, v8, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", h: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v8, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v11, v12, v13}, Lcom/taobao/living/utils/TBLSLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 192
    .end local v6    # "mSupportedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v8    # "size":Landroid/hardware/Camera$Size;
    :catch_0
    move-exception v2

    .line 193
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 167
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v6    # "mSupportedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_1
    :try_start_1
    invoke-static {v6}, Lcom/taobao/taolive/util;->mapCameraSizeList2MSizeArray(Ljava/util/List;)[Lcom/taobao/taolive/MSize;

    move-result-object v9

    .line 168
    .local v9, "sizes":[Lcom/taobao/taolive/MSize;
    new-instance v8, Lcom/taobao/taolive/MSize;

    iget v10, p0, Lcom/taobao/taolive/CameraPreview;->width_:I

    iget v11, p0, Lcom/taobao/taolive/CameraPreview;->height_:I

    invoke-direct {v8, v10, v11}, Lcom/taobao/taolive/MSize;-><init>(II)V

    .line 169
    .local v8, "size":Lcom/taobao/taolive/MSize;
    const/4 v10, 0x4

    invoke-static {v9, v8, v8, v10}, Lcom/taobao/taolive/util;->getPreferredResolution([Lcom/taobao/taolive/MSize;Lcom/taobao/taolive/MSize;Lcom/taobao/taolive/MSize;I)Lcom/taobao/taolive/MSize;

    move-result-object v7

    .line 170
    .local v7, "previewSize":Lcom/taobao/taolive/MSize;
    iget v10, v7, Lcom/taobao/taolive/MSize;->width:I

    iput v10, p0, Lcom/taobao/taolive/CameraPreview;->width_:I

    .line 171
    iget v10, v7, Lcom/taobao/taolive/MSize;->height:I

    iput v10, p0, Lcom/taobao/taolive/CameraPreview;->height_:I

    .line 172
    const-string/jumbo v10, "CameraPreview"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "preview size: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, p0, Lcom/taobao/taolive/CameraPreview;->width_:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/taobao/taolive/CameraPreview;->height_:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/taobao/living/utils/TBLSLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    iget-object v10, p0, Lcom/taobao/taolive/CameraPreview;->mParams:Landroid/hardware/Camera$Parameters;

    iget v11, p0, Lcom/taobao/taolive/CameraPreview;->width_:I

    iget v12, p0, Lcom/taobao/taolive/CameraPreview;->height_:I

    invoke-virtual {v10, v11, v12}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 174
    iget-object v10, p0, Lcom/taobao/taolive/CameraPreview;->mParams:Landroid/hardware/Camera$Parameters;

    iget v11, p0, Lcom/taobao/taolive/CameraPreview;->width_:I

    iget v12, p0, Lcom/taobao/taolive/CameraPreview;->height_:I

    invoke-virtual {v10, v11, v12}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 175
    iget-object v10, p0, Lcom/taobao/taolive/CameraPreview;->mParams:Landroid/hardware/Camera$Parameters;

    const/16 v11, 0x11

    invoke-virtual {v10, v11}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 176
    iget-object v10, p0, Lcom/taobao/taolive/CameraPreview;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    .line 177
    .local v3, "focusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v10, "continuous-video"

    invoke-interface {v3, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 178
    iget-object v10, p0, Lcom/taobao/taolive/CameraPreview;->mParams:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v11, "continuous-video"

    invoke-virtual {v10, v11}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 180
    :cond_2
    iget-object v10, p0, Lcom/taobao/taolive/CameraPreview;->mCamera:Landroid/hardware/Camera;

    iget-object v11, p0, Lcom/taobao/taolive/CameraPreview;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v11}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 181
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v14, :cond_3

    .line 182
    iget v10, p0, Lcom/taobao/taolive/CameraPreview;->width_:I

    iget v11, p0, Lcom/taobao/taolive/CameraPreview;->height_:I

    mul-int/2addr v10, v11

    mul-int/lit8 v10, v10, 0x3

    div-int/lit8 v0, v10, 0x2

    .line 183
    .local v0, "bufSize":I
    new-array v1, v0, [B

    .line 184
    .local v1, "buffer":[B
    iget-object v10, p0, Lcom/taobao/taolive/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v10, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 181
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 186
    .end local v0    # "bufSize":I
    .end local v1    # "buffer":[B
    :cond_3
    iget-object v10, p0, Lcom/taobao/taolive/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v10, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 187
    new-instance v5, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v5}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 188
    .local v5, "info":Landroid/hardware/Camera$CameraInfo;
    iget v10, p0, Lcom/taobao/taolive/CameraPreview;->cameraID:I

    invoke-static {v10, v5}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 190
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/taobao/taolive/CameraPreview;->setCameraDisplayOrientation(I)V

    .line 191
    iget v10, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    iput v10, p0, Lcom/taobao/taolive/CameraPreview;->facing_:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method setCtx(J)V
    .locals 1
    .param p1, "pointer"    # J

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/taobao/taolive/CameraPreview;->pointer_:J

    .line 62
    return-void
.end method

.method public setViewerMirror(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 335
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/taobao/taolive/CameraPreview;->viewerMirror_:I

    .line 336
    return-void

    .line 335
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native set_camera_DisplayOrientation(IJ)V
.end method

.method public turnLightOff()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 310
    iget-object v3, p0, Lcom/taobao/taolive/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-nez v3, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-object v3, p0, Lcom/taobao/taolive/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 314
    .local v2, "parameters":Landroid/hardware/Camera$Parameters;
    if-eqz v2, :cond_0

    .line 317
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 318
    .local v1, "flashModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "flashMode":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 323
    const-string/jumbo v3, "off"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 325
    const-string/jumbo v3, "off"

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 326
    const-string/jumbo v3, "off"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 327
    iget-object v3, p0, Lcom/taobao/taolive/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 329
    :cond_2
    const-string/jumbo v3, "CameraPreview"

    const-string/jumbo v4, "FLASH_MODE_OFF not supported"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/living/utils/TBLSLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public turnLightOn()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 285
    iget-object v3, p0, Lcom/taobao/taolive/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-nez v3, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    iget-object v3, p0, Lcom/taobao/taolive/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 289
    .local v2, "parameters":Landroid/hardware/Camera$Parameters;
    if-eqz v2, :cond_0

    .line 292
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 294
    .local v1, "flashModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 298
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "flashMode":Ljava/lang/String;
    const-string/jumbo v3, "torch"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 301
    const-string/jumbo v3, "torch"

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 302
    const-string/jumbo v3, "torch"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 303
    iget-object v3, p0, Lcom/taobao/taolive/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method
