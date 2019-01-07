.class public Lcom/alibaba/android/dingtalkim/mdrender/view/LevelImageFrameLayout;
.super Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;
.source "LevelImageFrameLayout.java"


# instance fields
.field public a:Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;

.field public b:Landroid/widget/ImageView;

.field public c:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelImageFrameLayout;->a()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelImageFrameLayout;->a()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelImageFrameLayout;->a()V

    .line 44
    return-void
.end method

.method private a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 48
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelImageFrameLayout;->a:Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;

    if-nez v1, :cond_0

    .line 1114
    new-instance v1, Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelImageFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;-><init>(Landroid/content/Context;)V

    .line 1115
    sget-object v2, Ldnt;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1116
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;->setDominantMeasurement(I)V

    .line 1117
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1118
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;->setHeightWidthRatioEnabled(Z)V

    .line 49
    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelImageFrameLayout;->a:Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;

    .line 50
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelImageFrameLayout;->a:Lcom/alibaba/android/dingtalkim/mdrender/view/AspectRatioImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelImageFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelImageFrameLayout;->b:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    .line 53
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelImageFrameLayout;->b()Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelImageFrameLayout;->b:Landroid/widget/ImageView;

    .line 54
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    sget v1, Ldnt;->k:I

    sget v2, Ldnt;->l:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 55
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    sget v1, Ldnt;->g:I

    sget v2, Ldnt;->h:I

    sget v3, Ldnt;->j:I

    sget v4, Ldnt;->i:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 57
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelImageFrameLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelImageFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelImageFrameLayout;->c:Landroid/widget/ImageView;

    if-nez v1, :cond_2

    .line 60
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelImageFrameLayout;->b()Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelImageFrameLayout;->c:Landroid/widget/ImageView;

    .line 61
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    sget v1, Ldnt;->k:I

    sget v2, Ldnt;->l:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 62
    .restart local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    sget v1, Ldnt;->j:I

    sget v2, Ldnt;->h:I

    sget v3, Ldnt;->g:I

    sget v4, Ldnt;->i:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 64
    const/4 v1, 0x5

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 65
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelImageFrameLayout;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelImageFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    return-void
.end method

.method private b()Landroid/widget/ImageView;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 70
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelImageFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 71
    .local v0, "imageView":Landroid/widget/ImageView;
    sget v1, Lctk$e;->gif_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 73
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    return-object v0
.end method
