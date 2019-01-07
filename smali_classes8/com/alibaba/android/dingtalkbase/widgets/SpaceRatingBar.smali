.class public Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;
.super Landroid/widget/LinearLayout;
.source "SpaceRatingBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:[Landroid/view/View;

.field private d:I

.field private e:I

.field private f:I

.field private g:[Landroid/graphics/RectF;

.field private h:Z

.field private i:Landroid/os/Handler;

.field private j:I

.field private k:Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    const/16 v0, 0x20

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->a:I

    .line 30
    const/4 v0, 0x5

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->b:I

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->j:I

    .line 71
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->a()V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x5

    const/4 v2, 0x0

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/16 v3, 0x20

    iput v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->a:I

    .line 30
    iput v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->b:I

    .line 53
    const/4 v3, -0x1

    iput v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->j:I

    .line 77
    sget-object v3, Lcig$l;->SpaceRatingBar:[I

    invoke-virtual {p1, p2, v3, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 78
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v3, Lcig$l;->SpaceRatingBar_spacing_rating_bar_num_stars:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->b:I

    if-lez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v2}, Lcom/alibaba/doraemon/utils/Preconditions;->checkArgument(Z)V

    .line 80
    sget v2, Lcig$l;->SpaceRatingBar_spacing_rating_bar_star_between_star:I

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {p1, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->d:I

    .line 83
    sget v2, Lcig$l;->SpaceRatingBar_spacing_rating_bar_star_width:I

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {p1, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    .local v1, "size":I
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->e:I

    .line 84
    sget v2, Lcig$l;->SpaceRatingBar_spacing_rating_bar_star_height:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->f:I

    .line 86
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->a()V

    .line 89
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->i:Landroid/os/Handler;

    return-object v0
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 104
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->i:Landroid/os/Handler;

    .line 105
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->b:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->c:[Landroid/view/View;

    .line 106
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->b:I

    new-array v0, v0, [Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->g:[Landroid/graphics/RectF;

    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->setOrientation(I)V

    .line 109
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->b()V

    .line 110
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;IFF)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;
    .param p1, "x1"    # I
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .prologue
    const/4 v0, 0x0

    .line 22
    .line 2186
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 2187
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->g:[Landroid/graphics/RectF;

    aget-object v1, v1, v0

    .line 2188
    iget v2, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v2, p3, v2

    if-ltz v2, :cond_3

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v2, p3, v2

    if-gez v2, :cond_3

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v1, p2, v1

    if-gez v1, :cond_3

    .line 2189
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->c:[Landroid/view/View;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 2190
    sget v4, Lcig$e;->dd_rating_bar_unselected:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2196
    :cond_0
    :goto_1
    if-gt v0, p1, :cond_1

    .line 2197
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->c:[Landroid/view/View;

    aget-object v1, v1, v0

    sget v2, Lcig$e;->dd_rating_bar_selected:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2196
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2200
    :cond_1
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->j:I

    if-eq v0, v1, :cond_2

    .line 2201
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->k:Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar$a;

    if-eqz v1, :cond_2

    .line 2202
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->k:Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar$a;

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->j:I

    invoke-interface {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar$a;->a(I)V

    .line 2206
    :cond_2
    add-int/lit8 v0, p1, 0x1

    :goto_2
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->b:I

    if-ge v0, v1, :cond_3

    .line 2207
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->c:[Landroid/view/View;

    aget-object v1, v1, v0

    sget v2, Lcig$e;->dd_rating_bar_unselected:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2206
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2193
    :cond_3
    return-void
.end method

.method private b()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 115
    .local v0, "context":Landroid/content/Context;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->e:I

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->f:I

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 116
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->d:I

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 118
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->b:I

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_0

    .line 119
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 120
    .local v4, "view":Landroid/view/View;
    sget v5, Lcig$e;->dd_rating_bar_unselected:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 121
    invoke-virtual {p0, v4, v2}, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->c:[Landroid/view/View;

    aput-object v4, v5, v1

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    .end local v4    # "view":Landroid/view/View;
    :cond_0
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 126
    .restart local v4    # "view":Landroid/view/View;
    sget v5, Lcig$e;->dd_rating_bar_unselected:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 127
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->e:I

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->f:I

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 128
    .local v3, "lp2":Landroid/widget/LinearLayout$LayoutParams;
    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->d:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 129
    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->d:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 130
    invoke-virtual {p0, v4, v3}, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->c:[Landroid/view/View;

    iget v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->b:I

    add-int/lit8 v6, v6, -0x1

    aput-object v4, v5, v6

    .line 132
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 213
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 214
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->i:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 215
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 157
    iget-boolean v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->h:Z

    if-nez v3, :cond_0

    .line 159
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 172
    :goto_0
    return v3

    .line 161
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    .line 162
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    .line 163
    .local v2, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 172
    :goto_1
    :pswitch_0
    const/4 v3, 0x1

    goto :goto_0

    .line 1176
    :pswitch_1
    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->b:I

    add-int/lit8 v0, v3, -0x1

    :goto_2
    if-ltz v0, :cond_2

    .line 1177
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->g:[Landroid/graphics/RectF;

    aget-object v3, v3, v0

    .line 1178
    iget v4, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_1

    iget v3, v3, Landroid/graphics/RectF;->right:F

    cmpg-float v3, v1, v3

    if-gez v3, :cond_1

    .line 1218
    .local v0, "index":I
    :goto_3
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->i:Landroid/os/Handler;

    new-instance v4, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar$1;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;IFF)V

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->a:I

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 1176
    .end local v0    # "index":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1182
    :cond_2
    const/4 v0, -0x1

    goto :goto_3

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 12
    .param p1, "hasWindowFocus"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 136
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 137
    if-eqz p1, :cond_0

    iget-boolean v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->h:Z

    if-nez v4, :cond_0

    .line 138
    iput-boolean v11, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->h:Z

    .line 140
    const/4 v4, 0x2

    new-array v1, v4, [I

    .line 142
    .local v1, "loc":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->b:I

    if-ge v0, v4, :cond_0

    .line 143
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->c:[Landroid/view/View;

    aget-object v2, v4, v0

    .line 144
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 146
    aget v3, v1, v11

    .line 149
    .local v3, "y":I
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->g:[Landroid/graphics/RectF;

    new-instance v5, Landroid/graphics/RectF;

    aget v6, v1, v10

    int-to-float v6, v6

    int-to-float v7, v3

    aget v8, v1, v10

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->d:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v9, v3

    int-to-float v9, v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v5, v4, v0

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    .end local v0    # "i":I
    .end local v1    # "loc":[I
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "y":I
    :cond_0
    return-void
.end method

.method public setMergeTime(I)V
    .locals 1
    .param p1, "mergeTime"    # I

    .prologue
    .line 96
    const/16 v0, 0x10

    if-gt p1, v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 100
    :cond_0
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->a:I

    goto :goto_0
.end method

.method public setOnRatingChangedListener(Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar$a;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->k:Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar$a;

    .line 67
    return-void
.end method
