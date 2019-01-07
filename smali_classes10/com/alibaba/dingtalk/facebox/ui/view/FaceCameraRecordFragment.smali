.class public Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "FaceCameraRecordFragment.java"

# interfaces
.implements Lgsm$b;
.implements Lgsv$b;


# annotations
.annotation build Lcom/alibaba/android/dingtalk/permission/annotation/RuntimePermissions;
.end annotation


# instance fields
.field private A:Z

.field private B:Ljava/lang/String;

.field private C:I

.field private D:I

.field private final E:Landroid/os/Handler;

.field private F:J

.field private M:Landroid/app/Dialog;

.field private N:Ljava/lang/Runnable;

.field private O:Landroid/animation/ObjectAnimator;

.field private P:Z

.field private Q:Z

.field private R:Landroid/app/ProgressDialog;

.field private S:Ljava/lang/Boolean;

.field private T:Ljava/lang/Boolean;

.field private U:Z

.field private a:Lgsv$a;

.field private b:Lgsm;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/animation/Animation;

.field private f:Landroid/view/animation/Animation;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/view/View;

.field private p:Landroid/widget/TextView;

.field private q:Lcom/alibaba/dingtalk/facebox/ui/widget/FaceMaskView;

.field private r:I

.field private s:I

.field private t:Landroid/graphics/Rect;

.field private u:F

.field private v:F

.field private w:F

.field private x:I

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    .line 122
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->t:Landroid/graphics/Rect;

    .line 131
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->z:Z

    .line 133
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->A:Z

    .line 141
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->E:Landroid/os/Handler;

    .line 551
    new-instance v0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$12;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$12;-><init>(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->N:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    .prologue
    .line 67
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->C:I

    return v0
.end method

.method public static a(ZZLjava/lang/String;II)Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;
    .locals 3
    .param p0, "isEmployee"    # Z
    .param p1, "showBackCamera"    # Z
    .param p2, "tips"    # Ljava/lang/String;
    .param p3, "settingMode"    # I
    .param p4, "faceMagic"    # I

    .prologue
    .line 80
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 81
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "camera_facing_key"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 82
    const-string/jumbo v2, "isEmployee"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 83
    const-string/jumbo v2, "tips"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string/jumbo v2, "settingMode"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 85
    const-string/jumbo v2, "faceMagic"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 86
    new-instance v1, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    invoke-direct {v1}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;-><init>()V

    .line 87
    .local v1, "fragment":Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;
    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->setArguments(Landroid/os/Bundle;)V

    .line 88
    return-object v1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->S:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;II)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->b(II)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->U:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->T:Ljava/lang/Boolean;

    return-object p1
.end method

