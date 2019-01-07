.class public Lcom/amap/api/mapcore/util/am;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/am$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/amap/api/mapcore/util/am$a;

.field private c:Z

.field private d:Landroid/view/MotionEvent;

.field private e:Landroid/view/MotionEvent;

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:J

.field private final r:F

.field private s:F

.field private t:F

.field private u:Z

.field private v:Z

.field private w:I

.field private x:I

.field private y:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/am$a;)V
    .locals 1

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 175
    iput-object p1, p0, Lcom/amap/api/mapcore/util/am;->a:Landroid/content/Context;

    .line 176
    iput-object p2, p0, Lcom/amap/api/mapcore/util/am;->b:Lcom/amap/api/mapcore/util/am$a;

    .line 177
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/amap/api/mapcore/util/am;->r:F

    .line 178
    return-void
.end method

.method private static a(Landroid/view/MotionEvent;I)F
    .locals 2

    .prologue
    .line 557
    if-gez p1, :cond_0

    .line 558
    const/4 v0, 0x1

    .line 562
    :goto_0
    return v0

    .line 559
    :cond_0
    if-nez p1, :cond_1

    .line 560
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    goto :goto_0

    .line 561
    :cond_1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 562
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;II)I
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 526
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 529
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 530
    const/4 v1, -0x1

    .line 534
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 535
    if-eq v0, p3, :cond_0

    if-eq v0, v3, :cond_0

    .line 536
    iget v4, p0, Lcom/amap/api/mapcore/util/am;->r:F

    .line 537
    iget v5, p0, Lcom/amap/api/mapcore/util/am;->s:F

    .line 538
    iget v6, p0, Lcom/amap/api/mapcore/util/am;->t:F

    .line 539
    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/am;->a(Landroid/view/MotionEvent;I)F

    move-result v7

    .line 540
    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/am;->b(Landroid/view/MotionEvent;I)F

    move-result v8

    .line 541
    cmpl-float v9, v7, v4

    if-ltz v9, :cond_0

    cmpl-float v4, v8, v4

    if-ltz v4, :cond_0

    cmpg-float v4, v7, v5

    if-gtz v4, :cond_0

    cmpg-float v4, v8, v6

    if-gtz v4, :cond_0

    .line 549
    :goto_1
    return v0

    .line 534
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private static b(Landroid/view/MotionEvent;I)F
    .locals 2

    .prologue
    .line 570
    if-gez p1, :cond_0

    .line 571
    const/4 v0, 0x1

    .line 575
    :goto_0
    return v0

    .line 572
    :cond_0
    if-nez p1, :cond_1

    .line 573
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    goto :goto_0

    .line 574
    :cond_1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    .line 575
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v13, 0x3f000000    # 0.5f

    const/high16 v1, -0x40800000    # -1.0f

    .line 579
    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->e:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->e:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 582
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/am;->e:Landroid/view/MotionEvent;

    .line 584
    iput v1, p0, Lcom/amap/api/mapcore/util/am;->l:F

    .line 585
    iput v1, p0, Lcom/amap/api/mapcore/util/am;->m:F

    .line 586
    iput v1, p0, Lcom/amap/api/mapcore/util/am;->n:F

    .line 588
    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->d:Landroid/view/MotionEvent;

    .line 590
    iget v1, p0, Lcom/amap/api/mapcore/util/am;->w:I

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 591
    iget v2, p0, Lcom/amap/api/mapcore/util/am;->x:I

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 592
    iget v3, p0, Lcom/amap/api/mapcore/util/am;->w:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 593
    iget v4, p0, Lcom/amap/api/mapcore/util/am;->x:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 595
    if-ltz v1, :cond_1

    if-ltz v2, :cond_1

    if-ltz v3, :cond_1

    if-gez v4, :cond_3

    .line 597
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/am;->v:Z

    .line 598
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/am;->c:Z

    if-eqz v0, :cond_2

    .line 599
    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->b:Lcom/amap/api/mapcore/util/am$a;

    invoke-interface {v0, p0}, Lcom/amap/api/mapcore/util/am$a;->c(Lcom/amap/api/mapcore/util/am;)V

    .line 629
    :cond_2
    :goto_0
    return-void

    .line 604
    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 605
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 606
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 607
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 608
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    .line 609
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 610
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    .line 611
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    .line 613
    sub-float v5, v7, v5

    .line 614
    sub-float v6, v8, v6

    .line 615
    sub-float v7, v11, v9

    .line 616
    sub-float v8, v12, v10

    .line 617
    iput v5, p0, Lcom/amap/api/mapcore/util/am;->h:F

    .line 618
    iput v6, p0, Lcom/amap/api/mapcore/util/am;->i:F

    .line 619
    iput v7, p0, Lcom/amap/api/mapcore/util/am;->j:F

    .line 620
    iput v8, p0, Lcom/amap/api/mapcore/util/am;->k:F

    .line 622
    mul-float v5, v7, v13

    add-float/2addr v5, v9

    iput v5, p0, Lcom/amap/api/mapcore/util/am;->f:F

    .line 623
    mul-float v5, v8, v13

    add-float/2addr v5, v10

    iput v5, p0, Lcom/amap/api/mapcore/util/am;->g:F

    .line 624
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/amap/api/mapcore/util/am;->q:J

    .line 625
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v3

    .line 626
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p0, Lcom/amap/api/mapcore/util/am;->o:F

    .line 627
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v1

    .line 628
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v0

    add-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/am;->p:F

    goto :goto_0
