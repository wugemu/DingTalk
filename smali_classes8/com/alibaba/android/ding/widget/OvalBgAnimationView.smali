.class public Lcom/alibaba/android/ding/widget/OvalBgAnimationView;
.super Landroid/view/View;
.source "OvalBgAnimationView.java"


# instance fields
.field public a:F

.field public b:Landroid/animation/ValueAnimator;

.field public c:Landroid/animation/ValueAnimator;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->a()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->a()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->a()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->a()V

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/widget/OvalBgAnimationView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/OvalBgAnimationView;
    .param p1, "x1"    # F

    .prologue
    .line 20
    iput p1, p0, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->a:F

    return p1
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->d:Landroid/graphics/Paint;

    .line 53
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->d:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 54
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->e:Landroid/graphics/RectF;

    .line 55
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 157
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 158
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->getWidth()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget v7, p0, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->a:F

    mul-float v4, v6, v7

    .line 159
    .local v4, "xRadius":F
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->getHeight()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget v7, p0, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->a:F

    mul-float v5, v6, v7

    .line 160
    .local v5, "yRadius":F
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float v1, v6, v4

    .line 161
    .local v1, "left":F
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float v3, v6, v5

    .line 162
    .local v3, "top":F
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float v2, v6, v4

    .line 163
    .local v2, "right":F
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float v0, v6, v5

    .line 164
    .local v0, "bottom":F
    iget-object v6, p0, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->e:Landroid/graphics/RectF;

    invoke-virtual {v6, v1, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 165
    iget-object v6, p0, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->e:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 166
    return-void
.end method

.method public setBgColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/OvalBgAnimationView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    return-void
.end method
