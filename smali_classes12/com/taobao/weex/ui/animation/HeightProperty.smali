.class public Lcom/taobao/weex/ui/animation/HeightProperty;
.super Lcom/taobao/weex/ui/animation/LayoutParamsProperty;
.source "HeightProperty.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/taobao/weex/ui/animation/LayoutParamsProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Landroid/view/View;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/animation/LayoutParamsProperty;->get(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected getProperty(Landroid/view/ViewGroup$LayoutParams;)Ljava/lang/Integer;
    .locals 1
    .param p1, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 28
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/animation/LayoutParamsProperty;->set(Landroid/view/View;Ljava/lang/Integer;)V

    return-void
.end method

.method protected setProperty(Landroid/view/ViewGroup$LayoutParams;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;
    .param p2, "expected"    # Ljava/lang/Integer;

    .prologue
    .line 33
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 34
    return-void
.end method
