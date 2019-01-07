.class public Lcom/alibaba/android/dingtalkbase/widgets/RoundCornerRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "RoundCornerRelativeLayout.java"


# instance fields
.field private a:Landroid/graphics/Path;

.field private b:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/RoundCornerRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/RoundCornerRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/high16 v2, 0x40800000    # 4.0f

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    iput v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/RoundCornerRelativeLayout;->b:F

    .line 36
    sget-object v1, Lcig$l;->RoundCornerRelativeLayouts:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 37
    .local v0, "array":Landroid/content/res/TypedArray;
    sget v1, Lcig$l;->RoundCornerRelativeLayouts_rl_corner_radius:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/RoundCornerRelativeLayout;->b:F

    .line 38
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 39
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 44
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/RoundCornerRelativeLayout;->a:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 45
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    .line 46
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 47
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

    .line 51
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 52
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 53
    .local v0, "r":Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/RoundCornerRelativeLayout;->a:Landroid/graphics/Path;

    .line 54
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/RoundCornerRelativeLayout;->a:Landroid/graphics/Path;

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/RoundCornerRelativeLayout;->b:F

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/RoundCornerRelativeLayout;->b:F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 55
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/RoundCornerRelativeLayout;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 56
    return-void
.end method

.method public setCornerRadius(I)V
    .locals 1
    .param p1, "radius"    # I

    .prologue
    .line 59
    int-to-float v0, p1

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/RoundCornerRelativeLayout;->b:F

    .line 60
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/RoundCornerRelativeLayout;->invalidate()V

    .line 61
    return-void
.end method
