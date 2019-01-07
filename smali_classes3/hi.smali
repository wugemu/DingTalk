.class public abstract Lhi;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhi$a;,
        Lhi$b;
    }
.end annotation


# static fields
.field private static final q:I


# instance fields
.field final a:Lhi$a;

.field final b:Landroid/view/View;

.field c:Z

.field d:Z

.field e:Z

.field private final f:Landroid/view/animation/Interpolator;

.field private g:Ljava/lang/Runnable;

.field private h:[F

.field private i:[F

.field private j:I

.field private k:I

.field private l:[F

.field private m:[F

.field private n:[F

.field private o:Z

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 193
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Lhi;->q:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 10
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const v9, 0x3a83126f    # 0.001f

    const/high16 v8, 0x447a0000    # 1000.0f

    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v3, Lhi$a;

    invoke-direct {v3}, Lhi$a;-><init>()V

    iput-object v3, p0, Lhi;->a:Lhi$a;

    .line 139
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v3, p0, Lhi;->f:Landroid/view/animation/Interpolator;

    .line 148
    new-array v3, v4, [F

    fill-array-data v3, :array_0

    iput-object v3, p0, Lhi;->h:[F

    .line 151
    new-array v3, v4, [F

    fill-array-data v3, :array_1

    iput-object v3, p0, Lhi;->i:[F

    .line 160
    new-array v3, v4, [F

    fill-array-data v3, :array_2

    iput-object v3, p0, Lhi;->l:[F

    .line 163
    new-array v3, v4, [F

    fill-array-data v3, :array_3

    iput-object v3, p0, Lhi;->m:[F

    .line 166
    new-array v3, v4, [F

    fill-array-data v3, :array_4

    iput-object v3, p0, Lhi;->n:[F

    .line 209
    iput-object p1, p0, Lhi;->b:Landroid/view/View;

    .line 211
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 212
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    const v3, 0x44c4e000    # 1575.0f

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 213
    .local v0, "maxVelocity":I
    const v3, 0x439d8000    # 315.0f

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v2, v3

    .line 214
    .local v2, "minVelocity":I
    int-to-float v3, v0

    int-to-float v4, v0

    .line 1293
    iget-object v5, p0, Lhi;->n:[F

    div-float/2addr v3, v8

    aput v3, v5, v7

    .line 1294
    iget-object v3, p0, Lhi;->n:[F

    div-float/2addr v4, v8

    aput v4, v3, v6

    .line 215
    int-to-float v3, v2

    int-to-float v4, v2

    .line 1311
    iget-object v5, p0, Lhi;->m:[F

    div-float/2addr v3, v8

    aput v3, v5, v7

    .line 1312
    iget-object v3, p0, Lhi;->m:[F

    div-float/2addr v4, v8

    aput v4, v3, v6

    .line 1353
    iput v6, p0, Lhi;->j:I

    .line 1394
    iget-object v3, p0, Lhi;->i:[F

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    aput v4, v3, v7

    .line 1395
    iget-object v3, p0, Lhi;->i:[F

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    aput v4, v3, v6

    .line 2372
    iget-object v3, p0, Lhi;->h:[F

    const v4, 0x3e4ccccd    # 0.2f

    aput v4, v3, v7

    .line 2373
    iget-object v3, p0, Lhi;->h:[F

    const v4, 0x3e4ccccd    # 0.2f

    aput v4, v3, v6

    .line 3332
    iget-object v3, p0, Lhi;->l:[F

    aput v9, v3, v7

    .line 3333
    iget-object v3, p0, Lhi;->l:[F

    aput v9, v3, v6

    .line 221
    sget v3, Lhi;->q:I

    .line 3411
    iput v3, p0, Lhi;->k:I

    .line 3426
    iget-object v3, p0, Lhi;->a:Lhi$a;

    const/16 v4, 0x1f4

    .line 3754
    iput v4, v3, Lhi$a;->a:I

    .line 4441
    iget-object v3, p0, Lhi;->a:Lhi$a;

    const/16 v4, 0x1f4

    .line 4758
    iput v4, v3, Lhi$a;->b:I

    .line 224
    return-void

    .line 148
    .line 151
    .line 160
    .line 163
    .line 166
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data
.end method

.method private a(FF)F
    .locals 4
    .param p1, "current"    # F
    .param p2, "leading"    # F

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 623
    cmpl-float v2, p2, v0

    if-nez v2, :cond_1

    .line 648
    :cond_0
    :goto_0
    return v0

    .line 627
    :cond_1
    iget v2, p0, Lhi;->j:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 630
    :pswitch_0
    cmpg-float v2, p1, p2

    if-gez v2, :cond_0

    .line 631
    cmpl-float v2, p1, v0

    if-ltz v2, :cond_2

    .line 633
    div-float v0, p1, p2

    sub-float v0, v1, v0

    goto :goto_0

    .line 634
    :cond_2
    iget-boolean v2, p0, Lhi;->e:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lhi;->j:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 636
    goto :goto_0

    .line 641
    :pswitch_1
    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    .line 643
    neg-float v0, p2

    div-float v0, p1, v0

    goto :goto_0

    .line 627
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static a(FFF)F
    .locals 1
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 662
    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    .line 667
    .end local p2    # "max":F
    :goto_0
    return p2

    .line 664
    .restart local p2    # "max":F
    :cond_0
    cmpg-float v0, p0, p1

    if-gez v0, :cond_1

    move p2, p1

    .line 665
    goto :goto_0

    :cond_1
    move p2, p0

    .line 667
    goto :goto_0
.end method

.method private a(IFFF)F
    .locals 11
    .param p1, "direction"    # I
    .param p2, "coordinate"    # F
    .param p3, "srcSize"    # F
    .param p4, "dstSize"    # F

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 538
    iget-object v7, p0, Lhi;->h:[F

    aget v3, v7, p1

    .line 539
    .local v3, "relativeEdge":F
    iget-object v7, p0, Lhi;->i:[F

    aget v0, v7, p1

    .line 9606
    .local v0, "maximumEdge":F
    mul-float v7, v3, p3

    invoke-static {v7, v8, v0}, Lhi;->a(FFF)F

    move-result v7

    .line 9607
    invoke-direct {p0, p2, v7}, Lhi;->a(FF)F

    move-result v9

    .line 9608
    sub-float v10, p3, p2

    invoke-direct {p0, v10, v7}, Lhi;->a(FF)F

    move-result v7

    .line 9609
    sub-float/2addr v7, v9

    .line 9611
    cmpg-float v9, v7, v8

    if-gez v9, :cond_0

    .line 9612
    iget-object v9, p0, Lhi;->f:Landroid/view/animation/Interpolator;

    neg-float v7, v7

    invoke-interface {v9, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    neg-float v7, v7

    .line 9619
    :goto_0
    const/high16 v9, -0x40800000    # -1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v7, v9, v10}, Lhi;->a(FFF)F

    move-result v6

    .line 541
    .local v6, "value":F
    :goto_1
    cmpl-float v7, v6, v8

    if-nez v7, :cond_2

    move v7, v8

    .line 557
    :goto_2
    return v7

    .line 9613
    .end local v6    # "value":F
    :cond_0
    cmpl-float v9, v7, v8

    if-lez v9, :cond_1

    .line 9614
    iget-object v9, p0, Lhi;->f:Landroid/view/animation/Interpolator;

    invoke-interface {v9, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    goto :goto_0

    :cond_1
    move v6, v8

    .line 9616
    goto :goto_1

    .line 546
    .restart local v6    # "value":F
    :cond_2
    iget-object v7, p0, Lhi;->l:[F

    aget v4, v7, p1

    .line 547
    .local v4, "relativeVelocity":F
    iget-object v7, p0, Lhi;->m:[F

    aget v2, v7, p1

    .line 548
    .local v2, "minimumVelocity":F
    iget-object v7, p0, Lhi;->n:[F

    aget v1, v7, p1

    .line 549
    .local v1, "maximumVelocity":F
    mul-float v5, v4, p4

    .line 554
    .local v5, "targetVelocity":F
    cmpl-float v7, v6, v8

    if-lez v7, :cond_3

    .line 555
    mul-float v7, v6, v5

    invoke-static {v7, v2, v1}, Lhi;->a(FFF)F

    move-result v7

    goto :goto_2

    .line 557
    :cond_3
    neg-float v7, v6

    mul-float/2addr v7, v5

    invoke-static {v7, v2, v1}, Lhi;->a(FFF)F

    move-result v7

    neg-float v7, v7

    goto :goto_2
.end method

.method private b()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 527
    iget-boolean v0, p0, Lhi;->c:Z

    if-eqz v0, :cond_0

    .line 530
    iput-boolean v1, p0, Lhi;->e:Z

    .line 534
    :goto_0
    return-void

    .line 532
    :cond_0
    iget-object v3, p0, Lhi;->a:Lhi$a;

    .line 7777
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 7778
    iget-wide v6, v3, Lhi$a;->e:J

    sub-long v6, v4, v6

    long-to-int v2, v6

    iget v0, v3, Lhi$a;->b:I

    .line 8652
    if-le v2, v0, :cond_1

    .line 7778
    :goto_1
    iput v0, v3, Lhi$a;->k:I

    .line 7779
    invoke-virtual {v3, v4, v5}, Lhi$a;->a(J)F

    move-result v0

    iput v0, v3, Lhi$a;->j:F

    .line 7780
    iput-wide v4, v3, Lhi$a;->i:J

    goto :goto_0

    .line 8654
    :cond_1
    if-gez v2, :cond_2

    move v0, v1

    .line 8655
    goto :goto_1

    :cond_2
    move v0, v2

    .line 8657
    goto :goto_1
.end method


# virtual methods
.method public final a(Z)Lhi;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 234
    iget-boolean v0, p0, Lhi;->p:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 235
    invoke-direct {p0}, Lhi;->b()V

    .line 238
    :cond_0
    iput-boolean p1, p0, Lhi;->p:Z

    .line 239
    return-object p0
.end method

.method public abstract a(I)V
.end method

.method final a()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 491
    iget-object v1, p0, Lhi;->a:Lhi$a;

    .line 5850
    .local v1, "scroller":Lhi$a;
    iget v3, v1, Lhi$a;->d:F

    iget v4, v1, Lhi$a;->d:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float/2addr v3, v4

    float-to-int v2, v3

    .line 6846
    .local v2, "verticalDirection":I
    iget v3, v1, Lhi$a;->c:F

    iget v4, v1, Lhi$a;->c:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float/2addr v3, v4

    float-to-int v0, v3

    .line 495
    .local v0, "horizontalDirection":I
    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Lhi;->b(I)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    .line 496
    :cond_1
    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public abstract b(I)Z
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 455
    iget-boolean v3, p0, Lhi;->p:Z

    if-nez v3, :cond_1

    .line 484
    :cond_0
    :goto_0
    return v9

    .line 459
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 460
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 462
    :pswitch_0
    iput-boolean v8, p0, Lhi;->d:Z

    .line 463
    iput-boolean v9, p0, Lhi;->o:Z

    .line 467
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lhi;->b:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    .line 466
    invoke-direct {p0, v9, v3, v4, v5}, Lhi;->a(IFFF)F

    move-result v1

    .line 469
    .local v1, "xTargetVelocity":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lhi;->b:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    .line 468
    invoke-direct {p0, v8, v3, v4, v5}, Lhi;->a(IFFF)F

    move-result v2

    .line 470
    .local v2, "yTargetVelocity":F
    iget-object v3, p0, Lhi;->a:Lhi$a;

    .line 4841
    iput v1, v3, Lhi$a;->c:F

    .line 4842
    iput v2, v3, Lhi$a;->d:F

    .line 474
    iget-boolean v3, p0, Lhi;->e:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lhi;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5503
    iget-object v3, p0, Lhi;->g:Ljava/lang/Runnable;

    if-nez v3, :cond_2

    .line 5504
    new-instance v3, Lhi$b;

    invoke-direct {v3, p0}, Lhi$b;-><init>(Lhi;)V

    iput-object v3, p0, Lhi;->g:Ljava/lang/Runnable;

    .line 5507
    :cond_2
    iput-boolean v8, p0, Lhi;->e:Z

    .line 5508
    iput-boolean v8, p0, Lhi;->c:Z

    .line 5510
    iget-boolean v3, p0, Lhi;->o:Z

    if-nez v3, :cond_3

    iget v3, p0, Lhi;->k:I

    if-lez v3, :cond_3

    .line 5511
    iget-object v3, p0, Lhi;->b:Landroid/view/View;

    iget-object v4, p0, Lhi;->g:Ljava/lang/Runnable;

    iget v5, p0, Lhi;->k:I

    int-to-long v6, v5

    invoke-static {v3, v4, v6, v7}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 5518
    :goto_1
    iput-boolean v8, p0, Lhi;->o:Z

    goto :goto_0

    .line 5513
    :cond_3
    iget-object v3, p0, Lhi;->g:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 480
    .end local v1    # "xTargetVelocity":F
    .end local v2    # "yTargetVelocity":F
    :pswitch_2
    invoke-direct {p0}, Lhi;->b()V

    goto :goto_0

    .line 460
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
