.class public Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;
.super Landroid/widget/FrameLayout;
.source "SegmentTabLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$PointEvaluator;,
        Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;
    }
.end annotation


# instance fields
.field private mBarColor:I

.field private mBarStrokeColor:I

.field private mBarStrokeWidth:F

.field private mContext:Landroid/content/Context;

.field private mCurrentP:Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;

.field private mCurrentTab:I

.field private mDividerColor:I

.field private mDividerPadding:F

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mDividerWidth:F

.field private mFragmentChangeManager:Lcom/alibaba/alimei/widget/tab/utils/FragmentChangeManager;

.field private mHeight:I

.field private mIndicatorAnimDuration:J

.field private mIndicatorAnimEnable:Z

.field private mIndicatorBounceEnable:Z

.field private mIndicatorColor:I

.field private mIndicatorCornerRadius:F

.field private mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mIndicatorHeight:F

.field private mIndicatorMarginBottom:F

.field private mIndicatorMarginLeft:F

.field private mIndicatorMarginRight:F

.field private mIndicatorMarginTop:F

.field private mIndicatorRect:Landroid/graphics/Rect;

.field private mInitSetMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mInterpolator:Landroid/view/animation/OvershootInterpolator;

.field private mIsFirstDraw:Z

.field private mLastP:Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;

.field private mLastTab:I

.field private mListener:Lcom/alibaba/alimei/widget/tab/listener/OnTabSelectListener;

