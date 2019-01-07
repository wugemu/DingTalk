.class public Lcom/alibaba/android/dingtalkbase/widgets/views/LimitedSizeHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "LimitedSizeHorizontalScrollView.java"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 15
    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LimitedSizeHorizontalScrollView;->a:I

    .line 16
    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LimitedSizeHorizontalScrollView;->b:I

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/LimitedSizeHorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcig$l;->LimitedSizeHorizontalScrollView:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 22
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcig$l;->LimitedSizeHorizontalScrollView_max_width:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LimitedSizeHorizontalScrollView;->a:I

    .line 23
    sget v1, Lcig$l;->LimitedSizeHorizontalScrollView_max_height:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LimitedSizeHorizontalScrollView;->b:I

    .line 24
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 39
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 40
    .local v3, "widthMode":I
    if-eqz v3, :cond_1

    .line 41
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 42
    .local v2, "measuredWidth":I
    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LimitedSizeHorizontalScrollView;->a:I

    if-lez v4, :cond_0

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LimitedSizeHorizontalScrollView;->a:I

    if-ge v4, v2, :cond_0

    .line 43
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 44
    .local v0, "measureMode":I
    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LimitedSizeHorizontalScrollView;->a:I

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 46
    .end local v0    # "measureMode":I
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 47
    .local v1, "measuredHeight":I
    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LimitedSizeHorizontalScrollView;->b:I

    if-lez v4, :cond_1

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LimitedSizeHorizontalScrollView;->b:I

    if-ge v4, v1, :cond_1

    .line 48
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 49
    .restart local v0    # "measureMode":I
    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LimitedSizeHorizontalScrollView;->b:I

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 53
    .end local v0    # "measureMode":I
    .end local v1    # "measuredHeight":I
    .end local v2    # "measuredWidth":I
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 54
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0
    .param p1, "maxHeight"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LimitedSizeHorizontalScrollView;->b:I

    .line 35
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .param p1, "maxWidth"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LimitedSizeHorizontalScrollView;->a:I

    .line 31
    return-void
.end method
