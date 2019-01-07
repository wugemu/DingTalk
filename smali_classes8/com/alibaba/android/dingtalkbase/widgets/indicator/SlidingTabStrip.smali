.class public Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;
.super Landroid/widget/LinearLayout;
.source "SlidingTabStrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$b;,
        Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$SavedState;,
        Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/content/res/ColorStateList;


# instance fields
.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/LinearLayout$LayoutParams;

.field private d:Landroid/widget/LinearLayout$LayoutParams;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/content/res/ColorStateList;

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcig$c;->common_black_selector:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->a:Landroid/content/res/ColorStateList;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    const/high16 v4, -0x10000

    iput v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->f:I

    .line 64
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v5, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    iput v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->g:I

    .line 66
    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v5, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    iput v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->h:I

    .line 69
    const/high16 v4, 0x41c00000    # 24.0f

    invoke-static {v5, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    iput v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->k:I

    .line 70
    iput v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->l:I

    .line 72
    iput-boolean v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->m:Z

    .line 73
    iput-boolean v7, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->n:Z

    .line 89
    invoke-virtual {p0, v7}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->setWillNotDraw(Z)V

    .line 91
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->setOrientation(I)V

    .line 93
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->c:Landroid/widget/LinearLayout$LayoutParams;

    .line 94
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->d:Landroid/widget/LinearLayout$LayoutParams;

    .line 96
    sget-object v4, Lcig$l;->SlidingTabStrip:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 97
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v4, Lcig$l;->SlidingTabStrip_stsIndicatorColor:I

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->f:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->f:I

    .line 98
    sget v4, Lcig$l;->SlidingTabStrip_stsUnderlineColor:I

    const v5, -0x636364

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 99
    .local v2, "mUnderlineColor":I
    sget v4, Lcig$l;->SlidingTabStrip_stsIndicatorHeight:I

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->g:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->g:I

    .line 101
    sget v4, Lcig$l;->SlidingTabStrip_stsTabTextColor:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->i:Landroid/content/res/ColorStateList;

    .line 102
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->i:Landroid/content/res/ColorStateList;

    if-nez v4, :cond_0

    .line 103
    sget-object v4, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->a:Landroid/content/res/ColorStateList;

    iput-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->i:Landroid/content/res/ColorStateList;

    .line 106
    :cond_0
    sget v4, Lcig$l;->SlidingTabStrip_stsSingleTabTextColor:I

    .line 107
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcig$c;->gray:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 106
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->j:I

    .line 109
    sget v4, Lcig$l;->SlidingTabStrip_stsTabTextSize:I

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->h:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->h:I

    .line 110
    sget v4, Lcig$l;->SlidingTabStrip_stsUnderlineHeight:I

    sget v5, Lcjj;->a:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 111
    .local v3, "mUnderlineHeight":I
    sget v4, Lcig$l;->SlidingTabStrip_stsTabPaddingLeftRight:I

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->k:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->k:I

    .line 112
    sget v4, Lcig$l;->SlidingTabStrip_stsTabIndicatorMargin:I

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->l:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->l:I

    .line 113
    sget v4, Lcig$l;->SlidingTabStrip_stsShouldExpand:I

    iget-boolean v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->m:Z

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->m:Z

    .line 114
    sget v4, Lcig$l;->SlidingTabStrip_stsIsSingle:I

    iget-boolean v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->n:Z

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->n:Z

    .line 116
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 118
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->b:Landroid/widget/LinearLayout;

    .line 119
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 120
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->b:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v8, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->b:Landroid/widget/LinearLayout;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 122
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->addView(Landroid/view/View;)V

    .line 124
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 125
    .local v1, "lineBottom":Landroid/view/View;
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 126
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->addView(Landroid/view/View;)V

    .line 128
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;

    .prologue
    .line 42
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->k:I

    return v0
.end method

.method private a(IZ)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "selected"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 207
    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 209
    .local v0, "tabView":Landroid/view/View;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$b;

    if-eqz v1, :cond_1

    .line 210
    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$b;

    .line 1300
    .end local v0    # "tabView":Landroid/view/View;
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$b;->a:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1301
    iget-object v3, v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$b;->a:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1303
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$b;->c:Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;

    .line 2042
    iget-boolean v1, v1, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->n:Z

    .line 1303
    if-eqz v1, :cond_3

    .line 1304
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$b;->b:Landroid/view/View;

    .line 1306
    :cond_0
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 213
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 1301
    goto :goto_0

    .line 1306
    :cond_3
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$b;->b:Landroid/view/View;

    if-eqz p2, :cond_0

    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;

    .prologue
    .line 42
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->h:I

    return v0
.end method

.method private b(ILjava/lang/String;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "title"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 216
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$b;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$b;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;Landroid/content/Context;)V

    .line 217
    .local v0, "tabView":Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$b;
    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$b;->a(Ljava/lang/String;)V

    .line 218
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;I)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$b;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->b:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->m:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->d:Landroid/widget/LinearLayout$LayoutParams;

    :goto_0
    invoke-virtual {v2, v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 226
    return-void

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->c:Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->n:Z

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;

    .prologue
    .line 42
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->j:I

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->i:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;

    .prologue
    .line 42
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->l:I

    return v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;

    .prologue
    .line 42
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->f:I

    return v0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;

    .prologue
    .line 42
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->g:I

    return v0
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 179
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 183
    .local v0, "tabView":Landroid/view/View;
    if-nez v0, :cond_2

    .line 184
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->b(ILjava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_2
    instance-of v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$b;

    if-eqz v1, :cond_0

    .line 186
    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$b;

    .end local v0    # "tabView":Landroid/view/View;
    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a([Ljava/lang/String;)V
    .locals 3
    .param p1, "titleStrings"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 167
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 168
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 169
    .local v0, "childCount":I
    if-ge v1, v0, :cond_1

    .line 170
    aget-object v2, p1, v1

    if-nez v2, :cond_0

    const-string/jumbo v2, ""

    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->a(ILjava/lang/String;)V

    .line 174
    :goto_2
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->e:I

    if-ne v1, v2, :cond_3

    const/4 v2, 0x1

    :goto_3
    invoke-direct {p0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->a(IZ)V

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    :cond_0
    aget-object v2, p1, v1

    goto :goto_1

    .line 172
    :cond_1
    aget-object v2, p1, v1

    if-nez v2, :cond_2

    const-string/jumbo v2, ""

    :goto_4
    invoke-direct {p0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->b(ILjava/lang/String;)V

    goto :goto_2

    :cond_2
    aget-object v2, p1, v1

    goto :goto_4

    .line 174
    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .line 176
    .end local v0    # "childCount":I
    :cond_4
    return-void
.end method

.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->e:I

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 132
    move-object v0, p1

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$SavedState;

    .line 133
    .local v0, "savedState":Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$SavedState;
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 134
    iget v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$SavedState;->currentPosition:I

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->e:I

    .line 135
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->requestLayout()V

    .line 136
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 140
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 141
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$SavedState;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 142
    .local v0, "savedState":Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$SavedState;
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->e:I

    iput v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$SavedState;->currentPosition:I

    .line 143
    return-object v0
.end method

.method public setCurrentItemAndRefresh(I)V
    .locals 2
    .param p1, "targetIndex"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 198
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->e:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->a(IZ)V

    .line 199
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->a(IZ)V

    .line 200
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->e:I

    .line 201
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->o:Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$a;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->o:Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$a;

    invoke-interface {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$a;->a(I)V

    .line 204
    :cond_0
    return-void
.end method

.method public setInitialIndex(I)V
    .locals 0
    .param p1, "initialIndex"    # I

    .prologue
    .line 155
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->e:I

    .line 156
    return-void
.end method

.method public setSingleTabMode(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->n:Z

    .line 152
    return-void
.end method

.method public setTabSelectListener(Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$a;)V
    .locals 0
    .param p1, "tabSelectListener"    # Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$a;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->o:Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$a;

    .line 160
    return-void
.end method
