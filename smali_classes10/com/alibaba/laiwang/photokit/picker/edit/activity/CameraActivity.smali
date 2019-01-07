.class public Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;
.super Landroid/app/Activity;
.source "CameraActivity.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$a;
    }
.end annotation


# instance fields
.field private A:Landroid/hardware/Camera$AutoFocusCallback;

.field private B:Lhby;

.field private C:Landroid/view/animation/ScaleAnimation;

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Z

.field private P:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$a;

.field a:Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;

.field b:Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;

.field c:F

.field d:F

.field private e:Landroid/view/SurfaceView;

.field private f:Landroid/view/SurfaceHolder;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/FrameLayout;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Z

.field private q:Landroid/view/View;

.field private r:Landroid/view/View;

.field private s:Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

.field private t:Z

.field private u:Landroid/app/Activity;

.field private v:Z

.field private w:I

.field private x:Landroid/view/OrientationEventListener;

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 78
    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->p:Z

    .line 85
    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->t:Z

    .line 88
    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->v:Z

    .line 90
    iput v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->w:I

    .line 93
    iput v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->y:I

    .line 94
    iput v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->z:I

    .line 103
    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->D:Z

    .line 104
    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->E:Z

    .line 106
    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->F:Z

    .line 118
    new-instance v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$a;

    invoke-direct {v0, p0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$a;-><init>(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->P:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$a;

    .line 702
    return-void
.end method

.method static synthetic a(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->w:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->s:Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    return-object v0
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 353
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->u:Landroid/app/Activity;

    sget v1, Liff$f;->camera_open_confirm:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 354
    return-void
.end method

.method private a(Landroid/view/SurfaceHolder;)V
    .locals 16
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 458
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->t:Z

    if-eqz v6, :cond_5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->s:Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    if-eqz v6, :cond_5

    .line 460
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->s:Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->w:I

    invoke-virtual {v6, v7}, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->a(I)V

    .line 461
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->s:Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->a(Landroid/view/SurfaceHolder;)V

    .line 463
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->I:I

    .line 464
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->J:I

    .line 466
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->s:Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    .line 2313
    iget-object v1, v6, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->a:Landroid/hardware/Camera;

    .line 467
    .local v1, "camera":Landroid/hardware/Camera;
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 468
    .local v2, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v4

    .line 469
    .local v4, "previewSizeList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v3

    .line 471
    .local v3, "pictureSizeList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    move-object/from16 v0, p0

    iget v7, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->I:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->J:I

    .line 2633
    const/16 v8, 0x500

    if-ge v6, v8, :cond_b

    .line 2634
    const/16 v6, 0x500

    .line 2635
    const/16 v7, 0x2d0

    move v10, v6

    move v11, v7

    .line 2638
    :goto_0
    const/4 v9, 0x0

    .line 2639
    const v8, 0x7fffffff

    .line 2641
    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_8

    if-eqz v4, :cond_8

    .line 2642
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_8

    .line 2644
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->P:Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$a;

    invoke-static {v3, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2646
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 2647
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    .line 2648
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera$Size;

    .line 2650
    invoke-virtual {v6, v7}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2651
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2656
    :cond_2
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_7

    .line 2657
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    .line 2658
    if-eqz v6, :cond_3

    .line 2662
    iget v7, v6, Landroid/hardware/Camera$Size;->height:I

    if-ne v11, v7, :cond_6

    iget v7, v6, Landroid/hardware/Camera$Size;->width:I

    if-ne v10, v7, :cond_6

    move-object v5, v6

    .line 473
    .local v5, "size":Landroid/hardware/Camera$Size;
    :goto_3
    if-eqz v5, :cond_4

    .line 474
    iget v6, v5, Landroid/hardware/Camera$Size;->width:I

    iget v7, v5, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v6, v7}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 475
    iget v6, v5, Landroid/hardware/Camera$Size;->width:I

    iget v7, v5, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v6, v7}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 477
    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 479
    move-object/from16 v0, p0

    iget v6, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->I:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->J:I

    .line 2682
    int-to-float v8, v6

    iget v9, v5, Landroid/hardware/Camera$Size;->height:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    .line 2683
    int-to-float v9, v7

    iget v10, v5, Landroid/hardware/Camera$Size;->width:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    .line 2685
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->e:Landroid/view/SurfaceView;

    invoke-virtual {v10}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 2686
    cmpl-float v11, v8, v9

    if-ltz v11, :cond_9

    .line 2687
    iput v6, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2688
    iget v6, v5, Landroid/hardware/Camera$Size;->width:I

    int-to-float v6, v6

    mul-float/2addr v6, v8

    float-to-int v6, v6

    iput v6, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2694
    :goto_4
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->F:Z

    .line 2695
    iget v6, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v0, p0

    iput v6, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->G:I

    .line 2696
    iget v6, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, p0

    iput v6, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->H:I

    .line 2698
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->e:Landroid/view/SurfaceView;

    invoke-virtual {v6, v10}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 481
    const-string/jumbo v6, "Pick"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "getPropSize width="

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget v9, v5, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, " height="

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget v9, v5, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->s:Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    invoke-virtual {v6}, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->c()V

    .line 485
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->s:Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->a(Landroid/hardware/Camera$PreviewCallback;)V

    .line 486
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->s:Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    .line 3313
    iget-object v6, v6, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->a:Landroid/hardware/Camera;

    .line 486
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->A:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 488
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->D:Z

    .line 489
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->E:Z

    .line 491
    .end local v1    # "camera":Landroid/hardware/Camera;
    .end local v2    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v3    # "pictureSizeList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v4    # "previewSizeList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v5    # "size":Landroid/hardware/Camera$Size;
    :cond_5
    return-void

    .line 2667
    .restart local v1    # "camera":Landroid/hardware/Camera;
    .restart local v2    # "parameters":Landroid/hardware/Camera$Parameters;
    .restart local v3    # "pictureSizeList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .restart local v4    # "previewSizeList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_6
    iget v7, v6, Landroid/hardware/Camera$Size;->width:I

    sub-int/2addr v7, v10

    iget v13, v6, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v13, v11

    mul-int/2addr v7, v13

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 2668
    if-ge v7, v8, :cond_a

    move v15, v7

    move-object v7, v6

    move v6, v15

    :goto_5
    move v8, v6

    move-object v9, v7

    .line 2673
    goto/16 :goto_2

    .line 2675
    :cond_7
    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    move-object v9, v6

    :cond_8
    move-object v5, v9

    .line 2678
    goto/16 :goto_3

    .line 2690
    .restart local v5    # "size":Landroid/hardware/Camera$Size;
    :cond_9
    iput v7, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2691
    iget v6, v5, Landroid/hardware/Camera$Size;->height:I

    int-to-float v6, v6

    mul-float/2addr v6, v9

    float-to-int v6, v6

    iput v6, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_4

    .end local v5    # "size":Landroid/hardware/Camera$Size;
    :cond_a
    move v6, v8

    move-object v7, v9

    goto :goto_5

    :cond_b
    move v10, v6

    move v11, v7

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;IIII)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 52
    .line 5597
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->B:Lhby;

    if-eqz v0, :cond_0

    .line 5598
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->c()V

    .line 5601
    :cond_0
    new-instance v0, Lhby;

    const-string/jumbo v1, "#ffff0f"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lhby;-><init>(Landroid/content/Context;IIIII)V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->B:Lhby;

    .line 5603
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->l:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->B:Lhby;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 5604
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->B:Lhby;

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->C:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Lhby;->startAnimation(Landroid/view/animation/Animation;)V

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;
    .param p1, "x1"    # Landroid/view/SurfaceHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->a(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;Landroid/widget/ImageView;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 52
    .line 4436
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->s:Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    .line 5313
    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->a:Landroid/hardware/Camera;

    .line 4437
    if-eqz v0, :cond_0

    .line 4441
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 4442
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 4443
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "torch"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4444
    const-string/jumbo v2, "off"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 4445
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 4446
    sget v0, Liff$c;->camera_flash_off:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4454
    :cond_0
    :goto_0
    return-void

    .line 4448
    :cond_1
    const-string/jumbo v2, "torch"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 4449
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 4450
    sget v0, Liff$c;->camera_flash_on:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4453
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Liff$f;->dt_device_flash_not_available:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->E:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->y:I

    return p1
.end method

.method private b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 494
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->s:Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    if-eqz v2, :cond_1

    .line 496
    iput-boolean v3, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->D:Z

    .line 497
    iput-boolean v3, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->E:Z

    .line 500
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->s:Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    .line 4313
    iget-object v0, v2, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->a:Landroid/hardware/Camera;

    .line 501
    .local v0, "camera":Landroid/hardware/Camera;
    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    .end local v0    # "camera":Landroid/hardware/Camera;
    :cond_0
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->s:Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->a(Landroid/hardware/Camera$PreviewCallback;)V

    .line 511
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->s:Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    invoke-virtual {v2}, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->d()V

    .line 512
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->s:Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    invoke-virtual {v2}, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;->b()V

    .line 514
    :cond_1
    return-void

    .line 504
    :catch_0
    move-exception v1

    .line 505
    .local v1, "t":Ljava/lang/Throwable;
    sget v2, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 506
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method static synthetic b(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->t:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->v:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->z:I

    return p1
.end method

.method private c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 608
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->B:Lhby;

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->l:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->B:Lhby;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 610
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->B:Lhby;

    .line 612
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->D:Z

    return v0
.end method

.method static synthetic d(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)Landroid/hardware/Camera$AutoFocusCallback;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->A:Landroid/hardware/Camera$AutoFocusCallback;

    return-object v0
.end method

.method private d()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 615
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "accelerometer_rotation"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    .prologue
    .line 52
    iget v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->w:I

    return v0
.end method

.method static synthetic f(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->b()V

    return-void
.end method

.method static synthetic g(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)Landroid/view/SurfaceHolder;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->f:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->a()V

    return-void
.end method

.method static synthetic i(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    .prologue
    .line 52
    iget v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->y:I

    return v0
.end method

.method static synthetic k(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->M:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->K:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->L:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->N:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->O:Z

    return v0
.end method

.method static synthetic p(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->F:Z

    return v0
.end method

.method static synthetic q(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    .prologue
    .line 52
    iget v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->G:I

    return v0
.end method

.method static synthetic r(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    .prologue
    .line 52
    iget v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->H:I

    return v0
.end method

.method static synthetic s(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    .prologue
    .line 52
    iget v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->J:I

    return v0
.end method

.method static synthetic t(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->E:Z

    return v0
.end method

.method static synthetic u(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;

    .prologue
    .line 52
    iget v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->z:I

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, -0x1

    .line 620
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 621
    if-ne p2, v2, :cond_0

    if-nez p1, :cond_0

    .line 622
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 623
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 624
    invoke-virtual {p0, v2, v0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 626
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->finish()V

    .line 629
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->c()V

    .line 630
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 579
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 583
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 586
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 589
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const v1, 0x3f99999a    # 1.2f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/16 v9, 0x8

    const/4 v5, 0x1

    .line 122
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 124
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/Window;->requestFeature(I)Z

    .line 125
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x400

    const/16 v4, 0x400

    invoke-virtual {v0, v3, v4}, Landroid/view/Window;->setFlags(II)V

    .line 127
    sget v0, Liff$e;->camera_activity:I

    invoke-virtual {p0, v0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->setContentView(I)V

    .line 130
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->init(Landroid/content/Context;)V

    .line 132
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "front_camera"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->p:Z

    .line 133
    iget-boolean v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->p:Z

    if-eqz v0, :cond_0

    .line 134
    iput v5, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->w:I

    .line 137
    :cond_0
    sget v0, Liff$d;->camera_year:I

    invoke-virtual {p0, v0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->k:Landroid/widget/TextView;

    .line 138
    sget v0, Liff$d;->camera_username:I

    invoke-virtual {p0, v0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->m:Landroid/widget/TextView;

    .line 139
    sget v0, Liff$d;->camera_location:I

    invoke-virtual {p0, v0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->n:Landroid/widget/TextView;

    .line 140
    sget v0, Liff$d;->camera_time:I

    invoke-virtual {p0, v0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->o:Landroid/widget/TextView;

    .line 142
    sget v0, Liff$d;->camera_info_lly:I

    invoke-virtual {p0, v0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->a:Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;

    .line 143
    sget v0, Liff$d;->camera_location_lly:I

    invoke-virtual {p0, v0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->b:Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;

    .line 145
    sget v0, Liff$d;->camera_username_lly:I

    invoke-virtual {p0, v0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->q:Landroid/view/View;

    .line 146
    sget v0, Liff$d;->camera_location_info_lly:I

    invoke-virtual {p0, v0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->r:Landroid/view/View;

    .line 148
    sget v0, Liff$d;->camera_region:I

    invoke-virtual {p0, v0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->l:Landroid/widget/FrameLayout;

    .line 149
    sget v0, Liff$d;->camera_glsurfaceview:I

    invoke-virtual {p0, v0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->e:Landroid/view/SurfaceView;

    .line 150
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->e:Landroid/view/SurfaceView;

    new-instance v3, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$1;

    invoke-direct {v3, p0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$1;-><init>(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 190
    sget v0, Liff$d;->camera_alternate:I

    invoke-virtual {p0, v0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->g:Landroid/widget/ImageView;

    .line 191
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->g:Landroid/widget/ImageView;

    new-instance v3, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$2;-><init>(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    sget v0, Liff$d;->camera_flash:I

    invoke-virtual {p0, v0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->h:Landroid/widget/ImageView;

    .line 214
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->h:Landroid/widget/ImageView;

    new-instance v3, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$3;

    invoke-direct {v3, p0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$3;-><init>(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    sget v0, Liff$d;->camera_takephoto:I

    invoke-virtual {p0, v0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->i:Landroid/widget/ImageView;

    .line 222
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->i:Landroid/widget/ImageView;

    new-instance v3, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;

    invoke-direct {v3, p0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$4;-><init>(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    sget v0, Liff$d;->camera_cancel:I

    invoke-virtual {p0, v0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->j:Landroid/widget/TextView;

    .line 301
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->j:Landroid/widget/TextView;

    new-instance v3, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$5;

    invoke-direct {v3, p0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$5;-><init>(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->e:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->f:Landroid/view/SurfaceHolder;

    .line 311
    new-instance v0, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    invoke-direct {v0, p0}, Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->s:Lcom/alibaba/laiwang/photokit/picker/edit/camera/CameraManager;

    .line 313
    iput-object p0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->u:Landroid/app/Activity;

    .line 315
    new-instance v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$6;

    invoke-direct {v0, p0, p0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$6;-><init>(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->x:Landroid/view/OrientationEventListener;

    .line 336
    new-instance v0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$7;

    invoke-direct {v0, p0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity$7;-><init>(Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;)V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->A:Landroid/hardware/Camera$AutoFocusCallback;

    .line 346
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->C:Landroid/view/animation/ScaleAnimation;

    .line 347
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->C:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1357
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1358
    const-string/jumbo v1, "username"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->K:Ljava/lang/String;

    .line 1359
    const-string/jumbo v1, "address"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->L:Ljava/lang/String;

    .line 1360
    const-string/jumbo v1, "time"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->M:Ljava/lang/String;

    .line 1361
    const-string/jumbo v1, "dateWeather"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->N:Ljava/lang/String;

    .line 1362
    const-string/jumbo v1, "i18nlogo"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->O:Z

    .line 1364
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->o:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1365
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1367
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->K:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1368
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->q:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1373
    :goto_0
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->L:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1374
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->r:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1379
    :goto_1
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->K:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->L:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1380
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->b:Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;

    invoke-virtual {v0, v9}, Lcom/alibaba/laiwang/photokit/picker/edit/view/RotableLinearLayout;->setVisibility(I)V

    .line 1383
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->O:Z

    if-eqz v0, :cond_2

    .line 1384
    sget v0, Liff$d;->iv_logo:I

    invoke-virtual {p0, v0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1385
    sget v1, Liff$c;->camera_i18nlogo:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 350
    :cond_2
    return-void

    .line 1370
    :cond_3
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->K:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1376
    :cond_4
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 418
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 420
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->x:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 422
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->x:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 426
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->b()V

    .line 427
    iget-boolean v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->t:Z

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->e:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 430
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->e:Landroid/view/SurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 431
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->t:Z

    .line 433
    :cond_1
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 541
    iget-boolean v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->t:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->v:Z

    if-eqz v0, :cond_0

    .line 543
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->v:Z

    .line 575
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 391
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 393
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->x:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 395
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->x:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->enable()V

    .line 399
    :cond_0
    iget-boolean v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->t:Z

    if-eqz v1, :cond_1

    .line 401
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->f:Landroid/view/SurfaceHolder;

    invoke-direct {p0, v1}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->a(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    :goto_0
    return-void

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 404
    const-string/jumbo v1, "camera"

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhcw;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->a()V

    goto :goto_0

    .line 408
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->f:Landroid/view/SurfaceHolder;

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 409
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->f:Landroid/view/SurfaceHolder;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 412
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->e:Landroid/view/SurfaceView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 531
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 518
    iget-boolean v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->t:Z

    if-nez v1, :cond_0

    .line 520
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->t:Z

    .line 521
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->f:Landroid/view/SurfaceHolder;

    invoke-direct {p0, v1}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->a(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 522
    :catch_0
    move-exception v0

    .line 523
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 524
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->a()V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 535
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/laiwang/photokit/picker/edit/activity/CameraActivity;->t:Z

    .line 536
    return-void
.end method
