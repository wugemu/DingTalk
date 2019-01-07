.class public Lcom/alibaba/android/dingtalkim/adapters/taob2c/ui/RoundCornerLinearLayout;
.super Landroid/widget/LinearLayout;
.source "RoundCornerLinearLayout.java"


# instance fields
.field a:Landroid/graphics/Path;

.field b:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lcom/alibaba/android/dingtalkim/adapters/taob2c/ui/RoundCornerLinearLayout;->b:F

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lcom/alibaba/android/dingtalkim/adapters/taob2c/ui/RoundCornerLinearLayout;->b:F

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lcom/alibaba/android/dingtalkim/adapters/taob2c/ui/RoundCornerLinearLayout;->b:F

    .line 33
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 37
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 38
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/adapters/taob2c/ui/RoundCornerLinearLayout;->a:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 39
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 40
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 41
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 45
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 46
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 47
    .local v0, "r":Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/adapters/taob2c/ui/RoundCornerLinearLayout;->a:Landroid/graphics/Path;

    .line 48
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/adapters/taob2c/ui/RoundCornerLinearLayout;->a:Landroid/graphics/Path;

    iget v2, p0, Lcom/alibaba/android/dingtalkim/adapters/taob2c/ui/RoundCornerLinearLayout;->b:F

    iget v3, p0, Lcom/alibaba/android/dingtalkim/adapters/taob2c/ui/RoundCornerLinearLayout;->b:F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 49
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/adapters/taob2c/ui/RoundCornerLinearLayout;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 50
    return-void
.end method

.method public setCornerRadius(I)V
    .locals 1
    .param p1, "radius"    # I

    .prologue
    .line 53
    int-to-float v0, p1

    iput v0, p0, Lcom/alibaba/android/dingtalkim/adapters/taob2c/ui/RoundCornerLinearLayout;->b:F

    .line 54
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/adapters/taob2c/ui/RoundCornerLinearLayout;->invalidate()V

    .line 55
    return-void
.end method