.field private mRadiusArr:[F

.field private mRectDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mTabCount:I

.field private mTabPadding:F

.field private mTabSpaceEqual:Z

.field private mTabWidth:F

.field private mTabsContainer:Landroid/widget/LinearLayout;

.field private mTextAllCaps:Z

.field private mTextBold:Z

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSelectColor:I

.field private mTextUnselectColor:I

.field private mTextsize:F

.field private mTitles:[Ljava/lang/String;

.field private mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 97
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    .line 42
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 43
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mRectDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 45
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mDividerPaint:Landroid/graphics/Paint;

    .line 83
    new-instance v3, Landroid/view/animation/OvershootInterpolator;

    const v4, 0x3f4ccccd    # 0.8f

    invoke-direct {v3, v4}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mInterpolator:Landroid/view/animation/OvershootInterpolator;

    .line 86
    const/16 v3, 0x8

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mRadiusArr:[F

    .line 337
    iput-boolean v7, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIsFirstDraw:Z

    .line 595
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTextPaint:Landroid/graphics/Paint;

    .line 596
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mInitSetMap:Landroid/util/SparseArray;

    .line 715
    new-instance v3, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;-><init>(Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;)V

    iput-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mCurrentP:Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;

    .line 716
    new-instance v3, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;-><init>(Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;)V

    iput-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mLastP:Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;

    .line 98
    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->setWillNotDraw(Z)V

    .line 99
    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->setClipChildren(Z)V

    .line 100
    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->setClipToPadding(Z)V

    .line 102
    iput-object p1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mContext:Landroid/content/Context;

    .line 103
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    .line 104
    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->addView(Landroid/view/View;)V

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->obtainAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    const-string/jumbo v3, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v4, "layout_height"

    invoke-interface {p2, v3, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "height":Ljava/lang/String;
    const-string/jumbo v3, "-1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 113
    const-string/jumbo v3, "-2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 115
    new-array v2, v7, [I

    const v3, 0x10100f5

    aput v3, v2, v6

    .line 116
    .local v2, "systemAttrs":[I
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 117
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, -0x2

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mHeight:I

    .line 118
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 121
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "systemAttrs":[I
    :cond_0
    new-instance v3, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$PointEvaluator;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$PointEvaluator;-><init>(Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;)V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mLastP:Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mCurrentP:Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 122
    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;

    .prologue
    .line 33
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mCurrentTab:I

    return v0
.end method

.method static synthetic access$100(Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;)Lcom/alibaba/alimei/widget/tab/listener/OnTabSelectListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mListener:Lcom/alibaba/alimei/widget/tab/listener/OnTabSelectListener;

    return-object v0
.end method

.method private addTab(ILandroid/view/View;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "tabView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, -0x1

    .line 192
    sget v2, Laxo$f;->tv_tab_title:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 193
    .local v1, "tv_tab_title":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTitles:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    new-instance v2, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$1;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$1;-><init>(Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-boolean v2, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTabSpaceEqual:Z

    if-eqz v2, :cond_1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 216
    .local v0, "lp_tab":Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    iget v2, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTabWidth:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 217
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0    # "lp_tab":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTabWidth:F

    float-to-int v2, v2

    invoke-direct {v0, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 219
    .restart local v0    # "lp_tab":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v2, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p2, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 220
    return-void

    .line 213
    .end local v0    # "lp_tab":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method private calcIndicatorRect()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 277
    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mCurrentTab:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 278
    .local v0, "currentTabView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v1, v3

    .line 279
    .local v1, "left":F
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v2, v3

    .line 281
    .local v2, "right":F
    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    float-to-int v4, v1

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 282
    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    float-to-int v4, v2

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 284
    iget-boolean v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorAnimEnable:Z

    if-nez v3, :cond_2

    .line 285
    iget v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mCurrentTab:I

    if-nez v3, :cond_0

    .line 287
    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mRadiusArr:[F

    iget v4, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorCornerRadius:F

    aput v4, v3, v5

    .line 288
    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mRadiusArr:[F

    iget v4, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorCornerRadius:F

    aput v4, v3, v7

    .line 289
    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mRadiusArr:[F

    aput v6, v3, v8

    .line 290
    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mRadiusArr:[F

    aput v6, v3, v9

    .line 291
    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mRadiusArr:[F

    const/4 v4, 0x4

    aput v6, v3, v4

    .line 292
    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mRadiusArr:[F

    const/4 v4, 0x5

    aput v6, v3, v4

    .line 293
    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mRadiusArr:[F

    const/4 v4, 0x6

    iget v5, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorCornerRadius:F

    aput v5, v3, v4

    .line 294
    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mRadiusArr:[F

    const/4 v4, 0x7

    iget v5, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorCornerRadius:F

    aput v5, v3, v4

    .line 327
    :goto_0
    return-void

    .line 295
    :cond_0
    iget v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mCurrentTab:I

    iget v4, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTabCount:I

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_1

    .line 297
    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mRadiusArr:[F

    aput v6, v3, v5

    .line 298
    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mRadiusArr:[F

    aput v6, v3, v7

    .line 299
    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mRadiusArr:[F

    iget v4, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorCornerRadius:F

    aput v4, v3, v8

    .line 300
    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mRadiusArr:[F

    iget v4, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorCornerRadius:F

    aput v4, v3, v9

    .line 301
    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mRadiusArr:[F

    const/4 v4, 0x4

    iget v5, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorCornerRadius:F

    aput v5, v3, v4

    .line 302
    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mRadiusArr:[F

    const/4 v4, 0x5

    iget v5, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorCornerRadius:F

    aput v5, v3, v4

    .line 303
    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mRadiusArr:[F

    const/4 v4, 0x6

    aput v6, v3, v4

    .line 304
    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mRadiusArr:[F

    const/4 v4, 0x7

    aput v6, v3, v4

    goto :goto_0

    .line 307
    :cond_1
    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mRadiusArr:[F

    aput v6, v3, v5

    .line 308
    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mRadiusArr:[F

    aput v6, v3, v7

    .line 309
    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mRadiusArr:[F

    aput v6, v3, v8

    .line 310
    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mRadiusArr:[F

    aput v6, v3, v9

    .line 311
    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mRadiusArr:[F

    const/4 v4, 0x4

    aput v6, v3, v4

    .line 312
    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mRadiusArr:[F

    const/4 v4, 0x5

    aput v6, v3, v4

    .line 313
    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mRadiusArr:[F

    const/4 v4, 0x6

    aput v6, v3, v4

    .line 314
    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mRadiusArr:[F

    const/4 v4, 0x7

    aput v6, v3, v4

    goto :goto_0

    .line 318
    :cond_2
    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mRadiusArr:[F

    iget v4, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorCornerRadius:F

    aput v4, v3, v5

    .line 319
    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mRadiusArr:[F

    iget v4, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorCornerRadius:F

    aput v4, v3, v7

    .line 320
    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mRadiusArr:[F

    iget v4, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorCornerRadius:F

    aput v4, v3, v8

    .line 321
    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mRadiusArr:[F

    iget v4, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorCornerRadius:F

    aput v4, v3, v9

    .line 322
    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mRadiusArr:[F

    const/4 v4, 0x4

    iget v5, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorCornerRadius:F

    aput v5, v3, v4

    .line 323
    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mRadiusArr:[F

    const/4 v4, 0x5

    iget v5, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorCornerRadius:F

    aput v5, v3, v4

    .line 324
    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mRadiusArr:[F

    const/4 v4, 0x6

    iget v5, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorCornerRadius:F

    aput v5, v3, v4

    .line 325
    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mRadiusArr:[F

    const/4 v4, 0x7

    iget v5, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorCornerRadius:F

    aput v5, v3, v4

    goto/16 :goto_0
.end method

.method private calcOffset()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 250
    iget-object v2, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mCurrentTab:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 251
    .local v0, "currentTabView":Landroid/view/View;
    iget-object v2, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mCurrentP:Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;->left:F

    .line 252
    iget-object v2, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mCurrentP:Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;->right:F

    .line 254
    iget-object v2, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mLastTab:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 255
    .local v1, "lastTabView":Landroid/view/View;
    iget-object v2, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mLastP:Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;->left:F

    .line 256
    iget-object v2, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mLastP:Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;->right:F

    .line 260
    iget-object v2, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mLastP:Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;

    iget v2, v2, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;->left:F

    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mCurrentP:Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;

    iget v3, v3, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;->left:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mLastP:Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;

    iget v2, v2, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;->right:F

    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mCurrentP:Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;

    iget v3, v3, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;->right:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->invalidate()V

    .line 274
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v2, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mLastP:Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mCurrentP:Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 264
    iget-boolean v2, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorBounceEnable:Z

    if-eqz v2, :cond_1

    .line 265
    iget-object v2, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mInterpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 268
    :cond_1
    iget-wide v2, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorAnimDuration:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 269
    iget-boolean v2, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorBounceEnable:Z

    if-eqz v2, :cond_3

    const-wide/16 v2, 0x1f4

    :goto_1
    iput-wide v2, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorAnimDuration:J

    .line 271
    :cond_2
    iget-object v2, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-wide v4, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorAnimDuration:J

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 272
    iget-object v2, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 269
    :cond_3
    const-wide/16 v2, 0xfa

    goto :goto_1
.end method

.method private obtainAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 126
    sget-object v1, Laxo$k;->SegmentTabLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 128
    .local v0, "ta":Landroid/content/res/TypedArray;
    sget v1, Laxo$k;->SegmentTabLayout_tl_indicator_color:I

    const-string/jumbo v2, "#222831"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorColor:I

    .line 129
    sget v1, Laxo$k;->SegmentTabLayout_tl_indicator_height:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorHeight:F

    .line 130
    sget v1, Laxo$k;->SegmentTabLayout_tl_indicator_corner_radius:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorCornerRadius:F

    .line 131
    sget v1, Laxo$k;->SegmentTabLayout_tl_indicator_margin_left:I

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorMarginLeft:F

    .line 132
    sget v1, Laxo$k;->SegmentTabLayout_tl_indicator_margin_top:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorMarginTop:F

    .line 133
    sget v1, Laxo$k;->SegmentTabLayout_tl_indicator_margin_right:I

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorMarginRight:F

    .line 134
    sget v1, Laxo$k;->SegmentTabLayout_tl_indicator_margin_bottom:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorMarginBottom:F

    .line 135
    sget v1, Laxo$k;->SegmentTabLayout_tl_indicator_anim_enable:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorAnimEnable:Z

    .line 136
    sget v1, Laxo$k;->SegmentTabLayout_tl_indicator_bounce_enable:I

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorBounceEnable:Z

    .line 137
    sget v1, Laxo$k;->SegmentTabLayout_tl_indicator_anim_duration:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorAnimDuration:J

    .line 139
    sget v1, Laxo$k;->SegmentTabLayout_tl_divider_color:I

    iget v2, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mDividerColor:I

    .line 140
    sget v1, Laxo$k;->SegmentTabLayout_tl_divider_width:I

    invoke-virtual {p0, v7}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mDividerWidth:F

    .line 141
    sget v1, Laxo$k;->SegmentTabLayout_tl_divider_padding:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mDividerPadding:F

    .line 143
    sget v1, Laxo$k;->SegmentTabLayout_tl_textsize:I

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->sp2px(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTextsize:F

    .line 144
    sget v1, Laxo$k;->SegmentTabLayout_tl_textSelectColor:I

    const-string/jumbo v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTextSelectColor:I

    .line 145
    sget v1, Laxo$k;->SegmentTabLayout_tl_textUnselectColor:I

    iget v2, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTextUnselectColor:I

    .line 146
    sget v1, Laxo$k;->SegmentTabLayout_tl_textBold:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTextBold:Z

    .line 147
    sget v1, Laxo$k;->SegmentTabLayout_tl_textAllCaps:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTextAllCaps:Z

    .line 149
    sget v1, Laxo$k;->SegmentTabLayout_tl_tab_space_equal:I

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTabSpaceEqual:Z

    .line 150
    sget v1, Laxo$k;->SegmentTabLayout_tl_tab_width:I

    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTabWidth:F

    .line 151
    sget v2, Laxo$k;->SegmentTabLayout_tl_tab_padding:I

    iget-boolean v1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTabSpaceEqual:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTabWidth:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_1

    :cond_0
    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTabPadding:F

    .line 153
    sget v1, Laxo$k;->SegmentTabLayout_tl_bar_color:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mBarColor:I

    .line 154
    sget v1, Laxo$k;->SegmentTabLayout_tl_bar_stroke_color:I

    iget v2, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mBarStrokeColor:I

    .line 155
    sget v1, Laxo$k;->SegmentTabLayout_tl_bar_stroke_width:I

    invoke-virtual {p0, v7}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mBarStrokeWidth:F

    .line 157
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 158
    return-void

    .line 151
    :cond_1
    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    goto :goto_0
.end method

.method private updateTabSelection(I)V
    .locals 5
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 241
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTabCount:I

    if-ge v0, v4, :cond_2

    .line 242
    iget-object v4, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 243
    .local v2, "tabView":Landroid/view/View;
    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    .line 244
    .local v1, "isSelect":Z
    :goto_1
    sget v4, Laxo$f;->tv_tab_title:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 245
    .local v3, "tab_title":Landroid/widget/TextView;
    if-eqz v1, :cond_1

    iget v4, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTextSelectColor:I

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    .end local v1    # "isSelect":Z
    .end local v3    # "tab_title":Landroid/widget/TextView;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 245
    .restart local v1    # "isSelect":Z
    .restart local v3    # "tab_title":Landroid/widget/TextView;
    :cond_1
    iget v4, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTextUnselectColor:I

    goto :goto_2

    .line 247
    .end local v1    # "isSelect":Z
    .end local v2    # "tabView":Landroid/view/View;
    .end local v3    # "tab_title":Landroid/widget/TextView;
    :cond_2
    return-void
.end method

.method private updateTabStyles()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 223
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTabCount:I

    if-ge v0, v3, :cond_3

    .line 224
    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 225
    .local v1, "tabView":Landroid/view/View;
    iget v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTabPadding:F

    float-to-int v3, v3

    iget v4, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTabPadding:F

    float-to-int v4, v4

    invoke-virtual {v1, v3, v5, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 226
    sget v3, Laxo$f;->tv_tab_title:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 227
    .local v2, "tv_tab_title":Landroid/widget/TextView;
    iget v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mCurrentTab:I

    if-ne v0, v3, :cond_2

    iget v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTextSelectColor:I

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 228
    iget v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTextsize:F

    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 230
    iget-boolean v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTextAllCaps:Z

    if-eqz v3, :cond_0

    .line 231
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    :cond_0
    iget-boolean v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTextBold:Z

    if-eqz v3, :cond_1

    .line 235
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    iget-boolean v4, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTextBold:Z

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 223
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    :cond_2
    iget v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTextUnselectColor:I

    goto :goto_1

    .line 238
    .end local v1    # "tabView":Landroid/view/View;
    .end local v2    # "tv_tab_title":Landroid/widget/TextView;
    :cond_3
    return-void
.end method


# virtual methods
.method protected dp2px(F)I
    .locals 3
    .param p1, "dp"    # F

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 731
    iget-object v1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 732
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public getCurrentTab()I
    .locals 1

    .prologue
    .line 506
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mCurrentTab:I

    return v0
.end method

.method public getDividerColor()I
    .locals 1

    .prologue
    .line 562
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mDividerColor:I

    return v0
.end method

.method public getDividerPadding()F
    .locals 1

    .prologue
    .line 570
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mDividerPadding:F

    return v0
.end method

.method public getDividerWidth()F
    .locals 1

    .prologue
    .line 566
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mDividerWidth:F

    return v0
.end method

.method public getIndicatorAnimDuration()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 550
    iget-wide v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorAnimDuration:J

    return-wide v0
.end method

.method public getIndicatorColor()I
    .locals 1

    .prologue
    .line 522
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorColor:I

    return v0
.end method

.method public getIndicatorCornerRadius()F
    .locals 1

    .prologue
    .line 530
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorCornerRadius:F

    return v0
.end method

.method public getIndicatorHeight()F
    .locals 1

    .prologue
    .line 526
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorHeight:F

    return v0
.end method

.method public getIndicatorMarginBottom()F
    .locals 1

    .prologue
    .line 546
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorMarginBottom:F

    return v0
.end method

.method public getIndicatorMarginLeft()F
    .locals 1

    .prologue
    .line 534
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorMarginLeft:F

    return v0
.end method

.method public getIndicatorMarginRight()F
    .locals 1

    .prologue
    .line 542
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorMarginRight:F

    return v0
.end method

.method public getIndicatorMarginTop()F
    .locals 1

    .prologue
    .line 538
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorMarginTop:F

    return v0
.end method

.method public getMsgView(I)Landroid/widget/TextView;
    .locals 3
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 675
    iget v2, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTabCount:I

    if-lt p1, v2, :cond_0

    .line 676
    iget v2, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTabCount:I

    add-int/lit8 p1, v2, -0x1

    .line 678
    :cond_0
    iget-object v2, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 679
    .local v0, "tabView":Landroid/view/View;
    sget v2, Laxo$f;->rtv_msg_tip:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 680
    .local v1, "tipView":Landroid/widget/TextView;
    return-object v1
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 502
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTabCount:I

    return v0
.end method

.method public getTabPadding()F
    .locals 1

    .prologue
    .line 510
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTabPadding:F

    return v0
.end method

.method public getTabWidth()F
    .locals 1

    .prologue
    .line 518
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTabWidth:F

    return v0
.end method

.method public getTextSelectColor()I
    .locals 1

    .prologue
    .line 578
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTextSelectColor:I

    return v0
.end method

.method public getTextUnselectColor()I
    .locals 1

    .prologue
    .line 582
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTextUnselectColor:I

    return v0
.end method

.method public getTextsize()F
    .locals 1

    .prologue
    .line 574
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTextsize:F

    return v0
.end method

.method public hideMsg(I)V
    .locals 3
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 637
    iget v2, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTabCount:I

    if-lt p1, v2, :cond_0

    .line 638
    iget v2, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTabCount:I

    add-int/lit8 p1, v2, -0x1

    .line 641
    :cond_0
    iget-object v2, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 642
    .local v0, "tabView":Landroid/view/View;
    sget v2, Laxo$f;->rtv_msg_tip:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 643
    .local v1, "tipView":Landroid/widget/TextView;
    if-eqz v1, :cond_1

    .line 644
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 646
    :cond_1
    return-void
.end method

.method public isIndicatorAnimEnable()Z
    .locals 1

    .prologue
    .line 554
    iget-boolean v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorAnimEnable:Z

    return v0
.end method

.method public isIndicatorBounceEnable()Z
    .locals 1

    .prologue
    .line 558
    iget-boolean v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorBounceEnable:Z

    return v0
.end method

.method public isTabSpaceEqual()Z
    .locals 1

    .prologue
    .line 514
    iget-boolean v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTabSpaceEqual:Z

    return v0
.end method

.method public isTextAllCaps()Z
    .locals 1

    .prologue
    .line 590
    iget-boolean v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTextAllCaps:Z

    return v0
.end method

.method public isTextBold()Z
    .locals 1

    .prologue
    .line 586
    iget-boolean v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTextBold:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 178
    iget-object v2, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 179
    iget-object v2, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTitles:[Ljava/lang/String;

    array-length v2, v2

    iput v2, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTabCount:I

    .line 181
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTabCount:I

    if-ge v0, v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mContext:Landroid/content/Context;

    sget v3, Laxo$g;->layout_tab_segment:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 183
    .local v1, "tabView":Landroid/view/View;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 184
    invoke-direct {p0, v0, v1}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->addTab(ILandroid/view/View;)V

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    .end local v1    # "tabView":Landroid/view/View;
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->updateTabStyles()V

    .line 188
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 331
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;

    .line 332
    .local v0, "p":Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;
    iget-object v1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    iget v2, v0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;->left:F

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 333
    iget-object v1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    iget v2, v0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout$IndicatorPoint;->right:F

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 334
    invoke-virtual {p0}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->invalidate()V

    .line 335
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/4 v10, 0x0

    .line 341
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 343
    invoke-virtual {p0}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTabCount:I

    if-gtz v0, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->getHeight()I

    move-result v6

    .line 348
    .local v6, "height":I
    invoke-virtual {p0}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->getPaddingLeft()I

    move-result v8

    .line 350
    .local v8, "paddingLeft":I
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorHeight:F

    cmpg-float v0, v0, v10

    if-gez v0, :cond_2

    .line 351
    int-to-float v0, v6

    iget v1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorMarginTop:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorMarginBottom:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorHeight:F

    .line 354
    :cond_2
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorCornerRadius:F

    cmpg-float v0, v0, v10

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorCornerRadius:F

    iget v1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorHeight:F

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 355
    :cond_3
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorHeight:F

    div-float/2addr v0, v2

    iput v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorCornerRadius:F

    .line 359
    :cond_4
    iget-object v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mRectDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mBarColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 360
    iget-object v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mRectDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mBarStrokeWidth:F

    float-to-int v1, v1

    iget v2, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mBarStrokeColor:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 361
    iget-object v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mRectDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorCornerRadius:F

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 362
    iget-object v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mRectDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 363
    iget-object v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mRectDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 366
    iget-boolean v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorAnimEnable:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mDividerWidth:F

    cmpl-float v0, v0, v10

    if-lez v0, :cond_5

    .line 367
    iget-object v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mDividerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mDividerWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 368
    iget-object v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mDividerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mDividerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 369
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTabCount:I

    add-int/lit8 v0, v0, -0x1

    if-ge v7, v0, :cond_5

    .line 370
    iget-object v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 371
    .local v9, "tab":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v0

    add-int/2addr v0, v8

    int-to-float v1, v0

    iget v2, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mDividerPadding:F

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v0

    add-int/2addr v0, v8

    int-to-float v3, v0

    int-to-float v0, v6

    iget v4, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mDividerPadding:F

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mDividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 369
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 377
    .end local v7    # "i":I
    .end local v9    # "tab":Landroid/view/View;
    :cond_5
    iget-boolean v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorAnimEnable:Z

    if-eqz v0, :cond_6

    .line 378
    iget-boolean v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIsFirstDraw:Z

    if-eqz v0, :cond_7

    .line 379
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIsFirstDraw:Z

    .line 383
    :cond_6
    invoke-direct {p0}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->calcIndicatorRect()V

    .line 386
    :cond_7
    iget-object v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 387
    iget-object v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorMarginLeft:F

    float-to-int v1, v1

    add-int/2addr v1, v8

    iget-object v2, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorMarginTop:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v8

    int-to-float v3, v3

    iget v4, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorMarginRight:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorMarginTop:F

    iget v5, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorHeight:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 390
    iget-object v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mRadiusArr:[F

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 391
    iget-object v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 699
    instance-of v1, p1, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 700
    check-cast v0, Landroid/os/Bundle;

    .line 701
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "mCurrentTab"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mCurrentTab:I

    .line 702
    const-string/jumbo v1, "instanceState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 703
    iget v1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mCurrentTab:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 704
    iget v1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mCurrentTab:I

    invoke-direct {p0, v1}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->updateTabSelection(I)V

    .line 707
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 708
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 691
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 692
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "instanceState"

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 693
    const-string/jumbo v1, "mCurrentTab"

    iget v2, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mCurrentTab:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 694
    return-object v0
.end method

.method public setCurrentTab(I)V
    .locals 1
    .param p1, "currentTab"    # I

    .prologue
    .line 397
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mCurrentTab:I

    iput v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mLastTab:I

    .line 398
    iput p1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mCurrentTab:I

    .line 399
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->updateTabSelection(I)V

    .line 400
    iget-object v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mFragmentChangeManager:Lcom/alibaba/alimei/widget/tab/utils/FragmentChangeManager;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mFragmentChangeManager:Lcom/alibaba/alimei/widget/tab/utils/FragmentChangeManager;

    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/widget/tab/utils/FragmentChangeManager;->setFragments(I)V

    .line 403
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorAnimEnable:Z

    if-eqz v0, :cond_1

    .line 404
    invoke-direct {p0}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->calcOffset()V

    .line 408
    :goto_0
    return-void

    .line 406
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->invalidate()V

    goto :goto_0
.end method

.method public setDividerColor(I)V
    .locals 0
    .param p1, "dividerColor"    # I

    .prologue
    .line 462
    iput p1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mDividerColor:I

    .line 463
    invoke-virtual {p0}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->invalidate()V

    .line 464
    return-void
.end method

.method public setDividerPadding(F)V
    .locals 1
    .param p1, "dividerPadding"    # F

    .prologue
    .line 472
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mDividerPadding:F

    .line 473
    invoke-virtual {p0}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->invalidate()V

    .line 474
    return-void
.end method

.method public setDividerWidth(F)V
    .locals 1
    .param p1, "dividerWidth"    # F

    .prologue
    .line 467
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mDividerWidth:F

    .line 468
    invoke-virtual {p0}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->invalidate()V

    .line 469
    return-void
.end method

.method public setIndicatorAnimDuration(J)V
    .locals 1
    .param p1, "indicatorAnimDuration"    # J

    .prologue
    .line 450
    iput-wide p1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorAnimDuration:J

    .line 451
    return-void
.end method

.method public setIndicatorAnimEnable(Z)V
    .locals 0
    .param p1, "indicatorAnimEnable"    # Z

    .prologue
    .line 454
    iput-boolean p1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorAnimEnable:Z

    .line 455
    return-void
.end method

.method public setIndicatorBounceEnable(Z)V
    .locals 0
    .param p1, "indicatorBounceEnable"    # Z

    .prologue
    .line 458
    iput-boolean p1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorBounceEnable:Z

    .line 459
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0
    .param p1, "indicatorColor"    # I

    .prologue
    .line 426
    iput p1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorColor:I

    .line 427
    invoke-virtual {p0}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->invalidate()V

    .line 428
    return-void
.end method

.method public setIndicatorCornerRadius(F)V
    .locals 1
    .param p1, "indicatorCornerRadius"    # F

    .prologue
    .line 436
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorCornerRadius:F

    .line 437
    invoke-virtual {p0}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->invalidate()V

    .line 438
    return-void
.end method

.method public setIndicatorHeight(F)V
    .locals 1
    .param p1, "indicatorHeight"    # F

    .prologue
    .line 431
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorHeight:F

    .line 432
    invoke-virtual {p0}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->invalidate()V

    .line 433
    return-void
.end method

.method public setIndicatorMargin(FFFF)V
    .locals 1
    .param p1, "indicatorMarginLeft"    # F
    .param p2, "indicatorMarginTop"    # F
    .param p3, "indicatorMarginRight"    # F
    .param p4, "indicatorMarginBottom"    # F

    .prologue
    .line 442
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorMarginLeft:F

    .line 443
    invoke-virtual {p0, p2}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorMarginTop:F

    .line 444
    invoke-virtual {p0, p3}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorMarginRight:F

    .line 445
    invoke-virtual {p0, p4}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mIndicatorMarginBottom:F

    .line 446
    invoke-virtual {p0}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->invalidate()V

    .line 447
    return-void
.end method

.method public setMsgMargin(IFF)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "leftPadding"    # F
    .param p3, "bottomPadding"    # F

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 654
    iget v5, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTabCount:I

    if-lt p1, v5, :cond_0

    .line 655
    iget v5, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTabCount:I

    add-int/lit8 p1, v5, -0x1

    .line 657
    :cond_0
    iget-object v5, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 658
    .local v1, "tabView":Landroid/view/View;
    sget v5, Laxo$f;->rtv_msg_tip:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 659
    .local v3, "tipView":Landroid/widget/TextView;
    if-eqz v3, :cond_1

    .line 660
    sget v5, Laxo$f;->tv_tab_title:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 661
    .local v4, "tv_tab_title":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTextPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTextsize:F

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 662
    iget-object v5, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 663
    iget-object v5, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    move-result v5

    iget-object v6, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    sub-float v2, v5, v6

    .line 664
    .local v2, "textHeight":F
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 666
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0, p2}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->dp2px(F)I

    move-result v5

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 667
    iget v5, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mHeight:I

    if-lez v5, :cond_2

    iget v5, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mHeight:I

    int-to-float v5, v5

    sub-float/2addr v5, v2

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p0, p3}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->dp2px(F)I

    move-result v6

    sub-int/2addr v5, v6

    :goto_0
    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 669
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 671
    .end local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "textHeight":F
    .end local v4    # "tv_tab_title":Landroid/widget/TextView;
    :cond_1
    return-void

    .line 667
    .restart local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v2    # "textHeight":F
    .restart local v4    # "tv_tab_title":Landroid/widget/TextView;
    :cond_2
    invoke-virtual {p0, p3}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->dp2px(F)I

    move-result v5

    goto :goto_0
.end method

.method public setOnTabSelectListener(Lcom/alibaba/alimei/widget/tab/listener/OnTabSelectListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/alimei/widget/tab/listener/OnTabSelectListener;

    .prologue
    .line 686
    iput-object p1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mListener:Lcom/alibaba/alimei/widget/tab/listener/OnTabSelectListener;

    .line 687
    return-void
.end method

.method public setTabData([Ljava/lang/String;)V
    .locals 2
    .param p1, "titles"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 161
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 162
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Titles can not be NULL or EMPTY !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_1
    iput-object p1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTitles:[Ljava/lang/String;

    .line 167
    invoke-virtual {p0}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->notifyDataSetChanged()V

    .line 168
    return-void
.end method

.method public setTabData([Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;ILjava/util/ArrayList;)V
    .locals 2
    .param p1, "titles"    # [Ljava/lang/String;
    .param p2, "fa"    # Landroid/support/v4/app/FragmentActivity;
    .param p3, "containerViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/FragmentActivity;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 172
    .local p4, "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    new-instance v0, Lcom/alibaba/alimei/widget/tab/utils/FragmentChangeManager;

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Lcn;

    move-result-object v1

    invoke-direct {v0, v1, p3, p4}, Lcom/alibaba/alimei/widget/tab/utils/FragmentChangeManager;-><init>(Lcn;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mFragmentChangeManager:Lcom/alibaba/alimei/widget/tab/utils/FragmentChangeManager;

    .line 173
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->setTabData([Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public setTabPadding(F)V
    .locals 1
    .param p1, "tabPadding"    # F

    .prologue
    .line 411
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTabPadding:F

    .line 412
    invoke-direct {p0}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->updateTabStyles()V

    .line 413
    return-void
.end method

.method public setTabSpaceEqual(Z)V
    .locals 0
    .param p1, "tabSpaceEqual"    # Z

    .prologue
    .line 416
    iput-boolean p1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTabSpaceEqual:Z

    .line 417
    invoke-direct {p0}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->updateTabStyles()V

    .line 418
    return-void
.end method

.method public setTabWidth(F)V
    .locals 1
    .param p1, "tabWidth"    # F

    .prologue
    .line 421
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTabWidth:F

    .line 422
    invoke-direct {p0}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->updateTabStyles()V

    .line 423
    return-void
.end method

.method public setTextAllCaps(Z)V
    .locals 0
    .param p1, "textAllCaps"    # Z

    .prologue
    .line 497
    iput-boolean p1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTextAllCaps:Z

    .line 498
    invoke-direct {p0}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->updateTabStyles()V

    .line 499
    return-void
.end method

.method public setTextBold(Z)V
    .locals 0
    .param p1, "textBold"    # Z

    .prologue
    .line 492
    iput-boolean p1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTextBold:Z

    .line 493
    invoke-direct {p0}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->updateTabStyles()V

    .line 494
    return-void
.end method

.method public setTextSelectColor(I)V
    .locals 0
    .param p1, "textSelectColor"    # I

    .prologue
    .line 482
    iput p1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTextSelectColor:I

    .line 483
    invoke-direct {p0}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->updateTabStyles()V

    .line 484
    return-void
.end method

.method public setTextUnselectColor(I)V
    .locals 0
    .param p1, "textUnselectColor"    # I

    .prologue
    .line 487
    iput p1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTextUnselectColor:I

    .line 488
    invoke-direct {p0}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->updateTabStyles()V

    .line 489
    return-void
.end method

.method public setTextsize(F)V
    .locals 1
    .param p1, "textsize"    # F

    .prologue
    .line 477
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->sp2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTextsize:F

    .line 478
    invoke-direct {p0}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->updateTabStyles()V

    .line 479
    return-void
.end method

.method public showDot(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 630
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTabCount:I

    if-lt p1, v0, :cond_0

    .line 631
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTabCount:I

    add-int/lit8 p1, v0, -0x1

    .line 633
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->showMsg(II)V

    .line 634
    return-void
.end method

.method public showMsg(II)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "num"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 605
    iget v2, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTabCount:I

    if-lt p1, v2, :cond_0

    .line 606
    iget v2, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTabCount:I

    add-int/lit8 p1, v2, -0x1

    .line 609
    :cond_0
    iget-object v2, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 610
    .local v0, "tabView":Landroid/view/View;
    sget v2, Laxo$f;->rtv_msg_tip:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 611
    .local v1, "tipView":Landroid/widget/TextView;
    if-eqz v1, :cond_1

    .line 612
    invoke-static {v1, p2}, Lcom/alibaba/alimei/widget/tab/utils/UnreadMsgUtils;->show(Landroid/widget/TextView;I)V

    .line 614
    iget-object v2, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mInitSetMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mInitSetMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 622
    :cond_1
    :goto_0
    return-void

    .line 618
    :cond_2
    invoke-virtual {p0, p1, v3, v3}, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->setMsgMargin(IFF)V

    .line 620
    iget-object v2, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mInitSetMap:Landroid/util/SparseArray;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected sp2px(F)I
    .locals 3
    .param p1, "sp"    # F

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 736
    iget-object v1, p0, Lcom/alibaba/alimei/widget/tab/SegmentTabLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 737
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method
