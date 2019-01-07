.class public Lcom/alipay/biometrics/ui/widget/TitleBar;
.super Landroid/widget/RelativeLayout;
.source "TitleBar.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "APTitleBar"


# instance fields
.field icon_height:F

.field icon_width:F

.field private mBackButton:Landroid/widget/Button;

.field private mLeftButton:Landroid/widget/Button;

.field private mLeftButtonIcon:I

.field private mNewFlagView:Landroid/view/View;

.field private mRightButton:Landroid/widget/Button;

.field private mSecondTitleTextView:Landroid/widget/TextView;

.field private mSoundButton:Landroid/widget/Button;

.field private mSwitchContainer:Landroid/widget/LinearLayout;

.field private mTitleColor:I

.field private mTitleText:Ljava/lang/String;

.field private mTitleTextView:Landroid/widget/TextView;

.field margin_right:F

.field margin_right_generic:F

.field margin_seperator:F

.field private showBackButton:Z

.field private showSoundButton:Z

.field touch_height:F

.field touch_width:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    iput v1, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->margin_right:F

    .line 47
    iput v1, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->margin_right_generic:F

    .line 48
    iput v1, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->icon_height:F

    .line 49
    iput v1, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->icon_width:F

    .line 50
    iput v1, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->touch_height:F

    .line 51
    iput v1, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->touch_width:F

    .line 52
    iput v1, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->margin_seperator:F

    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lige$d;->title_bar:I

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 58
    sget-object v1, Lige$f;->titleBar:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lige$f;->titleBar_bio_titleText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->mTitleText:Ljava/lang/String;

    .line 61
    sget v1, Lige$f;->titleBar_bio_showBackButton:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->showBackButton:Z

    .line 62
    sget v1, Lige$f;->titleBar_bio_title_color:I

    const v2, 0x106000b

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->mTitleColor:I

    .line 63
    sget v1, Lige$f;->titleBar_bio_leftButtonIcon:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->mLeftButtonIcon:I

    .line 64
    sget v1, Lige$f;->titleBar_bio_showSoundButton:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->showSoundButton:Z

    .line 65
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    invoke-virtual {p0}, Lcom/alipay/biometrics/ui/widget/TitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lige$a;->title_bar_icon_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->icon_height:F

    .line 68
    invoke-virtual {p0}, Lcom/alipay/biometrics/ui/widget/TitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lige$a;->title_bar_icon_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->icon_width:F

    .line 69
    return-void
.end method

.method private adjustTouchDelegate(Landroid/widget/Button;FF)V
    .locals 5
    .param p1, "button"    # Landroid/widget/Button;
    .param p2, "icon_height"    # F
    .param p3, "icon_width"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 319
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 320
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/widget/Button;->getHitRect(Landroid/graphics/Rect;)V

    .line 321
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v3, p2

    if-gez v3, :cond_0

    .line 322
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, p2, v3

    div-float/2addr v3, v4

    float-to-int v1, v3

    .line 323
    .local v1, "temp":I
    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 324
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 326
    .end local v1    # "temp":I
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v3, p3

    if-gez v3, :cond_1

    .line 327
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, p3, v3

    div-float/2addr v3, v4

    float-to-int v1, v3

    .line 328
    .restart local v1    # "temp":I
    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 329
    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 331
    .end local v1    # "temp":I
    :cond_1
    new-instance v2, Landroid/view/TouchDelegate;

    invoke-direct {v2, v0, p1}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 332
    .local v2, "touchDelegate":Landroid/view/TouchDelegate;
    const-class v3, Landroid/view/View;

    invoke-virtual {p1}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 333
    invoke-virtual {p1}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 335
    :cond_2
    return-void
.end method