.end method

.method private j()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 632
    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->d:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->d:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 634
    iput-object v3, p0, Lcom/amap/api/mapcore/util/am;->d:Landroid/view/MotionEvent;

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->e:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    .line 637
    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->e:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 638
    iput-object v3, p0, Lcom/amap/api/mapcore/util/am;->e:Landroid/view/MotionEvent;

    .line 640
    :cond_1
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/am;->u:Z

    .line 641
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/am;->c:Z

    .line 642
    iput v2, p0, Lcom/amap/api/mapcore/util/am;->w:I

    .line 643
    iput v2, p0, Lcom/amap/api/mapcore/util/am;->x:I

    .line 644
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/am;->v:Z

    .line 645
    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .prologue
    .line 668
    iget v0, p0, Lcom/amap/api/mapcore/util/am;->f:F

    return v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, -0x1

    const/16 v8, 0x8

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 186
    if-nez v1, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/am;->j()V

    .line 191
    :cond_0
    iget-boolean v3, p0, Lcom/amap/api/mapcore/util/am;->v:Z

    if-eqz v3, :cond_3

    move v4, v2

    :cond_1
    :goto_0
    move v2, v4

    .line 521
    :cond_2
    :goto_1
    return v2

    .line 193
    :cond_3
    iget-boolean v3, p0, Lcom/amap/api/mapcore/util/am;->c:Z

    if-nez v3, :cond_1a

    .line 194
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 196
    :pswitch_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/am;->w:I

    .line 197
    iput-boolean v4, p0, Lcom/amap/api/mapcore/util/am;->y:Z

    goto :goto_0

    .line 202
    :pswitch_2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/am;->j()V

    goto :goto_0

    .line 209
    :pswitch_3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/am;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 210
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 211
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    iget v5, p0, Lcom/amap/api/mapcore/util/am;->r:F

    sub-float/2addr v3, v5

    iput v3, p0, Lcom/amap/api/mapcore/util/am;->s:F

    .line 212
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v3, p0, Lcom/amap/api/mapcore/util/am;->r:F

    sub-float/2addr v1, v3

    iput v1, p0, Lcom/amap/api/mapcore/util/am;->t:F

    .line 214
    iget-object v1, p0, Lcom/amap/api/mapcore/util/am;->d:Landroid/view/MotionEvent;

    if-eqz v1, :cond_4

    .line 215
    iget-object v1, p0, Lcom/amap/api/mapcore/util/am;->d:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 216
    :cond_4
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore/util/am;->d:Landroid/view/MotionEvent;

    .line 217
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/amap/api/mapcore/util/am;->q:J

    .line 221
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v8, :cond_9

    .line 222
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 223
    iget v3, p0, Lcom/amap/api/mapcore/util/am;->w:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 224
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/amap/api/mapcore/util/am;->x:I

    .line 225
    if-ltz v3, :cond_5

    if-ne v3, v1, :cond_2b

    .line 227
    :cond_5
    if-ne v3, v1, :cond_8

    :goto_2
    invoke-direct {p0, p1, v0, v3}, Lcom/amap/api/mapcore/util/am;->a(Landroid/view/MotionEvent;II)I

    move-result v0

    .line 229
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/amap/api/mapcore/util/am;->w:I

    move v13, v1

    move v1, v0

    move v0, v13

    .line 240
    :goto_3
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/am;->y:Z

    .line 242
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/am;->b(Landroid/view/MotionEvent;)V

    .line 248
    iget v3, p0, Lcom/amap/api/mapcore/util/am;->r:F

    .line 249
    iget v6, p0, Lcom/amap/api/mapcore/util/am;->s:F

    .line 250
    iget v7, p0, Lcom/amap/api/mapcore/util/am;->t:F

    .line 251
    invoke-static {p1, v1}, Lcom/amap/api/mapcore/util/am;->a(Landroid/view/MotionEvent;I)F

    move-result v5

    .line 252
    invoke-static {p1, v1}, Lcom/amap/api/mapcore/util/am;->b(Landroid/view/MotionEvent;I)F

    move-result v8

    .line 253
    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/am;->a(Landroid/view/MotionEvent;I)F

    move-result v9

    .line 254
    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/am;->b(Landroid/view/MotionEvent;I)F

    move-result v10

    .line 256
    cmpg-float v11, v5, v3

    if-ltz v11, :cond_6

    cmpg-float v11, v8, v3

    if-ltz v11, :cond_6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_6

    cmpl-float v5, v8, v7

    if-lez v5, :cond_a

    :cond_6
    move v5, v4

    .line 258
    :goto_4
    cmpg-float v8, v9, v3

    if-ltz v8, :cond_7

    cmpg-float v3, v10, v3

    if-ltz v3, :cond_7

    cmpl-float v3, v9, v6

    if-gtz v3, :cond_7

    cmpl-float v3, v10, v7

    if-lez v3, :cond_b

    :cond_7
    move v3, v4

    .line 261
    :goto_5
    if-eqz v5, :cond_c

    if-eqz v3, :cond_c

    .line 262
    iput v12, p0, Lcom/amap/api/mapcore/util/am;->f:F

    .line 263
    iput v12, p0, Lcom/amap/api/mapcore/util/am;->g:F

    .line 264
    iput-boolean v4, p0, Lcom/amap/api/mapcore/util/am;->u:Z

    goto/16 :goto_0

    .line 227
    :cond_8
    iget v0, p0, Lcom/amap/api/mapcore/util/am;->x:I

    goto :goto_2

    .line 233
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lez v0, :cond_2a

    .line 234
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 235
    iget v1, p0, Lcom/amap/api/mapcore/util/am;->w:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 236
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/amap/api/mapcore/util/am;->x:I

    goto :goto_3

    :cond_a
    move v5, v2

    .line 256
    goto :goto_4

    :cond_b
    move v3, v2

    .line 258
    goto :goto_5

    .line 265
    :cond_c
    if-eqz v5, :cond_d

    .line 266
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/amap/api/mapcore/util/am;->f:F

    .line 267
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/am;->g:F

    .line 268
    iput-boolean v4, p0, Lcom/amap/api/mapcore/util/am;->u:Z

    goto/16 :goto_0

    .line 269
    :cond_d
    if-eqz v3, :cond_e

    .line 270
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/am;->f:F

    .line 271
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/am;->g:F

    .line 272
    iput-boolean v4, p0, Lcom/amap/api/mapcore/util/am;->u:Z

    goto/16 :goto_0

    .line 274
    :cond_e
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/am;->u:Z

    .line 275
    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->b:Lcom/amap/api/mapcore/util/am$a;

    invoke-interface {v0, p0}, Lcom/amap/api/mapcore/util/am$a;->b(Lcom/amap/api/mapcore/util/am;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/am;->c:Z

    goto/16 :goto_0

    .line 281
    :pswitch_4
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/am;->u:Z

    if-eqz v0, :cond_1

    .line 284
    iget v0, p0, Lcom/amap/api/mapcore/util/am;->r:F

    .line 285
    iget v5, p0, Lcom/amap/api/mapcore/util/am;->s:F

    .line 286
    iget v7, p0, Lcom/amap/api/mapcore/util/am;->t:F

    .line 287
    iget v1, p0, Lcom/amap/api/mapcore/util/am;->w:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 288
    iget v1, p0, Lcom/amap/api/mapcore/util/am;->x:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 290
    invoke-static {p1, v6}, Lcom/amap/api/mapcore/util/am;->a(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 291
    invoke-static {p1, v6}, Lcom/amap/api/mapcore/util/am;->b(Landroid/view/MotionEvent;I)F

    move-result v8

    .line 292
    invoke-static {p1, v3}, Lcom/amap/api/mapcore/util/am;->a(Landroid/view/MotionEvent;I)F

    move-result v9

    .line 293
    invoke-static {p1, v3}, Lcom/amap/api/mapcore/util/am;->b(Landroid/view/MotionEvent;I)F

    move-result v10

    .line 295
    cmpg-float v11, v1, v0

    if-ltz v11, :cond_f

    cmpg-float v11, v8, v0

    if-ltz v11, :cond_f

    cmpl-float v1, v1, v5

    if-gtz v1, :cond_f

    cmpl-float v1, v8, v7

    if-lez v1, :cond_11

    :cond_f
    move v1, v4

    .line 297
    :goto_6
    cmpg-float v8, v9, v0

    if-ltz v8, :cond_10

    cmpg-float v0, v10, v0

    if-ltz v0, :cond_10

    cmpl-float v0, v9, v5

    if-gtz v0, :cond_10

    cmpl-float v0, v10, v7

    if-lez v0, :cond_12

    :cond_10
    move v0, v4

    .line 300
    :goto_7
    if-eqz v1, :cond_29

    .line 302
    iget v5, p0, Lcom/amap/api/mapcore/util/am;->x:I

    invoke-direct {p0, p1, v5, v6}, Lcom/amap/api/mapcore/util/am;->a(Landroid/view/MotionEvent;II)I

    move-result v5

    .line 304
    if-ltz v5, :cond_29

    .line 306
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/amap/api/mapcore/util/am;->w:I

    .line 307
    invoke-static {p1, v5}, Lcom/amap/api/mapcore/util/am;->a(Landroid/view/MotionEvent;I)F

    .line 308
    invoke-static {p1, v5}, Lcom/amap/api/mapcore/util/am;->b(Landroid/view/MotionEvent;I)F

    move v6, v5

    move v5, v2

    .line 313
    :goto_8
    if-eqz v0, :cond_28

    .line 315
    iget v1, p0, Lcom/amap/api/mapcore/util/am;->w:I

    invoke-direct {p0, p1, v1, v3}, Lcom/amap/api/mapcore/util/am;->a(Landroid/view/MotionEvent;II)I

    move-result v1

    .line 317
    if-ltz v1, :cond_28

    .line 319
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/am;->x:I

    .line 320
    invoke-static {p1, v1}, Lcom/amap/api/mapcore/util/am;->a(Landroid/view/MotionEvent;I)F

    .line 321
    invoke-static {p1, v1}, Lcom/amap/api/mapcore/util/am;->b(Landroid/view/MotionEvent;I)F

    move v0, v2

    .line 326
    :goto_9
    if-eqz v5, :cond_13

    if-eqz v0, :cond_13

    .line 327
    iput v12, p0, Lcom/amap/api/mapcore/util/am;->f:F

    .line 328
    iput v12, p0, Lcom/amap/api/mapcore/util/am;->g:F

    goto/16 :goto_0

    :cond_11
    move v1, v2

    .line 295
    goto :goto_6

    :cond_12
    move v0, v2

    .line 297
    goto :goto_7

    .line 329
    :cond_13
    if-eqz v5, :cond_14

    .line 330
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/am;->f:F

    .line 331
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/am;->g:F

    goto/16 :goto_0

    .line 332
    :cond_14
    if-eqz v0, :cond_15

    .line 333
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/am;->f:F

    .line 334
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/am;->g:F

    goto/16 :goto_0

    .line 336
    :cond_15
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/am;->u:Z

    .line 337
    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->b:Lcom/amap/api/mapcore/util/am$a;

    invoke-interface {v0, p0}, Lcom/amap/api/mapcore/util/am$a;->b(Lcom/amap/api/mapcore/util/am;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/am;->c:Z

    goto/16 :goto_0

    .line 343
    :pswitch_5
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/am;->u:Z

    if-eqz v1, :cond_1

    .line 344
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 346
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v8, :cond_27

    .line 347
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 350
    :goto_a
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 352
    const/4 v6, 0x2

    if-le v3, v6, :cond_17

    .line 353
    iget v0, p0, Lcom/amap/api/mapcore/util/am;->w:I

    if-ne v5, v0, :cond_16

    .line 354
    iget v0, p0, Lcom/amap/api/mapcore/util/am;->x:I

    invoke-direct {p0, p1, v0, v1}, Lcom/amap/api/mapcore/util/am;->a(Landroid/view/MotionEvent;II)I

    move-result v0

    .line 356
    if-ltz v0, :cond_1

    .line 357
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/am;->w:I

    goto/16 :goto_0

    .line 358
    :cond_16
    iget v0, p0, Lcom/amap/api/mapcore/util/am;->x:I

    if-ne v5, v0, :cond_1

    .line 359
    iget v0, p0, Lcom/amap/api/mapcore/util/am;->w:I

    invoke-direct {p0, p1, v0, v1}, Lcom/amap/api/mapcore/util/am;->a(Landroid/view/MotionEvent;II)I

    move-result v0

    .line 361
    if-ltz v0, :cond_1

    .line 362
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/am;->x:I

    goto/16 :goto_0

    .line 366
    :cond_17
    iget v1, p0, Lcom/amap/api/mapcore/util/am;->w:I

    if-ne v5, v1, :cond_18

    iget v1, p0, Lcom/amap/api/mapcore/util/am;->x:I

    .line 367
    :goto_b
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 369
    if-gez v1, :cond_19

    .line 370
    iput-boolean v4, p0, Lcom/amap/api/mapcore/util/am;->v:Z

    .line 372
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/am;->c:Z

    if-eqz v0, :cond_2

    .line 373
    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->b:Lcom/amap/api/mapcore/util/am$a;

    invoke-interface {v0, p0}, Lcom/amap/api/mapcore/util/am$a;->c(Lcom/amap/api/mapcore/util/am;)V

    goto/16 :goto_1

    .line 366
    :cond_18
    iget v1, p0, Lcom/amap/api/mapcore/util/am;->w:I

    goto :goto_b

    .line 378
    :cond_19
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/amap/api/mapcore/util/am;->w:I

    .line 380
    iput-boolean v4, p0, Lcom/amap/api/mapcore/util/am;->y:Z

    .line 381
    iput v0, p0, Lcom/amap/api/mapcore/util/am;->x:I

    .line 382
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/am;->f:F

    .line 383
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/am;->g:F

    goto/16 :goto_0

    .line 390
    :cond_1a
    packed-switch v1, :pswitch_data_1

    :pswitch_6
    goto/16 :goto_0

    .line 496
    :pswitch_7
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/am;->j()V

    goto/16 :goto_0

    .line 394
    :pswitch_8
    iget-object v1, p0, Lcom/amap/api/mapcore/util/am;->b:Lcom/amap/api/mapcore/util/am$a;

    invoke-interface {v1, p0}, Lcom/amap/api/mapcore/util/am$a;->c(Lcom/amap/api/mapcore/util/am;)V

    .line 395
    iget v1, p0, Lcom/amap/api/mapcore/util/am;->w:I

    .line 396
    iget v3, p0, Lcom/amap/api/mapcore/util/am;->x:I

    .line 397
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/am;->j()V

    .line 399
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    iput-object v5, p0, Lcom/amap/api/mapcore/util/am;->d:Landroid/view/MotionEvent;

    .line 400
    iget-boolean v5, p0, Lcom/amap/api/mapcore/util/am;->y:Z

    if-eqz v5, :cond_1d

    :goto_c
    iput v1, p0, Lcom/amap/api/mapcore/util/am;->w:I

    .line 401
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v8, :cond_1e

    .line 402
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/amap/api/mapcore/util/am;->x:I

    .line 406
    :goto_d
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/am;->y:Z

    .line 408
    iget v1, p0, Lcom/amap/api/mapcore/util/am;->w:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 409
    if-ltz v1, :cond_1b

    iget v2, p0, Lcom/amap/api/mapcore/util/am;->w:I

    iget v3, p0, Lcom/amap/api/mapcore/util/am;->x:I

    if-ne v2, v3, :cond_1c

    .line 415
    :cond_1b
    iget v2, p0, Lcom/amap/api/mapcore/util/am;->w:I

    iget v3, p0, Lcom/amap/api/mapcore/util/am;->x:I

    if-ne v2, v3, :cond_1f

    :goto_e
    invoke-direct {p0, p1, v0, v1}, Lcom/amap/api/mapcore/util/am;->a(Landroid/view/MotionEvent;II)I

    move-result v0

    .line 417
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/am;->w:I

    .line 420
    :cond_1c
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/am;->b(Landroid/view/MotionEvent;)V

    .line 422
    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->b:Lcom/amap/api/mapcore/util/am$a;

    invoke-interface {v0, p0}, Lcom/amap/api/mapcore/util/am$a;->b(Lcom/amap/api/mapcore/util/am;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/am;->c:Z

    goto/16 :goto_0

    :cond_1d
    move v1, v3

    .line 400
    goto :goto_c

    .line 404
    :cond_1e
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/amap/api/mapcore/util/am;->x:I

    goto :goto_d

    .line 415
    :cond_1f
    iget v0, p0, Lcom/amap/api/mapcore/util/am;->x:I

    goto :goto_e

    .line 427
    :pswitch_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 429
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_26

    .line 430
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 433
    :goto_f
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 436
    const/4 v5, 0x2

    if-le v1, v5, :cond_24

    .line 437
    iget v1, p0, Lcom/amap/api/mapcore/util/am;->w:I

    if-ne v3, v1, :cond_22

    .line 438
    iget v1, p0, Lcom/amap/api/mapcore/util/am;->x:I

    invoke-direct {p0, p1, v1, v0}, Lcom/amap/api/mapcore/util/am;->a(Landroid/view/MotionEvent;II)I

    move-result v0

    .line 440
    if-ltz v0, :cond_21

    .line 441
    iget-object v1, p0, Lcom/amap/api/mapcore/util/am;->b:Lcom/amap/api/mapcore/util/am$a;

    invoke-interface {v1, p0}, Lcom/amap/api/mapcore/util/am$a;->c(Lcom/amap/api/mapcore/util/am;)V

    .line 442
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/am;->w:I

    .line 443
    iput-boolean v4, p0, Lcom/amap/api/mapcore/util/am;->y:Z

    .line 444
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/am;->d:Landroid/view/MotionEvent;

    .line 445
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/am;->b(Landroid/view/MotionEvent;)V

    .line 446
    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->b:Lcom/amap/api/mapcore/util/am$a;

    invoke-interface {v0, p0}, Lcom/amap/api/mapcore/util/am$a;->b(Lcom/amap/api/mapcore/util/am;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/am;->c:Z

    .line 464
    :cond_20
    :goto_10
    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->d:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 465
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/am;->d:Landroid/view/MotionEvent;

    .line 466
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/am;->b(Landroid/view/MotionEvent;)V

    .line 471
    :goto_11
    if-eqz v2, :cond_1

    .line 473
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/am;->b(Landroid/view/MotionEvent;)V

    .line 476
    iget v0, p0, Lcom/amap/api/mapcore/util/am;->w:I

    if-ne v3, v0, :cond_25

    iget v0, p0, Lcom/amap/api/mapcore/util/am;->x:I

    .line 478
    :goto_12
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 479
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Lcom/amap/api/mapcore/util/am;->f:F

    .line 480
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/amap/api/mapcore/util/am;->g:F

    .line 482
    iget-object v1, p0, Lcom/amap/api/mapcore/util/am;->b:Lcom/amap/api/mapcore/util/am$a;

    invoke-interface {v1, p0}, Lcom/amap/api/mapcore/util/am$a;->c(Lcom/amap/api/mapcore/util/am;)V

    .line 483
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/am;->j()V

    .line 484
    iput v0, p0, Lcom/amap/api/mapcore/util/am;->w:I

    .line 485
    iput-boolean v4, p0, Lcom/amap/api/mapcore/util/am;->y:Z

    goto/16 :goto_0

    :cond_21
    move v2, v4

    .line 450
    goto :goto_10

    :cond_22
    iget v1, p0, Lcom/amap/api/mapcore/util/am;->x:I

    if-ne v3, v1, :cond_20

    .line 451
    iget v1, p0, Lcom/amap/api/mapcore/util/am;->w:I

    invoke-direct {p0, p1, v1, v0}, Lcom/amap/api/mapcore/util/am;->a(Landroid/view/MotionEvent;II)I

    move-result v0

    .line 453
    if-ltz v0, :cond_23

    .line 454
    iget-object v1, p0, Lcom/amap/api/mapcore/util/am;->b:Lcom/amap/api/mapcore/util/am$a;

    invoke-interface {v1, p0}, Lcom/amap/api/mapcore/util/am$a;->c(Lcom/amap/api/mapcore/util/am;)V

    .line 455
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/am;->x:I

    .line 456
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/am;->y:Z

    .line 457
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/am;->d:Landroid/view/MotionEvent;

    .line 458
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/am;->b(Landroid/view/MotionEvent;)V

    .line 459
    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->b:Lcom/amap/api/mapcore/util/am$a;

    invoke-interface {v0, p0}, Lcom/amap/api/mapcore/util/am$a;->b(Lcom/amap/api/mapcore/util/am;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/am;->c:Z

    goto :goto_10

    :cond_23
    move v2, v4

    .line 461
    goto :goto_10

    :cond_24
    move v2, v4

    .line 468
    goto :goto_11

    .line 476
    :cond_25
    iget v0, p0, Lcom/amap/api/mapcore/util/am;->w:I

    goto :goto_12

    .line 491
    :pswitch_a
    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->b:Lcom/amap/api/mapcore/util/am$a;

    invoke-interface {v0, p0}, Lcom/amap/api/mapcore/util/am$a;->c(Lcom/amap/api/mapcore/util/am;)V

    .line 492
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/am;->j()V

    goto/16 :goto_0

    .line 500
    :pswitch_b
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/am;->b(Landroid/view/MotionEvent;)V

    .line 505
    iget v0, p0, Lcom/amap/api/mapcore/util/am;->o:F

    iget v1, p0, Lcom/amap/api/mapcore/util/am;->p:F

    div-float/2addr v0, v1

    const v1, 0x3f2b851f    # 0.67f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 506
    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->b:Lcom/amap/api/mapcore/util/am$a;

    invoke-interface {v0, p0}, Lcom/amap/api/mapcore/util/am$a;->a(Lcom/amap/api/mapcore/util/am;)Z

    move-result v0

    .line 508
    if-eqz v0, :cond_1

    .line 509
    iget-object v0, p0, Lcom/amap/api/mapcore/util/am;->d:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 510
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/am;->d:Landroid/view/MotionEvent;

    goto/16 :goto_0

    :cond_26
    move v0, v2

    goto/16 :goto_f

    :cond_27
    move v1, v2

    goto/16 :goto_a

    :cond_28
    move v1, v3

    goto/16 :goto_9

    :cond_29
    move v5, v1

    goto/16 :goto_8

    :cond_2a
    move v0, v2

    move v1, v2

    goto/16 :goto_3

    :cond_2b
    move v0, v1

    move v1, v3

    goto/16 :goto_3

    .line 194
    .line 390
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_b
        :pswitch_a
        :pswitch_6
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public b()F
    .locals 1

    .prologue
    .line 682
    iget v0, p0, Lcom/amap/api/mapcore/util/am;->g:F

    return v0
.end method

.method public c()F
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 692
    iget v0, p0, Lcom/amap/api/mapcore/util/am;->l:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 693
    iget v0, p0, Lcom/amap/api/mapcore/util/am;->j:F

    .line 694
    iget v1, p0, Lcom/amap/api/mapcore/util/am;->k:F

    .line 695
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/amap/api/mapcore/util/am;->l:F

    .line 697
    :cond_0
    iget v0, p0, Lcom/amap/api/mapcore/util/am;->l:F

    return v0
.end method

.method public d()F
    .locals 1

    .prologue
    .line 707
    iget v0, p0, Lcom/amap/api/mapcore/util/am;->j:F

    return v0
.end method

.method public e()F
    .locals 1

    .prologue
    .line 717
    iget v0, p0, Lcom/amap/api/mapcore/util/am;->k:F

    return v0
.end method

.method public f()F
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 727
    iget v0, p0, Lcom/amap/api/mapcore/util/am;->m:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 728
    iget v0, p0, Lcom/amap/api/mapcore/util/am;->h:F

    .line 729
    iget v1, p0, Lcom/amap/api/mapcore/util/am;->i:F

    .line 730
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/amap/api/mapcore/util/am;->m:F

    .line 732
    :cond_0
    iget v0, p0, Lcom/amap/api/mapcore/util/am;->m:F

    return v0
.end method

.method public g()F
    .locals 1

    .prologue
    .line 742
    iget v0, p0, Lcom/amap/api/mapcore/util/am;->h:F

    return v0
.end method

.method public h()F
    .locals 1

    .prologue
    .line 752
    iget v0, p0, Lcom/amap/api/mapcore/util/am;->i:F

    return v0
.end method

.method public i()F
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 763
    iget v0, p0, Lcom/amap/api/mapcore/util/am;->n:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 764
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/am;->c()F

    move-result v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/am;->f()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/am;->n:F

    .line 766
    :cond_0
    iget v0, p0, Lcom/amap/api/mapcore/util/am;->n:F

    return v0
.end method
