.class public Lcom/alibaba/android/rimet/widget/MessageDivider;
.super Landroid/view/View;
.source "MessageDivider.java"


# instance fields
.field private a:Landroid/graphics/PathEffect;

.field private b:Landroid/graphics/Path;

.field private c:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-direct {p0}, Lcom/alibaba/android/rimet/widget/MessageDivider;->a()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-direct {p0}, Lcom/alibaba/android/rimet/widget/MessageDivider;->a()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-direct {p0}, Lcom/alibaba/android/rimet/widget/MessageDivider;->a()V

    .line 47
    return-void
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 55
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/widget/MessageDivider;->a:Landroid/graphics/PathEffect;

    .line 56
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/rimet/widget/MessageDivider;->b:Landroid/graphics/Path;

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/rimet/widget/MessageDivider;->c:Landroid/graphics/Paint;

    .line 58
    iget-object v0, p0, Lcom/alibaba/android/rimet/widget/MessageDivider;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    iget-object v0, p0, Lcom/alibaba/android/rimet/widget/MessageDivider;->c:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/widget/MessageDivider;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10034c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    return-void

    .line 55
    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x0
        0x40a00000    # 5.0f
        0x0
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 66
    iget-object v0, p0, Lcom/alibaba/android/rimet/widget/MessageDivider;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 67
    iget-object v0, p0, Lcom/alibaba/android/rimet/widget/MessageDivider;->b:Landroid/graphics/Path;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/widget/MessageDivider;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 68
    iget-object v0, p0, Lcom/alibaba/android/rimet/widget/MessageDivider;->b:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/widget/MessageDivider;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/widget/MessageDivider;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 69
    iget-object v0, p0, Lcom/alibaba/android/rimet/widget/MessageDivider;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/alibaba/android/rimet/widget/MessageDivider;->a:Landroid/graphics/PathEffect;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 70
    iget-object v0, p0, Lcom/alibaba/android/rimet/widget/MessageDivider;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/alibaba/android/rimet/widget/MessageDivider;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 71
    return-void
.end method