.method private b(II)V
    .locals 22
    .param p1, "previewWidth"    # I
    .param p2, "previewHeight"    # I

    .prologue
    .line 347
    .line 2308
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 2309
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 2311
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->x:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v0, v14, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->y:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v0, v15, :cond_1

    .line 2315
    :cond_0
    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->x:I

    .line 2316
    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->y:I

    .line 2318
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lgrv$b;->facerecord_circle_margin_top:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 2320
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->r:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->s:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 2327
    int-to-float v0, v15

    move/from16 v16, v0

    const/high16 v17, 0x40400000    # 3.0f

    mul-float v16, v16, v17

    const/high16 v17, 0x41200000    # 10.0f

    div-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    .line 2328
    div-int/lit8 v15, v15, 0x2

    .line 2329
    add-int v14, v14, v16

    .line 2331
    int-to-float v0, v15

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->u:F

    .line 2332
    int-to-float v0, v14

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->v:F

    .line 2333
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->w:F

    .line 2335
    new-instance v17, Landroid/graphics/Path;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Path;-><init>()V

    .line 2336
    int-to-float v0, v15

    move/from16 v18, v0

    int-to-float v0, v14

    move/from16 v19, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v20, v0

    sget-object v21, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 2337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->q:Lcom/alibaba/dingtalk/facebox/ui/widget/FaceMaskView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/facebox/ui/widget/FaceMaskView;->setClipPath(Landroid/graphics/Path;)V

    .line 2340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->t:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    sub-int v18, v15, v16

    sub-int v19, v14, v16

    add-int v15, v15, v16

    add-int v14, v14, v16

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v15, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 349
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->t:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->s:I

    .line 2854
    int-to-float v14, v14

    const/high16 v16, 0x3f800000    # 1.0f

    mul-float v14, v14, v16

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v14, v14, v16

    int-to-float v15, v15

    const/high16 v16, 0x3f800000    # 1.0f

    mul-float v15, v15, v16

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 2856
    move/from16 v0, p2

    int-to-float v15, v0

    mul-float/2addr v15, v14

    float-to-int v15, v15

    .line 2857
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v14, v14, v16

    float-to-int v14, v14

    .line 2859
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v11, v0, [I

    const/16 v16, 0x0

    aput v15, v11, v16

    const/4 v15, 0x1

    aput v14, v11, v15

    .line 351
    .local v11, "size":[I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->t:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->t:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    mul-int/lit8 v15, v15, 0x2

    add-int v4, v14, v15

    .line 353
    .local v4, "ch":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->r:I

    const/4 v15, 0x0

    aget v15, v11, v15

    sub-int/2addr v14, v15

    div-int/lit8 v12, v14, 0x2

    .line 354
    .local v12, "x":I
    const/4 v14, 0x1

    aget v14, v11, v14

    if-le v4, v14, :cond_3

    const/4 v14, 0x1

    aget v14, v11, v14

    sub-int v14, v4, v14

    div-int/lit8 v13, v14, 0x2

    .line 357
    .local v13, "y":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->b:Lgsm;

    invoke-interface {v14}, Lgsm;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 358
    .local v8, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v14, 0x0

    aget v14, v11, v14

    iput v14, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 359
    const/4 v14, 0x1

    aget v14, v11, v14

    iput v14, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 360
    iput v12, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 361
    iput v13, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 362
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->b:Lgsm;

    invoke-interface {v14, v8}, Lgsm;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->c:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .end local v8    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 365
    .restart local v8    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v14, 0x0

    aget v14, v11, v14

    iput v14, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 366
    const/4 v14, 0x1

    aget v14, v11, v14

    iput v14, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 367
    iput v12, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 368
    iput v13, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 369
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->c:Landroid/widget/ImageView;

    invoke-virtual {v14, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->g:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 372
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->g:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .end local v8    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 373
    .restart local v8    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->t:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    iput v14, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 374
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->t:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    iput v14, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 375
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->t:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v14

    iput v14, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 376
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->t:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    iput v14, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 377
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->g:Landroid/view/View;

    invoke-virtual {v14, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 379
    const/4 v14, 0x1

    const/high16 v15, 0x41500000    # 13.0f

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v14

    float-to-int v9, v14

    .line 380
    .local v9, "margin":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->i:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .end local v8    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 381
    .restart local v8    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->t:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    sub-int/2addr v14, v9

    iput v14, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 382
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->t:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v9

    iput v14, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 383
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->t:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v14

    mul-int/lit8 v15, v9, 0x2

    add-int/2addr v14, v15

    iput v14, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 384
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->t:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    mul-int/lit8 v15, v9, 0x2

    add-int/2addr v14, v15

    iput v14, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 385
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->i:Landroid/view/View;

    invoke-virtual {v14, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    .line 389
    .local v10, "rect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->t:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    sub-int/2addr v14, v12

    int-to-float v14, v14

    const/4 v15, 0x0

    aget v15, v11, v15

    int-to-float v15, v15

    const/high16 v16, 0x3f800000    # 1.0f

    mul-float v15, v15, v16

    div-float v5, v14, v15

    .line 390
    .local v5, "cl":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->t:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v13

    int-to-float v14, v14

    const/4 v15, 0x1

    aget v15, v11, v15

    int-to-float v15, v15

    const/high16 v16, 0x3f800000    # 1.0f

    mul-float v15, v15, v16

    div-float v7, v14, v15

    .line 391
    .local v7, "ct":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->t:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    sub-int/2addr v14, v12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->t:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    add-int/2addr v14, v15

    int-to-float v14, v14

    const/4 v15, 0x0

    aget v15, v11, v15

    int-to-float v15, v15

    const/high16 v16, 0x3f800000    # 1.0f

    mul-float v15, v15, v16

    div-float v6, v14, v15

    .line 392
    .local v6, "cr":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->t:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->t:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    add-int/2addr v14, v15

    int-to-float v14, v14

    const/4 v15, 0x1

    aget v15, v11, v15

    int-to-float v15, v15

    const/high16 v16, 0x3f800000    # 1.0f

    mul-float v15, v15, v16

    div-float v3, v14, v15

    .line 393
    .local v3, "cb":F
    invoke-virtual {v10, v5, v7, v6, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 394
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->a:Lgsv$a;

    if-eqz v14, :cond_2

    .line 395
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->a:Lgsv$a;

    invoke-interface {v14, v10}, Lgsv$a;->a(Landroid/graphics/RectF;)V

    .line 397
    :cond_2
    return-void

    .line 354
    .end local v3    # "cb":F
    .end local v5    # "cl":F
    .end local v6    # "cr":F
    .end local v7    # "ct":F
    .end local v8    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v9    # "margin":I
    .end local v10    # "rect":Landroid/graphics/RectF;
    .end local v13    # "y":I
    :cond_3
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->Q:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->z:Z

    return p1
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;)Lgsv$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->a:Lgsv$a;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 694
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->E:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$3;-><init>(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 704
    return-void
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 67
    .line 6708
    iput-boolean v3, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->P:Z

    .line 6709
    invoke-direct {p0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->p()V

    .line 7528
    invoke-static {p0}, Lgsx;->a(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;)V

    .line 6712
    sget v0, Lgrv$f;->dt_facebox_face_recording:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->c(Ljava/lang/String;)V

    .line 6714
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->c:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6716
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->b:Lgsm;

    invoke-interface {v0, v3}, Lgsm;->setVisibility(I)V

    .line 6718
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6719
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6720
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    return-void
.end method

.method static synthetic e(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;)F
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    .prologue
    .line 67
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->u:F

    return v0
.end method

.method static synthetic f(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;)F
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    .prologue
    .line 67
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->v:F

    return v0
.end method

.method static synthetic g(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;)F
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    .prologue
    .line 67
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->w:F

    return v0
.end method

.method static synthetic h(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->h:Landroid/view/View;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    .prologue
    const/4 v6, 0x0

    .line 67
    .line 7569
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->h:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 7571
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    .line 7572
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7574
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    sub-int v2, v1, v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->h:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 7576
    iget-object v3, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->h:Landroid/view/View;

    const-string/jumbo v4, "translationY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    int-to-float v0, v0

    aput v0, v5, v6

    const/4 v0, 0x1

    int-to-float v1, v1

    aput v1, v5, v0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->O:Landroid/animation/ObjectAnimator;

    .line 7577
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->O:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x5a0

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 7581
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->O:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$13;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$13;-><init>(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7609
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->O:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$14;

    invoke-direct {v1, p0, v2}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$14;-><init>(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 7620
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->O:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 67
    return-void
.end method

.method static synthetic j(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->N:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->z:Z

    return v0
.end method

.method static synthetic n(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->S:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->T:Ljava/lang/Boolean;

    return-object v0
.end method

.method private o()V
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->b:Lgsm;

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->b:Lgsm;

    invoke-interface {v0}, Lgsm;->b()V

    .line 536
    :cond_0
    return-void
.end method

.method static synthetic p(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;)Lgsm;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->b:Lgsm;

    return-object v0
.end method

.method private p()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 644
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->j:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 645
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 646
    return-void
.end method

.method static synthetic q(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->U:Z

    return v0
.end method

.method static synthetic r(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    .prologue
    .line 67
    .line 7625
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->h:Landroid/view/View;

    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->N:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7626
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->h:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7627
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->O:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 7628
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->O:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 67
    :cond_0
    return-void
.end method


# virtual methods
.method public final H_()V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->R:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->R:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 414
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->R:Landroid/app/ProgressDialog;

    .line 415
    return-void
.end method

.method public final a(II)V
    .locals 2
    .param p1, "previewWidth"    # I
    .param p2, "previewHeight"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 918
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->E:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$5;-><init>(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 944
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x4

    .line 731
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->P:Z

    .line 733
    invoke-direct {p0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->o()V

    .line 734
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 735
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 736
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->c(Ljava/lang/String;)V

    .line 738
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 739
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 741
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->b:Lgsm;

    invoke-interface {v0, v2}, Lgsm;->setVisibility(I)V

    .line 748
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->a:Lgsv$a;

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->a:Lgsv$a;

    invoke-interface {v0}, Lgsv$a;->c()V

    .line 751
    :cond_0
    return-void
.end method

.method public final a(Lgsm$a;)V
    .locals 1
    .param p1, "callback"    # Lgsm$a;

    .prologue
    .line 977
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->b:Lgsm;

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->b:Lgsm;

    invoke-interface {v0, p1}, Lgsm;->a(Lgsm$a;)V

    .line 980
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v4, 0x12c

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 683
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    :goto_0
    return-void

    .line 686
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3659
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->f:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    .line 3660
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->f:Landroid/view/animation/Animation;

    .line 3661
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->f:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3662
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->f:Landroid/view/animation/Animation;

    new-instance v1, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$2;-><init>(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3677
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->f:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 3678
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->d:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 4649
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->e:Landroid/view/animation/Animation;

    if-nez v0, :cond_3

    .line 4650
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->e:Landroid/view/animation/Animation;

    .line 4651
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->e:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 4653
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->e:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 4654
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4655
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a([BIIIZI)V
    .locals 7
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "rotate"    # I
    .param p5, "mirror"    # Z
    .param p6, "format"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 965
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->a:Lgsv$a;

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->a:Lgsv$a;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lgsv$a;->a([BIIIZI)V

    .line 968
    :cond_0
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 469
    :goto_0
    return-void

    .line 423
    :cond_0
    const/4 v2, 0x0

    .line 424
    .local v2, "retry":Z
    const-string/jumbo v3, "408"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 426
    const/4 v1, 0x0

    .line 427
    .local v1, "errorMessage":Ljava/lang/String;
    const/4 v2, 0x1

    .line 428
    iget-boolean v3, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->Q:Z

    if-eqz v3, :cond_1

    .line 429
    invoke-static {}, Lgta;->a()Lgta;

    move-result-object v3

    const-string/jumbo v4, "busy"

    invoke-virtual {v3, v4}, Lgta;->b(Ljava/lang/String;)V

    .line 444
    :cond_1
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 445
    sget v3, Lgrv$f;->at_system_busy_please_retry:I

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 448
    :cond_2
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 449
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 450
    if-eqz v2, :cond_7

    .line 451
    sget v3, Lgrv$f;->dt_facebox_record_retry:I

    new-instance v4, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$9;

    invoke-direct {v4, p0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$9;-><init>(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 468
    :goto_2
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 431
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    .end local v1    # "errorMessage":Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, "dido_face_feature_conflict"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 432
    move-object v1, p2

    .line 433
    .restart local v1    # "errorMessage":Ljava/lang/String;
    invoke-static {}, Lgta;->a()Lgta;

    move-result-object v3

    const-string/jumbo v4, "conflict"

    invoke-virtual {v3, v4}, Lgta;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 434
    .end local v1    # "errorMessage":Ljava/lang/String;
    :cond_4
    const-string/jumbo v3, "dido_face_already_exist"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 435
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 436
    sget v3, Lgrv$f;->dt_facebox_recorded_admin_tips:I

    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 440
    .restart local v1    # "errorMessage":Ljava/lang/String;
    :goto_3
    invoke-static {}, Lgta;->a()Lgta;

    move-result-object v3

    const-string/jumbo v4, "existed"

    invoke-virtual {v3, v4}, Lgta;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 438
    .end local v1    # "errorMessage":Ljava/lang/String;
    :cond_5
    move-object v1, p2

    .restart local v1    # "errorMessage":Ljava/lang/String;
    goto :goto_3

    .line 442
    .end local v1    # "errorMessage":Ljava/lang/String;
    :cond_6
    move-object v1, p2

    .restart local v1    # "errorMessage":Ljava/lang/String;
    goto :goto_1

    .line 458
    .restart local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :cond_7
    sget v3, Lgrv$f;->at_i_got_it:I

    new-instance v4, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$10;

    invoke-direct {v4, p0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$10;-><init>(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_2
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 406
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2, v3, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->R:Landroid/app/ProgressDialog;

    .line 407
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 6
    .param p1, "point"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 984
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 985
    .local v0, "arg":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "duration"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->F:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    const-string/jumbo v1, "Page_Face_record"

    invoke-static {v1, p1, v0}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 987
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 764
    invoke-direct {p0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->p()V

    .line 765
    sget v0, Lgrv$f;->dt_facebox_recorded_fail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->c(Ljava/lang/String;)V

    .line 766
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    invoke-static {}, Lgta;->a()Lgta;

    move-result-object v0

    const-string/jumbo v1, "upload"

    invoke-virtual {v0, v1}, Lgta;->b(Ljava/lang/String;)V

    .line 768
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 801
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->H_()V

    .line 802
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->Q:Z

    .line 804
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 871
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->E:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$4;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$4;-><init>(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 914
    return-void
.end method

.method public final f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 948
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->E:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$6;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$6;-><init>(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 961
    return-void
.end method

.method public final g()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 480
    iget-object v3, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->M:Landroid/app/Dialog;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->M:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    invoke-static {}, Lgta;->a()Lgta;

    move-result-object v3

    const-string/jumbo v4, "local_error"

    invoke-virtual {v3, v4}, Lgta;->b(Ljava/lang/String;)V

    .line 484
    invoke-direct {p0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->o()V

    .line 485
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 486
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 489
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lgrv$e;->face_record_timeout_layout:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 490
    .local v2, "view":Landroid/view/View;
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 491
    .local v1, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 492
    invoke-virtual {v1, v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 493
    sget v3, Lgrv$f;->dt_facebox_record_timeout:I

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 494
    sget v3, Lgrv$f;->atm_try_again:I

    new-instance v4, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$11;

    invoke-direct {v4, p0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$11;-><init>(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;)V

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 507
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->M:Landroid/app/Dialog;

    .line 508
    iget-object v3, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->M:Landroid/app/Dialog;

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 509
    iget-object v3, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->M:Landroid/app/Dialog;

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 528
    invoke-static {p0}, Lgsx;->a(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;)V

    .line 529
    return-void
.end method

.method public final synthetic i()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public final j()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v2, 0x8

    .line 755
    .line 5634
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->j:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5635
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lgrv$a;->circle_rotate:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 5636
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 5637
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 5639
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->j:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 756
    sget v0, Lgrv$f;->dt_facebox_face_uploading:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->c(Ljava/lang/String;)V

    .line 757
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 758
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 759
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 760
    return-void
.end method

.method public final k()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 772
    invoke-direct {p0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->p()V

    .line 773
    sget v0, Lgrv$f;->dt_facebox_record_success_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->c(Ljava/lang/String;)V

    .line 774
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->l:Landroid/widget/TextView;

    sget v1, Lgrv$f;->dt_cspace_finish:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 776
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 777
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 778
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 779
    return-void
.end method

.method public final l()V
    .locals 1

    .prologue
    .line 783
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->Q:Z

    .line 784
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->b()V

    .line 785
    return-void
.end method

.method public final m()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 789
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->P:Z

    .line 790
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->Q:Z

    .line 791
    invoke-static {}, Lgta;->a()Lgta;

    move-result-object v1

    .line 6054
    iget-object v2, v1, Lgta;->a:Ljava/util/HashMap;

    const-string/jumbo v3, "cost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, v1, Lgta;->b:J

    sub-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6055
    iget-object v2, v1, Lgta;->a:Ljava/util/HashMap;

    const-string/jumbo v3, "result"

    const-string/jumbo v4, "success"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6056
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "Page_face_record"

    const-string/jumbo v4, "record_monitor"

    iget-object v1, v1, Lgta;->a:Ljava/util/HashMap;

    invoke-interface {v2, v3, v4, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 792
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->H_()V

    .line 793
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 794
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 795
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 797
    :cond_0
    return-void
.end method

.method public final n()V
    .locals 1
    .annotation runtime Lcom/alibaba/android/dingtalk/permission/annotation/NeedsPermission;
        value = {
            "android.permission.CAMERA"
        }
    .end annotation

    .prologue
    .line 540
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->b:Lgsm;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->b:Lgsm;

    invoke-interface {v0}, Lgsm;->a()V

    .line 543
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v13, 0x500

    const/16 v12, 0x2d0

    const/4 v11, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 167
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 169
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v7, 0x80

    invoke-virtual {v4, v7}, Landroid/view/Window;->addFlags(I)V

    .line 171
    new-instance v3, Lgsw;

    invoke-direct {v3, p0}, Lgsw;-><init>(Lgsv$b;)V

    .line 173
    .local v3, "presenterresenter":Lgsw;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    const-string/jumbo v7, "face_record_beatuty_close"

    invoke-virtual {v4, v7, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 176
    .local v1, "closeBeatuty":Z
    iget v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->D:I

    if-ne v4, v6, :cond_3

    if-nez v1, :cond_3

    .line 1258
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 1259
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 1261
    const-string/jumbo v7, "lt26ii"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "lt29i"

    .line 1262
    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "gt-i9268"

    .line 1263
    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "gt-i8552"

    .line 1264
    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1265
    :cond_0
    const-string/jumbo v4, "FaceRecord"

    const-string/jumbo v7, "AlBeautify"

    new-array v8, v11, [Ljava/lang/String;

    const-string/jumbo v9, "[FaceRecord] not support beatuty, model="

    aput-object v9, v8, v5

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v9, v8, v6

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 178
    :goto_0
    if-eqz v4, :cond_3

    .line 179
    invoke-static {}, Lgsc;->a()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 180
    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->I:Landroid/view/View;

    sget v7, Lgrv$d;->face_glview:I

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 181
    .local v0, "cameraViewStub":Landroid/view/ViewStub;
    const-string/jumbo v4, "FaceRecord"

    const-string/jumbo v7, "FaceCameraRecord"

    const-string/jumbo v8, "[FaceRecord] start with beatuty preview"

    invoke-static {v4, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lgsm;

    iput-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->b:Lgsm;

    .line 191
    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->I:Landroid/view/View;

    sget v7, Lgrv$d;->face_imageview:I

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->c:Landroid/widget/ImageView;

    .line 192
    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->I:Landroid/view/View;

    sget v7, Lgrv$d;->face_message_text:I

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->d:Landroid/widget/TextView;

    .line 193
    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->I:Landroid/view/View;

    sget v7, Lgrv$d;->face_mask_view:I

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/alibaba/dingtalk/facebox/ui/widget/FaceMaskView;

    iput-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->q:Lcom/alibaba/dingtalk/facebox/ui/widget/FaceMaskView;

    .line 194
    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->I:Landroid/view/View;

    sget v7, Lgrv$d;->face_detect_layout:I

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->g:Landroid/view/View;

    .line 195
    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->I:Landroid/view/View;

    sget v7, Lgrv$d;->face_scan_view:I

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->h:Landroid/view/View;

    .line 197
    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->I:Landroid/view/View;

    sget v7, Lgrv$d;->circle_layout:I

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->i:Landroid/view/View;

    .line 198
    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->I:Landroid/view/View;

    sget v7, Lgrv$d;->circle_imageview:I

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->j:Landroid/view/View;

    .line 200
    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->I:Landroid/view/View;

    sget v7, Lgrv$d;->record_info_text:I

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->p:Landroid/widget/TextView;

    .line 201
    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->I:Landroid/view/View;

    sget v7, Lgrv$d;->record_success_icon:I

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->o:Landroid/view/View;

    .line 202
    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->I:Landroid/view/View;

    sget v7, Lgrv$d;->record_confirm_button:I

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->l:Landroid/widget/TextView;

    .line 203
    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->I:Landroid/view/View;

    sget v7, Lgrv$d;->record_retry_button:I

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->k:Landroid/view/View;

    .line 204
    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->I:Landroid/view/View;

    sget v7, Lgrv$d;->record_tips_text:I

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->m:Landroid/widget/TextView;

    .line 206
    iget-boolean v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->A:Z

    if-eqz v4, :cond_4

    .line 207
    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->m:Landroid/widget/TextView;

    sget v7, Lgrv$f;->dt_facebox_record_tips:I

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 212
    :goto_2
    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->I:Landroid/view/View;

    sget v7, Lgrv$d;->source_tips:I

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->n:Landroid/widget/TextView;

    .line 214
    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->B:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 215
    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->n:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->B:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    :cond_1
    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->l:Landroid/widget/TextView;

    new-instance v7, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$1;

    invoke-direct {v7, p0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$1;-><init>(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;)V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->k:Landroid/view/View;

    new-instance v7, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$7;

    invoke-direct {v7, p0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$7;-><init>(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 246
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->r:I

    .line 247
    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->s:I

    .line 1277
    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->b:Lgsm;

    invoke-interface {v4, v13, v12}, Lgsm;->a(II)V

    .line 1278
    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->b:Lgsm;

    iget-boolean v7, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->z:Z

    invoke-interface {v4, v7}, Lgsm;->a(Z)V

    .line 1279
    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->b:Lgsm;

    invoke-interface {v4, p0}, Lgsm;->setCameraCallback(Lgsm$b;)V

    .line 1281
    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->q:Lcom/alibaba/dingtalk/facebox/ui/widget/FaceMaskView;

    const/4 v7, -0x1

    invoke-virtual {v4, v7}, Lcom/alibaba/dingtalk/facebox/ui/widget/FaceMaskView;->setSceneColor(I)V

    .line 1284
    invoke-direct {p0, v13, v12}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->b(II)V

    .line 1286
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lgrv$b;->facerecord_border_width:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1287
    iget-object v7, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->q:Lcom/alibaba/dingtalk/facebox/ui/widget/FaceMaskView;

    new-instance v8, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$8;

    invoke-direct {v8, p0, v4}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment$8;-><init>(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;I)V

    .line 2077
    iget-object v4, v7, Lcom/alibaba/dingtalk/facebox/ui/widget/FaceMaskView;->a:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2079
    invoke-virtual {v7}, Lcom/alibaba/dingtalk/facebox/ui/widget/FaceMaskView;->invalidate()V

    .line 2110
    :try_start_0
    invoke-static {}, Lcom/alibaba/dingtalk/facebox/FaceBoxInterface;->b()Lcom/alibaba/dingtalk/facebox/FaceBoxInterface;

    move-result-object v4

    iget-object v7, v3, Lgsw;->h:Lgso$a;

    invoke-virtual {v4, v7}, Lcom/alibaba/dingtalk/facebox/FaceBoxInterface;->a(Lgso$a;)Lgso;

    move-result-object v4

    iput-object v4, v3, Lgsw;->e:Lgso;

    .line 2111
    iget-object v4, v3, Lgsw;->e:Lgso;

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v4, v7}, Lgso;->a(Landroid/content/Context;)V

    .line 2112
    iget-object v4, v3, Lgsw;->e:Lgso;

    const v7, 0x3e99999a    # 0.3f

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v7}, Lgso;->a(Ljava/lang/Float;)V

    .line 2113
    iget-object v4, v3, Lgsw;->e:Lgso;

    const v7, 0x3f19999a    # 0.6f

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v7}, Lgso;->b(Ljava/lang/Float;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2124
    :goto_3
    iget-object v4, v3, Lgsw;->d:Lgsv$b;

    invoke-interface {v4}, Lgsv$b;->h()V

    .line 253
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->F:J

    .line 254
    return-void

    .end local v0    # "cameraViewStub":Landroid/view/ViewStub;
    .end local v2    # "metrics":Landroid/util/DisplayMetrics;
    :cond_2
    move v4, v6

    .line 1269
    goto/16 :goto_0

    .line 183
    :cond_3
    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->I:Landroid/view/View;

    sget v7, Lgrv$d;->face_textureview:I

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 184
    .restart local v0    # "cameraViewStub":Landroid/view/ViewStub;
    const-string/jumbo v4, "FaceRecord"

    const-string/jumbo v7, "FaceCameraRecord"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "[FaceRecord] start with normal preview, faceMagic="

    aput-object v9, v8, v5

    iget v9, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->D:I

    .line 185
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    const-string/jumbo v9, "; switchConfig="

    aput-object v9, v8, v11

    const/4 v9, 0x3

    .line 186
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    .line 184
    invoke-static {v8}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 209
    :cond_4
    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->m:Landroid/widget/TextView;

    const-string/jumbo v7, ""

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 2114
    .restart local v2    # "metrics":Landroid/util/DisplayMetrics;
    :catch_0
    move-exception v4

    .line 2115
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2117
    const-string/jumbo v7, "FaceRecord"

    const-string/jumbo v8, "FaceRecordPresenter"

    new-array v9, v11, [Ljava/lang/Object;

    const-string/jumbo v10, "createFaceDetector error, "

    aput-object v10, v9, v5

    .line 2118
    invoke-static {v4}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v6

    .line 2117
    invoke-static {v9}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v8, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2120
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    .line 2121
    sget v5, Lgrv$f;->dt_not_support_x86_face_record:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcac;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 153
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 155
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 156
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 157
    const-string/jumbo v1, "camera_facing_key"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->z:Z

    .line 158
    const-string/jumbo v1, "isEmployee"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->A:Z

    .line 159
    const-string/jumbo v1, "tips"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->B:Ljava/lang/String;

    .line 160
    const-string/jumbo v1, "settingMode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->C:I

    .line 161
    const-string/jumbo v1, "faceMagic"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->D:I

    .line 163
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 835
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 837
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->a:Lgsv$a;

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->a:Lgsv$a;

    invoke-interface {v0}, Lgsv$a;->i()V

    .line 841
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 843
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->b:Lgsm;

    if-eqz v0, :cond_1

    .line 844
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->b:Lgsm;

    invoke-interface {v0}, Lgsm;->c()V

    .line 847
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->E:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 849
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onDestroy()V

    .line 850
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 823
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onPause()V

    .line 824
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->a:Lgsv$a;

    if-eqz v0, :cond_0

    .line 825
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->a:Lgsv$a;

    invoke-interface {v0}, Lgsv$a;->h()V

    .line 828
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->b:Lgsm;

    if-eqz v0, :cond_1

    .line 829
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->b:Lgsm;

    invoke-interface {v0}, Lgsm;->onPause()V

    .line 831
    :cond_1
    return-void
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
    .line 547
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 548
    invoke-static {p0, p1, p3}, Lgsx;->a(Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;I[I)V

    .line 549
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 809
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onResume()V

    .line 811
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->a:Lgsv$a;

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->a:Lgsv$a;

    invoke-interface {v0}, Lgsv$a;->g()V

    .line 815
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->b:Lgsm;

    if-eqz v0, :cond_1

    .line 816
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->b:Lgsm;

    invoke-interface {v0}, Lgsm;->onResume()V

    .line 818
    :cond_1
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 148
    sget v0, Lgrv$e;->fragment_face_record_layout:I

    return v0
.end method

.method public bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 66
    check-cast p1, Lgsv$a;

    .line 6401
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->a:Lgsv$a;

    .line 66
    return-void
.end method
