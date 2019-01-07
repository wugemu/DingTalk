.class public Lcom/alibaba/android/dingtalkim/mdrender/view/LevelLineFrameLayout;
.super Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;
.source "LevelLineFrameLayout.java"


# instance fields
.field private a:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelLineFrameLayout;->a()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelLineFrameLayout;->a()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelLineFrameLayout;->a()V

    .line 32
    return-void
.end method

.method private a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 36
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelLineFrameLayout;->a:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelLineFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelLineFrameLayout;->a:Landroid/widget/ImageView;

    .line 38
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelLineFrameLayout;->a:Landroid/widget/ImageView;

    sget v2, Ldnt;->f:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 39
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelLineFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 40
    .local v0, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelLineFrameLayout;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelLineFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(IIII)V
    .locals 4
    .param p1, "marginLeftDp"    # I
    .param p2, "marginTopDp"    # I
    .param p3, "marginRightDp"    # I
    .param p4, "marginBottomDp"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 46
    if-gez p1, :cond_0

    .line 47
    const/4 p1, 0x0

    .line 49
    :cond_0
    if-gez p2, :cond_1

    .line 50
    const/4 p2, 0x0

    .line 52
    :cond_1
    if-gez p3, :cond_2

    .line 53
    const/4 p3, 0x0

    .line 55
    :cond_2
    if-gez p4, :cond_3

    .line 56
    const/4 p4, 0x0

    .line 59
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelLineFrameLayout;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 60
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_4

    .line 61
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelLineFrameLayout;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 62
    .local v1, "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelLineFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    int-to-float v3, p1

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 63
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelLineFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    int-to-float v3, p2

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 64
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelLineFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    int-to-float v3, p3

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 65
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelLineFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    int-to-float v3, p4

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 66
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/mdrender/view/LevelLineFrameLayout;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    .end local v1    # "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_4
    return-void
.end method
