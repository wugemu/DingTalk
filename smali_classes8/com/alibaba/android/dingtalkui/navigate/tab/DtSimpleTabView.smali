.class public Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView;
.super Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;
.source "DtSimpleTabView.java"


# instance fields
.field private i:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 53
    sget v0, Lecj$e;->ll_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView;->d:Landroid/view/ViewGroup;

    .line 54
    sget v0, Lecj$e;->v_indicator:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView;->e:Landroid/view/View;

    .line 55
    return-void
.end method

.method protected final a(I)V
    .locals 4
    .param p1, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView;->getIndicator()Landroid/view/View;

    move-result-object v1

    .line 165
    .local v1, "indicator":Landroid/view/View;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView;->getContainer()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 166
    .local v2, "targetItem":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v0, v3

    .line 168
    .local v0, "endOffset":F
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 169
    return-void
.end method

.method protected final b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 59
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView;->getIndicator()Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "indicator":Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/view/View;->setPivotX(F)V

    .line 62
    invoke-virtual {v0, v5}, Landroid/view/View;->setPivotY(F)V

    .line 64
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView;->getWidth()I

    move-result v3

    int-to-float v2, v3

    .line 65
    .local v2, "width":F
    iget-object v3, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->f:[Ljava/lang/String;

    array-length v3, v3

    int-to-float v1, v3

    .line 1120
    .local v1, "itemCount":F
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView;->getIndicator()Landroid/view/View;

    move-result-object v3

    .line 1122
    div-float v4, v2, v1

    .line 1125
    div-float/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleX(F)V

    .line 1126
    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 67
    return-void
.end method

.method protected final b(I)V
    .locals 10
    .param p1, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 173
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->c:Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView$a;

    .line 175
    .local v0, "animateListener":Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView$a;
    iget-object v5, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView;->i:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_0

    .line 176
    iget-object v5, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView;->getIndicator()Landroid/view/View;

    move-result-object v2

    .line 182
    .local v2, "indicator":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v3

    .line 184
    .local v3, "startOffset":F
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView;->getContainer()Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 185
    .local v4, "targetItem":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v1, v5

    .line 2095
    .local v1, "endOffset":F
    iget-object v5, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->e:Landroid/view/View;

    .line 2097
    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v3, v6, v7

    const/4 v7, 0x1

    aput v1, v6, v7

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 2098
    new-instance v7, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2099
    iget v7, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->a:I

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2100
    new-instance v7, Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView$1;

    invoke-direct {v7, p0, v5}, Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView$1;-><init>(Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 187
    iput-object v6, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView;->i:Landroid/animation/ValueAnimator;

    .line 188
    iget-object v5, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView;->i:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView$3;

    invoke-direct {v6, p0, v0}, Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView$3;-><init>(Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView;Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView$a;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 218
    iget-object v5, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 219
    return-void
.end method

.method protected final c()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 78
    const/4 v0, 0x0

    .line 80
    .local v0, "index":I
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView;->getContainer()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 81
    iget-object v5, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->f:[Ljava/lang/String;

    array-length v6, v5

    move v3, v4

    move v1, v0

    .end local v0    # "index":I
    .local v1, "index":I
    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v2, v5, v3

    .line 82
    .local v2, "item":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView;->getContainer()Landroid/widget/LinearLayout;

    move-result-object v7

    add-int/lit8 v0, v1, 0x1

    .line 1137
    .end local v1    # "index":I
    .restart local v0    # "index":I
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    invoke-direct {v8, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1141
    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1142
    new-instance v9, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;-><init>(Landroid/content/Context;)V

    .line 1143
    invoke-virtual {v9, v8}, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1144
    invoke-virtual {v9, v2}, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1145
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->setTag(Ljava/lang/Object;)V

    .line 1147
    new-instance v8, Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView$2;

    invoke-direct {v8, p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView$2;-><init>(Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView;)V

    invoke-virtual {v9, v8}, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 81
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    .end local v0    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 84
    .end local v2    # "item":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected getContainer()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->d:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected getIndicator()Landroid/view/View;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView;->e:Landroid/view/View;

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 40
    sget v0, Lecj$f;->ui_private_util_tab_fixed_layout:I

    return v0
.end method
