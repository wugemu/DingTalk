.class public Lcom/taobao/weex/devtools/inspector/elements/android/WXVContainerDescriptor;
.super Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;
.source "WXVContainerDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor",
        "<",
        "Lcom/taobao/weex/ui/component/WXVContainer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;-><init>()V

    return-void
.end method


# virtual methods
.method protected onGetChildren(Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/devtools/common/Accumulator;)V
    .locals 3
    .param p1, "element"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/WXVContainer;",
            "Lcom/taobao/weex/devtools/common/Accumulator",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 20
    .local p2, "children":Lcom/taobao/weex/devtools/common/Accumulator;, "Lcom/taobao/weex/devtools/common/Accumulator<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 21
    invoke-virtual {p1, v1}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    .line 22
    .local v0, "component":Lcom/taobao/weex/ui/component/WXComponent;
    if-eqz v0, :cond_0

    .line 23
    invoke-interface {p2, v0}, Lcom/taobao/weex/devtools/common/Accumulator;->store(Ljava/lang/Object;)V

    .line 20
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 26
    .end local v0    # "component":Lcom/taobao/weex/ui/component/WXComponent;
    :cond_1
    return-void
.end method

.method protected bridge synthetic onGetChildren(Ljava/lang/Object;Lcom/taobao/weex/devtools/common/Accumulator;)V
    .locals 0

    .prologue
    .line 16
    check-cast p1, Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/devtools/inspector/elements/android/WXVContainerDescriptor;->onGetChildren(Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/devtools/common/Accumulator;)V

    return-void
.end method

.method protected onGetStyles(Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;)V
    .locals 6
    .param p1, "element"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p2, "accumulator"    # Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 30
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXVContainer;->getRealView()Landroid/view/ViewGroup;

    move-result-object v2

    .line 31
    .local v2, "view":Landroid/view/ViewGroup;
    if-eqz v2, :cond_1

    .line 32
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 33
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_1

    .line 34
    instance-of v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_1

    move-object v1, v0

    .line 35
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 36
    .local v1, "margins":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-nez v3, :cond_0

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-nez v3, :cond_0

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-nez v3, :cond_0

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eqz v3, :cond_1

    .line 40
    :cond_0
    const-string/jumbo v3, "margin-left"

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4, v5}, Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;->store(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 41
    const-string/jumbo v3, "margin-top"

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4, v5}, Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;->store(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 42
    const-string/jumbo v3, "margin-right"

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4, v5}, Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;->store(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 43
    const-string/jumbo v3, "margin-bottom"

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4, v5}, Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;->store(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 51
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "margins":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    return-void
.end method

.method protected bridge synthetic onGetStyles(Ljava/lang/Object;Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;)V
    .locals 0

    .prologue
    .line 16
    check-cast p1, Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/devtools/inspector/elements/android/WXVContainerDescriptor;->onGetStyles(Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;)V

    return-void
.end method
