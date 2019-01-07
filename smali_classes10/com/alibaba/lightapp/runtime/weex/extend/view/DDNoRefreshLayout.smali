.class public Lcom/alibaba/lightapp/runtime/weex/extend/view/DDNoRefreshLayout;
.super Landroid/widget/FrameLayout;
.source "DDNoRefreshLayout.java"


# instance fields
.field private path:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 67
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDNoRefreshLayout;->path:Landroid/graphics/Path;

    .line 18
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
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDNoRefreshLayout;->path:Landroid/graphics/Path;

    .line 22
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
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDNoRefreshLayout;->path:Landroid/graphics/Path;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
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
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 67
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDNoRefreshLayout;->path:Landroid/graphics/Path;

    .line 31
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 87
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 88
    .local v0, "save":I
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDNoRefreshLayout;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 89
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 90
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 91
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 35
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 37
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 38
    .local v4, "heightMode":I
    if-nez v4, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDNoRefreshLayout;->getChildCount()I

    move-result v9

    if-lez v9, :cond_0

    .line 43
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDNoRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDNoRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget v7, v9, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 47
    .local v7, "targetSdkVersion":I
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 48
    .local v6, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v9, 0x17

    if-lt v7, v9, :cond_2

    .line 49
    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int v8, v9, v10

    .line 50
    .local v8, "widthPadding":I
    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int v5, v9, v10

    .line 56
    .local v5, "heightPadding":I
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDNoRefreshLayout;->getMeasuredHeight()I

    move-result v9

    sub-int v3, v9, v5

    .line 57
    .local v3, "desiredHeight":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    if-ge v9, v3, :cond_0

    .line 58
    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {p1, v8, v9}, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDNoRefreshLayout;->getChildMeasureSpec(III)I

    move-result v2

    .line 60
    .local v2, "childWidthMeasureSpec":I
    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 62
    .local v1, "childHeightMeasureSpec":I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0

    .line 52
    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    .end local v3    # "desiredHeight":I
    .end local v5    # "heightPadding":I
    .end local v8    # "widthPadding":I
    :cond_2
    const/4 v8, 0x0

    .line 53
    .restart local v8    # "widthPadding":I
    const/4 v5, 0x0

    .restart local v5    # "heightPadding":I
    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 71
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 78
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDNoRefreshLayout;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 79
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p1

    add-int/lit16 v2, p2, 0xc8

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 80
    .local v0, "r":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDNoRefreshLayout;->path:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v3, v3, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 81
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/DDNoRefreshLayout;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 83
    return-void
.end method
