.class public final Ljug$b;
.super Landroid/widget/FrameLayout;
.source "StickyGridHeadersBaseAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Ljug;

.field private b:I


# direct methods
.method public constructor <init>(Ljug;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Ljug;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 418
    iput-object p1, p0, Ljug$b;->a:Ljug;

    .line 419
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 420
    return-void
.end method


# virtual methods
.method protected final bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 415
    invoke-virtual {p0}, Ljug$b;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected final generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, -0x1

    .line 443
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public final getHeaderId()I
    .locals 1

    .prologue
    .line 431
    iget v0, p0, Ljug$b;->b:I

    return v0
.end method

.method protected final onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 448
    invoke-virtual {p0}, Ljug$b;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 449
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 450
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_0

    .line 451
    invoke-virtual {p0}, Ljug$b;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    .line 452
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 454
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 456
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 455
    invoke-static {v4, v6, v5}, Ljug$b;->getChildMeasureSpec(III)I

    move-result v0

    .line 457
    .local v0, "heightSpec":I
    iget-object v4, p0, Ljug$b;->a:Ljug;

    .line 458
    invoke-static {v4}, Ljug;->a(Ljug;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 457
    invoke-static {v4, v6, v5}, Ljug$b;->getChildMeasureSpec(III)I

    move-result v3

    .line 460
    .local v3, "widthSpec":I
    invoke-virtual {v2, v3, v0}, Landroid/view/View;->measure(II)V

    .line 462
    .end local v0    # "heightSpec":I
    .end local v3    # "widthSpec":I
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Ljug$b;->setMeasuredDimension(II)V

    .line 463
    return-void
.end method

.method public final setHeaderId(I)V
    .locals 0
    .param p1, "headerId"    # I

    .prologue
    .line 438
    iput p1, p0, Ljug$b;->b:I

    .line 439
    return-void
.end method
