.class public Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;
.super Landroid/widget/FrameLayout;
.source "H5TitleBarFrameLayout.java"


# instance fields
.field private contentBgView:Landroid/graphics/drawable/ColorDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->contentBgView:Landroid/graphics/drawable/ColorDrawable;

    .line 25
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->initBgView()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->contentBgView:Landroid/graphics/drawable/ColorDrawable;

    .line 30
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->initBgView()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->contentBgView:Landroid/graphics/drawable/ColorDrawable;

    .line 35
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->initBgView()V

    .line 36
    return-void
.end method

.method private initBgView()V
    .locals 3

    .prologue
    .line 39
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebula/R$color;->h5_nav_bar:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->contentBgView:Landroid/graphics/drawable/ColorDrawable;

    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->contentBgView:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getContentBgView()Landroid/graphics/drawable/ColorDrawable;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->contentBgView:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 45
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 47
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method
