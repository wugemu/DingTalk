.class final Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;
.super Ljava/lang/Object;
.source "DragSortListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/views/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field a:I

.field b:Z

.field final synthetic c:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

.field private d:Z

.field private e:J

.field private f:J

.field private g:I

.field private h:F

.field private i:J

.field private j:F


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/views/DragSortListView;)V
    .locals 1

    .prologue
    .line 2299
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->c:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->b:Z

    .line 2300
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2
    .param p1, "dir"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2303
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->b:Z

    if-nez v0, :cond_0

    .line 2305
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->d:Z

    .line 2306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->b:Z

    .line 2307
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->i:J

    .line 2308
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->i:J

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->e:J

    .line 2309
    iput p1, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->a:I

    .line 2310
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->c:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->post(Ljava/lang/Runnable;)Z

    .line 2312
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "now"    # Z

    .prologue
    .line 2316
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->c:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2317
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->b:Z

    .line 2323
    return-void
.end method

.method public final run()V
    .locals 18

    .prologue
    .line 2327
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->d:Z

    if-eqz v13, :cond_0

    .line 2328
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->b:Z

    .line 2416
    :goto_0
    return-void

    .line 2334
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->c:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-virtual {v13}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getFirstVisiblePosition()I

    move-result v3

    .line 2335
    .local v3, "first":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->c:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-virtual {v13}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getLastVisiblePosition()I

    move-result v4

    .line 2336
    .local v4, "last":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->c:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-virtual {v13}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getCount()I

    move-result v2

    .line 2337
    .local v2, "count":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->c:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-virtual {v13}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getPaddingTop()I

    move-result v10

    .line 2338
    .local v10, "padTop":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->c:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-virtual {v13}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getHeight()I

    move-result v13

    sub-int/2addr v13, v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->c:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-virtual {v14}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getPaddingBottom()I

    move-result v14

    sub-int v5, v13, v14

    .line 2340
    .local v5, "listHeight":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->c:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-static {v13}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->i(Lcom/alibaba/android/dingtalkim/views/DragSortListView;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->c:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-static {v14}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->j(Lcom/alibaba/android/dingtalkim/views/DragSortListView;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->c:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-static {v15}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->k(Lcom/alibaba/android/dingtalkim/views/DragSortListView;)I

    move-result v15

    add-int/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 2341
    .local v7, "minY":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->c:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-static {v13}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->i(Lcom/alibaba/android/dingtalkim/views/DragSortListView;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->c:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-static {v14}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->j(Lcom/alibaba/android/dingtalkim/views/DragSortListView;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->c:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-static {v15}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->k(Lcom/alibaba/android/dingtalkim/views/DragSortListView;)I

    move-result v15

    sub-int/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 2343
    .local v6, "maxY":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->a:I

    if-nez v13, :cond_4

    .line 2344
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->c:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 2346
    .local v12, "v":Landroid/view/View;
    if-nez v12, :cond_1

    .line 2347
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->b:Z

    goto/16 :goto_0

    .line 2350
    :cond_1
    if-nez v3, :cond_2

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    if-ne v13, v10, :cond_2

    .line 2351
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->b:Z

    goto/16 :goto_0

    .line 2355
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->c:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-static {v13}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->n(Lcom/alibaba/android/dingtalkim/views/DragSortListView;)Lcom/alibaba/android/dingtalkim/views/DragSortListView$c;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->c:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    .line 2356
    invoke-static {v14}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->l(Lcom/alibaba/android/dingtalkim/views/DragSortListView;)F

    move-result v14

    int-to-float v15, v6

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->c:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-static {v15}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->m(Lcom/alibaba/android/dingtalkim/views/DragSortListView;)F

    move-result v15

    div-float/2addr v14, v15

    .line 2355
    invoke-interface {v13, v14}, Lcom/alibaba/android/dingtalkim/views/DragSortListView$c;->a(F)F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->j:F

    .line 2375
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->f:J

    .line 2376
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->f:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->e:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    long-to-float v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->h:F

    .line 2382
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->j:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->h:F

    mul-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->g:I

    .line 2385
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->g:I

    if-ltz v13, :cond_7

    .line 2386
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->g:I

    invoke-static {v5, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->g:I

    .line 2387
    move v9, v3

    .line 2393
    .local v9, "movePos":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->c:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    sub-int v14, v9, v3

    invoke-virtual {v13, v14}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2394
    .local v8, "moveItem":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->g:I

    add-int v11, v13, v14

    .line 2396
    .local v11, "top":I
    if-nez v9, :cond_3

    if-le v11, v10, :cond_3

    .line 2397
    move v11, v10

    .line 2401
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->c:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->b(Lcom/alibaba/android/dingtalkim/views/DragSortListView;Z)Z

    .line 2403
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->c:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    sub-int v14, v11, v10

    invoke-virtual {v13, v9, v14}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->setSelectionFromTop(II)V

    .line 2404
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->c:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-virtual {v13}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->layoutChildren()V

    .line 2405
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->c:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-virtual {v13}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->invalidate()V

    .line 2407
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->c:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->b(Lcom/alibaba/android/dingtalkim/views/DragSortListView;Z)Z

    .line 2410
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->c:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    const/4 v14, 0x0

    invoke-static {v13, v9, v8, v14}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->b(Lcom/alibaba/android/dingtalkim/views/DragSortListView;ILandroid/view/View;Z)V

    .line 2412
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->f:J

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->e:J

    .line 2415
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->c:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 2359
    .end local v8    # "moveItem":Landroid/view/View;
    .end local v9    # "movePos":I
    .end local v11    # "top":I
    .end local v12    # "v":Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->c:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    sub-int v14, v4, v3

    invoke-virtual {v13, v14}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 2360
    .restart local v12    # "v":Landroid/view/View;
    if-nez v12, :cond_5

    .line 2361
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->b:Z

    goto/16 :goto_0

    .line 2364
    :cond_5
    add-int/lit8 v13, v2, -0x1

    if-ne v4, v13, :cond_6

    .line 2365
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int v14, v5, v10

    if-gt v13, v14, :cond_6

    .line 2366
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->b:Z

    goto/16 :goto_0

    .line 2370
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->c:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-static {v13}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->n(Lcom/alibaba/android/dingtalkim/views/DragSortListView;)Lcom/alibaba/android/dingtalkim/views/DragSortListView$c;

    move-result-object v13

    int-to-float v14, v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->c:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    .line 2371
    invoke-static {v15}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->o(Lcom/alibaba/android/dingtalkim/views/DragSortListView;)F

    move-result v15

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->c:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-static {v15}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->p(Lcom/alibaba/android/dingtalkim/views/DragSortListView;)F

    move-result v15

    div-float/2addr v14, v15

    .line 2370
    invoke-interface {v13, v14}, Lcom/alibaba/android/dingtalkim/views/DragSortListView$c;->a(F)F

    move-result v13

    neg-float v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->j:F

    goto/16 :goto_1

    .line 2389
    :cond_7
    neg-int v13, v5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->g:I

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView$d;->g:I

    .line 2390
    move v9, v4

    .restart local v9    # "movePos":I
    goto/16 :goto_2
.end method
