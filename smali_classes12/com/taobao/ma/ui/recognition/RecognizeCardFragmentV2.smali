.class public Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;
.super Lcom/taobao/ma/ui/ScanBaseFragment;
.source "RecognizeCardFragmentV2.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation build Lcom/alibaba/android/dingtalk/permission/annotation/RuntimePermissions;
.end annotation


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field a:Lcom/taobao/ma/ui/recognition/CameraFrontView;

.field b:F

.field private f:Lcom/alibaba/android/scan/camera/CameraManager;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;

.field private n:Landroid/media/MediaPlayer;

.field private o:Landroid/hardware/Camera$Size;

.field private p:Lcom/taobao/ma/ui/recognition/CameraSurfaceView;

.field private q:Landroid/view/SurfaceHolder;

.field private r:I

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:F

.field private v:Landroid/widget/ImageView;

.field private w:Landroid/graphics/Rect;

.field private x:Landroid/widget/ImageButton;

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhcs;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->e:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-direct {p0}, Lcom/taobao/ma/ui/ScanBaseFragment;-><init>()V

    .line 104
    iput-boolean v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->g:Z

    .line 105
    iput-boolean v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->h:Z

    .line 106
    iput-boolean v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->i:Z

    .line 107
    iput-boolean v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->j:Z

    .line 108
    iput-boolean v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->k:Z

    .line 109
    iput-boolean v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->l:Z

    return-void
.end method

.method static synthetic a(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;F)F
    .locals 0
    .param p0, "x0"    # Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;
    .param p1, "x1"    # F

    .prologue
    .line 87
    iput p1, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->u:F

    return p1
.end method

