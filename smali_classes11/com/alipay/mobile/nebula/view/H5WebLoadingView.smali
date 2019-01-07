.class public Lcom/alipay/mobile/nebula/view/H5WebLoadingView;
.super Lcom/alipay/mobile/framework/loading/LoadingView;
.source "H5WebLoadingView.java"


# instance fields
.field private mBackButton:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field mDarkAnim:Landroid/animation/ValueAnimator;

.field private mDarkColor:I

.field private mDarkDotX:I

.field private mDarkDotY:I

.field private mDotPaint:Landroid/graphics/Paint;

.field private mDotSize:I

.field private mIsAnimating:Z

.field private mLightColor:I

.field private mLightDotX:I

.field private mLoadingIcon:Landroid/widget/ImageView;

.field private mLoadingTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/loading/LoadingView;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object p1, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mContext:Landroid/content/Context;

    .line 46
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->initView()V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebula/view/H5WebLoadingView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/view/H5WebLoadingView;

    .prologue
    .line 27
    iget v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDarkDotX:I

    return v0
.end method

.method static synthetic access$002(Lcom/alipay/mobile/nebula/view/H5WebLoadingView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/view/H5WebLoadingView;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDarkDotX:I

    return p1
.end method

.method static synthetic access$102(Lcom/alipay/mobile/nebula/view/H5WebLoadingView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/view/H5WebLoadingView;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLightDotX:I

    return p1
.end method

.method private getDimen(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 203
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private static makeMeasureSpec(I)I
    .locals 1
    .param p0, "size"    # I

    .prologue
    .line 207
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/loading/LoadingView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 135
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mIsAnimating:Z

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDotPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDarkColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    iget v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDarkDotX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDarkDotY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDotSize:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDotPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLightColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    iget v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLightDotX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDarkDotY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDotSize:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 141
    :cond_0
    return-void
.end method

.method public getBackButton()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mBackButton:Landroid/widget/TextView;

    return-object v0
.end method

.method public initView()V
    .locals 6

    .prologue
    const/16 v5, 0x11

    .line 64
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLoadingIcon:Landroid/widget/ImageView;

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLoadingIcon:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLoadingIcon:Landroid/widget/ImageView;

    sget v1, Lcom/alipay/mobile/nebula/R$drawable;->default_loading_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 67
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebula/R$color;->h5_web_loading_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLoadingIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->addView(Landroid/view/View;)V

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->addView(Landroid/view/View;)V

    .line 76
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mBackButton:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mBackButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "h5iconfont"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "h5iconfont"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "h5titlebar.ttf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebula/util/H5TypefaceCache;->getTypeface(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mBackButton:Landroid/widget/TextView;

    const-string/jumbo v1, "\ue608"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mBackButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41880000    # 17.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mBackButton:Landroid/widget/TextView;

    const v1, -0xef7117

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mBackButton:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mBackButton:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->addView(Landroid/view/View;)V

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nebula/R$color;->h5_web_loading_dot_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDarkColor:I

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nebula/R$color;->h5_web_loading_dot_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLightColor:I

    .line 87
    sget v0, Lcom/alipay/mobile/nebula/R$dimen;->h5_loading_dot_size:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->getDimen(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDotSize:I

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDotPaint:Landroid/graphics/Paint;

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDotPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nebula/R$color;->h5_web_loading_default_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->setBackgroundColor(I)V

    .line 92
    return-void
.end method

.method public onHandleMessage(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 115
    iget-object v2, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mBackButton:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mBackButton:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mBackButton:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 117
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLoadingIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 118
    .local v0, "offsetX":I
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v1, v2, 0x4

    .line 119
    .local v1, "offsetY":I
    iget-object v2, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLoadingIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLoadingIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLoadingIcon:Landroid/widget/ImageView;

    .line 120
    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    .line 119
    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 122
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 123
    iget-object v2, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLoadingIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v1

    sget v3, Lcom/alipay/mobile/nebula/R$dimen;->h5_loading_title_margin_top:I

    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->getDimen(I)I

    move-result v3

    add-int v1, v2, v3

    .line 125
    iget-object v2, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    .line 126
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    .line 125
    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 128
    iget-object v2, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v1

    sget v3, Lcom/alipay/mobile/nebula/R$dimen;->h5_loading_dot_margin_top:I

    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->getDimen(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDarkDotY:I

    .line 130
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    iget-object v3, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v3

    div-int/lit8 v1, v3, 0x5

    .line 97
    .local v1, "size":I
    iget-object v3, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLoadingIcon:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->makeMeasureSpec(I)I

    move-result v4

    invoke-static {v1}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->makeMeasureSpec(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/ImageView;->measure(II)V

    .line 99
    sget v3, Lcom/alipay/mobile/nebula/R$dimen;->h5_loading_title_width:I

    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->getDimen(I)I

    move-result v2

    .line 100
    .local v2, "width":I
    sget v3, Lcom/alipay/mobile/nebula/R$dimen;->h5_loading_title_height:I

    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->getDimen(I)I

    move-result v0

    .line 101
    .local v0, "height":I
    iget-object v3, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->makeMeasureSpec(I)I

    move-result v4

    invoke-static {v0}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->makeMeasureSpec(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->measure(II)V

    .line 103
    sget v3, Lcom/alipay/mobile/nebula/R$dimen;->h5_loading_back_button_width:I

    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->getDimen(I)I

    move-result v2

    .line 104
    sget v3, Lcom/alipay/mobile/nebula/R$dimen;->h5_title_height:I

    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->getDimen(I)I

    move-result v0

    .line 105
    iget-object v3, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mBackButton:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->makeMeasureSpec(I)I

    move-result v4

    invoke-static {v0}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->makeMeasureSpec(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->measure(II)V

    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->setMeasuredDimension(II)V

    .line 109
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->startLoadingAnimation()V

    .line 52
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public setLoadingBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLoadingIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 159
    return-void
.end method

.method public setLoadingInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "bgColorStr"    # Ljava/lang/String;
    .param p3, "themeColorStr"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 145
    iget-object v2, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 148
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 149
    .local v0, "bgColor":I
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->setBackgroundColor(I)V

    .line 151
    .end local v0    # "bgColor":I
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 152
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 153
    .local v1, "themeColor":I
    iget-object v2, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mLoadingTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    .end local v1    # "themeColor":I
    :cond_1
    return-void
.end method

.method public startLoadingAnimation()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x1

    .line 162
    iget-boolean v4, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mIsAnimating:Z

    if-eqz v4, :cond_0

    .line 187
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v4, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v4

    div-int/lit8 v0, v4, 0x2

    .line 165
    .local v0, "centerX":I
    sget v4, Lcom/alipay/mobile/nebula/R$dimen;->h5_loading_dot_margin_center:I

    invoke-direct {p0, v4}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->getDimen(I)I

    move-result v3

    .line 166
    .local v3, "margin":I
    iget v4, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDotSize:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v0, v4

    sub-int v1, v4, v3

    .line 167
    .local v1, "darkDotOffsetX":I
    add-int v4, v0, v3

    iget v5, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDotSize:I

    div-int/lit8 v5, v5, 0x2

    add-int v2, v4, v5

    .line 169
    .local v2, "lightDotOffsetX":I
    iput-boolean v6, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mIsAnimating:Z

    .line 170
    new-array v4, v8, [I

    const/4 v5, 0x0

    aput v1, v4, v5

    aput v2, v4, v6

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDarkAnim:Landroid/animation/ValueAnimator;

    .line 171
    iget-object v4, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDarkAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x190

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 172
    iget-object v4, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDarkAnim:Landroid/animation/ValueAnimator;

    const/16 v5, 0x5a

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 173
    iget-object v4, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDarkAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v8}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 174
    iget-object v4, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDarkAnim:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/alipay/mobile/nebula/view/H5WebLoadingView$1;

    invoke-direct {v5, p0, v0}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView$1;-><init>(Lcom/alipay/mobile/nebula/view/H5WebLoadingView;I)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 186
    iget-object v4, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDarkAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method public stopLoadingAnimation()V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mIsAnimating:Z

    .line 191
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDarkAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDarkAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDarkAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->mDarkAnim:Landroid/animation/ValueAnimator;

    .line 196
    :cond_0
    return-void
.end method
