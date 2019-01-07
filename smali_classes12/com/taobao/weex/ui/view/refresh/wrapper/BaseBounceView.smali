.class public abstract Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;
.super Landroid/widget/FrameLayout;
.source "BaseBounceView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Landroid/widget/FrameLayout;"
    }
.end annotation


# instance fields
.field private mInnerView:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mOrientation:I

.field protected swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I

    .prologue
    .line 49
    .local p0, "this":Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;, "Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "orientation"    # I

    .prologue
    .line 53
    .local p0, "this":Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;, "Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView<TT;>;"
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->mOrientation:I

    .line 54
    iput p3, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->mOrientation:I

    .line 55
    return-void
.end method

.method private createBounceView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;, "Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView<TT;>;"
    const/4 v2, -0x1

    .line 93
    new-instance v0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    .line 94
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->setInnerView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->mInnerView:Landroid/view/View;

    .line 96
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->mInnerView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 100
    :goto_0
    return-object v0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->mInnerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->addTargetView(Landroid/view/View;)V

    .line 99
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-virtual {p0, v0, v2, v2}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->addView(Landroid/view/View;II)V

    .line 100
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    goto :goto_0
.end method


# virtual methods
.method public finishPullLoad()V
    .locals 1

    .prologue
    .line 85
    .local p0, "this":Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;, "Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->finishPullLoad()V

    .line 87
    :cond_0
    return-void
.end method

.method public finishPullRefresh()V
    .locals 1

    .prologue
    .line 80
    .local p0, "this":Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;, "Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->finishPullRefresh()V

    .line 82
    :cond_0
    return-void
.end method

.method public getInnerView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;, "Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->mInnerView:Landroid/view/View;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;, "Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView<TT;>;"
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->mOrientation:I

    return v0
.end method

.method public getSwipeLayout()Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;
    .locals 1

    .prologue
    .line 220
    .local p0, "this":Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;, "Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    .local p0, "this":Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;, "Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView<TT;>;"
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->createBounceView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    .line 63
    return-void
.end method

.method isVertical()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;, "Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView<TT;>;"
    const/4 v0, 0x1

    .line 66
    iget v1, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->mOrientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract onLoadmoreComplete()V
.end method

.method public abstract onRefreshingComplete()V
.end method