.method static synthetic a(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;[B)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;
    .param p1, "x1"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a([B)Ljava/lang/String;
    .locals 14
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 583
    iget-object v1, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->a:Lcom/taobao/ma/ui/recognition/CameraFrontView;

    invoke-virtual {v1}, Lcom/taobao/ma/ui/recognition/CameraFrontView;->getCardRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 6620
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 6622
    iget-object v3, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->a:Lcom/taobao/ma/ui/recognition/CameraFrontView;

    invoke-virtual {v3}, Lcom/taobao/ma/ui/recognition/CameraFrontView;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 6623
    iget-object v3, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->a:Lcom/taobao/ma/ui/recognition/CameraFrontView;

    invoke-virtual {v3}, Lcom/taobao/ma/ui/recognition/CameraFrontView;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 6624
    if-ge v4, v3, :cond_0

    .line 6626
    iget-object v3, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->a:Lcom/taobao/ma/ui/recognition/CameraFrontView;

    invoke-virtual {v3}, Lcom/taobao/ma/ui/recognition/CameraFrontView;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 6627
    iget-object v3, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->a:Lcom/taobao/ma/ui/recognition/CameraFrontView;

    invoke-virtual {v3}, Lcom/taobao/ma/ui/recognition/CameraFrontView;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 6629
    :cond_0
    if-eqz v4, :cond_1

    if-nez v3, :cond_3

    :cond_1
    move-object v1, v2

    .line 583
    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->w:Landroid/graphics/Rect;

    .line 585
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    .line 586
    .local v11, "timeStamp":Ljava/lang/String;
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v11, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "."

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "jpg"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 590
    .local v10, "path":Ljava/lang/String;
    const/4 v8, 0x0

    .line 593
    .local v8, "os":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 594
    .local v7, "file":Ljava/io/File;
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    .end local v8    # "os":Ljava/io/FileOutputStream;
    .local v9, "os":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v0, Landroid/graphics/YuvImage;

    iget v2, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->r:I

    iget-object v1, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->o:Landroid/hardware/Camera$Size;

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget-object v1, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->o:Landroid/hardware/Camera$Size;

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    const/4 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 598
    .local v0, "yuvImage":Landroid/graphics/YuvImage;
    iget-object v1, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->w:Landroid/graphics/Rect;

    const/16 v2, 0x62

    invoke-virtual {v0, v1, v2, v9}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 599
    const-string/jumbo v1, "RecognizeCardActivity"

    const-string/jumbo v2, "File size:%d, path: %s "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v12

    const/16 v5, 0xa

    shr-long/2addr v12, v5

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 600
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 599
    invoke-static {v1, v2, v3}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 601
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 607
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    .line 608
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    move-object v8, v9

    .line 611
    .end local v0    # "yuvImage":Landroid/graphics/YuvImage;
    .end local v7    # "file":Ljava/io/File;
    .end local v9    # "os":Ljava/io/FileOutputStream;
    .restart local v8    # "os":Ljava/io/FileOutputStream;
    :goto_1
    return-object v1

    .line 6634
    .end local v8    # "os":Ljava/io/FileOutputStream;
    .end local v10    # "path":Ljava/lang/String;
    .end local v11    # "timeStamp":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->o:Landroid/hardware/Camera$Size;

    iget v5, v5, Landroid/hardware/Camera$Size;->width:I

    int-to-float v5, v5

    int-to-float v4, v4

    div-float v4, v5, v4

    .line 6635
    iget-object v5, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->o:Landroid/hardware/Camera$Size;

    iget v5, v5, Landroid/hardware/Camera$Size;->height:I

    int-to-float v5, v5

    int-to-float v3, v3

    div-float v3, v5, v3

    .line 6638
    iget v5, v2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    float-to-double v12, v5

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v5, v12

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 6639
    iget v5, v2, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-double v12, v5

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v5, v12

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 6640
    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 6641
    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 6643
    iget v2, v1, Landroid/graphics/Rect;->left:I

    if-gez v2, :cond_4

    .line 6644
    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 6646
    :cond_4
    iget v2, v1, Landroid/graphics/Rect;->top:I

    if-gez v2, :cond_5

    .line 6647
    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 6649
    :cond_5
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->o:Landroid/hardware/Camera$Size;

    iget v3, v3, Landroid/hardware/Camera$Size;->width:I

    if-le v2, v3, :cond_6

    .line 6650
    iget-object v2, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->o:Landroid/hardware/Camera$Size;

    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 6652
    :cond_6
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->o:Landroid/hardware/Camera$Size;

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    if-le v2, v3, :cond_2

    .line 6653
    iget-object v2, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->o:Landroid/hardware/Camera$Size;

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    .line 602
    .restart local v8    # "os":Ljava/io/FileOutputStream;
    .restart local v10    # "path":Ljava/lang/String;
    .restart local v11    # "timeStamp":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 603
    .local v6, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 604
    const-string/jumbo v1, "RecognizeCardActivity"

    const-string/jumbo v2, "onSavePicture fail: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 606
    if-eqz v8, :cond_7

    .line 607
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 608
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 611
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 606
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    :goto_3
    if-eqz v8, :cond_8

    .line 607
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 608
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    :cond_8
    throw v1

    .line 606
    .end local v8    # "os":Ljava/io/FileOutputStream;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v9    # "os":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v1

    move-object v8, v9

    .end local v9    # "os":Ljava/io/FileOutputStream;
    .restart local v8    # "os":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 602
    .end local v8    # "os":Ljava/io/FileOutputStream;
    .restart local v9    # "os":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v6

    move-object v8, v9

    .end local v9    # "os":Ljava/io/FileOutputStream;
    .restart local v8    # "os":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method static synthetic a(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;Landroid/view/View;I)V
    .locals 5
    .param p0, "x0"    # Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 87
    .line 9575
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->a:Lcom/taobao/ma/ui/recognition/CameraFrontView;

    invoke-virtual {v0}, Lcom/taobao/ma/ui/recognition/CameraFrontView;->getCardRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->a:Lcom/taobao/ma/ui/recognition/CameraFrontView;

    invoke-virtual {v1}, Lcom/taobao/ma/ui/recognition/CameraFrontView;->getGap()I

    move-result v1

    sub-int/2addr v0, v1

    .line 9576
    iget-object v1, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->a:Lcom/taobao/ma/ui/recognition/CameraFrontView;

    invoke-virtual {v1}, Lcom/taobao/ma/ui/recognition/CameraFrontView;->getCardRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p2

    iget-object v2, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->a:Lcom/taobao/ma/ui/recognition/CameraFrontView;

    invoke-virtual {v2}, Lcom/taobao/ma/ui/recognition/CameraFrontView;->getGap()I

    move-result v2

    sub-int/2addr v1, v2

    .line 9577
    iget-object v2, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->a:Lcom/taobao/ma/ui/recognition/CameraFrontView;

    invoke-virtual {v2}, Lcom/taobao/ma/ui/recognition/CameraFrontView;->getCardRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->a:Lcom/taobao/ma/ui/recognition/CameraFrontView;

    invoke-virtual {v3}, Lcom/taobao/ma/ui/recognition/CameraFrontView;->getGap()I

    move-result v3

    add-int/2addr v2, v3

    .line 9578
    iget-object v3, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->a:Lcom/taobao/ma/ui/recognition/CameraFrontView;

    invoke-virtual {v3}, Lcom/taobao/ma/ui/recognition/CameraFrontView;->getCardRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->a:Lcom/taobao/ma/ui/recognition/CameraFrontView;

    invoke-virtual {v4}, Lcom/taobao/ma/ui/recognition/CameraFrontView;->getGap()I

    move-result v4

    add-int/2addr v3, v4

    .line 9579
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 87
    return-void
.end method

.method static synthetic a(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    .line 8659
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    .line 8661
    invoke-static {}, Ljmr;->a()Ljmq;

    move-result-object v1

    new-instance v2, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$2;

    invoke-direct {v2, p0}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$2;-><init>(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;)V

    const-class v3, Lcma;

    .line 8694
    invoke-virtual {p0}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 8661
    invoke-interface {v0, v2, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-interface {v1, p1, v0}, Ljmq;->a(Ljava/lang/String;Lcma;)V

    .line 87
    return-void
.end method

.method static synthetic a(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->y:Z

    return v0
.end method

.method static synthetic a(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->s:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;)V
    .locals 2
    .param p0, "x0"    # Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    .prologue
    .line 87
    .line 7231
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    const-string/jumbo v1, "token_msg_auto_focus_delay"

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7232
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->f:Lcom/alibaba/android/scan/camera/CameraManager;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->i:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7234
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->f:Lcom/alibaba/android/scan/camera/CameraManager;

    .line 7352
    iget-object v0, v0, Lcom/alibaba/android/scan/camera/CameraManager;->a:Landroid/hardware/Camera;

    .line 7234
    if-eqz v0, :cond_0

    .line 7235
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->f:Lcom/alibaba/android/scan/camera/CameraManager;

    .line 8352
    iget-object v0, v0, Lcom/alibaba/android/scan/camera/CameraManager;->a:Landroid/hardware/Camera;

    .line 7235
    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 7237
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->j:Z

    .line 7238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->i:Z

    .line 87
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->j:Z

    return v0
.end method

.method static synthetic c(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->t:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;)V
    .locals 4
    .param p0, "x0"    # Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    .prologue
    .line 87
    .line 8448
    iget-boolean v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->l:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8449
    :cond_0
    :goto_0
    return-void

    .line 8451
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 8452
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 8454
    const-string/jumbo v2, "completed_back_to_target_action"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8456
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 8457
    const-string/jumbo v2, "com.workapp.recognize.card.from.camera"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 8462
    :goto_1
    const-string/jumbo v2, "activity_identify"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8463
    const-string/jumbo v3, "activity_identify"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8465
    iget-object v2, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->s:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 8466
    const-string/jumbo v2, "recognize_card_result"

    iget-object v3, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->s:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8468
    :cond_2
    iget-object v2, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->t:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 8469
    const-string/jumbo v2, "media_id"

    iget-object v3, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->t:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8471
    :cond_3
    invoke-virtual {p0}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    invoke-virtual {v2, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 8473
    const-string/jumbo v2, "is_start_for_result"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 8475
    if-eqz v0, :cond_4

    .line 8476
    invoke-virtual {p0}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 8478
    :cond_4
    invoke-virtual {p0}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 8479
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->l:Z

    goto :goto_0

    .line 8459
    :cond_5
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method static synthetic d(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->x:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic e(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;)Lcom/taobao/ma/ui/recognition/CameraFrontView;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->a:Lcom/taobao/ma/ui/recognition/CameraFrontView;

    return-object v0
.end method

.method static synthetic f(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;)Lcom/alibaba/android/scan/camera/CameraManager;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->f:Lcom/alibaba/android/scan/camera/CameraManager;

    return-object v0
.end method

.method static synthetic g(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;)Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->m:Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;

    return-object v0
.end method

.method private g()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 388
    :try_start_0
    iget-object v3, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->f:Lcom/alibaba/android/scan/camera/CameraManager;

    if-eqz v3, :cond_1

    .line 389
    iget-object v3, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->f:Lcom/alibaba/android/scan/camera/CameraManager;

    iget-object v4, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->q:Landroid/view/SurfaceHolder;

    invoke-virtual {v3, v4}, Lcom/alibaba/android/scan/camera/CameraManager;->a(Landroid/view/SurfaceHolder;)V

    .line 391
    iget-object v3, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->f:Lcom/alibaba/android/scan/camera/CameraManager;

    .line 6352
    iget-object v0, v3, Lcom/alibaba/android/scan/camera/CameraManager;->a:Landroid/hardware/Camera;

    .line 392
    .local v0, "camera":Landroid/hardware/Camera;
    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 394
    .local v2, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    iput-object v3, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->o:Landroid/hardware/Camera$Size;

    .line 395
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v3

    iput v3, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->r:I

    .line 396
    const-string/jumbo v3, "RecognizeCardActivity"

    const-string/jumbo v4, "PreviewSize: %dx%d format:%d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->o:Landroid/hardware/Camera$Size;

    iget v7, v7, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->o:Landroid/hardware/Camera$Size;

    iget v7, v7, Landroid/hardware/Camera$Size;->height:I

    .line 397
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget v7, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->r:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 396
    invoke-static {v3, v4, v5}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    .end local v2    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_0
    iget-object v3, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->f:Lcom/alibaba/android/scan/camera/CameraManager;

    invoke-virtual {v3}, Lcom/alibaba/android/scan/camera/CameraManager;->c()V

    .line 400
    iget-object v3, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->f:Lcom/alibaba/android/scan/camera/CameraManager;

    invoke-virtual {v3, p0}, Lcom/alibaba/android/scan/camera/CameraManager;->a(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    .end local v0    # "camera":Landroid/hardware/Camera;
    :cond_1
    iget-object v3, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->f:Lcom/alibaba/android/scan/camera/CameraManager;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->f:Lcom/alibaba/android/scan/camera/CameraManager;

    invoke-virtual {v3}, Lcom/alibaba/android/scan/camera/CameraManager;->a()Z

    move-result v3

    if-nez v3, :cond_2

    .line 407
    invoke-virtual {p0}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->h()V

    .line 410
    :cond_2
    :goto_0
    return-void

    .line 402
    :catch_0
    move-exception v1

    .line 403
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 404
    const-string/jumbo v3, "RecognizeCardActivity"

    const-string/jumbo v4, "doStartCamera: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 406
    iget-object v3, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->f:Lcom/alibaba/android/scan/camera/CameraManager;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->f:Lcom/alibaba/android/scan/camera/CameraManager;

    invoke-virtual {v3}, Lcom/alibaba/android/scan/camera/CameraManager;->a()Z

    move-result v3

    if-nez v3, :cond_2

    .line 407
    invoke-virtual {p0}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->h()V

    goto :goto_0

    .line 406
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->f:Lcom/alibaba/android/scan/camera/CameraManager;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->f:Lcom/alibaba/android/scan/camera/CameraManager;

    invoke-virtual {v4}, Lcom/alibaba/android/scan/camera/CameraManager;->a()Z

    move-result v4

    if-nez v4, :cond_3

    .line 407
    invoke-virtual {p0}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->h()V

    :cond_3
    throw v3
.end method

.method static synthetic h(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;)V
    .locals 4
    .param p0, "x0"    # Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    .prologue
    .line 87
    .line 9422
    iget v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->b:F

    const/high16 v1, 0x44fa0000    # 2000.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->b:F

    .line 9423
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$9;

    invoke-direct {v1, p0}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$9;-><init>(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 87
    return-void
.end method

.method static synthetic i(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;)F
    .locals 1
    .param p0, "x0"    # Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    .prologue
    .line 87
    iget v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->u:F

    return v0
.end method

.method private i()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 413
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    const-string/jumbo v1, "token_msg_auto_focus_delay"

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 414
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->f:Lcom/alibaba/android/scan/camera/CameraManager;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->f:Lcom/alibaba/android/scan/camera/CameraManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/scan/camera/CameraManager;->a(Landroid/hardware/Camera$PreviewCallback;)V

    .line 416
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->f:Lcom/alibaba/android/scan/camera/CameraManager;

    invoke-virtual {v0}, Lcom/alibaba/android/scan/camera/CameraManager;->d()V

    .line 417
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->f:Lcom/alibaba/android/scan/camera/CameraManager;

    invoke-virtual {v0}, Lcom/alibaba/android/scan/camera/CameraManager;->b()V

    .line 419
    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;)F
    .locals 1
    .param p0, "x0"    # Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    .prologue
    .line 87
    iget v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->b:F

    return v0
.end method

.method static synthetic k(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->v:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public final c()V
    .locals 6
    .annotation runtime Lcom/alibaba/android/dingtalk/permission/annotation/NeedsPermission;
        value = {
            "android.permission.CAMERA"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 205
    :try_start_0
    new-instance v2, Lcom/alibaba/android/scan/camera/CameraManager;

    invoke-virtual {p0}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/android/scan/camera/CameraManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->f:Lcom/alibaba/android/scan/camera/CameraManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    iget-object v2, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->f:Lcom/alibaba/android/scan/camera/CameraManager;

    if-nez v2, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->h()V

    .line 228
    :goto_1
    return-void

    .line 206
    :catch_0
    move-exception v1

    .line 207
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 213
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    iget-object v2, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->f:Lcom/alibaba/android/scan/camera/CameraManager;

    .line 2360
    const-wide/16 v4, 0x3e8

    iput-wide v4, v2, Lcom/alibaba/android/scan/camera/CameraManager;->b:J

    .line 215
    new-instance v0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$5;

    invoke-direct {v0, p0}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$5;-><init>(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;)V

    .line 225
    .local v0, "autoFocusListener":Lemm$b;
    iget-object v3, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->f:Lcom/alibaba/android/scan/camera/CameraManager;

    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v4, Lemm$b;

    .line 227
    invoke-virtual {p0}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    .line 226
    invoke-interface {v2, v0, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lemm$b;

    .line 2364
    iput-object v2, v3, Lcom/alibaba/android/scan/camera/CameraManager;->c:Lemm$b;

    goto :goto_1
.end method

.method public final d()V
    .locals 4
    .annotation runtime Lcom/alibaba/android/dingtalk/permission/annotation/NeedsPermission;
        value = {
            "android.permission.CAMERA"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 740
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->f:Lcom/alibaba/android/scan/camera/CameraManager;

    if-nez v0, :cond_0

    .line 746
    :goto_0
    return-void

    .line 744
    :cond_0
    iget-object v3, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->f:Lcom/alibaba/android/scan/camera/CameraManager;

    iget-boolean v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->d:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/alibaba/android/scan/camera/CameraManager;->a(Z)V

    .line 745
    iget-boolean v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->d:Z

    if-nez v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->d:Z

    goto :goto_0

    :cond_1
    move v0, v2

    .line 744
    goto :goto_1

    :cond_2
    move v1, v2

    .line 745
    goto :goto_2
.end method

.method public final f()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 704
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 705
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    invoke-virtual {p0}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lelh$a;->scan_card_option_menu:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 706
    .local v1, "menus":[Ljava/lang/String;
    iget-boolean v2, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->c:Z

    if-eqz v2, :cond_1

    .line 707
    aget-object v3, v1, v6

    new-array v4, v5, [Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->d:Z

    if-eqz v2, :cond_0

    sget v2, Lelh$h;->scan_turn_off:I

    invoke-virtual {p0, v2}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 708
    :goto_0
    aput-object v2, v4, v6

    .line 707
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 709
    new-instance v2, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$3;

    invoke-direct {v2, p0}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$3;-><init>(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 733
    :goto_1
    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .line 734
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 735
    return-void

    .line 707
    :cond_0
    sget v2, Lelh$h;->scan_turn_on:I

    .line 708
    invoke-virtual {p0, v2}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 721
    :cond_1
    array-length v2, v1

    invoke-static {v1, v5, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    new-instance v3, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$4;

    invoke-direct {v3, p0}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$4;-><init>(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;)V

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 264
    invoke-super {p0, p1}, Lcom/taobao/ma/ui/ScanBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 265
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v4

    const-string/jumbo v5, "dt_org"

    const-string/jumbo v6, "share_biz_card"

    invoke-virtual {v4, v5, v6}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 267
    .local v3, "v":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 268
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    invoke-virtual {p0}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;-><init>(Landroid/content/Context;)V

    .line 269
    .local v1, "dialog":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 270
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v4, "resource"

    sget v5, Lelh$d;->card2_data_collection_tip_img:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 271
    const-string/jumbo v4, "title"

    sget v5, Lelh$h;->dt_scan_card_privacy_auth_title:I

    invoke-virtual {p0, v5}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string/jumbo v4, "content"

    sget v5, Lelh$h;->dt_scan_card_privacy_auth_tip:I

    invoke-virtual {p0, v5}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->a(Ljava/util/List;)V

    .line 278
    sget v4, Lelh$h;->dt_scan_card_privacy_auth_reject:I

    invoke-virtual {p0, v4}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3083
    iput-object v4, v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->b:Ljava/lang/String;

    .line 279
    sget v4, Lelh$h;->action_agree:I

    invoke-virtual {p0, v4}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4079
    iput-object v4, v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->a:Ljava/lang/String;

    .line 280
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->setCanceledOnTouchOutside(Z)V

    .line 281
    new-instance v4, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$6;

    invoke-direct {v4, p0, v1}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$6;-><init>(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;)V

    .line 4095
    iput-object v4, v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->d:Landroid/view/View$OnClickListener;

    .line 292
    new-instance v4, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$7;

    invoke-direct {v4, p0, v1}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$7;-><init>(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;)V

    .line 5091
    iput-object v4, v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->e:Landroid/view/View$OnClickListener;

    .line 303
    new-instance v4, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$8;

    invoke-direct {v4, p0, v1}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$8;-><init>(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;)V

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 314
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->show()V

    .line 316
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "dialog":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/taobao/ma/ui/ScanBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 134
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 139
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/ma/ui/ScanBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 1160
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->I:Landroid/view/View;

    sget v1, Lelh$e;->camera_surfaceview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/ma/ui/recognition/CameraSurfaceView;

    iput-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->p:Lcom/taobao/ma/ui/recognition/CameraSurfaceView;

    .line 1161
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->I:Landroid/view/View;

    sget v1, Lelh$e;->camera_front:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/ma/ui/recognition/CameraFrontView;

    iput-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->a:Lcom/taobao/ma/ui/recognition/CameraFrontView;

    .line 1162
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->I:Landroid/view/View;

    sget v1, Lelh$e;->viewfinder_rayq:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->v:Landroid/widget/ImageView;

    .line 1163
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->v:Landroid/widget/ImageView;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1164
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->p:Lcom/taobao/ma/ui/recognition/CameraSurfaceView;

    invoke-virtual {v0}, Lcom/taobao/ma/ui/recognition/CameraSurfaceView;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->q:Landroid/view/SurfaceHolder;

    .line 1165
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->p:Lcom/taobao/ma/ui/recognition/CameraSurfaceView;

    invoke-virtual {v0, v3}, Lcom/taobao/ma/ui/recognition/CameraSurfaceView;->setDrawingCacheEnabled(Z)V

    .line 1167
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->p:Lcom/taobao/ma/ui/recognition/CameraSurfaceView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Lcom/taobao/ma/ui/recognition/CameraSurfaceView;->setDrawingCacheBackgroundColor(I)V

    .line 1169
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->I:Landroid/view/View;

    sget v1, Lelh$e;->btn_shutter:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->x:Landroid/widget/ImageButton;

    .line 1170
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->x:Landroid/widget/ImageButton;

    new-instance v1, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$1;

    invoke-direct {v1, p0}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$1;-><init>(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2150
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->H:Landroid/os/Bundle;

    const-class v1, Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;

    .line 2152
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2150
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;

    iput-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->m:Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;

    .line 2153
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->m:Lcom/alibaba/android/dingtalk/userbase/extras/EnumExtras$RecognizeCardType;

    if-nez v0, :cond_0

    .line 2155
    invoke-virtual {p0}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 2244
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.camera.autofocus"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->y:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2251
    :goto_0
    iget-boolean v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->y:Z

    if-nez v0, :cond_1

    .line 2252
    sget v0, Lelh$h;->loss_auto_focus:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 144
    :cond_1
    invoke-static {p0}, Ljnf;->a(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;)V

    .line 145
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->I:Landroid/view/View;

    return-object v0

    .line 2246
    :catch_0
    move-exception v0

    .line 2247
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2248
    const-string/jumbo v1, "RecognizeCardActivity"

    const-string/jumbo v2, "checkAutoFocus: %s"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 352
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->f:Lcom/alibaba/android/scan/camera/CameraManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->f:Lcom/alibaba/android/scan/camera/CameraManager;

    invoke-virtual {v0}, Lcom/alibaba/android/scan/camera/CameraManager;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->g:Z

    .line 354
    invoke-direct {p0}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->i()V

    .line 356
    :cond_0
    iget-boolean v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->q:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->q:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 358
    iput-object v1, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->q:Landroid/view/SurfaceHolder;

    .line 361
    :cond_1
    iput-object v1, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->f:Lcom/alibaba/android/scan/camera/CameraManager;

    .line 362
    invoke-super {p0}, Lcom/taobao/ma/ui/ScanBaseFragment;->onDestroy()V

    .line 363
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 699
    invoke-super {p0}, Lcom/taobao/ma/ui/ScanBaseFragment;->onDetach()V

    .line 700
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 338
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    const-string/jumbo v1, "token_msg_auto_focus_delay"

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 340
    invoke-direct {p0}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->i()V

    .line 342
    iget-boolean v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->g:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->h:Z

    if-eqz v0, :cond_0

    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->h:Z

    .line 344
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->q:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 347
    :cond_0
    invoke-super {p0}, Lcom/taobao/ma/ui/ScanBaseFragment;->onPause()V

    .line 348
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 6
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 484
    iget-boolean v1, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->j:Z

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 6531
    invoke-virtual {p0}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 6532
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 6534
    if-eqz v1, :cond_1

    .line 6536
    :try_start_0
    iget-object v1, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->n:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 6537
    invoke-virtual {p0}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v2, "file:///system/media/audio/ui/camera_click.ogg"

    .line 6538
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 6537
    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->n:Landroid/media/MediaPlayer;

    .line 6540
    :cond_0
    iget-object v1, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->n:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 6541
    iget-object v1, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    :cond_1
    :goto_0
    const-string/jumbo v1, "RecognizeCardActivity"

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 487
    .local v0, "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    new-instance v1, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$10;

    invoke-direct {v1, p0, p1}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$10;-><init>(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;[B)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 516
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$11;

    invoke-direct {v2, p0}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2$11;-><init>(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 522
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->j:Z

    .line 523
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->k:Z

    .line 525
    .end local v0    # "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    :cond_2
    return-void

    .line 6543
    :catch_0
    move-exception v1

    .line 6544
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 258
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/ma/ui/ScanBaseFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 259
    invoke-static {p0, p1, p3}, Ljnf;->a(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;I[I)V

    .line 260
    return-void
.end method

.method public onResume()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 320
    invoke-super {p0}, Lcom/taobao/ma/ui/ScanBaseFragment;->onResume()V

    .line 321
    iget-boolean v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->k:Z

    if-eqz v0, :cond_1

    .line 5440
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    iget-boolean v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->g:Z

    if-eqz v0, :cond_2

    .line 326
    invoke-direct {p0}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->g()V

    goto :goto_0

    .line 328
    :cond_2
    iget-boolean v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->h:Z

    if-nez v0, :cond_3

    .line 329
    iput-boolean v3, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->h:Z

    .line 330
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->q:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 5433
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->f:Lcom/alibaba/android/scan/camera/CameraManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->f:Lcom/alibaba/android/scan/camera/CameraManager;

    invoke-virtual {v0}, Lcom/alibaba/android/scan/camera/CameraManager;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5434
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->f:Lcom/alibaba/android/scan/camera/CameraManager;

    invoke-virtual {v0}, Lcom/alibaba/android/scan/camera/CameraManager;->c()V

    .line 5435
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->f:Lcom/alibaba/android/scan/camera/CameraManager;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/scan/camera/CameraManager;->a(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5437
    :catch_0
    move-exception v0

    .line 5438
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 5439
    const-string/jumbo v1, "RecognizeCardActivity"

    const-string/jumbo v2, "doRestartCamera: %s"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 128
    sget v0, Lelh$f;->activity_scan_bizcard_camera:I

    return v0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 376
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 367
    iget-boolean v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->g:Z

    if-nez v0, :cond_0

    .line 368
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->g:Z

    .line 369
    invoke-direct {p0}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->g()V

    .line 371
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 380
    iget-boolean v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->g:Z

    if-eqz v0, :cond_0

    .line 381
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->g:Z

    .line 382
    invoke-direct {p0}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->i()V

    .line 384
    :cond_0
    return-void
.end method
