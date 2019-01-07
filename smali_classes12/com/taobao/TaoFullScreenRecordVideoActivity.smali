.class public Lcom/taobao/TaoFullScreenRecordVideoActivity;
.super Landroid/app/Activity;
.source "TaoFullScreenRecordVideoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljkr$a;


# instance fields
.field private A:Landroid/widget/ImageView;

.field private B:Ljkv;

.field private C:Ljkt;

.field private D:Landroid/widget/CheckBox;

.field private E:Landroid/widget/ImageView;

.field private F:Landroid/widget/ImageView;

.field private G:Landroid/widget/TextView;

.field private H:Landroid/widget/CheckBox;

.field private final I:F

.field private final J:F

.field private K:Landroid/view/View;

.field private L:Ljkq;

.field private M:Landroid/widget/ImageView;

.field private N:Landroid/widget/TextView;

.field private O:Landroid/widget/TextView;

.field private P:Ljava/lang/StringBuilder;

.field private Q:Ljava/util/Formatter;

.field private R:Ljava/lang/String;

.field private S:Landroid/view/View;

.field private T:I

.field private U:Z

.field private final V:Landroid/view/SurfaceHolder$Callback;

.field private W:I

.field private X:Z

.field private Y:Z

.field private Z:Ljava/lang/Runnable;

.field private a:Z

.field private final aa:Landroid/view/View$OnTouchListener;

.field private ab:J

.field private ac:Ljava/lang/Runnable;

.field private final ad:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private b:I

.field private c:Z

.field private d:I

.field private e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private l:I

.field private m:Landroid/os/Handler;

.field private n:Landroid/hardware/Camera;

.field private o:Landroid/view/SurfaceView;

.field private p:Landroid/view/SurfaceHolder;

.field private q:Z

.field private r:Lcom/taobao/av/logic/media/TaoMediaRecorder;

.field private s:I

.field private final t:I

.field private final u:I

.field private v:I

.field private w:I

.field private x:Landroid/media/AudioManager;

.field private y:Lcom/taobao/av/ui/view/AutoFocusAnimationView;