.method public removeFooterView(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 2
    .param p1, "loading"    # Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;, "Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView<TT;>;"
    const/4 v1, 0x0

    .line 169
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->setLoadmoreEnable(Z)V

    .line 170
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->getFooterView()Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->setLoadingHeight(I)V

    .line 173
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->getFooterView()Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->removeView(Landroid/view/View;)V

    .line 174
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->finishPullLoad()V

    .line 177
    :cond_0
    return-void
.end method

.method public removeHeaderView(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 2
    .param p1, "refresh"    # Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;, "Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView<TT;>;"
    const/4 v1, 0x0

    .line 180
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->setRefreshEnable(Z)V

    .line 181
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->getHeaderView()Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->setRefreshHeight(I)V

    .line 184
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->getHeaderView()Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->removeView(Landroid/view/View;)V

    .line 185
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->finishPullRefresh()V

    .line 188
    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;, "Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView<TT;>;"
    const/4 v1, 0x0

    .line 202
    instance-of v0, p1, Lcom/taobao/weex/ui/view/WXLoadingLayout;

    if-eqz v0, :cond_1

    .line 203
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->finishPullLoad()V

    .line 204
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->setLoadmoreEnable(Z)V

    .line 205
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->getFooterView()Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->removeView(Landroid/view/View;)V

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    instance-of v0, p1, Lcom/taobao/weex/ui/view/WXRefreshLayout;

    if-eqz v0, :cond_2

    .line 209
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->finishPullRefresh()V

    .line 210
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->setRefreshEnable(Z)V

    .line 211
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->getHeaderView()Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 215
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setFooterView(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 7
    .param p1, "loading"    # Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 145
    .local p0, "this":Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;, "Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView<TT;>;"
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->setLoadmoreEnable(Z)V

    .line 146
    iget-object v5, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    if-eqz v5, :cond_1

    .line 147
    iget-object v5, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->getFooterView()Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    move-result-object v4

    .line 148
    .local v4, "refreshView":Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;
    if-eqz v4, :cond_1

    .line 149
    if-eqz p1, :cond_1

    .line 150
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutHeight()F

    move-result v5

    float-to-int v3, v5

    .line 151
    .local v3, "loadingHeight":I
    iget-object v5, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-virtual {v5, v3}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->setLoadingHeight(I)V

    .line 152
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v5

    const-string/jumbo v6, "backgroundColor"

    invoke-virtual {v5, v6}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 153
    .local v2, "colorStr":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "bgColor":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 155
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 156
    invoke-static {v0}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result v1

    .line 157
    .local v1, "colorInt":I
    if-eqz v1, :cond_0

    .line 158
    iget-object v5, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-virtual {v5, v1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->setLoadingBgColor(I)V

    .line 162
    .end local v1    # "colorInt":I
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setRefreshView(Landroid/view/View;)V

    .line 166
    .end local v0    # "bgColor":Ljava/lang/String;
    .end local v2    # "colorStr":Ljava/lang/String;
    .end local v3    # "loadingHeight":I
    .end local v4    # "refreshView":Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;
    :cond_1
    return-void
.end method

.method public setHeaderView(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 7
    .param p1, "refresh"    # Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 117
    .local p0, "this":Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;, "Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView<TT;>;"
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->setRefreshEnable(Z)V

    .line 118
    iget-object v5, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    if-eqz v5, :cond_1

    .line 119
    iget-object v5, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->getHeaderView()Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    move-result-object v4

    .line 120
    .local v4, "refreshView":Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;
    if-eqz v4, :cond_1

    .line 121
    if-eqz p1, :cond_1

    .line 122
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutHeight()F

    move-result v5

    float-to-int v3, v5

    .line 123
    .local v3, "refreshHeight":I
    iget-object v5, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-virtual {v5, v3}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->setRefreshHeight(I)V

    .line 124
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v5

    const-string/jumbo v6, "backgroundColor"

    invoke-virtual {v5, v6}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 125
    .local v2, "colorStr":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "bgColor":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 127
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 128
    invoke-static {v0}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result v1

    .line 129
    .local v1, "colorInt":I
    if-eqz v1, :cond_0

    .line 130
    iget-object v5, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-virtual {v5, v1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->setRefreshBgColor(I)V

    .line 134
    .end local v1    # "colorInt":I
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setRefreshView(Landroid/view/View;)V

    .line 138
    .end local v0    # "bgColor":Ljava/lang/String;
    .end local v2    # "colorStr":Ljava/lang/String;
    .end local v3    # "refreshHeight":I
    .end local v4    # "refreshView":Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;
    :cond_1
    return-void
.end method

.method public abstract setInnerView(Landroid/content/Context;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation
.end method

.method public setLoadmoreEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 196
    .local p0, "this":Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;, "Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->setPullLoadEnable(Z)V

    .line 198
    :cond_0
    return-void
.end method

.method public setOnLoadingListener(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnLoadingListener;)V
    .locals 1
    .param p1, "onLoadingListener"    # Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnLoadingListener;

    .prologue
    .line 75
    .local p0, "this":Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;, "Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->setOnLoadingListener(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnLoadingListener;)V

    .line 77
    :cond_0
    return-void
.end method

.method public setOnRefreshListener(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnRefreshListener;)V
    .locals 1
    .param p1, "onRefreshListener"    # Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnRefreshListener;

    .prologue
    .line 70
    .local p0, "this":Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;, "Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->setOnRefreshListener(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnRefreshListener;)V

    .line 72
    :cond_0
    return-void
.end method

.method public setRefreshEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 191
    .local p0, "this":Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;, "Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->setPullRefreshEnable(Z)V

    .line 193
    :cond_0
    return-void
.end method
