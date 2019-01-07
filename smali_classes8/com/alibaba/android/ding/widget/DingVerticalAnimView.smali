.class public Lcom/alibaba/android/ding/widget/DingVerticalAnimView;
.super Landroid/view/View;
.source "DingVerticalAnimView.java"


# static fields
.field private static final a:I

.field private static final b:I


# instance fields
.field private c:F

.field private d:Landroid/graphics/Paint;

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string/jumbo v0, "#15BC83"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alibaba/android/ding/widget/DingVerticalAnimView;->a:I

    .line 36
    const-string/jumbo v0, "#E3E4E4"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alibaba/android/ding/widget/DingVerticalAnimView;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 41
    sget v0, Lcom/alibaba/android/ding/widget/DingVerticalAnimView;->a:I

    iput v0, p0, Lcom/alibaba/android/ding/widget/DingVerticalAnimView;->e:I

    .line 42
    sget v0, Lcom/alibaba/android/ding/widget/DingVerticalAnimView;->b:I

    iput v0, p0, Lcom/alibaba/android/ding/widget/DingVerticalAnimView;->f:I

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/ding/widget/DingVerticalAnimView;->a(Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    sget v0, Lcom/alibaba/android/ding/widget/DingVerticalAnimView;->a:I

    iput v0, p0, Lcom/alibaba/android/ding/widget/DingVerticalAnimView;->e:I

    .line 42
    sget v0, Lcom/alibaba/android/ding/widget/DingVerticalAnimView;->b:I

    iput v0, p0, Lcom/alibaba/android/ding/widget/DingVerticalAnimView;->f:I

    .line 51
    invoke-direct {p0, p2}, Lcom/alibaba/android/ding/widget/DingVerticalAnimView;->a(Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    sget v0, Lcom/alibaba/android/ding/widget/DingVerticalAnimView;->a:I

    iput v0, p0, Lcom/alibaba/android/ding/widget/DingVerticalAnimView;->e:I

    .line 42
    sget v0, Lcom/alibaba/android/ding/widget/DingVerticalAnimView;->b:I

    iput v0, p0, Lcom/alibaba/android/ding/widget/DingVerticalAnimView;->f:I

    .line 56
    invoke-direct {p0, p2}, Lcom/alibaba/android/ding/widget/DingVerticalAnimView;->a(Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 41
    sget v0, Lcom/alibaba/android/ding/widget/DingVerticalAnimView;->a:I

    iput v0, p0, Lcom/alibaba/android/ding/widget/DingVerticalAnimView;->e:I

    .line 42
    sget v0, Lcom/alibaba/android/ding/widget/DingVerticalAnimView;->b:I

    iput v0, p0, Lcom/alibaba/android/ding/widget/DingVerticalAnimView;->f:I

    .line 62
    invoke-direct {p0, p2}, Lcom/alibaba/android/ding/widget/DingVerticalAnimView;->a(Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 66
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/alibaba/android/ding/widget/DingVerticalAnimView;->d:Landroid/graphics/Paint;

    .line 67
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingVerticalAnimView;->d:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 69
    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingVerticalAnimView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Laxp$k;->DingVerticalAnimView:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 71
    .local v0, "ta":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 72
    sget v1, Laxp$k;->DingVerticalAnimView_color_start:I

    sget v2, Lcom/alibaba/android/ding/widget/DingVerticalAnimView;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/ding/widget/DingVerticalAnimView;->e:I

    .line 73
    sget v1, Laxp$k;->DingVerticalAnimView_color_end:I

    sget v2, Lcom/alibaba/android/ding/widget/DingVerticalAnimView;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/ding/widget/DingVerticalAnimView;->f:I

    .line 74
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    .end local v0    # "ta":Landroid/content/res/TypedArray;
    :cond_0
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
    const/4 v1, 0x0

    .line 81
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 82
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingVerticalAnimView;->getMeasuredWidth()I

    move-result v7

    .line 83
    .local v7, "width":I
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingVerticalAnimView;->getMeasuredHeight()I

    move-result v6

    .line 84
    .local v6, "height":I
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVerticalAnimView;->d:Landroid/graphics/Paint;

    iget v2, p0, Lcom/alibaba/android/ding/widget/DingVerticalAnimView;->e:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    int-to-float v3, v7

    int-to-float v0, v6

    iget v2, p0, Lcom/alibaba/android/ding/widget/DingVerticalAnimView;->c:F

    mul-float v4, v0, v2

    iget-object v5, p0, Lcom/alibaba/android/ding/widget/DingVerticalAnimView;->d:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 86
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingVerticalAnimView;->d:Landroid/graphics/Paint;

    iget v2, p0, Lcom/alibaba/android/ding/widget/DingVerticalAnimView;->f:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    int-to-float v0, v6

    iget v2, p0, Lcom/alibaba/android/ding/widget/DingVerticalAnimView;->c:F

    mul-float/2addr v2, v0

    int-to-float v3, v7

    int-to-float v4, v6

    iget-object v5, p0, Lcom/alibaba/android/ding/widget/DingVerticalAnimView;->d:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 88
    return-void
.end method

.method public setAnimValue(F)V
    .locals 3
    .param p1, "value"    # F

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 95
    cmpl-float v0, p1, v2

    if-lez v0, :cond_0

    .line 96
    iput v2, p0, Lcom/alibaba/android/ding/widget/DingVerticalAnimView;->c:F

    .line 102
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingVerticalAnimView;->invalidate()V

    .line 103
    return-void

    .line 97
    :cond_0
    cmpg-float v0, p1, v1

    if-gez v0, :cond_1

    .line 98
    iput v1, p0, Lcom/alibaba/android/ding/widget/DingVerticalAnimView;->c:F

    goto :goto_0

    .line 100
    :cond_1
    iput p1, p0, Lcom/alibaba/android/ding/widget/DingVerticalAnimView;->c:F

    goto :goto_0
.end method