.method private initBackbutton()V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->mBackButton:Landroid/widget/Button;

    new-instance v1, Lcom/alipay/biometrics/ui/widget/TitleBar$1;

    invoke-direct {v1, p0}, Lcom/alipay/biometrics/ui/widget/TitleBar$1;-><init>(Lcom/alipay/biometrics/ui/widget/TitleBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    return-void
.end method

.method private layoutButton(Landroid/graphics/drawable/Drawable;Landroid/view/ViewGroup$MarginLayoutParams;FFFLandroid/widget/Button;)V
    .locals 7
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "layoutParam_title"    # Landroid/view/ViewGroup$MarginLayoutParams;
    .param p3, "leftMargin"    # F
    .param p4, "rightMargin"    # F
    .param p5, "icon_width"    # F
    .param p6, "button"    # Landroid/widget/Button;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 284
    if-nez p1, :cond_0

    .line 309
    :goto_0
    return-void

    .line 288
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 289
    .local v0, "imageHeight":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 293
    .local v1, "imageWidth":I
    int-to-float v4, v1

    cmpl-float v4, v4, p5

    if-lez v4, :cond_1

    .line 294
    float-to-int v3, p5

    .line 295
    .local v3, "targetWidth":I
    int-to-float v4, v0

    mul-float/2addr v4, p5

    int-to-float v5, v1

    div-float/2addr v4, v5

    float-to-int v2, v4

    .line 301
    .local v2, "targetHeight":I
    :goto_1
    iput v2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 302
    iput v3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 303
    invoke-virtual {p6, p1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 305
    int-to-float v4, v3

    sub-float v4, p5, v4

    div-float/2addr v4, v6

    add-float/2addr v4, p3

    float-to-int v4, v4

    iput v4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 306
    int-to-float v4, v3

    sub-float v4, p5, v4

    div-float/2addr v4, v6

    add-float/2addr v4, p4

    float-to-int v4, v4

    iput v4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 307
    const-string/jumbo v4, "APTitleBar"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "leftMargin="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", rightMargin="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/security/bio/utils/BioLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 297
    .end local v2    # "targetHeight":I
    .end local v3    # "targetWidth":I
    :cond_1
    move v2, v0

    .line 298
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
    .line 169
    iput-object p1, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->mNewFlagView:Landroid/view/View;

    .line 170
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->mNewFlagView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alipay/biometrics/ui/widget/TitleBar;->addView(Landroid/view/View;)V

    .line 171
    return-void
.end method

.method public enableSound(Z)V
    .locals 3
    .param p1, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 98
    iget-object v1, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->mSoundButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v0, v1, v2

    .line 99
    .local v0, "drawableRight":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    .line 100
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0
.end method

.method public getBackButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->mBackButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getLeftButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->mLeftButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getSecondTitleTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->mSecondTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->mTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 73
    sget v0, Lige$c;->title_bar_title:I

    invoke-virtual {p0, v0}, Lcom/alipay/biometrics/ui/widget/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->mTitleTextView:Landroid/widget/TextView;

    .line 74
    sget v0, Lige$c;->title_bar_title_second:I

    invoke-virtual {p0, v0}, Lcom/alipay/biometrics/ui/widget/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->mSecondTitleTextView:Landroid/widget/TextView;

    .line 76
    sget v0, Lige$c;->title_bar_back_button:I

    invoke-virtual {p0, v0}, Lcom/alipay/biometrics/ui/widget/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->mBackButton:Landroid/widget/Button;

    .line 77
    sget v0, Lige$c;->title_bar_sound_button:I

    invoke-virtual {p0, v0}, Lcom/alipay/biometrics/ui/widget/TitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->mSoundButton:Landroid/widget/Button;

    .line 79
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->mTitleText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/biometrics/ui/widget/TitleBar;->setTitleText(Ljava/lang/String;)V

    .line 80
    iget v0, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->mTitleColor:I

    invoke-virtual {p0, v0}, Lcom/alipay/biometrics/ui/widget/TitleBar;->setTitleColer(I)V

    .line 81
    iget-boolean v0, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->showSoundButton:Z

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->mSoundButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 86
    :goto_0
    iget v0, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->mLeftButtonIcon:I

    if-eqz v0, :cond_0

    .line 87
    iget v0, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->mLeftButtonIcon:I

    invoke-virtual {p0, v0}, Lcom/alipay/biometrics/ui/widget/TitleBar;->setLeftButtonIconResource(I)V

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/alipay/biometrics/ui/widget/TitleBar;->initBackbutton()V

    .line 91
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->mSoundButton:Landroid/widget/Button;

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
    .line 233
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 234
    return-void
.end method

.method public setBackButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 150
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->mBackButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    return-void
.end method

.method public setBackButtonText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->showBackButton:Z

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->mBackButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :cond_0
    return-void
.end method

.method public setCloseButtonVisible(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 108
    return-void
.end method

.method public setLeftButtonIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 260
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    iget v4, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->margin_seperator:F

    iget v5, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->icon_width:F

    iget-object v6, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->mLeftButton:Landroid/widget/Button;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/alipay/biometrics/ui/widget/TitleBar;->layoutButton(Landroid/graphics/drawable/Drawable;Landroid/view/ViewGroup$MarginLayoutParams;FFFLandroid/widget/Button;)V

    .line 262
    return-void
.end method

.method public setLeftButtonIconResource(I)V
    .locals 1
    .param p1, "drawableId"    # I

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/alipay/biometrics/ui/widget/TitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/biometrics/ui/widget/TitleBar;->setLeftButtonIcon(Landroid/graphics/drawable/Drawable;)V

    .line 243
    return-void
.end method

.method public setLeftButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    return-void
.end method

.method public setRightButtonIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 270
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->margin_seperator:F

    iget v4, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->margin_right:F

    iget v5, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->icon_width:F

    iget-object v6, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->mRightButton:Landroid/widget/Button;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/alipay/biometrics/ui/widget/TitleBar;->layoutButton(Landroid/graphics/drawable/Drawable;Landroid/view/ViewGroup$MarginLayoutParams;FFFLandroid/widget/Button;)V

    .line 272
    return-void
.end method

.method public setRightButtonIconResource(I)V
    .locals 1
    .param p1, "drawableId"    # I

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/alipay/biometrics/ui/widget/TitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/biometrics/ui/widget/TitleBar;->setRightButtonIcon(Landroid/graphics/drawable/Drawable;)V

    .line 252
    return-void
.end method

.method public setRightButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    return-void
.end method

.method public setSoundButton(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->mSoundButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 95
    return-void
.end method

.method public setSoundButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 155
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->mSoundButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->mSoundButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    return-void
.end method

.method public setSoundButtonVisible(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->mSoundButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 112
    return-void
.end method

.method public setSwitchContainerVisiable(Z)V
    .locals 2
    .param p1, "visiable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 165
    iget-object v1, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->mSwitchContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 166
    return-void

    .line 165
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setTitleColer(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    return-void
.end method

.method public unAttachNewFlagView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->mNewFlagView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->mNewFlagView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alipay/biometrics/ui/widget/TitleBar;->removeView(Landroid/view/View;)V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/biometrics/ui/widget/TitleBar;->mNewFlagView:Landroid/view/View;

    .line 183
    :cond_0
    return-void
.end method
