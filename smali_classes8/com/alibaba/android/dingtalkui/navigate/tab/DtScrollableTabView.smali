.class public Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;
.super Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;
.source "DtScrollableTabView.java"


# instance fields
.field private i:Landroid/support/v7/widget/RecyclerView;

.field private j:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;-><init>(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method private a(FF)V
    .locals 2
    .param p1, "width"    # F
    .param p2, "leftOffset"    # F

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;->getIndicator()Landroid/view/View;

    move-result-object v0

    .line 207
    .local v0, "indicator":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 208
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 209
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;->a(FF)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 62
    sget v0, Lecj$e;->rv_framework:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;->i:Landroid/support/v7/widget/RecyclerView;

    .line 63
    return-void
.end method

.method protected final a(I)V
    .locals 12
    .param p1, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v9, 0x2

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x0

    .line 213
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;->getContainer()Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 215
    .local v1, "endView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v0, v8

    .line 216
    .local v0, "endOffset":F
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v2, v8

    .line 223
    .local v2, "endWidth":F
    new-array v6, v9, [I

    .line 224
    .local v6, "temp":[I
    invoke-virtual {v1, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 225
    new-array v7, v9, [I

    .line 226
    .local v7, "tempRV":[I
    iget-object v8, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8, v7}, Landroid/support/v7/widget/RecyclerView;->getLocationOnScreen([I)V

    .line 227
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "moveTo: left=["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v9, v7, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    aget v8, v7, v10

    int-to-float v8, v8

    iget-object v9, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v11

    add-float v3, v8, v9

    .line 229
    .local v3, "scrollEnd":F
    aget v8, v6, v10

    int-to-float v8, v8

    div-float v9, v2, v11

    add-float v5, v8, v9

    .line 230
    .local v5, "scrollStart":F
    sub-float v4, v5, v3

    .line 232
    .local v4, "scrollOffset":F
    invoke-direct {p0, v2, v0}, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;->a(FF)V

    .line 233
    iget-object v8, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;->i:Landroid/support/v7/widget/RecyclerView;

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v9, v4

    float-to-int v9, v9

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    .line 234
    return-void
.end method

.method protected final b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 67
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;->getIndicator()Landroid/view/View;

    move-result-object v3

    .line 69
    .local v3, "indicator":Landroid/view/View;
    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotX(F)V

    .line 70
    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotY(F)V

    .line 73
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;->getContainer()Landroid/widget/LinearLayout;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 74
    .local v0, "firstChild":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 75
    .local v2, "firstChildWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 76
    .local v1, "firstChildOffset":I
    int-to-float v4, v2

    int-to-float v5, v1

    invoke-direct {p0, v4, v5}, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;->a(FF)V

    .line 77
    return-void
.end method

.method protected final b(I)V
    .locals 20
    .param p1, "index"    # I

    .prologue
    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->c:Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView$a;

    .line 240
    .local v2, "animateListener":Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView$a;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;->j:Landroid/animation/AnimatorSet;

    if-eqz v14, :cond_0

    .line 241
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;->j:Landroid/animation/AnimatorSet;

    invoke-virtual {v14}, Landroid/animation/AnimatorSet;->cancel()V

    .line 244
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;->getContainer()Landroid/widget/LinearLayout;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 246
    .local v4, "endView":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;->getIndicator()Landroid/view/View;

    move-result-object v6

    .line 248
    .local v6, "indicator":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTranslationX()F

    move-result v10

    .line 249
    .local v10, "startOffset":F
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v14

    int-to-float v3, v14

    .line 251
    .local v3, "endOffset":F
    invoke-virtual {v6}, Landroid/view/View;->getScaleX()F

    move-result v14

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v15

    int-to-float v15, v15

    mul-float v11, v14, v15

    .line 252
    .local v11, "startWidth":F
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v14

    int-to-float v5, v14

    .line 259
    .local v5, "endWidth":F
    const/4 v14, 0x2

    new-array v12, v14, [I

    .line 260
    .local v12, "temp":[I
    invoke-virtual {v4, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 261
    const/4 v14, 0x2

    new-array v13, v14, [I

    .line 262
    .local v13, "tempRV":[I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v14, v13}, Landroid/support/v7/widget/RecyclerView;->getLocationOnScreen([I)V

    .line 263
    const/4 v14, 0x0

    aget v14, v12, v14

    const/4 v15, 0x0

    aget v15, v13, v15

    sub-int/2addr v14, v15

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v15

    int-to-float v15, v15

    sub-float v15, v5, v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    add-float v8, v14, v15

    .line 2148
    .local v8, "scrollOffset":F
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;->getIndicator()Landroid/view/View;

    .line 2150
    const-string/jumbo v14, "width"

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    aput v11, v15, v16

    const/16 v16, 0x1

    aput v5, v15, v16

    invoke-static {v14, v15}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .line 2151
    const-string/jumbo v15, "transX"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v10, v16, v17

    const/16 v17, 0x1

    aput v3, v16, v17

    invoke-static/range {v15 .. v16}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .line 2153
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v14, v16, v17

    const/4 v14, 0x1

    aput-object v15, v16, v14

    invoke-static/range {v16 .. v16}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v9

    .line 2156
    new-instance v14, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v14}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v9, v14}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2157
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->a:I

    int-to-long v14, v14

    invoke-virtual {v9, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2158
    new-instance v14, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView$2;-><init>(Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;)V

    invoke-virtual {v9, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3109
    .local v9, "slideAnimator":Landroid/animation/ValueAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;->i:Landroid/support/v7/widget/RecyclerView;

    .line 3111
    const-string/jumbo v15, "scrollX"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    aput v18, v16, v17

    const/16 v17, 0x1

    aput v8, v16, v17

    invoke-static/range {v15 .. v16}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .line 3113
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    aput v18, v16, v17

    .line 3115
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v15, v17, v18

    invoke-static/range {v17 .. v17}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 3118
    new-instance v15, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v15}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v7, v15}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3119
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->a:I

    int-to-long v0, v15

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v7, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3120
    new-instance v15, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v14, v1}, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView$1;-><init>(Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;Landroid/support/v7/widget/RecyclerView;[F)V

    invoke-virtual {v7, v15}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 272
    .local v7, "scrollAnimator":Landroid/animation/ValueAnimator;
    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;->j:Landroid/animation/AnimatorSet;

    .line 273
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;->j:Landroid/animation/AnimatorSet;

    const/4 v15, 0x2

    new-array v15, v15, [Landroid/animation/Animator;

    const/16 v16, 0x0

    aput-object v9, v15, v16

    const/16 v16, 0x1

    aput-object v7, v15, v16

    invoke-virtual {v14, v15}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;->j:Landroid/animation/AnimatorSet;

    new-instance v15, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v2}, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView$4;-><init>(Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView$a;)V

    invoke-virtual {v14, v15}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;->j:Landroid/animation/AnimatorSet;

    invoke-virtual {v14}, Landroid/animation/AnimatorSet;->start()V

    .line 306
    return-void
.end method

.method protected final c()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 88
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v8, Lecj$f;->ui_private_util_tab_scrollable_content_layout:I

    invoke-virtual {v6, v8, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 90
    .local v1, "content":Landroid/widget/FrameLayout;
    sget v6, Lecj$e;->ll_content:I

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->d:Landroid/view/ViewGroup;

    .line 91
    sget v6, Lecj$e;->v_indicator:I

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->e:Landroid/view/View;

    .line 93
    const/4 v3, 0x0

    .line 95
    .local v3, "index":I
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;->getContainer()Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 96
    iget-object v8, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->f:[Ljava/lang/String;

    array-length v9, v8

    move v6, v7

    move v4, v3

    .end local v3    # "index":I
    .local v4, "index":I
    :goto_0
    if-ge v6, v9, :cond_0

    aget-object v5, v8, v6

    .line 97
    .local v5, "item":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;->getContainer()Landroid/widget/LinearLayout;

    move-result-object v10

    add-int/lit8 v3, v4, 0x1

    .line 1180
    .end local v4    # "index":I
    .restart local v3    # "index":I
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x1

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1183
    new-instance v12, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;-><init>(Landroid/content/Context;)V

    .line 1184
    invoke-virtual {v12, v11}, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1186
    invoke-virtual {v12, v5}, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1187
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v12, v11}, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->setTag(Ljava/lang/Object;)V

    .line 1189
    new-instance v11, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView$3;

    invoke-direct {v11, p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView$3;-><init>(Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;)V

    invoke-virtual {v12, v11}, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 96
    add-int/lit8 v6, v6, 0x1

    move v4, v3

    .end local v3    # "index":I
    .restart local v4    # "index":I
    goto :goto_0

    .line 100
    .end local v5    # "item":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;->i:Landroid/support/v7/widget/RecyclerView;

    .line 101
    .local v2, "framework":Landroid/support/v7/widget/RecyclerView;
    new-instance v6, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/DtScrollableTabView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8, v7, v7}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 102
    new-instance v0, Lecy;

    invoke-direct {v0, v1}, Lecy;-><init>(Landroid/widget/FrameLayout;)V

    .line 104
    .local v0, "adapter":Lecy;
    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 105
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 106
    return-void
.end method

.method protected getContainer()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->d:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected getIndicator()Landroid/view/View;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->e:Landroid/view/View;

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 49
    sget v0, Lecj$f;->ui_private_util_tab_scrollable_framework_layout:I

    return v0
.end method
