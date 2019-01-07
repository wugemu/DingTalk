.class public Lcom/alipay/mobile/security/faceauth/widget/TitleBar;
.super Landroid/widget/RelativeLayout;
.source "TitleBar.java"


# instance fields
.field a:F

.field b:F

.field c:F

.field d:F

.field e:F

.field f:F

.field g:F

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/Button;

.field private l:Landroid/widget/Button;

.field private m:I

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Z

.field private r:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    iput v1, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->a:F

    .line 52
    iput v1, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->b:F

    .line 53
    iput v1, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->c:F

    .line 54
    iput v1, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->d:F

    .line 55
    iput v1, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->e:F

    .line 56
    iput v1, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->f:F

    .line 57
    iput v1, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->g:F

    .line 61
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Ligf$d;->title_bar:I

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 63
    sget-object v1, Ligf$f;->titleBar:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Ligf$f;->titleBar_bio_titleText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->o:Ljava/lang/String;

    .line 67
    sget v1, Ligf$f;->titleBar_bio_showBackButton:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->p:Z

    .line 68
    sget v1, Ligf$f;->titleBar_bio_title_color:I

    const v2, 0x106000b

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->m:I

    .line 69
    sget v1, Ligf$f;->titleBar_bio_leftButtonIcon:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->n:I

    .line 70
    sget v1, Ligf$f;->titleBar_bio_showSoundButton:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->q:Z

    .line 71
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    invoke-virtual {p0}, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Ligf$a;->title_bar_icon_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->c:F

    .line 74
    invoke-virtual {p0}, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Ligf$a;->title_bar_icon_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->d:F

    .line 75
    return-void
.end method

.method private static a(Landroid/graphics/drawable/Drawable;Landroid/view/ViewGroup$MarginLayoutParams;FFFLandroid/widget/Button;)V
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "layoutParam_title"    # Landroid/view/ViewGroup$MarginLayoutParams;
    .param p2, "leftMargin"    # F
    .param p3, "rightMargin"    # F
    .param p4, "icon_width"    # F
    .param p5, "button"    # Landroid/widget/Button;

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 283
    if-nez p0, :cond_0

    .line 307
    :goto_0
    return-void

    .line 286
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 287
    .local v0, "imageHeight":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 291
    .local v1, "imageWidth":I
    int-to-float v4, v1

    cmpl-float v4, v4, p4

    if-lez v4, :cond_1

    .line 292
    float-to-int v3, p4

    .line 293
    .local v3, "targetWidth":I
    int-to-float v4, v0

    mul-float/2addr v4, p4

    int-to-float v5, v1

    div-float/2addr v4, v5

    float-to-int v2, v4

    .line 299
    .local v2, "targetHeight":I
    :goto_1
    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 300
    iput v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 301
    invoke-virtual {p5, p0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 303
    int-to-float v4, v3

    sub-float v4, p4, v4

    div-float/2addr v4, v6

    add-float/2addr v4, p2

    float-to-int v4, v4

    iput v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 304
    int-to-float v4, v3

    sub-float v4, p4, v4

    div-float/2addr v4, v6

    add-float/2addr v4, p3

    float-to-int v4, v4

    iput v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 305
    const-string/jumbo v4, "APTitleBar"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "leftMargin="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", rightMargin="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/security/bio/utils/BioLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 295
    .end local v2    # "targetHeight":I
    .end local v3    # "targetWidth":I
    :cond_1
    move v2, v0

    .line 296
    .restart local v2    # "targetHeight":I
    move v3, v1

    .restart local v3    # "targetWidth":I
    goto :goto_1
.end method


# virtual methods
.method public attachNewFlagView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->r:Landroid/view/View;

    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->r:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->addView(Landroid/view/View;)V

    .line 173
    return-void
.end method

.method public enableSound(Z)V
    .locals 3
    .param p1, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 105
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->l:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v0, v1, v2

    .line 106
    .local v0, "drawableRight":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    .line 107
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0
.end method

.method public getBackButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->k:Landroid/widget/Button;

    return-object v0
.end method

.method public getLeftButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSecondTitleTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 79
    sget v0, Ligf$c;->title_bar_title:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->h:Landroid/widget/TextView;

    .line 80
    sget v0, Ligf$c;->title_bar_title_second:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->i:Landroid/widget/TextView;

    .line 82
    sget v0, Ligf$c;->title_bar_back_button:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->k:Landroid/widget/Button;

    .line 83
    sget v0, Ligf$c;->title_bar_sound_button:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->l:Landroid/widget/Button;

    .line 84
    sget v0, Ligf$c;->title_bar_top_ll:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->j:Landroid/widget/LinearLayout;

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->o:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->setTitleText(Ljava/lang/String;)V

    .line 87
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->m:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->setTitleColer(I)V

    .line 88
    iget-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->q:Z

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->l:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 93
    :goto_0
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->n:I

    if-eqz v0, :cond_0

    .line 94
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->n:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->setLeftButtonIconResource(I)V

    .line 1335
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->k:Landroid/widget/Button;

    new-instance v1, Lcom/alipay/mobile/security/faceauth/widget/TitleBar$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/faceauth/widget/TitleBar$1;-><init>(Lcom/alipay/mobile/security/faceauth/widget/TitleBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->l:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 232
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 236
    return-void
.end method

.method public setBackButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->k:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->k:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    return-void
.end method

.method public setBackButtonText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->p:Z

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->k:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->k:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 146
    :cond_0
    return-void
.end method

.method public setCloseButtonVisible(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->k:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 115
    return-void
.end method

.method public setLeftButtonIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 259
    invoke-virtual {v5}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->d:F

    move-object v0, p1

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->a(Landroid/graphics/drawable/Drawable;Landroid/view/ViewGroup$MarginLayoutParams;FFFLandroid/widget/Button;)V

    .line 261
    return-void
.end method

.method public setLeftButtonIconResource(I)V
    .locals 1
    .param p1, "drawableId"    # I

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->setLeftButtonIcon(Landroid/graphics/drawable/Drawable;)V

    .line 244
    return-void
.end method

.method public setLeftButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    return-void
.end method

.method public setRightButtonIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 268
    invoke-virtual {v5}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->d:F

    move-object v0, p1

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->a(Landroid/graphics/drawable/Drawable;Landroid/view/ViewGroup$MarginLayoutParams;FFFLandroid/widget/Button;)V

    .line 270
    return-void
.end method

.method public setRightButtonIconResource(I)V
    .locals 1
    .param p1, "drawableId"    # I

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->setRightButtonIcon(Landroid/graphics/drawable/Drawable;)V

    .line 252
    return-void
.end method

.method public setRightButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    return-void
.end method

.method public setSoundButton(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->l:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 102
    return-void
.end method

.method public setSoundButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->l:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->l:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    return-void
.end method

.method public setSoundButtonVisible(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->l:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 119
    return-void
.end method

.method public setSwitchContainerVisiable(Z)V
    .locals 2
    .param p1, "visiable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 167
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 168
    return-void

    .line 167
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setTitleColer(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    return-void
.end method

.method public unAttachNewFlagView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->r:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->r:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->removeView(Landroid/view/View;)V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/widget/TitleBar;->r:Landroid/view/View;

    .line 184
    :cond_0
    return-void
.end method
