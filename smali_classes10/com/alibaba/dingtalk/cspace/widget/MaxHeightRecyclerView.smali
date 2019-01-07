.class public Lcom/alibaba/dingtalk/cspace/widget/MaxHeightRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "MaxHeightRecyclerView.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/widget/MaxHeightRecyclerView;->a:I

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/widget/MaxHeightRecyclerView;->a:I

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/alibaba/dingtalk/cspace/widget/MaxHeightRecyclerView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/widget/MaxHeightRecyclerView;->a:I

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/alibaba/dingtalk/cspace/widget/MaxHeightRecyclerView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 35
    if-eqz p1, :cond_0

    .line 36
    sget-object v1, Lfzs$j;->MaxHeightRecyclerView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 37
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 38
    sget v1, Lfzs$j;->MaxHeightRecyclerView_maxHeight:I

    iget v2, p0, Lcom/alibaba/dingtalk/cspace/widget/MaxHeightRecyclerView;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/dingtalk/cspace/widget/MaxHeightRecyclerView;->a:I

    .line 39
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    :cond_0
    return-void
.end method


# virtual methods
.method public getMaxHeight()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/widget/MaxHeightRecyclerView;->a:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/widget/MaxHeightRecyclerView;->a:I

    if-lez v0, :cond_0

    .line 47
    iget v0, p0, Lcom/alibaba/dingtalk/cspace/widget/MaxHeightRecyclerView;->a:I

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 49
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->onMeasure(II)V

    .line 50
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0
    .param p1, "maxHeight"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/widget/MaxHeightRecyclerView;->a:I

    .line 58
    return-void
.end method