.field private z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x280

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    iput-boolean v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->a:Z

    .line 74
    iput v2, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->b:I

    .line 75
    iput-boolean v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->c:Z

    .line 76
    const v0, 0xea60

    iput v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->d:I

    .line 77
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->e:I

    .line 78
    const/16 v0, 0x64

    iput v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->f:I

    .line 79
    const/16 v0, 0x3a98

    iput v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->g:I

    .line 80
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->h:I

    .line 81
    const v0, 0x2bf20

    iput v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->i:I

    .line 82
    iput v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->j:I

    .line 83
    iput v2, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->k:I

    .line 84
    iput v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->l:I

    .line 90
    iput-boolean v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->q:Z

    .line 92
    iput v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->s:I

    .line 93
    iput v3, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->t:I

    .line 94
    const/16 v0, 0x168

    iput v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->u:I

    .line 95
    iput v3, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->v:I

    .line 96
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->w:I

    .line 111
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->I:F

    .line 112
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->J:F

    .line 126
    iput v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->T:I

    .line 410
    iput-boolean v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->U:Z

    .line 411
    new-instance v0, Lcom/taobao/TaoFullScreenRecordVideoActivity$11;

    invoke-direct {v0, p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity$11;-><init>(Lcom/taobao/TaoFullScreenRecordVideoActivity;)V

    iput-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->V:Landroid/view/SurfaceHolder$Callback;

    .line 521
    iput v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->W:I

    .line 522
    iput-boolean v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->X:Z

    .line 523
    iput-boolean v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->Y:Z

    .line 524
    new-instance v0, Lcom/taobao/TaoFullScreenRecordVideoActivity$12;

    invoke-direct {v0, p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity$12;-><init>(Lcom/taobao/TaoFullScreenRecordVideoActivity;)V

    iput-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->Z:Ljava/lang/Runnable;

    .line 534
    new-instance v0, Lcom/taobao/TaoFullScreenRecordVideoActivity$13;

    invoke-direct {v0, p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity$13;-><init>(Lcom/taobao/TaoFullScreenRecordVideoActivity;)V

    iput-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->aa:Landroid/view/View$OnTouchListener;

    .line 663
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->ab:J

    .line 664
    new-instance v0, Lcom/taobao/TaoFullScreenRecordVideoActivity$14;

    invoke-direct {v0, p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity$14;-><init>(Lcom/taobao/TaoFullScreenRecordVideoActivity;)V

    iput-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->ac:Ljava/lang/Runnable;

    .line 1034
    new-instance v0, Lcom/taobao/TaoFullScreenRecordVideoActivity$6;

    invoke-direct {v0, p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity$6;-><init>(Lcom/taobao/TaoFullScreenRecordVideoActivity;)V

    iput-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->ad:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method static synthetic a(Lcom/taobao/TaoFullScreenRecordVideoActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/taobao/TaoFullScreenRecordVideoActivity;
    .param p1, "x1"    # J

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->ab:J

    return-wide p1
.end method

.method static synthetic a(Lcom/taobao/TaoFullScreenRecordVideoActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/taobao/TaoFullScreenRecordVideoActivity;

    .prologue
    const/16 v2, 0x8

    .line 58
    .line 33280
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->C:Ljkt;

    invoke-virtual {v0}, Ljkt;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 33281
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->D:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 33282
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->D:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 33283
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->H:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 33284
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->O:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 33285
    invoke-direct {p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->i()V

    .line 58
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/taobao/TaoFullScreenRecordVideoActivity;FFII)V
    .locals 9
    .param p0, "x0"    # Lcom/taobao/TaoFullScreenRecordVideoActivity;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    const/4 v8, -0x2

    const/high16 v3, 0x44fa0000    # 2000.0f

    const/high16 v7, -0x3b860000    # -1000.0f

    const/high16 v6, 0x447a0000    # 1000.0f

    const/high16 v5, 0x42c80000    # 100.0f

    .line 58
    .line 32319
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->n:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    .line 32321
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 32322
    invoke-virtual {p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 32323
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 32324
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 32326
    mul-float v2, p1, v3

    int-to-float v1, v1

    div-float v1, v2, v1

    sub-float/2addr v1, v6

    .line 32327
    mul-float v2, p2, v3

    int-to-float v0, v0

    div-float v0, v2, v0

    sub-float/2addr v0, v6

    .line 32329
    new-instance v2, Landroid/graphics/Rect;

    sub-float v3, v1, v5

    .line 32330
    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-int v3, v3

    sub-float v4, v0, v5

    .line 32331
    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-int v4, v4

    add-float/2addr v1, v5

    .line 32332
    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    add-float/2addr v0, v5

    .line 32333
    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    invoke-direct {v2, v3, v4, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 32336
    :try_start_0
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->n:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 32338
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "auto"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 32339
    const-string/jumbo v1, "auto"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 32344
    :goto_0
    invoke-static {v0, v2}, Ljkw;->a(Landroid/hardware/Camera$Parameters;Landroid/graphics/Rect;)V

    .line 32386
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v1, v3, :cond_0

    .line 32390
    new-instance v1, Landroid/hardware/Camera$Area;

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    .line 32392
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v2

    if-gtz v2, :cond_4

    .line 32346
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->n:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 32347
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->n:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 32348
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->n:Landroid/hardware/Camera;

    new-instance v1, Lcom/taobao/TaoFullScreenRecordVideoActivity$10;

    invoke-direct {v1, p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity$10;-><init>(Lcom/taobao/TaoFullScreenRecordVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 32360
    :goto_2
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->y:Lcom/taobao/av/ui/view/AutoFocusAnimationView;

    if-nez v0, :cond_1

    .line 32361
    new-instance v0, Lcom/taobao/av/ui/view/AutoFocusAnimationView;

    invoke-direct {v0, p0}, Lcom/taobao/av/ui/view/AutoFocusAnimationView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->y:Lcom/taobao/av/ui/view/AutoFocusAnimationView;

    .line 32362
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 32363
    iget-object v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->y:Lcom/taobao/av/ui/view/AutoFocusAnimationView;

    invoke-virtual {p0, v1, v0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 32366
    :cond_1
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->y:Lcom/taobao/av/ui/view/AutoFocusAnimationView;

    .line 33074
    iput p1, v0, Lcom/taobao/av/ui/view/AutoFocusAnimationView;->b:F

    .line 33075
    iput p2, v0, Lcom/taobao/av/ui/view/AutoFocusAnimationView;->c:F

    .line 32367
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->y:Lcom/taobao/av/ui/view/AutoFocusAnimationView;

    .line 33087
    iget-object v1, v0, Lcom/taobao/av/ui/view/AutoFocusAnimationView;->a:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1}, Landroid/view/animation/AlphaAnimation;->reset()V

    .line 33088
    iget-object v1, v0, Lcom/taobao/av/ui/view/AutoFocusAnimationView;->a:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1}, Landroid/view/animation/AlphaAnimation;->start()V

    .line 33089
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taobao/av/ui/view/AutoFocusAnimationView;->setVisibility(I)V

    .line 33090
    invoke-virtual {v0}, Lcom/taobao/av/ui/view/AutoFocusAnimationView;->invalidate()V

    .line 58
    :cond_2
    return-void

    .line 32341
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->n:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 32356
    :catch_0
    move-exception v0

    .line 32357
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "autoFocusToTouchArea failed, error="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33010
    const-string/jumbo v1, "video_recorder"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Ljpe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 32396
    :cond_4
    const/4 v2, 0x1

    :try_start_2
    new-array v2, v2, [Landroid/hardware/Camera$Area;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private a()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 129
    iget v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->T:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->T:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/taobao/TaoFullScreenRecordVideoActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/taobao/TaoFullScreenRecordVideoActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->U:Z

    return p1
.end method

.method static synthetic b(Lcom/taobao/TaoFullScreenRecordVideoActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/TaoFullScreenRecordVideoActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->D:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private b()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 133
    iget v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->T:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/taobao/TaoFullScreenRecordVideoActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/taobao/TaoFullScreenRecordVideoActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->Y:Z

    return p1
.end method

.method private c()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/16 v3, 0x10e

    const/4 v2, 0x0

    .line 374
    iget-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->n:Landroid/hardware/Camera;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->U:Z

    if-nez v4, :cond_1

    .line 8407
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->n:Landroid/hardware/Camera;

    iget-object v5, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->p:Landroid/view/SurfaceHolder;

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 380
    iget-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->n:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 386
    :try_start_1
    iget-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->n:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 387
    .local v0, "cameraParams":Landroid/hardware/Camera$Parameters;
    const-string/jumbo v4, "auto"

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 388
    iget-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->n:Landroid/hardware/Camera;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 8438
    .end local v0    # "cameraParams":Landroid/hardware/Camera$Parameters;
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->r:Lcom/taobao/av/logic/media/TaoMediaRecorder;

    if-nez v4, :cond_3

    .line 8439
    new-instance v4, Lcom/taobao/av/logic/media/TaoMediaRecorder;

    invoke-direct {v4, p0}, Lcom/taobao/av/logic/media/TaoMediaRecorder;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->r:Lcom/taobao/av/logic/media/TaoMediaRecorder;

    .line 8441
    iget-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->r:Lcom/taobao/av/logic/media/TaoMediaRecorder;

    .line 9058
    iget-object v4, v4, Lcom/taobao/av/logic/media/TaoMediaRecorder;->e:Ljkm;

    const/4 v5, 0x1

    iput v5, v4, Ljkm;->a:I

    .line 8442
    iget-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->r:Lcom/taobao/av/logic/media/TaoMediaRecorder;

    .line 10054
    iget-object v4, v4, Lcom/taobao/av/logic/media/TaoMediaRecorder;->e:Ljkm;

    iput v2, v4, Ljkm;->b:I

    .line 8443
    iget-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->r:Lcom/taobao/av/logic/media/TaoMediaRecorder;

    .line 10095
    iget-object v4, v4, Lcom/taobao/av/logic/media/TaoMediaRecorder;->e:Ljkm;

    iput v6, v4, Ljkm;->e:I

    .line 8444
    iget-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->r:Lcom/taobao/av/logic/media/TaoMediaRecorder;

    .line 10108
    iget-object v4, v4, Lcom/taobao/av/logic/media/TaoMediaRecorder;->e:Ljkm;

    iput v2, v4, Ljkm;->k:I

    .line 8445
    iget-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->r:Lcom/taobao/av/logic/media/TaoMediaRecorder;

    .line 10112
    iget-object v4, v4, Lcom/taobao/av/logic/media/TaoMediaRecorder;->e:Ljkm;

    iput v6, v4, Ljkm;->f:I

    .line 8446
    iget-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->r:Lcom/taobao/av/logic/media/TaoMediaRecorder;

    iget v5, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->v:I

    iget v6, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->w:I

    .line 11099
    iget-object v7, v4, Lcom/taobao/av/logic/media/TaoMediaRecorder;->e:Ljkm;

    iput v5, v7, Ljkm;->i:I

    .line 11100
    iget-object v4, v4, Lcom/taobao/av/logic/media/TaoMediaRecorder;->e:Ljkm;

    iput v6, v4, Ljkm;->j:I

    .line 8447
    iget-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->r:Lcom/taobao/av/logic/media/TaoMediaRecorder;

    iget v5, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->b:I

    .line 11150
    iget-object v4, v4, Lcom/taobao/av/logic/media/TaoMediaRecorder;->e:Ljkm;

    iput v5, v4, Ljkm;->d:I

    .line 8399
    :cond_3
    iget-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->r:Lcom/taobao/av/logic/media/TaoMediaRecorder;

    iget-object v5, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->n:Landroid/hardware/Camera;

    .line 11240
    iget-object v6, v4, Lcom/taobao/av/logic/media/TaoMediaRecorder;->f:Ljko;

    if-nez v6, :cond_4

    .line 11241
    new-instance v6, Ljko;

    invoke-direct {v6, v4}, Ljko;-><init>(Lcom/taobao/av/logic/media/TaoMediaRecorder;)V

    iput-object v6, v4, Lcom/taobao/av/logic/media/TaoMediaRecorder;->f:Ljko;

    .line 11244
    :cond_4
    if-eqz v5, :cond_6

    .line 11264
    iget-object v6, v4, Lcom/taobao/av/logic/media/TaoMediaRecorder;->i:[B

    if-nez v6, :cond_5

    .line 11265
    iget-object v6, v4, Lcom/taobao/av/logic/media/TaoMediaRecorder;->e:Ljkm;

    iget v6, v6, Ljkm;->i:I

    iget-object v7, v4, Lcom/taobao/av/logic/media/TaoMediaRecorder;->e:Ljkm;

    iget v7, v7, Ljkm;->j:I

    mul-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v6, v6, 0x2

    new-array v6, v6, [B

    iput-object v6, v4, Lcom/taobao/av/logic/media/TaoMediaRecorder;->i:[B

    .line 11246
    :cond_5
    iget-object v6, v4, Lcom/taobao/av/logic/media/TaoMediaRecorder;->i:[B

    invoke-virtual {v5, v6}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 11247
    iget-object v4, v4, Lcom/taobao/av/logic/media/TaoMediaRecorder;->f:Ljko;

    invoke-virtual {v5, v4}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 8400
    :cond_6
    iget-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->r:Lcom/taobao/av/logic/media/TaoMediaRecorder;

    iget v5, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->s:I

    .line 12081
    invoke-static {}, Ljky;->f()I

    move-result v6

    if-ne v5, v6, :cond_a

    .line 12087
    :cond_7
    :goto_2
    iput v3, v4, Lcom/taobao/av/logic/media/TaoMediaRecorder;->a:I

    .line 8403
    :try_start_2
    iget-object v2, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->r:Lcom/taobao/av/logic/media/TaoMediaRecorder;

    .line 12252
    iget-object v3, v2, Lcom/taobao/av/logic/media/TaoMediaRecorder;->h:Ljkn;

    if-nez v3, :cond_8

    .line 12253
    new-instance v3, Ljkn;

    invoke-direct {v3, v2}, Ljkn;-><init>(Lcom/taobao/av/logic/media/TaoMediaRecorder;)V

    iput-object v3, v2, Lcom/taobao/av/logic/media/TaoMediaRecorder;->h:Ljkn;

    .line 12255
    :cond_8
    iget-object v3, v2, Lcom/taobao/av/logic/media/TaoMediaRecorder;->f:Ljko;

    if-nez v3, :cond_9

    .line 12256
    new-instance v3, Ljko;

    invoke-direct {v3, v2}, Ljko;-><init>(Lcom/taobao/av/logic/media/TaoMediaRecorder;)V

    iput-object v3, v2, Lcom/taobao/av/logic/media/TaoMediaRecorder;->f:Ljko;

    .line 12258
    :cond_9
    iget-object v3, v2, Lcom/taobao/av/logic/media/TaoMediaRecorder;->g:Ljkl;

    if-nez v3, :cond_0

    .line 12259
    new-instance v3, Ljkl;

    invoke-direct {v3, v2}, Ljkl;-><init>(Lcom/taobao/av/logic/media/TaoMediaRecorder;)V

    iput-object v3, v2, Lcom/taobao/av/logic/media/TaoMediaRecorder;->g:Ljkl;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 8404
    :catch_0
    move-exception v2

    .line 8406
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 390
    :catch_1
    move-exception v1

    .line 391
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "failed auto focus, exception="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 8010
    const-string/jumbo v5, "video_recorder"

    invoke-static {v5, v7, v4}, Ljpe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 12085
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_a
    invoke-static {}, Ljky;->e()I

    move-result v5

    .line 12125
    invoke-static {}, Ljky;->f()I

    move-result v6

    if-eq v5, v6, :cond_7

    .line 12128
    new-instance v6, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v6}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 12130
    invoke-static {v5, v6}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 12131
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    .line 12132
    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v5

    .line 12134
    packed-switch v5, :pswitch_data_0

    .line 12151
    :goto_3
    :pswitch_0
    iget v3, v6, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int v2, v3, v2

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v3, v2, 0x168

    goto :goto_2

    .line 12139
    :pswitch_1
    const/16 v2, 0x5a

    .line 12140
    goto :goto_3

    .line 12142
    :pswitch_2
    const/16 v2, 0xb4

    .line 12143
    goto :goto_3

    :pswitch_3
    move v2, v3

    .line 12145
    goto :goto_3

    .line 382
    :catch_2
    move-exception v2

    goto/16 :goto_0

    .line 12134
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic c(Lcom/taobao/TaoFullScreenRecordVideoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/TaoFullScreenRecordVideoActivity;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->c()V

    return-void
.end method

.method static synthetic c(Lcom/taobao/TaoFullScreenRecordVideoActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/taobao/TaoFullScreenRecordVideoActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->X:Z

    return p1
.end method

.method static synthetic d(Lcom/taobao/TaoFullScreenRecordVideoActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/TaoFullScreenRecordVideoActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->m:Landroid/os/Handler;

    return-object v0
.end method

.method private d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 452
    sget v0, Ljou$e;->taorecorder_camera_permission_deny:I

    invoke-virtual {p0, v0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 453
    invoke-virtual {p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->finish()V

    .line 454
    return-void
.end method

.method private e()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 457
    iget v2, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->s:I

    invoke-static {v2}, Ljkw;->a(I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->n:Landroid/hardware/Camera;

    .line 458
    iget-object v2, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->n:Landroid/hardware/Camera;

    if-nez v2, :cond_0

    .line 459
    const-string/jumbo v2, "open camera failed"

    .line 13010
    const-string/jumbo v3, "video_recorder"

    invoke-static {v3, v9, v2}, Ljpe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    invoke-direct {p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->d()V

    .line 478
    :goto_0
    return-void

    .line 465
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->n:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 14173
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    .line 14175
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 14177
    if-eqz v2, :cond_2

    .line 14178
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 14179
    iget v7, v2, Landroid/hardware/Camera$Size;->width:I

    const/16 v8, 0x280

    if-lt v7, v8, :cond_1

    iget v7, v2, Landroid/hardware/Camera$Size;->width:I

    rem-int/lit8 v7, v7, 0x10

    if-nez v7, :cond_1

    .line 14182
    iget v7, v2, Landroid/hardware/Camera$Size;->height:I

    const/16 v8, 0x168

    if-lt v7, v8, :cond_1

    iget v7, v2, Landroid/hardware/Camera$Size;->height:I

    rem-int/lit8 v7, v7, 0x10

    if-nez v7, :cond_1

    .line 14185
    iget v7, v2, Landroid/hardware/Camera$Size;->height:I

    iget v8, v2, Landroid/hardware/Camera$Size;->width:I

    if-eq v7, v8, :cond_1

    .line 14188
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 473
    .end local v1    # "parameters":Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v0

    .line 475
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "initCamera failed, exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 21010
    const-string/jumbo v3, "video_recorder"

    invoke-static {v3, v9, v2}, Ljpe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-direct {p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->d()V

    goto :goto_0

    .line 14192
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v1    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    new-array v2, v2, [Landroid/hardware/Camera$Size;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/Camera$Size;

    .line 14194
    new-instance v5, Ljkw$1;

    invoke-direct {v5}, Ljkw$1;-><init>()V

    invoke-static {v2, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 13484
    array-length v5, v2

    if-nez v5, :cond_4

    .line 13485
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 13491
    :goto_2
    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    iput v5, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->v:I

    .line 13492
    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    iput v5, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->w:I

    .line 13493
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setupPreviewSize width="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->v:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", height="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->w:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 15010
    const-string/jumbo v6, "video_recorder"

    const/4 v7, 0x0

    invoke-static {v6, v7, v5}, Ljpe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13494
    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v5, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 467
    new-instance v2, Landroid/graphics/Rect;

    const/16 v5, -0x64

    const/16 v6, -0x64

    const/16 v7, 0x64

    const/16 v8, 0x64

    invoke-direct {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v1, v2}, Ljkw;->a(Landroid/hardware/Camera$Parameters;Landroid/graphics/Rect;)V

    .line 15381
    invoke-static {}, Ljky;->d()Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v4

    .line 15359
    :goto_3
    if-nez v2, :cond_6

    .line 471
    :cond_3
    :goto_4
    iget v2, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->s:I

    iget-object v5, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->n:Landroid/hardware/Camera;

    .line 17119
    new-instance v6, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v6}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 17120
    invoke-static {v2, v6}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 20071
    const-string/jumbo v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 20072
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 20075
    packed-switch v2, :pswitch_data_0

    move v2, v3

    .line 20096
    :goto_5
    iget v3, v6, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v3, v4, :cond_7

    .line 20097
    iget v3, v6, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v2, v3

    rem-int/lit16 v2, v2, 0x168

    .line 20098
    rsub-int v2, v2, 0x168

    rem-int/lit16 v2, v2, 0x168

    .line 18115
    :goto_6
    invoke-virtual {v5, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 472
    iget-object v2, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->n:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_0

    .line 13487
    :cond_4
    const/4 v5, 0x0

    aget-object v2, v2, v5

    goto/16 :goto_2

    :cond_5
    move v2, v3

    .line 15381
    goto :goto_3

    .line 16351
    :cond_6
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "continuous-video"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "continuous-picture"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "auto"

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Ljkw;->a(Ljava/util/List;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 15362
    if-eqz v2, :cond_3

    .line 15363
    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_4

    :pswitch_0
    move v2, v3

    .line 20078
    goto :goto_5

    .line 20080
    :pswitch_1
    const/16 v2, 0x5a

    .line 20081
    goto :goto_5

    .line 20083
    :pswitch_2
    const/16 v2, 0xb4

    .line 20084
    goto :goto_5

    .line 20086
    :pswitch_3
    const/16 v2, 0x10e

    goto :goto_5

    .line 20100
    :cond_7
    iget v3, v6, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int v2, v3, v2

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v2, v2, 0x168
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    .line 20075
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic e(Lcom/taobao/TaoFullScreenRecordVideoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/TaoFullScreenRecordVideoActivity;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->f()V

    return-void
.end method

.method private f()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 498
    iget-object v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->r:Lcom/taobao/av/logic/media/TaoMediaRecorder;

    if-eqz v1, :cond_0

    .line 499
    iget-object v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->r:Lcom/taobao/av/logic/media/TaoMediaRecorder;

    invoke-virtual {v1}, Lcom/taobao/av/logic/media/TaoMediaRecorder;->b()V

    .line 500
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->q:Z

    .line 504
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->n:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    .line 505
    iget-object v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->n:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 506
    iget-object v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->n:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 507
    iget-object v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->n:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->lock()V

    .line 508
    iget-object v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->n:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 509
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->n:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    :cond_1
    :goto_0
    return-void

    .line 511
    :catch_0
    move-exception v0

    .line 513
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "stopPreview failed, exception="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 22010
    const-string/jumbo v2, "video_recorder"

    invoke-static {v2, v3, v1}, Ljpe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/taobao/TaoFullScreenRecordVideoActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/taobao/TaoFullScreenRecordVideoActivity;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->q:Z

    return v0
.end method

.method static synthetic g(Lcom/taobao/TaoFullScreenRecordVideoActivity;)Lcom/taobao/av/logic/media/TaoMediaRecorder;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/TaoFullScreenRecordVideoActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->r:Lcom/taobao/av/logic/media/TaoMediaRecorder;

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "temp_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->W:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 622
    .line 22127
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 22128
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->A:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 22129
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->F:Landroid/widget/ImageView;

    sget v3, Ljou$b;->dingding_record_ovalbg:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 22130
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->G:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 624
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->C:Ljkt;

    .line 23068
    iget-object v3, v0, Ljkt;->f:Lcom/taobao/av/ui/view/recordline/VideoBean;

    if-eqz v3, :cond_0

    iget-object v3, v0, Ljkt;->f:Lcom/taobao/av/ui/view/recordline/VideoBean;

    iget-wide v4, v3, Lcom/taobao/av/ui/view/recordline/VideoBean;->b:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_6

    .line 625
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->m:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 626
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->m:Landroid/os/Handler;

    iget-object v3, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->ac:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 629
    :cond_1
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->F:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    .line 635
    iget v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->W:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->W:I

    .line 636
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->r:Lcom/taobao/av/logic/media/TaoMediaRecorder;

    invoke-virtual {v0}, Lcom/taobao/av/logic/media/TaoMediaRecorder;->b()V

    .line 638
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->C:Ljkt;

    .line 24236
    invoke-virtual {v0}, Ljkt;->d()J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-ltz v3, :cond_7

    invoke-virtual {v0}, Ljkt;->d()J

    move-result-wide v4

    const-wide/16 v6, 0xc8

    cmp-long v0, v4, v6

    if-gtz v0, :cond_7

    move v0, v1

    .line 638
    :goto_1
    if-eqz v0, :cond_2

    .line 639
    invoke-direct {p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->k()V

    .line 642
    :cond_2
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->C:Ljkt;

    invoke-virtual {v0}, Ljkt;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 643
    invoke-direct {p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->b()Z

    move-result v0

    if-nez v0, :cond_3

    .line 644
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->D:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 645
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->D:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 648
    :cond_3
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->H:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 651
    :cond_4
    iput-boolean v2, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->q:Z

    .line 653
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->C:Ljkt;

    invoke-virtual {v0}, Ljkt;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 654
    invoke-direct {p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->m()V

    .line 656
    :cond_5
    return-void

    .line 23072
    :cond_6
    new-instance v3, Lcom/taobao/av/ui/view/recordline/VideoBean;

    invoke-direct {v3}, Lcom/taobao/av/ui/view/recordline/VideoBean;-><init>()V

    .line 23073
    iget-object v4, v0, Ljkt;->f:Lcom/taobao/av/ui/view/recordline/VideoBean;

    iget-object v4, v4, Lcom/taobao/av/ui/view/recordline/VideoBean;->a:Ljava/lang/String;

    iput-object v4, v3, Lcom/taobao/av/ui/view/recordline/VideoBean;->a:Ljava/lang/String;

    .line 23074
    iget-object v4, v0, Ljkt;->f:Lcom/taobao/av/ui/view/recordline/VideoBean;

    iget-wide v4, v4, Lcom/taobao/av/ui/view/recordline/VideoBean;->b:J

    iput-wide v4, v3, Lcom/taobao/av/ui/view/recordline/VideoBean;->b:J

    .line 23075
    sget-object v4, Lcom/taobao/av/ui/view/recordline/VideoBean$State;->READY:Lcom/taobao/av/ui/view/recordline/VideoBean$State;

    .line 24024
    iput-object v4, v3, Lcom/taobao/av/ui/view/recordline/VideoBean;->c:Lcom/taobao/av/ui/view/recordline/VideoBean$State;

    .line 23076
    iget-object v4, v0, Ljkt;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23078
    const/4 v4, 0x0

    iput-object v4, v0, Ljkt;->f:Lcom/taobao/av/ui/view/recordline/VideoBean;

    .line 23080
    invoke-virtual {v0}, Ljkt;->b()V

    .line 23082
    invoke-virtual {v0, v3}, Ljkt;->c(Lcom/taobao/av/ui/view/recordline/VideoBean;)V

    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 24240
    goto :goto_1
.end method

.method static synthetic h(Lcom/taobao/TaoFullScreenRecordVideoActivity;)V
    .locals 15
    .param p0, "x0"    # Lcom/taobao/TaoFullScreenRecordVideoActivity;

    .prologue
    .line 58
    .line 33581
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->C:Ljkt;

    invoke-virtual {v0}, Ljkt;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33582
    invoke-direct {p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->m()V

    .line 33583
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->q:Z

    .line 33584
    :goto_0
    return-void

    .line 33587
    :cond_0
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->O:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 33588
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->O:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 33591
    :cond_1
    invoke-direct {p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33592
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->H:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 35120
    :cond_2
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->z:Landroid/widget/ImageView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 35121
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->A:Landroid/widget/ImageView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 35122
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->F:Landroid/widget/ImageView;

    sget v1, Ljou$b;->dingding_record_ovalbg_pressed:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 35123
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->G:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 34135
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->D:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 34136
    invoke-direct {p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->j()V

    .line 34137
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->C:Ljkt;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljkt;->a(Z)V

    .line 33598
    new-instance v0, Lcom/taobao/av/ui/view/recordline/VideoBean;

    invoke-direct {v0}, Lcom/taobao/av/ui/view/recordline/VideoBean;-><init>()V

    .line 33599
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->r:Lcom/taobao/av/logic/media/TaoMediaRecorder;

    .line 35236
    iget-object v2, v2, Lcom/taobao/av/logic/media/TaoMediaRecorder;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 33599
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/av/ui/view/recordline/VideoBean;->a:Ljava/lang/String;

    .line 33600
    iget-object v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->C:Ljkt;

    .line 36055
    iput-object v0, v1, Ljkt;->f:Lcom/taobao/av/ui/view/recordline/VideoBean;

    .line 36056
    iget-object v2, v1, Ljkt;->f:Lcom/taobao/av/ui/view/recordline/VideoBean;

    sget-object v3, Lcom/taobao/av/ui/view/recordline/VideoBean$State;->CAPTURING:Lcom/taobao/av/ui/view/recordline/VideoBean$State;

    .line 37024
    iput-object v3, v2, Lcom/taobao/av/ui/view/recordline/VideoBean;->c:Lcom/taobao/av/ui/view/recordline/VideoBean$State;

    .line 36058
    invoke-virtual {v1, v0}, Ljkt;->b(Lcom/taobao/av/ui/view/recordline/VideoBean;)V

    .line 33601
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->ab:J

    .line 33602
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->m:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 33603
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->ac:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33607
    :cond_3
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->r:Lcom/taobao/av/logic/media/TaoMediaRecorder;

    invoke-direct {p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/av/logic/media/TaoMediaRecorder;->a(Ljava/lang/String;)V

    .line 33608
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->r:Lcom/taobao/av/logic/media/TaoMediaRecorder;

    .line 37276
    iget-object v14, v0, Lcom/taobao/av/logic/media/TaoMediaRecorder;->h:Ljkn;

    .line 38016
    iget-object v1, v14, Ljkn;->a:Lcom/taobao/av/logic/media/TaoMediaRecorder;

    .line 38066
    iget-object v12, v1, Lcom/taobao/av/logic/media/TaoMediaRecorder;->e:Ljkm;

    .line 38021
    iget-object v1, v14, Ljkn;->a:Lcom/taobao/av/logic/media/TaoMediaRecorder;

    .line 38091
    iget v1, v1, Lcom/taobao/av/logic/media/TaoMediaRecorder;->a:I

    .line 38021
    const/16 v2, 0x5a

    if-eq v1, v2, :cond_4

    iget-object v1, v14, Ljkn;->a:Lcom/taobao/av/logic/media/TaoMediaRecorder;

    .line 39091
    iget v1, v1, Lcom/taobao/av/logic/media/TaoMediaRecorder;->a:I

    .line 38021
    const/16 v2, 0x10e

    if-ne v1, v2, :cond_6

    .line 38022
    :cond_4
    iget-object v1, v14, Ljkn;->a:Lcom/taobao/av/logic/media/TaoMediaRecorder;

    .line 39173
    iget-object v1, v1, Lcom/taobao/av/logic/media/TaoMediaRecorder;->c:Ljava/lang/String;

    .line 38022
    iget v2, v12, Ljkm;->m:I

    int-to-long v2, v2

    .line 38023
    invoke-virtual {v12}, Ljkm;->b()I

    move-result v4

    int-to-long v4, v4

    .line 38024
    invoke-virtual {v12}, Ljkm;->a()I

    move-result v6

    int-to-long v6, v6

    iget v8, v12, Ljkm;->j:I

    iget v9, v12, Ljkm;->i:I

    const/4 v10, 0x3

    iget v11, v12, Ljkm;->h:I

    iget v12, v12, Ljkm;->d:I

    const/4 v13, 0x0

    iget-object v14, v14, Ljkn;->a:Lcom/taobao/av/logic/media/TaoMediaRecorder;

    .line 40091
    iget v14, v14, Lcom/taobao/av/logic/media/TaoMediaRecorder;->a:I

    .line 38022
    invoke-static/range {v1 .. v14}, Lcom/taobao/media/MediaEncoderMgr;->Init(Ljava/lang/String;JJJIIIIIZI)I

    .line 37278
    :goto_1
    iget-object v1, v0, Lcom/taobao/av/logic/media/TaoMediaRecorder;->f:Ljko;

    invoke-virtual {v1}, Ljko;->a()V

    .line 37280
    iget-object v0, v0, Lcom/taobao/av/logic/media/TaoMediaRecorder;->g:Ljkl;

    invoke-virtual {v0}, Ljkl;->a()I

    move-result v0

    .line 33609
    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    .line 40617
    sget v0, Ljou$e;->dingding_audio_record_failed:I

    invoke-virtual {p0, v0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 33613
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->q:Z

    goto/16 :goto_0

    .line 38029
    :cond_6
    iget-object v1, v14, Ljkn;->a:Lcom/taobao/av/logic/media/TaoMediaRecorder;

    .line 40173
    iget-object v1, v1, Lcom/taobao/av/logic/media/TaoMediaRecorder;->c:Ljava/lang/String;

    .line 38029
    iget v2, v12, Ljkm;->m:I

    int-to-long v2, v2

    .line 38030
    invoke-virtual {v12}, Ljkm;->b()I

    move-result v4

    int-to-long v4, v4

    .line 38031
    invoke-virtual {v12}, Ljkm;->a()I

    move-result v6

    int-to-long v6, v6

    iget v8, v12, Ljkm;->i:I

    iget v9, v12, Ljkm;->j:I

    const/4 v10, 0x3

    iget v11, v12, Ljkm;->h:I

    iget v12, v12, Ljkm;->d:I

    .line 38029
    invoke-static/range {v1 .. v12}, Lcom/taobao/media/MediaEncoderMgr;->Init(Ljava/lang/String;JJJIIIII)I

    goto :goto_1
.end method

.method private i()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 696
    iget-object v2, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->C:Ljkt;

    invoke-virtual {v2}, Ljkt;->a()I

    move-result v1

    .line 697
    .local v1, "totaltime":I
    if-ltz v1, :cond_0

    iget v2, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->d:I

    if-ge v1, v2, :cond_0

    .line 698
    iget-object v2, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->P:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 699
    iget-object v2, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->Q:Ljava/util/Formatter;

    const-string/jumbo v3, "%d\""

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    div-int/lit16 v5, v1, 0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 700
    .local v0, "stime":Ljava/lang/String;
    iget-object v2, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->O:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 702
    .end local v0    # "stime":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/taobao/TaoFullScreenRecordVideoActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/taobao/TaoFullScreenRecordVideoActivity;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->X:Z

    return v0
.end method

.method static synthetic j(Lcom/taobao/TaoFullScreenRecordVideoActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/TaoFullScreenRecordVideoActivity;

    .prologue
    .line 58
    iget v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->l:I

    return v0
.end method

.method private j()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 870
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->D:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->D:Landroid/widget/CheckBox;

    sget v1, Ljou$e;->dt_video_record_record_delete:I

    invoke-virtual {p0, v1}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 872
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->D:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 874
    :cond_0
    return-void
.end method

.method private k()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 877
    iget-object v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->C:Ljkt;

    .line 29169
    iget-object v0, v1, Ljkt;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29174
    iget-object v0, v1, Ljkt;->c:Ljava/util/ArrayList;

    iget-object v2, v1, Ljkt;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/av/ui/view/recordline/VideoBean;

    .line 29176
    iget-object v2, v1, Ljkt;->c:Ljava/util/ArrayList;

    iget-object v3, v1, Ljkt;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 29177
    iget-object v2, v0, Lcom/taobao/av/ui/view/recordline/VideoBean;->a:Ljava/lang/String;

    invoke-static {v2}, Ljkx;->a(Ljava/lang/String;)Z

    .line 29179
    invoke-virtual {v1}, Ljkt;->b()V

    .line 29181
    invoke-virtual {v1, v0}, Ljkt;->a(Lcom/taobao/av/ui/view/recordline/VideoBean;)V

    .line 878
    :cond_0
    iget v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->W:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->W:I

    .line 883
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->C:Ljkt;

    invoke-virtual {v0}, Ljkt;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 884
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->D:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 885
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->D:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 886
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->H:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 887
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->O:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 890
    :cond_1
    invoke-direct {p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->i()V

    .line 30149
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->F:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 30150
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->F:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 30151
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->F:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 30152
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->G:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 893
    :cond_2
    return-void
.end method

.method static synthetic k(Lcom/taobao/TaoFullScreenRecordVideoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/TaoFullScreenRecordVideoActivity;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->h()V

    return-void
.end method

.method private l()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 962
    iget-boolean v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->q:Z

    if-eqz v1, :cond_0

    .line 1002
    :goto_0
    return-void

    .line 965
    :cond_0
    iget-object v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->C:Ljkt;

    .line 30160
    iget-object v1, v1, Ljkt;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    .line 965
    if-eqz v1, :cond_1

    .line 966
    const-string/jumbo v1, "video record quit for empty"

    .line 31010
    const-string/jumbo v2, "video_recorder"

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Ljpe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    invoke-virtual {p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->finish()V

    goto :goto_0

    .line 969
    :cond_1
    new-instance v0, Lcom/taobao/av/ui/view/NewDialog;

    invoke-direct {v0, p0}, Lcom/taobao/av/ui/view/NewDialog;-><init>(Landroid/app/Activity;)V

    .line 970
    .local v0, "newDialog":Lcom/taobao/av/ui/view/NewDialog;
    sget v1, Ljou$e;->dingding_dlg_record_quit_cancel:I

    invoke-virtual {p0, v1}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 31040
    iget-object v2, v0, Lcom/taobao/av/ui/view/NewDialog;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 971
    sget v1, Ljou$e;->dingding_dlg_record_quit_restart:I

    invoke-virtual {p0, v1}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 31044
    iget-object v2, v0, Lcom/taobao/av/ui/view/NewDialog;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 972
    sget v1, Ljou$e;->dingding_dlg_record_quit_confirm:I

    invoke-virtual {p0, v1}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 31048
    iget-object v2, v0, Lcom/taobao/av/ui/view/NewDialog;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 973
    sget v1, Ljou$e;->dingding_dlg_record_quit_message:I

    invoke-virtual {p0, v1}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 32036
    iget-object v2, v0, Lcom/taobao/av/ui/view/NewDialog;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 974
    new-instance v1, Lcom/taobao/TaoFullScreenRecordVideoActivity$3;

    invoke-direct {v1, p0, v0}, Lcom/taobao/TaoFullScreenRecordVideoActivity$3;-><init>(Lcom/taobao/TaoFullScreenRecordVideoActivity;Lcom/taobao/av/ui/view/NewDialog;)V

    .line 32063
    iget-object v2, v0, Lcom/taobao/av/ui/view/NewDialog;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 981
    new-instance v1, Lcom/taobao/TaoFullScreenRecordVideoActivity$4;

    invoke-direct {v1, p0, v0}, Lcom/taobao/TaoFullScreenRecordVideoActivity$4;-><init>(Lcom/taobao/TaoFullScreenRecordVideoActivity;Lcom/taobao/av/ui/view/NewDialog;)V

    .line 32067
    iget-object v2, v0, Lcom/taobao/av/ui/view/NewDialog;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 991
    new-instance v1, Lcom/taobao/TaoFullScreenRecordVideoActivity$5;

    invoke-direct {v1, p0, v0}, Lcom/taobao/TaoFullScreenRecordVideoActivity$5;-><init>(Lcom/taobao/TaoFullScreenRecordVideoActivity;Lcom/taobao/av/ui/view/NewDialog;)V

    .line 32071
    iget-object v2, v0, Lcom/taobao/av/ui/view/NewDialog;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1000
    invoke-virtual {v0}, Lcom/taobao/av/ui/view/NewDialog;->show()V

    goto :goto_0
.end method

.method static synthetic l(Lcom/taobao/TaoFullScreenRecordVideoActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/taobao/TaoFullScreenRecordVideoActivity;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic m(Lcom/taobao/TaoFullScreenRecordVideoActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/TaoFullScreenRecordVideoActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->Z:Ljava/lang/Runnable;

    return-object v0
.end method

.method private m()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->F:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1142
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->F:Landroid/widget/ImageView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1143
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->F:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1144
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->G:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1146
    :cond_0
    return-void
.end method

.method static synthetic n(Lcom/taobao/TaoFullScreenRecordVideoActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/taobao/TaoFullScreenRecordVideoActivity;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->Y:Z

    return v0
.end method

.method static synthetic o(Lcom/taobao/TaoFullScreenRecordVideoActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/taobao/TaoFullScreenRecordVideoActivity;

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->ab:J

    return-wide v0
.end method

.method static synthetic p(Lcom/taobao/TaoFullScreenRecordVideoActivity;)Ljkt;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/TaoFullScreenRecordVideoActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->C:Ljkt;

    return-object v0
.end method

.method static synthetic q(Lcom/taobao/TaoFullScreenRecordVideoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/TaoFullScreenRecordVideoActivity;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->i()V

    return-void
.end method

.method static synthetic r(Lcom/taobao/TaoFullScreenRecordVideoActivity;)V
    .locals 1
    .param p0, "x0"    # Lcom/taobao/TaoFullScreenRecordVideoActivity;

    .prologue
    .line 58
    .line 40659
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->q:Z

    .line 40660
    invoke-direct {p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->h()V

    .line 58
    return-void
.end method

.method static synthetic s(Lcom/taobao/TaoFullScreenRecordVideoActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/TaoFullScreenRecordVideoActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->S:Landroid/view/View;

    return-object v0
.end method

.method static synthetic t(Lcom/taobao/TaoFullScreenRecordVideoActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/TaoFullScreenRecordVideoActivity;

    .prologue
    .line 58
    iget v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->W:I

    return v0
.end method

.method static synthetic u(Lcom/taobao/TaoFullScreenRecordVideoActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/taobao/TaoFullScreenRecordVideoActivity;

    .prologue
    .line 58
    .line 41113
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->K:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->K:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41114
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->K:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 41115
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->L:Ljkq;

    invoke-virtual {v0}, Ljkq;->stop()V

    .line 58
    :cond_0
    return-void
.end method

.method static synthetic v(Lcom/taobao/TaoFullScreenRecordVideoActivity;)Landroid/view/SurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/TaoFullScreenRecordVideoActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->o:Landroid/view/SurfaceView;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 5
    .param p1, "h"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1055
    iget-object v2, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->o:Landroid/view/SurfaceView;

    if-nez v2, :cond_1

    .line 1087
    :cond_0
    :goto_0
    return-void

    .line 1058
    :cond_1
    iget v2, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->v:I

    int-to-float v2, v2

    iget v3, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->w:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 1060
    .local v1, "scale":F
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 1064
    iget-object v2, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->o:Landroid/view/SurfaceView;

    .line 1065
    invoke-virtual {v2}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1066
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v0, :cond_0

    .line 1070
    const/16 v2, 0x33

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1071
    int-to-float v2, p1

    div-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1072
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1073
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1075
    iget-object v2, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->m:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 1076
    iget-object v2, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->m:Landroid/os/Handler;

    new-instance v3, Lcom/taobao/TaoFullScreenRecordVideoActivity$7;

    invoke-direct {v3, p0, v0}, Lcom/taobao/TaoFullScreenRecordVideoActivity$7;-><init>(Lcom/taobao/TaoFullScreenRecordVideoActivity;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1085
    :cond_2
    iget-object v2, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->o:Landroid/view/SurfaceView;

    invoke-virtual {v2, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

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

    .line 944
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 946
    const/16 v1, 0x66

    if-ne v1, p1, :cond_0

    .line 947
    if-ne v2, p2, :cond_1

    .line 948
    invoke-virtual {p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->finish()V

    .line 959
    :cond_0
    :goto_0
    return-void

    .line 950
    :cond_1
    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    .line 952
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 953
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 954
    const-string/jumbo v1, "pub_title_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->R:Ljava/lang/String;

    .line 956
    :cond_2
    invoke-virtual {p0, v2, p3}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 758
    iget-boolean v3, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->q:Z

    if-eqz v3, :cond_1

    .line 776
    :cond_0
    :goto_0
    return-void

    .line 761
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 762
    .local v0, "id":I
    sget v3, Ljou$c;->iv_back:I

    if-ne v0, v3, :cond_2

    .line 763
    invoke-direct {p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->l()V

    goto :goto_0

    .line 764
    :cond_2
    sget v3, Ljou$c;->iv_camerarotate:I

    if-ne v0, v3, :cond_7

    .line 25815
    new-instance v4, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v4}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 25816
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v5

    move v3, v2

    .line 25817
    :goto_1
    if-ge v3, v5, :cond_0

    .line 25818
    invoke-static {v3, v4}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 25819
    iget v6, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->s:I

    if-nez v6, :cond_4

    .line 25821
    iget v6, v4, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v6, v1, :cond_6

    .line 25822
    iget-object v2, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->n:Landroid/hardware/Camera;

    if-eqz v2, :cond_3

    .line 25823
    iget-object v2, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->n:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 25824
    iget-object v2, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->n:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 25825
    iput-object v7, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->n:Landroid/hardware/Camera;

    .line 25828
    :cond_3
    iput v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->s:I

    .line 25829
    invoke-direct {p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->e()V

    .line 25830
    invoke-direct {p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->c()V

    goto :goto_0

    .line 25835
    :cond_4
    iget v6, v4, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v6, :cond_6

    .line 25836
    iget-object v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->n:Landroid/hardware/Camera;

    if-eqz v1, :cond_5

    .line 25837
    iget-object v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->n:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 25838
    iget-object v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->n:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 25839
    iput-object v7, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->n:Landroid/hardware/Camera;

    .line 25842
    :cond_5
    iput v2, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->s:I

    .line 25843
    invoke-direct {p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->e()V

    .line 25844
    invoke-direct {p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->c()V

    goto :goto_0

    .line 25817
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 766
    :cond_7
    sget v3, Ljou$c;->btn_delete_last_clip:I

    if-ne v0, v3, :cond_9

    .line 25852
    iget-object v2, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->D:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 25854
    iget-object v2, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->C:Ljkt;

    invoke-virtual {v2, v1}, Ljkt;->a(Z)V

    .line 25863
    iget-object v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->D:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    .line 25864
    iget-object v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->D:Landroid/widget/CheckBox;

    sget v2, Ljou$e;->dt_video_record_record_delete:I

    invoke-virtual {p0, v2}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 25865
    iget-object v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->D:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Ljou$a;->dingding_color_red_normal:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setTextColor(I)V

    goto/16 :goto_0

    .line 25857
    :cond_8
    invoke-direct {p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->k()V

    .line 25858
    invoke-direct {p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->j()V

    goto/16 :goto_0

    .line 768
    :cond_9
    sget v3, Ljou$c;->iv_ok:I

    if-ne v0, v3, :cond_0

    .line 769
    iget-object v3, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->C:Ljkt;

    .line 26110
    invoke-virtual {v3}, Ljkt;->a()I

    move-result v4

    iget v3, v3, Ljkt;->e:I

    if-lt v4, v3, :cond_b

    .line 769
    :goto_2
    if-eqz v1, :cond_c

    .line 27106
    iget-object v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->K:Landroid/view/View;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->K:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_a

    .line 27107
    iget-object v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->L:Ljkq;

    invoke-virtual {v1}, Ljkq;->start()V

    .line 27108
    iget-object v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->K:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 26898
    :cond_a
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/taobao/TaoFullScreenRecordVideoActivity$2;

    invoke-direct {v2, p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity$2;-><init>(Lcom/taobao/TaoFullScreenRecordVideoActivity;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 26939
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :cond_b
    move v1, v2

    .line 26110
    goto :goto_2

    .line 27780
    :cond_c
    iget-object v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->S:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 27784
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 27785
    invoke-virtual {p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 27786
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 27787
    iget-object v3, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->S:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 27788
    iget-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->S:Landroid/view/View;

    iget-object v5, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->C:Ljkt;

    .line 28102
    iget v5, v5, Ljkt;->e:I

    .line 27789
    mul-int/2addr v1, v5

    int-to-float v1, v1

    iget-object v5, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->C:Ljkt;

    .line 29092
    iget v5, v5, Ljkt;->d:I

    int-to-float v5, v5

    .line 27789
    div-float/2addr v1, v5

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v1, v3

    .line 27788
    invoke-virtual {v4, v1}, Landroid/view/View;->setX(F)V

    .line 27792
    iget-object v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->S:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 27794
    iget-object v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->S:Landroid/view/View;

    new-instance v2, Lcom/taobao/TaoFullScreenRecordVideoActivity$15;

    invoke-direct {v2, p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity$15;-><init>(Lcom/taobao/TaoFullScreenRecordVideoActivity;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v4, 0x400

    const/4 v10, 0x3

    const/16 v8, 0x3e8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 139
    invoke-virtual {p0, v6}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->requestWindowFeature(I)Z

    .line 140
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 146
    invoke-virtual {p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 148
    .local v3, "window":Landroid/view/Window;
    invoke-virtual {v3, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 150
    sget v4, Ljou$d;->taorecorder_activity_recorder_fullscreen:I

    invoke-virtual {p0, v4}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->setContentView(I)V

    .line 153
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 154
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 155
    const-string/jumbo v4, "quality"

    const/4 v7, 0x1

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->b:I

    .line 156
    const-string/jumbo v4, "mode"

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->T:I

    .line 158
    invoke-direct {p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 159
    const/16 v4, 0x3e8

    iput v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->e:I

    .line 160
    const v4, 0x7fffffff

    iput v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->d:I

    .line 175
    :goto_0
    const-string/jumbo v4, "cameraPosition"

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1803
    .local v2, "tempCameraPosition":I
    new-instance v7, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v7}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 1804
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v8

    move v4, v5

    .line 1805
    :goto_1
    if-ge v4, v8, :cond_7

    .line 1806
    invoke-static {v4, v7}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 1807
    iget v9, v7, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v9, v2, :cond_6

    move v4, v6

    .line 176
    :goto_2
    if-eqz v4, :cond_0

    .line 177
    iput v2, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->s:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2297
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "tempCameraPosition":I
    :cond_0
    :goto_3
    invoke-static {}, Ljky;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2298
    invoke-static {}, Ljky;->a()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2299
    invoke-static {p0}, Ljky;->a(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3019
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "mounted"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 2300
    if-nez v4, :cond_8

    :cond_1
    move v4, v6

    .line 184
    :goto_4
    if-eqz v4, :cond_9

    .line 185
    sget v4, Ljou$e;->taorecorder_notsupport:I

    invoke-virtual {p0, v4}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 186
    invoke-virtual {p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->finish()V

    .line 276
    :goto_5
    return-void

    .line 162
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_2
    :try_start_1
    const-string/jumbo v4, "minDuration"

    const/16 v7, 0xbb8

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->e:I

    .line 163
    iget v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->e:I

    if-gt v4, v8, :cond_3

    .line 164
    const/16 v4, 0x3e8

    iput v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->e:I

    .line 166
    :cond_3
    const-string/jumbo v4, "maxDuration"

    const v7, 0xea60

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->d:I

    .line 167
    iget v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->d:I

    iget v7, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->e:I

    if-ge v4, v7, :cond_5

    .line 168
    iget v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->e:I

    iput v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->d:I

    .line 172
    :cond_4
    :goto_6
    iget v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->d:I

    add-int/lit8 v4, v4, 0x64

    iput v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->d:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 181
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v4

    const-string/jumbo v4, "failed get duration"

    .line 2010
    const-string/jumbo v7, "video_recorder"

    const/4 v8, 0x0

    invoke-static {v7, v8, v4}, Ljpe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 169
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_5
    :try_start_2
    iget v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->d:I

    const v7, 0x2bf20

    if-le v4, v7, :cond_4

    .line 170
    const v4, 0x2bf20

    iput v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->d:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    .line 1805
    .restart local v2    # "tempCameraPosition":I
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_7
    move v4, v5

    .line 1811
    goto/16 :goto_2

    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "tempCameraPosition":I
    :cond_8
    move v4, v5

    .line 2304
    goto :goto_4

    .line 3310
    :cond_9
    iget v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->d:I

    const/16 v7, 0x3a98

    if-lt v4, v7, :cond_e

    .line 3311
    iput v6, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->l:I

    .line 192
    :goto_7
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->m:Landroid/os/Handler;

    .line 194
    sget v4, Ljou$c;->camera_frame:I

    invoke-virtual {p0, v4}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Ljkr;

    .line 195
    .local v1, "frame":Ljkr;
    invoke-interface {v1, p0}, Ljkr;->setOnSizeChangedListener(Ljkr$a;)V

    .line 196
    sget v4, Ljou$c;->camera_view:I

    invoke-virtual {p0, v4}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceView;

    iput-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->o:Landroid/view/SurfaceView;

    .line 197
    iget-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->o:Landroid/view/SurfaceView;

    new-instance v7, Lcom/taobao/TaoFullScreenRecordVideoActivity$1;

    invoke-direct {v7, p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity$1;-><init>(Lcom/taobao/TaoFullScreenRecordVideoActivity;)V

    invoke-virtual {v4, v7}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 207
    iget-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->o:Landroid/view/SurfaceView;

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v4

    iput-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->p:Landroid/view/SurfaceHolder;

    .line 208
    iget-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->p:Landroid/view/SurfaceHolder;

    iget-object v7, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->V:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v4, v7}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 209
    iget-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->p:Landroid/view/SurfaceHolder;

    invoke-interface {v4, v10}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 210
    invoke-virtual {p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    const-string/jumbo v7, "audio"

    invoke-virtual {v4, v7}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->x:Landroid/media/AudioManager;

    .line 4021
    iget-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->x:Landroid/media/AudioManager;

    iget-object v7, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->ad:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v4, v7, v10, v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 213
    sget v4, Ljou$c;->iv_back:I

    invoke-virtual {p0, v4}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->z:Landroid/widget/ImageView;

    .line 214
    iget-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->z:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    sget v4, Ljou$c;->iv_camerarotate:I

    invoke-virtual {p0, v4}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->A:Landroid/widget/ImageView;

    .line 216
    iget-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->A:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    new-instance v4, Ljkt;

    invoke-direct {v4}, Ljkt;-><init>()V

    iput-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->C:Ljkt;

    .line 219
    iget-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->C:Ljkt;

    iget v7, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->d:I

    .line 4088
    iput v7, v4, Ljkt;->d:I

    .line 220
    iget-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->C:Ljkt;

    iget v7, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->e:I

    .line 4098
    iput v7, v4, Ljkt;->e:I

    .line 221
    iget-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->C:Ljkt;

    invoke-direct {p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->b()Z

    move-result v7

    .line 5031
    iput-boolean v7, v4, Ljkt;->a:Z

    .line 222
    iget-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->C:Ljkt;

    new-instance v7, Lcom/taobao/TaoFullScreenRecordVideoActivity$8;

    invoke-direct {v7, p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity$8;-><init>(Lcom/taobao/TaoFullScreenRecordVideoActivity;)V

    invoke-virtual {v4, v7}, Ljkt;->a(Ljkt$a;)V

    .line 240
    new-instance v4, Ljkv;

    sget v7, Ljou$c;->record_timeline:I

    invoke-virtual {p0, v7}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->C:Ljkt;

    invoke-direct {v4, v7, v8}, Ljkv;-><init>(Landroid/view/View;Ljkt;)V

    iput-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->B:Ljkv;

    .line 241
    iget-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->B:Ljkv;

    sget v7, Ljou$b;->dingding_timeline_clip_selector:I

    .line 5054
    iget-object v8, v4, Ljkv;->a:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v4, Ljkv;->b:Landroid/graphics/drawable/Drawable;

    .line 242
    invoke-direct {p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->b()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->B:Ljkv;

    .line 5068
    iget-object v4, v4, Ljkv;->a:Landroid/view/View;

    .line 242
    if-eqz v4, :cond_a

    .line 243
    iget-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->B:Ljkv;

    .line 6068
    iget-object v4, v4, Ljkv;->a:Landroid/view/View;

    .line 243
    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 246
    :cond_a
    sget v4, Ljou$c;->btn_delete_last_clip:I

    invoke-virtual {p0, v4}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->D:Landroid/widget/CheckBox;

    .line 247
    iget-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->D:Landroid/widget/CheckBox;

    invoke-virtual {v4, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    sget v4, Ljou$c;->iv_Recorderbg:I

    invoke-virtual {p0, v4}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->E:Landroid/widget/ImageView;

    .line 250
    sget v4, Ljou$c;->iv_Recorder:I

    invoke-virtual {p0, v4}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->F:Landroid/widget/ImageView;

    .line 251
    iget-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->F:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->aa:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 253
    sget v4, Ljou$c;->iv_Recorder_text:I

    invoke-virtual {p0, v4}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->G:Landroid/widget/TextView;

    .line 254
    invoke-direct {p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->a()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 255
    iget-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->G:Landroid/widget/TextView;

    const-string/jumbo v7, ""

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    :cond_b
    sget v4, Ljou$c;->iv_ok:I

    invoke-virtual {p0, v4}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->H:Landroid/widget/CheckBox;

    .line 259
    iget-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->H:Landroid/widget/CheckBox;

    invoke-virtual {v4, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6096
    sget v4, Ljou$c;->view_dialog:I

    invoke-virtual {p0, v4}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->K:Landroid/view/View;

    .line 7011
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 7012
    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v4, v7

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v4, v7

    float-to-int v4, v4

    .line 6098
    new-instance v7, Ljkq;

    const/4 v8, -0x1

    int-to-float v4, v4

    invoke-direct {v7, v8, v4}, Ljkq;-><init>(IF)V

    iput-object v7, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->L:Ljkq;

    .line 6099
    sget v4, Ljou$c;->taorecorder_uik_circularProgress:I

    invoke-virtual {p0, v4}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->M:Landroid/widget/ImageView;

    .line 6100
    sget v4, Ljou$c;->taorecorder_uik_progressText:I

    invoke-virtual {p0, v4}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->N:Landroid/widget/TextView;

    .line 6101
    iget-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->M:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->L:Ljkq;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6102
    iget-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->N:Landroid/widget/TextView;

    sget v7, Ljou$e;->taorecorder_doing:I

    invoke-virtual {p0, v7}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    sget v4, Ljou$c;->tv_recordtime:I

    invoke-virtual {p0, v4}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->O:Landroid/widget/TextView;

    .line 263
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->P:Ljava/lang/StringBuilder;

    .line 264
    new-instance v4, Ljava/util/Formatter;

    iget-object v7, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->P:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->Q:Ljava/util/Formatter;

    .line 266
    sget v4, Ljou$c;->rl_recorder_controller:I

    invoke-virtual {p0, v4}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v7, Lcom/taobao/TaoFullScreenRecordVideoActivity$9;

    invoke-direct {v7, p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity$9;-><init>(Lcom/taobao/TaoFullScreenRecordVideoActivity;)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7019
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v4, v7, :cond_d

    .line 7020
    const-string/jumbo v4, "android.permission.RECORD_AUDIO"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    .line 7021
    if-eqz v4, :cond_c

    .line 7022
    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v7, "android.permission.RECORD_AUDIO"

    aput-object v7, v4, v5

    const/16 v7, 0x7c

    invoke-virtual {p0, v4, v7}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 7025
    :cond_c
    const-string/jumbo v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    .line 7026
    if-eqz v4, :cond_d

    .line 7027
    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v6, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v6, v4, v5

    const/16 v5, 0x7b

    invoke-virtual {p0, v4, v5}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 275
    :cond_d
    sget v4, Ljou$c;->iv_notice_recordlimit:I

    invoke-virtual {p0, v4}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->S:Landroid/view/View;

    goto/16 :goto_5

    .line 3313
    .end local v1    # "frame":Ljkr;
    :cond_e
    iput v5, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->l:I

    goto/16 :goto_7
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 734
    .line 25029
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->x:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 25030
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->x:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->ad:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 740
    :cond_0
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->m:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 741
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->m:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 742
    iput-object v2, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->m:Landroid/os/Handler;

    .line 25090
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.taobao.taorecorder.action.error_action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 25091
    const-string/jumbo v1, "errorCode"

    const-string/jumbo v2, "2002"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25092
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 748
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->p:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_2

    .line 749
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->p:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->V:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 752
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 753
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 1006
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 1008
    iget-object v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->K:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->K:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1014
    :goto_0
    return v0

    .line 1011
    :cond_0
    invoke-direct {p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->l()V

    goto :goto_0

    .line 1014
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 718
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 720
    iget-boolean v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity;->q:Z

    if-eqz v0, :cond_0

    .line 721
    invoke-direct {p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->h()V

    .line 724
    :cond_0
    invoke-direct {p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->f()V

    .line 725
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 292
    .line 7034
    packed-switch p1, :pswitch_data_0

    .line 293
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 294
    return-void

    .line 7036
    :pswitch_0
    aget v0, p3, v0

    if-eqz v0, :cond_0

    .line 7037
    sget v0, Ljou$e;->taorecorder_audio_permission_deny:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 7040
    :pswitch_1
    aget v0, p3, v0

    if-eqz v0, :cond_0

    .line 7041
    sget v0, Ljou$e;->taorecorder_write_sdcard_permission_deny:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 7034
    :pswitch_data_0
    .packed-switch 0x7b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 706
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 712
    invoke-direct {p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->e()V

    .line 713
    invoke-direct {p0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->c()V

    .line 714
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 729
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 730
    return-void
.end method
