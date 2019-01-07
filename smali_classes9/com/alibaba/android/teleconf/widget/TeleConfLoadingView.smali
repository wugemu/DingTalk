.class public Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;
.super Landroid/view/View;
.source "TeleConfLoadingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/lang/String;

.field private static c:F


# instance fields
.field private b:Landroid/os/Handler;

.field private d:F

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lezf;",
            ">;"
        }
    .end annotation
.end field

.field private f:F

.field private g:F

.field private h:F

.field private i:I

.field private j:F

.field private k:I

.field private l:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->a:Ljava/lang/String;

    .line 28
    const/high16 v0, 0x41200000    # 10.0f

    sput v0, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->c:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->b:Landroid/os/Handler;

    .line 31
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->d:F

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->e:Ljava/util/List;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->f:F

    .line 37
    const-string/jumbo v0, "#60FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->i:I

    .line 1058
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Leuj$n;->TeleConfLoadingView:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1061
    sget v1, Leuj$n;->TeleConfLoadingView_waveColor:I

    iget v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->i:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->i:I

    .line 1062
    sget v1, Leuj$n;->TeleConfLoadingView_radius:I

    sget v2, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->c:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    sput v1, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->c:F

    .line 1064
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->e:Ljava/util/List;

    if-nez v1, :cond_0

    .line 1065
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->e:Ljava/util/List;

    .line 1068
    :cond_0
    new-instance v1, Lezf;

    iget v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->i:I

    sget v3, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->c:F

    const/high16 v4, 0x437f0000    # 255.0f

    iget v5, p0, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->d:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v1, v2, v3, v4}, Lezf;-><init>(IFI)V

    .line 1069
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1071
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 110
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->b:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 115
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 116
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->b:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 117
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/high16 v8, 0x437f0000    # 255.0f

    const/16 v7, 0xa

    const/4 v6, 0x0

    .line 76
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 77
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->f:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->g:F

    .line 79
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->h:F

    .line 80
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->f:F

    .line 81
    const-wide v0, 0x3fa999999999999aL    # 0.05

    iget v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->f:F

    sget v3, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->c:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->j:F

    .line 82
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->d:F

    mul-float/2addr v0, v8

    iget v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->f:F

    sget v2, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->c:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->j:F

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->k:I

    .line 83
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->f:F

    sget v1, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->c:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sget v1, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->c:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->l:F

    .line 1089
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lezf;

    .line 1090
    iget v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->g:F

    iget v3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->h:F

    iget v4, v0, Lezf;->a:F

    iget-object v5, v0, Lezf;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1091
    iget v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->j:F

    .line 2055
    iget v3, v0, Lezf;->a:F

    iget v4, v0, Lezf;->d:F

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    iput v2, v0, Lezf;->a:F

    .line 2056
    iget v2, v0, Lezf;->d:F

    float-to-double v2, v2

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    add-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, v0, Lezf;->d:F

    .line 1092
    iget v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->k:I

    .line 3042
    iget v3, v0, Lezf;->b:I

    sub-int v2, v3, v2

    iput v2, v0, Lezf;->b:I

    .line 3043
    iget v2, v0, Lezf;->b:I

    if-ge v2, v7, :cond_1

    .line 3044
    iput v7, v0, Lezf;->b:I

    goto :goto_0

    .line 3047
    :cond_1
    iget-object v2, v0, Lezf;->c:Landroid/graphics/Paint;

    iget v0, v0, Lezf;->b:I

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 1094
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1095
    if-gtz v1, :cond_4

    .line 1096
    :cond_3
    :goto_1
    return-void

    .line 1098
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->e:Ljava/util/List;

    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lezf;

    iget v0, v0, Lezf;->a:F

    iget v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->l:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    .line 1099
    new-instance v0, Lezf;

    iget v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->i:I

    sget v3, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->c:F

    iget v4, p0, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->d:F

    mul-float/2addr v4, v8

    float-to-int v4, v4

    invoke-direct {v0, v2, v3, v4}, Lezf;-><init>(IFI)V

    .line 1100
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1102
    :cond_5
    const/4 v0, 0x2

    if-gt v1, v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->e:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lezf;

    iget v0, v0, Lezf;->b:I

    if-eq v0, v7, :cond_6

    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->e:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lezf;

    iget v0, v0, Lezf;->a:F

    iget v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->f:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 1103
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->e:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1
.end method

.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->invalidate()V

    .line 122
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfLoadingView;->b:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 123
    return-void
.end method
