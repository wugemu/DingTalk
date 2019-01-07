.class public Lcom/alibaba/alimei/widget/tab/CommonTabLayout;
.super Landroid/widget/FrameLayout;
.source "CommonTabLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/widget/tab/CommonTabLayout$PointEvaluator;,
        Lcom/alibaba/alimei/widget/tab/CommonTabLayout$IndicatorPoint;
    }
.end annotation


# static fields
.field private static final STYLE_BLOCK:I = 0x2

.field private static final STYLE_NORMAL:I = 0x0

.field private static final STYLE_TRIANGLE:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentP:Lcom/alibaba/alimei/widget/tab/CommonTabLayout$IndicatorPoint;

.field private mCurrentTab:I

.field private mDividerColor:I

.field private mDividerPadding:F

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mDividerWidth:F

.field private mFragmentChangeManager:Lcom/alibaba/alimei/widget/tab/utils/FragmentChangeManager;

.field private mHeight:I

.field private mIconGravity:I

.field private mIconHeight:F

.field private mIconMargin:F

.field private mIconVisible:Z

.field private mIconWidth:F

.field private mIndicatorAnimDuration:J

.field private mIndicatorAnimEnable:Z

.field private mIndicatorBounceEnable:Z

.field private mIndicatorColor:I

.field private mIndicatorCornerRadius:F

.field private mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mIndicatorGravity:I

.field private mIndicatorHeight:F

.field private mIndicatorMarginBottom:F

.field private mIndicatorMarginLeft:F

.field private mIndicatorMarginRight:F

.field private mIndicatorMarginTop:F

.field private mIndicatorRect:Landroid/graphics/Rect;

.field private mIndicatorStyle:I

.field private mIndicatorWidth:F

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

.field private mLastP:Lcom/alibaba/alimei/widget/tab/CommonTabLayout$IndicatorPoint;

.field private mLastTab:I

.field private mListener:Lcom/alibaba/alimei/widget/tab/listener/OnTabSelectListener;

.field private mRectPaint:Landroid/graphics/Paint;

.field private mTabCount:I

.field private mTabEntitys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/alimei/widget/tab/listener/CustomTabEntity;",
            ">;"
        }
    .end annotation
.end field

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

.field private mTrianglePaint:Landroid/graphics/Paint;

.field private mTrianglePath:Landroid/graphics/Path;

.field private mUnderlineColor:I

.field private mUnderlineGravity:I

.field private mUnderlineHeight:F

