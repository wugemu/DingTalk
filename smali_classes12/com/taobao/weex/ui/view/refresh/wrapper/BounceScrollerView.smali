.class public Lcom/taobao/weex/ui/view/refresh/wrapper/BounceScrollerView;
.super Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;
.source "BounceScrollerView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView",
        "<",
        "Lcom/taobao/weex/ui/view/WXScrollView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/taobao/weex/ui/component/WXScroller;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I
    .param p3, "waScroller"    # Lcom/taobao/weex/ui/component/WXScroller;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;-><init>(Landroid/content/Context;I)V

    .line 30
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceScrollerView;->init(Landroid/content/Context;)V

    .line 31
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceScrollerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceScrollerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXScrollView;

    invoke-virtual {v0, p3}, Lcom/taobao/weex/ui/view/WXScrollView;->setWAScroller(Lcom/taobao/weex/ui/component/WXScroller;)V

    .line 33
    :cond_0
    return-void
.end method


# virtual methods
.method public onLoadmoreComplete()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public onRefreshingComplete()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public bridge synthetic setInnerView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceScrollerView;->setInnerView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXScrollView;

    move-result-object v0

    return-object v0
.end method

.method public setInnerView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXScrollView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    new-instance v0, Lcom/taobao/weex/ui/view/WXScrollView;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/view/WXScrollView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