.field private mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 114
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

    .line 117
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabEntitys:Ljava/util/ArrayList;

    .line 46
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    .line 47
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v3, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 49
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mRectPaint:Landroid/graphics/Paint;

    .line 50
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mDividerPaint:Landroid/graphics/Paint;

    .line 51
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTrianglePaint:Landroid/graphics/Paint;

    .line 52
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTrianglePath:Landroid/graphics/Path;

    .line 56
    iput v6, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorStyle:I

    .line 104
    new-instance v3, Landroid/view/animation/OvershootInterpolator;

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-direct {v3, v4}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object v3, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mInterpolator:Landroid/view/animation/OvershootInterpolator;

    .line 380
    iput-boolean v7, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIsFirstDraw:Z

    .line 770
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTextPaint:Landroid/graphics/Paint;

    .line 771
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mInitSetMap:Landroid/util/SparseArray;

    .line 910
    new-instance v3, Lcom/alibaba/alimei/widget/tab/CommonTabLayout$IndicatorPoint;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout$IndicatorPoint;-><init>(Lcom/alibaba/alimei/widget/tab/CommonTabLayout;)V

    iput-object v3, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mCurrentP:Lcom/alibaba/alimei/widget/tab/CommonTabLayout$IndicatorPoint;

    .line 911
    new-instance v3, Lcom/alibaba/alimei/widget/tab/CommonTabLayout$IndicatorPoint;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout$IndicatorPoint;-><init>(Lcom/alibaba/alimei/widget/tab/CommonTabLayout;)V

    iput-object v3, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mLastP:Lcom/alibaba/alimei/widget/tab/CommonTabLayout$IndicatorPoint;

    .line 118
    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->setWillNotDraw(Z)V

    .line 119
    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->setClipChildren(Z)V

    .line 120
    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->setClipToPadding(Z)V

    .line 122
    iput-object p1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mContext:Landroid/content/Context;

    .line 123
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    .line 124
    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->addView(Landroid/view/View;)V

    .line 126
    invoke-direct {p0, p1, p2}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->obtainAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 129
    const-string/jumbo v3, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v4, "layout_height"

    invoke-interface {p2, v3, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "height":Ljava/lang/String;
    const-string/jumbo v3, "-1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 133
    const-string/jumbo v3, "-2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 135
    new-array v2, v7, [I

    const v3, 0x10100f5

    aput v3, v2, v6

    .line 136
    .local v2, "systemAttrs":[I
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 137
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, -0x2

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mHeight:I

    .line 138
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "systemAttrs":[I
    :cond_0
    new-instance v3, Lcom/alibaba/alimei/widget/tab/CommonTabLayout$PointEvaluator;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout$PointEvaluator;-><init>(Lcom/alibaba/alimei/widget/tab/CommonTabLayout;)V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mLastP:Lcom/alibaba/alimei/widget/tab/CommonTabLayout$IndicatorPoint;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mCurrentP:Lcom/alibaba/alimei/widget/tab/CommonTabLayout$IndicatorPoint;

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 142
    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/alimei/widget/tab/CommonTabLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/widget/tab/CommonTabLayout;

    .prologue
    .line 38
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mCurrentTab:I

    return v0
.end method

.method static synthetic access$100(Lcom/alibaba/alimei/widget/tab/CommonTabLayout;)Lcom/alibaba/alimei/widget/tab/listener/OnTabSelectListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/widget/tab/CommonTabLayout;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mListener:Lcom/alibaba/alimei/widget/tab/listener/OnTabSelectListener;

    return-object v0
.end method

.method private addTab(ILandroid/view/View;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "tabView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, -0x1

    .line 232
    sget v3, Laxo$f;->tv_tab_title:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 233
    .local v2, "tv_tab_title":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabEntitys:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/widget/tab/listener/CustomTabEntity;

    invoke-interface {v3}, Lcom/alibaba/alimei/widget/tab/listener/CustomTabEntity;->getTabTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    sget v3, Laxo$f;->iv_tab_icon:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 235
    .local v0, "iv_tab_icon":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabEntitys:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/widget/tab/listener/CustomTabEntity;

    invoke-interface {v3}, Lcom/alibaba/alimei/widget/tab/listener/CustomTabEntity;->getTabUnselectedIcon()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 237
    new-instance v3, Lcom/alibaba/alimei/widget/tab/CommonTabLayout$1;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout$1;-><init>(Lcom/alibaba/alimei/widget/tab/CommonTabLayout;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-boolean v3, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabSpaceEqual:Z

    if-eqz v3, :cond_1

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 258
    .local v1, "lp_tab":Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    iget v3, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabWidth:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 259
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1    # "lp_tab":Landroid/widget/LinearLayout$LayoutParams;
    iget v3, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabWidth:F

    float-to-int v3, v3

    invoke-direct {v1, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 261
    .restart local v1    # "lp_tab":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p2, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 262
    return-void

    .line 255
    .end local v1    # "lp_tab":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method private calcIndicatorRect()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 345
    iget-object v4, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mCurrentTab:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 346
    .local v0, "currentTabView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v2, v4

    .line 347
    .local v2, "left":F
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v3, v4

    .line 349
    .local v3, "right":F
    iget-object v4, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    float-to-int v5, v2

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 350
    iget-object v4, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    float-to-int v5, v3

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 352
    iget v4, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorWidth:F

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_0

    .line 355
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorWidth:F

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float v1, v4, v5

    .line 357
    .local v1, "indicatorLeft":F
    iget-object v4, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    float-to-int v5, v1

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 358
    iget-object v4, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v6, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorWidth:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 360
    .end local v1    # "indicatorLeft":F
    :cond_0
    return-void
.end method

.method private calcOffset()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 318
    iget-object v2, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mCurrentTab:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 319
    .local v0, "currentTabView":Landroid/view/View;
    iget-object v2, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mCurrentP:Lcom/alibaba/alimei/widget/tab/CommonTabLayout$IndicatorPoint;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Lcom/alibaba/alimei/widget/tab/CommonTabLayout$IndicatorPoint;->left:F

    .line 320
    iget-object v2, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mCurrentP:Lcom/alibaba/alimei/widget/tab/CommonTabLayout$IndicatorPoint;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Lcom/alibaba/alimei/widget/tab/CommonTabLayout$IndicatorPoint;->right:F

    .line 322
    iget-object v2, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mLastTab:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 323
    .local v1, "lastTabView":Landroid/view/View;
    iget-object v2, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mLastP:Lcom/alibaba/alimei/widget/tab/CommonTabLayout$IndicatorPoint;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Lcom/alibaba/alimei/widget/tab/CommonTabLayout$IndicatorPoint;->left:F

    .line 324
    iget-object v2, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mLastP:Lcom/alibaba/alimei/widget/tab/CommonTabLayout$IndicatorPoint;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Lcom/alibaba/alimei/widget/tab/CommonTabLayout$IndicatorPoint;->right:F

    .line 328
    iget-object v2, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mLastP:Lcom/alibaba/alimei/widget/tab/CommonTabLayout$IndicatorPoint;

    iget v2, v2, Lcom/alibaba/alimei/widget/tab/CommonTabLayout$IndicatorPoint;->left:F

    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mCurrentP:Lcom/alibaba/alimei/widget/tab/CommonTabLayout$IndicatorPoint;

    iget v3, v3, Lcom/alibaba/alimei/widget/tab/CommonTabLayout$IndicatorPoint;->left:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mLastP:Lcom/alibaba/alimei/widget/tab/CommonTabLayout$IndicatorPoint;

    iget v2, v2, Lcom/alibaba/alimei/widget/tab/CommonTabLayout$IndicatorPoint;->right:F

    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mCurrentP:Lcom/alibaba/alimei/widget/tab/CommonTabLayout$IndicatorPoint;

    iget v3, v3, Lcom/alibaba/alimei/widget/tab/CommonTabLayout$IndicatorPoint;->right:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->invalidate()V

    .line 342
    :goto_0
    return-void

    .line 331
    :cond_0
    iget-object v2, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mLastP:Lcom/alibaba/alimei/widget/tab/CommonTabLayout$IndicatorPoint;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mCurrentP:Lcom/alibaba/alimei/widget/tab/CommonTabLayout$IndicatorPoint;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 332
    iget-boolean v2, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorBounceEnable:Z

    if-eqz v2, :cond_1

    .line 333
    iget-object v2, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mInterpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 336
    :cond_1
    iget-wide v2, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorAnimDuration:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 337
    iget-boolean v2, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorBounceEnable:Z

    if-eqz v2, :cond_3

    const-wide/16 v2, 0x1f4

    :goto_1
    iput-wide v2, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorAnimDuration:J

    .line 339
    :cond_2
    iget-object v2, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-wide v4, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorAnimDuration:J

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 340
    iget-object v2, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 337
    :cond_3
    const-wide/16 v2, 0xfa

    goto :goto_1
.end method

.method private obtainAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v2, 0x2

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 146
    sget-object v1, Laxo$k;->CommonTabLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 148
    .local v0, "ta":Landroid/content/res/TypedArray;
    sget v1, Laxo$k;->CommonTabLayout_tl_indicator_style:I

    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorStyle:I

    .line 149
    sget v5, Laxo$k;->CommonTabLayout_tl_indicator_color:I

    iget v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorStyle:I

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, "#4B6A87"

    :goto_0
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorColor:I

    .line 150
    sget v5, Laxo$k;->CommonTabLayout_tl_indicator_height:I

    iget v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorStyle:I

    if-ne v1, v8, :cond_2

    const/high16 v1, 0x40800000    # 4.0f

    .line 151
    :goto_1
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    .line 150
    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorHeight:F

    .line 152
    sget v5, Laxo$k;->CommonTabLayout_tl_indicator_width:I

    iget v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorStyle:I

    if-ne v1, v8, :cond_4

    const/high16 v1, 0x41200000    # 10.0f

    :goto_2
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorWidth:F

    .line 153
    sget v5, Laxo$k;->CommonTabLayout_tl_indicator_corner_radius:I

    iget v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorStyle:I

    if-ne v1, v2, :cond_5

    move v1, v3

    :goto_3
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorCornerRadius:F

    .line 154
    sget v1, Laxo$k;->CommonTabLayout_tl_indicator_margin_left:I

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->dp2px(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorMarginLeft:F

    .line 155
    sget v5, Laxo$k;->CommonTabLayout_tl_indicator_margin_top:I

    iget v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorStyle:I

    if-ne v1, v2, :cond_6

    const/high16 v1, 0x40e00000    # 7.0f

    :goto_4
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorMarginTop:F

    .line 156
    sget v1, Laxo$k;->CommonTabLayout_tl_indicator_margin_right:I

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->dp2px(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorMarginRight:F

    .line 157
    sget v5, Laxo$k;->CommonTabLayout_tl_indicator_margin_bottom:I

    iget v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorStyle:I

    if-ne v1, v2, :cond_7

    const/high16 v1, 0x40e00000    # 7.0f

    :goto_5
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorMarginBottom:F

    .line 158
    sget v1, Laxo$k;->CommonTabLayout_tl_indicator_anim_enable:I

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorAnimEnable:Z

    .line 159
    sget v1, Laxo$k;->CommonTabLayout_tl_indicator_bounce_enable:I

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorBounceEnable:Z

    .line 160
    sget v1, Laxo$k;->CommonTabLayout_tl_indicator_anim_duration:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    int-to-long v6, v1

    iput-wide v6, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorAnimDuration:J

    .line 161
    sget v1, Laxo$k;->CommonTabLayout_tl_indicator_gravity:I

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorGravity:I

    .line 163
    sget v1, Laxo$k;->CommonTabLayout_tl_underline_color:I

    const-string/jumbo v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mUnderlineColor:I

    .line 164
    sget v1, Laxo$k;->CommonTabLayout_tl_underline_height:I

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mUnderlineHeight:F

    .line 165
    sget v1, Laxo$k;->CommonTabLayout_tl_underline_gravity:I

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mUnderlineGravity:I

    .line 167
    sget v1, Laxo$k;->CommonTabLayout_tl_divider_color:I

    const-string/jumbo v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mDividerColor:I

    .line 168
    sget v1, Laxo$k;->CommonTabLayout_tl_divider_width:I

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mDividerWidth:F

    .line 169
    sget v1, Laxo$k;->CommonTabLayout_tl_divider_padding:I

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mDividerPadding:F

    .line 171
    sget v1, Laxo$k;->CommonTabLayout_tl_textsize:I

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->sp2px(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTextsize:F

    .line 172
    sget v1, Laxo$k;->CommonTabLayout_tl_textSelectColor:I

    const-string/jumbo v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTextSelectColor:I

    .line 173
    sget v1, Laxo$k;->CommonTabLayout_tl_textUnselectColor:I

    const-string/jumbo v2, "#AAffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTextUnselectColor:I

    .line 174
    sget v1, Laxo$k;->CommonTabLayout_tl_textBold:I

    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTextBold:Z

    .line 175
    sget v1, Laxo$k;->CommonTabLayout_tl_textAllCaps:I

    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTextAllCaps:Z

    .line 177
    sget v1, Laxo$k;->CommonTabLayout_tl_iconVisible:I

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIconVisible:Z

    .line 178
    sget v1, Laxo$k;->CommonTabLayout_tl_iconGravity:I

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIconGravity:I

    .line 179
    sget v1, Laxo$k;->CommonTabLayout_tl_iconWidth:I

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIconWidth:F

    .line 180
    sget v1, Laxo$k;->CommonTabLayout_tl_iconHeight:I

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIconHeight:F

    .line 181
    sget v1, Laxo$k;->CommonTabLayout_tl_iconMargin:I

    const/high16 v2, 0x40200000    # 2.5f

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIconMargin:F

    .line 183
    sget v1, Laxo$k;->CommonTabLayout_tl_tab_space_equal:I

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabSpaceEqual:Z

    .line 184
    sget v1, Laxo$k;->CommonTabLayout_tl_tab_width:I

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabWidth:F

    .line 185
    sget v2, Laxo$k;->CommonTabLayout_tl_tab_padding:I

    iget-boolean v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabSpaceEqual:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabWidth:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_8

    :cond_0
    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    :goto_6
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabPadding:F

    .line 187
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 188
    return-void

    .line 149
    :cond_1
    const-string/jumbo v1, "#ffffff"

    goto/16 :goto_0

    .line 150
    :cond_2
    iget v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorStyle:I

    if-ne v1, v2, :cond_3

    const/4 v1, -0x1

    :goto_7
    int-to-float v1, v1

    goto/16 :goto_1

    :cond_3
    move v1, v2

    goto :goto_7

    :cond_4
    move v1, v3

    .line 152
    goto/16 :goto_2

    :cond_5
    move v1, v4

    .line 153
    goto/16 :goto_3

    :cond_6
    move v1, v4

    .line 155
    goto/16 :goto_4

    :cond_7
    move v1, v4

    .line 157
    goto/16 :goto_5

    .line 185
    :cond_8
    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    goto :goto_6
.end method

.method private updateTabSelection(I)V
    .locals 7
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 306
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v6, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabCount:I

    if-ge v0, v6, :cond_3

    .line 307
    iget-object v6, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 308
    .local v4, "tabView":Landroid/view/View;
    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    .line 309
    .local v1, "isSelect":Z
    :goto_1
    sget v6, Laxo$f;->tv_tab_title:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 310
    .local v5, "tab_title":Landroid/widget/TextView;
    if-eqz v1, :cond_1

    iget v6, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTextSelectColor:I

    :goto_2
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 311
    sget v6, Laxo$f;->iv_tab_icon:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 312
    .local v2, "iv_tab_icon":Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabEntitys:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/widget/tab/listener/CustomTabEntity;

    .line 313
    .local v3, "tabEntity":Lcom/alibaba/alimei/widget/tab/listener/CustomTabEntity;
    if-eqz v1, :cond_2

    invoke-interface {v3}, Lcom/alibaba/alimei/widget/tab/listener/CustomTabEntity;->getTabSelectedIcon()I

    move-result v6

    :goto_3
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    .end local v1    # "isSelect":Z
    .end local v2    # "iv_tab_icon":Landroid/widget/ImageView;
    .end local v3    # "tabEntity":Lcom/alibaba/alimei/widget/tab/listener/CustomTabEntity;
    .end local v5    # "tab_title":Landroid/widget/TextView;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 310
    .restart local v1    # "isSelect":Z
    .restart local v5    # "tab_title":Landroid/widget/TextView;
    :cond_1
    iget v6, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTextUnselectColor:I

    goto :goto_2

    .line 313
    .restart local v2    # "iv_tab_icon":Landroid/widget/ImageView;
    .restart local v3    # "tabEntity":Lcom/alibaba/alimei/widget/tab/listener/CustomTabEntity;
    :cond_2
    invoke-interface {v3}, Lcom/alibaba/alimei/widget/tab/listener/CustomTabEntity;->getTabUnselectedIcon()I

    move-result v6

    goto :goto_3

    .line 315
    .end local v1    # "isSelect":Z
    .end local v2    # "iv_tab_icon":Landroid/widget/ImageView;
    .end local v3    # "tabEntity":Lcom/alibaba/alimei/widget/tab/listener/CustomTabEntity;
    .end local v4    # "tabView":Landroid/view/View;
    .end local v5    # "tab_title":Landroid/widget/TextView;
    :cond_3
    return-void
.end method

.method private updateTabStyles()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v7, -0x2

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 265
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v6, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabCount:I

    if-ge v0, v6, :cond_a

    .line 266
    iget-object v6, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 267
    .local v4, "tabView":Landroid/view/View;
    iget v6, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabPadding:F

    float-to-int v6, v6

    iget v8, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabPadding:F

    float-to-int v8, v8

    invoke-virtual {v4, v6, v9, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 268
    sget v6, Laxo$f;->tv_tab_title:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 269
    .local v5, "tv_tab_title":Landroid/widget/TextView;
    iget v6, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mCurrentTab:I

    if-ne v0, v6, :cond_2

    iget v6, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTextSelectColor:I

    :goto_1
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 270
    iget v6, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTextsize:F

    invoke-virtual {v5, v9, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 272
    iget-boolean v6, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTextAllCaps:Z

    if-eqz v6, :cond_0

    .line 273
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    :cond_0
    iget-boolean v6, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTextBold:Z

    if-eqz v6, :cond_1

    .line 277
    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    iget-boolean v8, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTextBold:Z

    invoke-virtual {v6, v8}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 280
    :cond_1
    sget v6, Laxo$f;->iv_tab_icon:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 281
    .local v1, "iv_tab_icon":Landroid/widget/ImageView;
    iget-boolean v6, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIconVisible:Z

    if-eqz v6, :cond_9

    .line 282
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 283
    iget-object v6, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabEntitys:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/widget/tab/listener/CustomTabEntity;

    .line 284
    .local v3, "tabEntity":Lcom/alibaba/alimei/widget/tab/listener/CustomTabEntity;
    iget v6, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mCurrentTab:I

    if-ne v0, v6, :cond_3

    invoke-interface {v3}, Lcom/alibaba/alimei/widget/tab/listener/CustomTabEntity;->getTabSelectedIcon()I

    move-result v6

    :goto_2
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 285
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIconWidth:F

    cmpg-float v6, v6, v10

    if-gtz v6, :cond_4

    move v6, v7

    :goto_3
    iget v8, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIconHeight:F

    cmpg-float v8, v8, v10

    if-gtz v8, :cond_5

    move v8, v7

    :goto_4
    invoke-direct {v2, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 288
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v6, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIconGravity:I

    const/4 v8, 0x3

    if-ne v6, v8, :cond_6

    .line 289
    iget v6, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIconMargin:F

    float-to-int v6, v6

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 298
    :goto_5
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "tabEntity":Lcom/alibaba/alimei/widget/tab/listener/CustomTabEntity;
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 269
    .end local v1    # "iv_tab_icon":Landroid/widget/ImageView;
    :cond_2
    iget v6, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTextUnselectColor:I

    goto :goto_1

    .line 284
    .restart local v1    # "iv_tab_icon":Landroid/widget/ImageView;
    .restart local v3    # "tabEntity":Lcom/alibaba/alimei/widget/tab/listener/CustomTabEntity;
    :cond_3
    invoke-interface {v3}, Lcom/alibaba/alimei/widget/tab/listener/CustomTabEntity;->getTabUnselectedIcon()I

    move-result v6

    goto :goto_2

    .line 285
    :cond_4
    iget v6, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIconWidth:F

    float-to-int v6, v6

    goto :goto_3

    :cond_5
    iget v8, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIconHeight:F

    float-to-int v8, v8

    goto :goto_4

    .line 290
    .restart local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_6
    iget v6, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIconGravity:I

    const/4 v8, 0x5

    if-ne v6, v8, :cond_7

    .line 291
    iget v6, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIconMargin:F

    float-to-int v6, v6

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_5

    .line 292
    :cond_7
    iget v6, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIconGravity:I

    const/16 v8, 0x50

    if-ne v6, v8, :cond_8

    .line 293
    iget v6, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIconMargin:F

    float-to-int v6, v6

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_5

    .line 295
    :cond_8
    iget v6, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIconMargin:F

    float-to-int v6, v6

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_5

    .line 300
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "tabEntity":Lcom/alibaba/alimei/widget/tab/listener/CustomTabEntity;
    :cond_9
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 303
    .end local v1    # "iv_tab_icon":Landroid/widget/ImageView;
    .end local v4    # "tabView":Landroid/view/View;
    .end local v5    # "tv_tab_title":Landroid/widget/TextView;
    :cond_a
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
    .line 927
    iget-object v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 928
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
    .line 644
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mCurrentTab:I

    return v0
.end method

.method public getDividerColor()I
    .locals 1

    .prologue
    .line 716
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mDividerColor:I

    return v0
.end method

.method public getDividerPadding()F
    .locals 1

    .prologue
    .line 724
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mDividerPadding:F

    return v0
.end method

.method public getDividerWidth()F
    .locals 1

    .prologue
    .line 720
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mDividerWidth:F

    return v0
.end method

.method public getIconGravity()I
    .locals 1

    .prologue
    .line 748
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIconGravity:I

    return v0
.end method

.method public getIconHeight()F
    .locals 1

    .prologue
    .line 756
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIconHeight:F

    return v0
.end method

.method public getIconMargin()F
    .locals 1

    .prologue
    .line 760
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIconMargin:F

    return v0
.end method

.method public getIconWidth()F
    .locals 1

    .prologue
    .line 752
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIconWidth:F

    return v0
.end method

.method public getIndicatorAnimDuration()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 696
    iget-wide v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorAnimDuration:J

    return-wide v0
.end method

.method public getIndicatorColor()I
    .locals 1

    .prologue
    .line 664
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorColor:I

    return v0
.end method

.method public getIndicatorCornerRadius()F
    .locals 1

    .prologue
    .line 676
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorCornerRadius:F

    return v0
.end method

.method public getIndicatorHeight()F
    .locals 1

    .prologue
    .line 668
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorHeight:F

    return v0
.end method

.method public getIndicatorMarginBottom()F
    .locals 1

    .prologue
    .line 692
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorMarginBottom:F

    return v0
.end method

.method public getIndicatorMarginLeft()F
    .locals 1

    .prologue
    .line 680
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorMarginLeft:F

    return v0
.end method

.method public getIndicatorMarginRight()F
    .locals 1

    .prologue
    .line 688
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorMarginRight:F

    return v0
.end method

.method public getIndicatorMarginTop()F
    .locals 1

    .prologue
    .line 684
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorMarginTop:F

    return v0
.end method

.method public getIndicatorStyle()I
    .locals 1

    .prologue
    .line 648
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorStyle:I

    return v0
.end method

.method public getIndicatorWidth()F
    .locals 1

    .prologue
    .line 672
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorWidth:F

    return v0
.end method

.method public getMsgView(I)Landroid/widget/TextView;
    .locals 3
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 869
    iget v2, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabCount:I

    if-lt p1, v2, :cond_0

    .line 870
    iget v2, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabCount:I

    add-int/lit8 p1, v2, -0x1

    .line 872
    :cond_0
    iget-object v2, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 873
    .local v0, "tabView":Landroid/view/View;
    sget v2, Laxo$f;->rtv_msg_tip:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 874
    .local v1, "tipView":Landroid/widget/TextView;
    return-object v1
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 640
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabCount:I

    return v0
.end method

.method public getTabPadding()F
    .locals 1

    .prologue
    .line 652
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabPadding:F

    return v0
.end method

.method public getTabWidth()F
    .locals 1

    .prologue
    .line 660
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabWidth:F

    return v0
.end method

.method public getTextSelectColor()I
    .locals 1

    .prologue
    .line 732
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTextSelectColor:I

    return v0
.end method

.method public getTextUnselectColor()I
    .locals 1

    .prologue
    .line 736
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTextUnselectColor:I

    return v0
.end method

.method public getTextsize()F
    .locals 1

    .prologue
    .line 728
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTextsize:F

    return v0
.end method

.method public getUnderlineColor()I
    .locals 1

    .prologue
    .line 708
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mUnderlineColor:I

    return v0
.end method

.method public getUnderlineHeight()F
    .locals 1

    .prologue
    .line 712
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mUnderlineHeight:F

    return v0
.end method

.method public hideMsg(I)V
    .locals 3
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 817
    iget v2, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabCount:I

    if-lt p1, v2, :cond_0

    .line 818
    iget v2, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabCount:I

    add-int/lit8 p1, v2, -0x1

    .line 821
    :cond_0
    iget-object v2, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 822
    .local v0, "tabView":Landroid/view/View;
    sget v2, Laxo$f;->rtv_msg_tip:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 823
    .local v1, "tipView":Landroid/widget/TextView;
    if-eqz v1, :cond_1

    .line 824
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 826
    :cond_1
    return-void
.end method

.method public isIconVisible()Z
    .locals 1

    .prologue
    .line 764
    iget-boolean v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIconVisible:Z

    return v0
.end method

.method public isIndicatorAnimEnable()Z
    .locals 1

    .prologue
    .line 700
    iget-boolean v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorAnimEnable:Z

    return v0
.end method

.method public isIndicatorBounceEnable()Z
    .locals 1

    .prologue
    .line 704
    iget-boolean v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorBounceEnable:Z

    return v0
.end method

.method public isTabSpaceEqual()Z
    .locals 1

    .prologue
    .line 656
    iget-boolean v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabSpaceEqual:Z

    return v0
.end method

.method public isTextAllCaps()Z
    .locals 1

    .prologue
    .line 744
    iget-boolean v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTextAllCaps:Z

    return v0
.end method

.method public isTextBold()Z
    .locals 1

    .prologue
    .line 740
    iget-boolean v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTextBold:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 209
    iget-object v2, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 210
    iget-object v2, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabEntitys:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabCount:I

    .line 212
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabCount:I

    if-ge v0, v2, :cond_3

    .line 213
    iget v2, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIconGravity:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 214
    iget-object v2, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mContext:Landroid/content/Context;

    sget v3, Laxo$g;->layout_tab_left:I

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 223
    .local v1, "tabView":Landroid/view/View;
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 224
    invoke-direct {p0, v0, v1}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->addTab(ILandroid/view/View;)V

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    .end local v1    # "tabView":Landroid/view/View;
    :cond_0
    iget v2, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIconGravity:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 216
    iget-object v2, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mContext:Landroid/content/Context;

    sget v3, Laxo$g;->layout_tab_right:I

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "tabView":Landroid/view/View;
    goto :goto_1

    .line 217
    .end local v1    # "tabView":Landroid/view/View;
    :cond_1
    iget v2, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIconGravity:I

    const/16 v3, 0x50

    if-ne v2, v3, :cond_2

    .line 218
    iget-object v2, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mContext:Landroid/content/Context;

    sget v3, Laxo$g;->layout_tab_bottom:I

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "tabView":Landroid/view/View;
    goto :goto_1

    .line 220
    .end local v1    # "tabView":Landroid/view/View;
    :cond_2
    iget-object v2, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mContext:Landroid/content/Context;

    sget v3, Laxo$g;->layout_tab_top:I

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "tabView":Landroid/view/View;
    goto :goto_1

    .line 227
    .end local v1    # "tabView":Landroid/view/View;
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->updateTabStyles()V

    .line 228
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 364
    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mCurrentTab:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 365
    .local v0, "currentTabView":Landroid/view/View;
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/widget/tab/CommonTabLayout$IndicatorPoint;

    .line 366
    .local v2, "p":Lcom/alibaba/alimei/widget/tab/CommonTabLayout$IndicatorPoint;
    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    iget v4, v2, Lcom/alibaba/alimei/widget/tab/CommonTabLayout$IndicatorPoint;->left:F

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 367
    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    iget v4, v2, Lcom/alibaba/alimei/widget/tab/CommonTabLayout$IndicatorPoint;->right:F

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 369
    iget v3, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorWidth:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    .line 372
    iget v3, v2, Lcom/alibaba/alimei/widget/tab/CommonTabLayout$IndicatorPoint;->left:F

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorWidth:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float v1, v3, v4

    .line 374
    .local v1, "indicatorLeft":F
    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    float-to-int v4, v1

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 375
    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorWidth:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 377
    .end local v1    # "indicatorLeft":F
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->invalidate()V

    .line 378
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v12, 0x50

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x0

    .line 384
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 386
    invoke-virtual {p0}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabCount:I

    if-gtz v0, :cond_1

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->getHeight()I

    move-result v6

    .line 391
    .local v6, "height":I
    invoke-virtual {p0}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->getPaddingLeft()I

    move-result v8

    .line 393
    .local v8, "paddingLeft":I
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mDividerWidth:F

    cmpl-float v0, v0, v10

    if-lez v0, :cond_2

    .line 394
    iget-object v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mDividerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mDividerWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 395
    iget-object v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mDividerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mDividerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 396
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabCount:I

    add-int/lit8 v0, v0, -0x1

    if-ge v7, v0, :cond_2

    .line 397
    iget-object v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 398
    .local v9, "tab":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v0

    add-int/2addr v0, v8

    int-to-float v1, v0

    iget v2, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mDividerPadding:F

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v0

    add-int/2addr v0, v8

    int-to-float v3, v0

    int-to-float v0, v6

    iget v4, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mDividerPadding:F

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mDividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 396
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 403
    .end local v7    # "i":I
    .end local v9    # "tab":Landroid/view/View;
    :cond_2
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mUnderlineHeight:F

    cmpl-float v0, v0, v10

    if-lez v0, :cond_3

    .line 404
    iget-object v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mRectPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mUnderlineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 405
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mUnderlineGravity:I

    if-ne v0, v12, :cond_6

    .line 406
    int-to-float v1, v8

    int-to-float v0, v6

    iget v2, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mUnderlineHeight:F

    sub-float v2, v0, v2

    iget-object v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    add-int/2addr v0, v8

    int-to-float v3, v0

    int-to-float v4, v6

    iget-object v5, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mRectPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 413
    :cond_3
    :goto_2
    iget-boolean v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorAnimEnable:Z

    if-eqz v0, :cond_4

    .line 414
    iget-boolean v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIsFirstDraw:Z

    if-eqz v0, :cond_5

    .line 415
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIsFirstDraw:Z

    .line 419
    :cond_4
    invoke-direct {p0}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->calcIndicatorRect()V

    .line 423
    :cond_5
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 424
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorHeight:F

    cmpl-float v0, v0, v10

    if-lez v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTrianglePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 426
    iget-object v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTrianglePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 427
    iget-object v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTrianglePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v8

    int-to-float v1, v1

    int-to-float v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 428
    iget-object v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTrianglePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v8

    iget-object v2, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v2, v6

    iget v3, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorHeight:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 429
    iget-object v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTrianglePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v8

    int-to-float v1, v1

    int-to-float v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 430
    iget-object v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTrianglePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 431
    iget-object v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTrianglePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTrianglePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 408
    :cond_6
    int-to-float v1, v8

    iget-object v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    add-int/2addr v0, v8

    int-to-float v3, v0

    iget v4, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mUnderlineHeight:F

    iget-object v5, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mRectPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 433
    :cond_7
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorStyle:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 434
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorHeight:F

    cmpg-float v0, v0, v10

    if-gez v0, :cond_8

    .line 435
    int-to-float v0, v6

    iget v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorMarginTop:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorMarginBottom:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorHeight:F

    .line 440
    :cond_8
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorHeight:F

    cmpl-float v0, v0, v10

    if-lez v0, :cond_0

    .line 441
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorCornerRadius:F

    cmpg-float v0, v0, v10

    if-ltz v0, :cond_9

    iget v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorCornerRadius:F

    iget v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorHeight:F

    div-float/2addr v1, v11

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a

    .line 442
    :cond_9
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorHeight:F

    div-float/2addr v0, v11

    iput v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorCornerRadius:F

    .line 445
    :cond_a
    iget-object v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 446
    iget-object v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorMarginLeft:F

    float-to-int v1, v1

    add-int/2addr v1, v8

    iget-object v2, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorMarginTop:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v8

    int-to-float v3, v3

    iget v4, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorMarginRight:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorMarginTop:F

    iget v5, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorHeight:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 471
    :goto_3
    iget-object v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorCornerRadius:F

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 472
    iget-object v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 458
    :cond_b
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorHeight:F

    cmpl-float v0, v0, v10

    if-lez v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 460
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorGravity:I

    if-ne v0, v12, :cond_c

    .line 461
    iget-object v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorMarginLeft:F

    float-to-int v1, v1

    add-int/2addr v1, v8

    iget-object v2, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorHeight:F

    float-to-int v2, v2

    sub-int v2, v6, v2

    iget v3, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorMarginBottom:F

    float-to-int v3, v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v8

    iget v4, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorMarginRight:F

    float-to-int v4, v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorMarginBottom:F

    float-to-int v4, v4

    sub-int v4, v6, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    goto :goto_3

    .line 466
    :cond_c
    iget-object v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorMarginLeft:F

    float-to-int v1, v1

    add-int/2addr v1, v8

    iget-object v2, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorMarginTop:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v8

    iget v4, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorMarginRight:F

    float-to-int v4, v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorHeight:F

    float-to-int v4, v4

    iget v5, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorMarginTop:F

    float-to-int v5, v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    goto :goto_3
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 893
    instance-of v1, p1, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 894
    check-cast v0, Landroid/os/Bundle;

    .line 895
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "mCurrentTab"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mCurrentTab:I

    .line 896
    const-string/jumbo v1, "instanceState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 897
    iget v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mCurrentTab:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 898
    iget v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mCurrentTab:I

    invoke-direct {p0, v1}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->updateTabSelection(I)V

    .line 901
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 902
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 885
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 886
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "instanceState"

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 887
    const-string/jumbo v1, "mCurrentTab"

    iget v2, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mCurrentTab:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 888
    return-object v0
.end method

.method public setCurrentTab(I)V
    .locals 1
    .param p1, "currentTab"    # I

    .prologue
    .line 479
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mCurrentTab:I

    iput v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mLastTab:I

    .line 480
    iput p1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mCurrentTab:I

    .line 481
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->updateTabSelection(I)V

    .line 482
    iget-object v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mFragmentChangeManager:Lcom/alibaba/alimei/widget/tab/utils/FragmentChangeManager;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mFragmentChangeManager:Lcom/alibaba/alimei/widget/tab/utils/FragmentChangeManager;

    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/widget/tab/utils/FragmentChangeManager;->setFragments(I)V

    .line 485
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorAnimEnable:Z

    if-eqz v0, :cond_1

    .line 486
    invoke-direct {p0}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->calcOffset()V

    .line 490
    :goto_0
    return-void

    .line 488
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->invalidate()V

    goto :goto_0
.end method

.method public setDividerColor(I)V
    .locals 0
    .param p1, "dividerColor"    # I

    .prologue
    .line 574
    iput p1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mDividerColor:I

    .line 575
    invoke-virtual {p0}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->invalidate()V

    .line 576
    return-void
.end method

.method public setDividerPadding(F)V
    .locals 1
    .param p1, "dividerPadding"    # F

    .prologue
    .line 584
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mDividerPadding:F

    .line 585
    invoke-virtual {p0}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->invalidate()V

    .line 586
    return-void
.end method

.method public setDividerWidth(F)V
    .locals 1
    .param p1, "dividerWidth"    # F

    .prologue
    .line 579
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mDividerWidth:F

    .line 580
    invoke-virtual {p0}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->invalidate()V

    .line 581
    return-void
.end method

.method public setIconGravity(I)V
    .locals 0
    .param p1, "iconGravity"    # I

    .prologue
    .line 614
    iput p1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIconGravity:I

    .line 615
    invoke-virtual {p0}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->notifyDataSetChanged()V

    .line 616
    return-void
.end method

.method public setIconHeight(F)V
    .locals 1
    .param p1, "iconHeight"    # F

    .prologue
    .line 624
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIconHeight:F

    .line 625
    invoke-direct {p0}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->updateTabStyles()V

    .line 626
    return-void
.end method

.method public setIconMargin(F)V
    .locals 1
    .param p1, "iconMargin"    # F

    .prologue
    .line 629
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIconMargin:F

    .line 630
    invoke-direct {p0}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->updateTabStyles()V

    .line 631
    return-void
.end method

.method public setIconVisible(Z)V
    .locals 0
    .param p1, "iconVisible"    # Z

    .prologue
    .line 609
    iput-boolean p1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIconVisible:Z

    .line 610
    invoke-direct {p0}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->updateTabStyles()V

    .line 611
    return-void
.end method

.method public setIconWidth(F)V
    .locals 1
    .param p1, "iconWidth"    # F

    .prologue
    .line 619
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIconWidth:F

    .line 620
    invoke-direct {p0}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->updateTabStyles()V

    .line 621
    return-void
.end method

.method public setIndicatorAnimDuration(J)V
    .locals 1
    .param p1, "indicatorAnimDuration"    # J

    .prologue
    .line 547
    iput-wide p1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorAnimDuration:J

    .line 548
    return-void
.end method

.method public setIndicatorAnimEnable(Z)V
    .locals 0
    .param p1, "indicatorAnimEnable"    # Z

    .prologue
    .line 551
    iput-boolean p1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorAnimEnable:Z

    .line 552
    return-void
.end method

.method public setIndicatorBounceEnable(Z)V
    .locals 0
    .param p1, "indicatorBounceEnable"    # Z

    .prologue
    .line 555
    iput-boolean p1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorBounceEnable:Z

    .line 556
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0
    .param p1, "indicatorColor"    # I

    .prologue
    .line 513
    iput p1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorColor:I

    .line 514
    invoke-virtual {p0}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->invalidate()V

    .line 515
    return-void
.end method

.method public setIndicatorCornerRadius(F)V
    .locals 1
    .param p1, "indicatorCornerRadius"    # F

    .prologue
    .line 528
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorCornerRadius:F

    .line 529
    invoke-virtual {p0}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->invalidate()V

    .line 530
    return-void
.end method

.method public setIndicatorGravity(I)V
    .locals 0
    .param p1, "indicatorGravity"    # I

    .prologue
    .line 533
    iput p1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorGravity:I

    .line 534
    invoke-virtual {p0}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->invalidate()V

    .line 535
    return-void
.end method

.method public setIndicatorHeight(F)V
    .locals 1
    .param p1, "indicatorHeight"    # F

    .prologue
    .line 518
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorHeight:F

    .line 519
    invoke-virtual {p0}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->invalidate()V

    .line 520
    return-void
.end method

.method public setIndicatorMargin(FFFF)V
    .locals 1
    .param p1, "indicatorMarginLeft"    # F
    .param p2, "indicatorMarginTop"    # F
    .param p3, "indicatorMarginRight"    # F
    .param p4, "indicatorMarginBottom"    # F

    .prologue
    .line 539
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorMarginLeft:F

    .line 540
    invoke-virtual {p0, p2}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorMarginTop:F

    .line 541
    invoke-virtual {p0, p3}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorMarginRight:F

    .line 542
    invoke-virtual {p0, p4}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorMarginBottom:F

    .line 543
    invoke-virtual {p0}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->invalidate()V

    .line 544
    return-void
.end method

.method public setIndicatorStyle(I)V
    .locals 0
    .param p1, "indicatorStyle"    # I

    .prologue
    .line 493
    iput p1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorStyle:I

    .line 494
    invoke-virtual {p0}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->invalidate()V

    .line 495
    return-void
.end method

.method public setIndicatorWidth(F)V
    .locals 1
    .param p1, "indicatorWidth"    # F

    .prologue
    .line 523
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIndicatorWidth:F

    .line 524
    invoke-virtual {p0}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->invalidate()V

    .line 525
    return-void
.end method

.method public setMsgMargin(IFF)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "leftPadding"    # F
    .param p3, "bottomPadding"    # F

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 834
    iget v7, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabCount:I

    if-lt p1, v7, :cond_0

    .line 835
    iget v7, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabCount:I

    add-int/lit8 p1, v7, -0x1

    .line 837
    :cond_0
    iget-object v7, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 838
    .local v3, "tabView":Landroid/view/View;
    sget v7, Laxo$f;->rtv_msg_tip:I

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 839
    .local v5, "tipView":Landroid/widget/TextView;
    if-eqz v5, :cond_4

    .line 840
    sget v7, Laxo$f;->tv_tab_title:I

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 841
    .local v6, "tv_tab_title":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTextPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTextsize:F

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 842
    iget-object v7, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 843
    iget-object v7, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->descent()F

    move-result v7

    iget-object v8, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->ascent()F

    move-result v8

    sub-float v4, v7, v8

    .line 844
    .local v4, "textHeight":F
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 846
    .local v1, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIconHeight:F

    .line 847
    .local v0, "iconH":F
    const/4 v2, 0x0

    .line 848
    .local v2, "margin":F
    iget-boolean v7, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIconVisible:Z

    if-eqz v7, :cond_2

    .line 849
    const/4 v7, 0x0

    cmpg-float v7, v0, v7

    if-gtz v7, :cond_1

    .line 850
    iget-object v7, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v7, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabEntitys:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/alimei/widget/tab/listener/CustomTabEntity;

    invoke-interface {v7}, Lcom/alibaba/alimei/widget/tab/listener/CustomTabEntity;->getTabSelectedIcon()I

    move-result v7

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    int-to-float v0, v7

    .line 852
    :cond_1
    iget v2, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIconMargin:F

    .line 855
    :cond_2
    iget v7, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIconGravity:I

    const/16 v8, 0x30

    if-eq v7, v8, :cond_3

    iget v7, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIconGravity:I

    const/16 v8, 0x50

    if-ne v7, v8, :cond_6

    .line 856
    :cond_3
    invoke-virtual {p0, p2}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->dp2px(F)I

    move-result v7

    iput v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 857
    iget v7, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mHeight:I

    if-lez v7, :cond_5

    iget v7, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mHeight:I

    int-to-float v7, v7

    sub-float/2addr v7, v4

    sub-float/2addr v7, v0

    sub-float/2addr v7, v2

    float-to-int v7, v7

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {p0, p3}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->dp2px(F)I

    move-result v8

    sub-int/2addr v7, v8

    :goto_0
    iput v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 863
    :goto_1
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 865
    .end local v0    # "iconH":F
    .end local v1    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "margin":F
    .end local v4    # "textHeight":F
    .end local v6    # "tv_tab_title":Landroid/widget/TextView;
    :cond_4
    return-void

    .line 857
    .restart local v0    # "iconH":F
    .restart local v1    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v2    # "margin":F
    .restart local v4    # "textHeight":F
    .restart local v6    # "tv_tab_title":Landroid/widget/TextView;
    :cond_5
    invoke-virtual {p0, p3}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->dp2px(F)I

    move-result v7

    goto :goto_0

    .line 859
    :cond_6
    invoke-virtual {p0, p2}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->dp2px(F)I

    move-result v7

    iput v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 860
    iget v7, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mHeight:I

    if-lez v7, :cond_7

    iget v7, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mHeight:I

    int-to-float v7, v7

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {p0, p3}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->dp2px(F)I

    move-result v8

    sub-int/2addr v7, v8

    :goto_2
    iput v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    :cond_7
    invoke-virtual {p0, p3}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->dp2px(F)I

    move-result v7

    goto :goto_2
.end method

.method public setOnTabSelectListener(Lcom/alibaba/alimei/widget/tab/listener/OnTabSelectListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/alimei/widget/tab/listener/OnTabSelectListener;

    .prologue
    .line 880
    iput-object p1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mListener:Lcom/alibaba/alimei/widget/tab/listener/OnTabSelectListener;

    .line 881
    return-void
.end method

.method public setTabData(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/alimei/widget/tab/listener/CustomTabEntity;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 191
    .local p1, "tabEntitys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/widget/tab/listener/CustomTabEntity;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 192
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "TabEntitys can not be NULL or EMPTY !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabEntitys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 196
    iget-object v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabEntitys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 198
    invoke-virtual {p0}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->notifyDataSetChanged()V

    .line 199
    return-void
.end method

.method public setTabData(Ljava/util/ArrayList;Landroid/support/v4/app/FragmentActivity;ILjava/util/ArrayList;)V
    .locals 2
    .param p2, "fa"    # Landroid/support/v4/app/FragmentActivity;
    .param p3, "containerViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/alimei/widget/tab/listener/CustomTabEntity;",
            ">;",
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
    .line 203
    .local p1, "tabEntitys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/widget/tab/listener/CustomTabEntity;>;"
    .local p4, "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    new-instance v0, Lcom/alibaba/alimei/widget/tab/utils/FragmentChangeManager;

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Lcn;

    move-result-object v1

    invoke-direct {v0, v1, p3, p4}, Lcom/alibaba/alimei/widget/tab/utils/FragmentChangeManager;-><init>(Lcn;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mFragmentChangeManager:Lcom/alibaba/alimei/widget/tab/utils/FragmentChangeManager;

    .line 204
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->setTabData(Ljava/util/ArrayList;)V

    .line 205
    return-void
.end method

.method public setTabPadding(F)V
    .locals 1
    .param p1, "tabPadding"    # F

    .prologue
    .line 498
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabPadding:F

    .line 499
    invoke-direct {p0}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->updateTabStyles()V

    .line 500
    return-void
.end method

.method public setTabSpaceEqual(Z)V
    .locals 0
    .param p1, "tabSpaceEqual"    # Z

    .prologue
    .line 503
    iput-boolean p1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabSpaceEqual:Z

    .line 504
    invoke-direct {p0}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->updateTabStyles()V

    .line 505
    return-void
.end method

.method public setTabWidth(F)V
    .locals 1
    .param p1, "tabWidth"    # F

    .prologue
    .line 508
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabWidth:F

    .line 509
    invoke-direct {p0}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->updateTabStyles()V

    .line 510
    return-void
.end method

.method public setTextAllCaps(Z)V
    .locals 0
    .param p1, "textAllCaps"    # Z

    .prologue
    .line 634
    iput-boolean p1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTextAllCaps:Z

    .line 635
    invoke-direct {p0}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->updateTabStyles()V

    .line 636
    return-void
.end method

.method public setTextBold(Z)V
    .locals 0
    .param p1, "textBold"    # Z

    .prologue
    .line 604
    iput-boolean p1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTextBold:Z

    .line 605
    invoke-direct {p0}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->updateTabStyles()V

    .line 606
    return-void
.end method

.method public setTextSelectColor(I)V
    .locals 0
    .param p1, "textSelectColor"    # I

    .prologue
    .line 594
    iput p1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTextSelectColor:I

    .line 595
    invoke-direct {p0}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->updateTabStyles()V

    .line 596
    return-void
.end method

.method public setTextUnselectColor(I)V
    .locals 0
    .param p1, "textUnselectColor"    # I

    .prologue
    .line 599
    iput p1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTextUnselectColor:I

    .line 600
    invoke-direct {p0}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->updateTabStyles()V

    .line 601
    return-void
.end method

.method public setTextsize(F)V
    .locals 1
    .param p1, "textsize"    # F

    .prologue
    .line 589
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->sp2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTextsize:F

    .line 590
    invoke-direct {p0}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->updateTabStyles()V

    .line 591
    return-void
.end method

.method public setUnderlineColor(I)V
    .locals 0
    .param p1, "underlineColor"    # I

    .prologue
    .line 559
    iput p1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mUnderlineColor:I

    .line 560
    invoke-virtual {p0}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->invalidate()V

    .line 561
    return-void
.end method

.method public setUnderlineGravity(I)V
    .locals 0
    .param p1, "underlineGravity"    # I

    .prologue
    .line 569
    iput p1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mUnderlineGravity:I

    .line 570
    invoke-virtual {p0}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->invalidate()V

    .line 571
    return-void
.end method

.method public setUnderlineHeight(F)V
    .locals 1
    .param p1, "underlineHeight"    # F

    .prologue
    .line 564
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mUnderlineHeight:F

    .line 565
    invoke-virtual {p0}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->invalidate()V

    .line 566
    return-void
.end method

.method public showDot(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 810
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabCount:I

    if-lt p1, v0, :cond_0

    .line 811
    iget v0, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabCount:I

    add-int/lit8 p1, v0, -0x1

    .line 813
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->showMsg(II)V

    .line 814
    return-void
.end method

.method public showMsg(II)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "num"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x0

    .line 780
    iget v4, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabCount:I

    if-lt p1, v4, :cond_0

    .line 781
    iget v4, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabCount:I

    add-int/lit8 p1, v4, -0x1

    .line 784
    :cond_0
    iget-object v4, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mTabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 785
    .local v1, "tabView":Landroid/view/View;
    sget v4, Laxo$f;->rtv_msg_tip:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 786
    .local v3, "tipView":Landroid/widget/TextView;
    if-eqz v3, :cond_1

    .line 787
    invoke-static {v3, p2}, Lcom/alibaba/alimei/widget/tab/utils/UnreadMsgUtils;->show(Landroid/widget/TextView;I)V

    .line 789
    iget-object v4, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mInitSetMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mInitSetMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 802
    .end local p0    # "this":Lcom/alibaba/alimei/widget/tab/CommonTabLayout;
    .end local p1    # "position":I
    :cond_1
    :goto_0
    return-void

    .line 793
    .restart local p0    # "this":Lcom/alibaba/alimei/widget/tab/CommonTabLayout;
    .restart local p1    # "position":I
    :cond_2
    iget-boolean v4, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIconVisible:Z

    if-nez v4, :cond_3

    move v4, v5

    move v6, v5

    move v0, p1

    .end local p1    # "position":I
    .local v0, "position":I
    move-object v2, p0

    .line 796
    .end local p0    # "this":Lcom/alibaba/alimei/widget/tab/CommonTabLayout;
    .local v2, "this":Lcom/alibaba/alimei/widget/tab/CommonTabLayout;
    :goto_1
    invoke-virtual {v2, v0, v6, v4}, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->setMsgMargin(IFF)V

    .line 800
    iget-object v4, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mInitSetMap:Landroid/util/SparseArray;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 796
    .end local v0    # "position":I
    .end local v2    # "this":Lcom/alibaba/alimei/widget/tab/CommonTabLayout;
    .restart local p0    # "this":Lcom/alibaba/alimei/widget/tab/CommonTabLayout;
    .restart local p1    # "position":I
    :cond_3
    iget v4, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIconGravity:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    iget v4, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mIconGravity:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_5

    :cond_4
    const/high16 v4, 0x40800000    # 4.0f

    move v0, p1

    .end local p1    # "position":I
    .restart local v0    # "position":I
    move-object v2, p0

    .end local p0    # "this":Lcom/alibaba/alimei/widget/tab/CommonTabLayout;
    .restart local v2    # "this":Lcom/alibaba/alimei/widget/tab/CommonTabLayout;
    goto :goto_1

    .end local v0    # "position":I
    .end local v2    # "this":Lcom/alibaba/alimei/widget/tab/CommonTabLayout;
    .restart local p0    # "this":Lcom/alibaba/alimei/widget/tab/CommonTabLayout;
    .restart local p1    # "position":I
    :cond_5
    move v4, v6

    move v0, p1

    .end local p1    # "position":I
    .restart local v0    # "position":I
    move-object v2, p0

    .end local p0    # "this":Lcom/alibaba/alimei/widget/tab/CommonTabLayout;
    .restart local v2    # "this":Lcom/alibaba/alimei/widget/tab/CommonTabLayout;
    goto :goto_1
.end method

.method protected sp2px(F)I
    .locals 3
    .param p1, "sp"    # F

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 932
    iget-object v1, p0, Lcom/alibaba/alimei/widget/tab/CommonTabLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 933
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method
