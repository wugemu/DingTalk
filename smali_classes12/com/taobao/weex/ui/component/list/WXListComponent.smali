.class public Lcom/taobao/weex/ui/component/list/WXListComponent;
.super Lcom/taobao/weex/ui/component/list/BasicListComponent;
.source "WXListComponent.java"


# annotations
.annotation runtime Lcom/taobao/weex/annotation/Component;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/ui/component/list/BasicListComponent",
        "<",
        "Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;",
        ">;"
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private hasSetGapItemDecoration:Z

.field private mPaddingLeft:F

.field private mPaddingRight:F

.field private mSpanOffsets:[Ljava/lang/Float;

.field private mSpanOffsetsStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Ljava/lang/String;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 0
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p3, "instanceId"    # Ljava/lang/String;
    .param p4, "isLazy"    # Z
    .param p5, "basicComponentData"    # Lcom/taobao/weex/ui/action/BasicComponentData;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/taobao/weex/ui/component/list/WXListComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 1
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p3, "lazy"    # Z
    .param p4, "basicComponentData"    # Lcom/taobao/weex/ui/action/BasicComponentData;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p4}, Lcom/taobao/weex/ui/component/list/BasicListComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 58
    const-string/jumbo v0, "WXListComponent"

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->TAG:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->hasSetGapItemDecoration:Z

    .line 74
    return-void
.end method

.method private hasColumnPros()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    const-string/jumbo v1, "columnWidth"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mColumnWidth:F

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    const-string/jumbo v2, "columnWidth"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXUtils;->parseFloat(Ljava/lang/Object;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    const-string/jumbo v1, "columnCount"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mColumnCount:I

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    const-string/jumbo v2, "columnCount"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXUtils;->parseInt(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    const-string/jumbo v1, "columnGap"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mColumnGap:F

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    const-string/jumbo v2, "columnGap"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXUtils;->parseFloat(Ljava/lang/Object;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRecycler(Lcom/taobao/weex/ui/component/WXComponent;)Z
    .locals 2
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 289
    const-string/jumbo v0, "waterfall"

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getComponentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "recycle-list"

    .line 290
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getComponentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "recycler"

    .line 291
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getComponentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeFooterOrHeader(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 1
    .param p1, "child"    # Lcom/taobao/weex/ui/component/WXComponent;

    .prologue
    .line 281
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXLoading;

    if-eqz v0, :cond_1

    .line 282
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->removeFooterView(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXRefresh;

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->removeHeaderView(Lcom/taobao/weex/ui/component/WXComponent;)V

    goto :goto_0
.end method

.method private setRefreshOrLoading(Lcom/taobao/weex/ui/component/WXComponent;)Z
    .locals 6
    .param p1, "child"    # Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v4, 0x64

    const/4 v2, 0x1

    .line 114
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setRefreshOrLoading: HostView == null !!!!!! check list attr has append =tree"

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 139
    :goto_0
    return v0

    .line 118
    :cond_0
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXRefresh;

    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    move-object v1, p1

    check-cast v1, Lcom/taobao/weex/ui/component/WXRefresh;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->setOnRefreshListener(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnRefreshListener;)V

    .line 120
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    new-instance v1, Lcom/taobao/weex/ui/component/list/WXListComponent$1;

    invoke-direct {v1, p0, p1}, Lcom/taobao/weex/ui/component/list/WXListComponent$1;-><init>(Lcom/taobao/weex/ui/component/list/WXListComponent;Lcom/taobao/weex/ui/component/WXComponent;)V

    invoke-static {v1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    move v0, v2

    .line 126
    goto :goto_0

    .line 129
    :cond_1
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXLoading;

    if-eqz v0, :cond_2

    .line 130
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    move-object v1, p1

    check-cast v1, Lcom/taobao/weex/ui/component/WXLoading;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->setOnLoadingListener(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnLoadingListener;)V

    .line 131
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    new-instance v1, Lcom/taobao/weex/ui/component/list/WXListComponent$2;

    invoke-direct {v1, p0, p1}, Lcom/taobao/weex/ui/component/list/WXListComponent$2;-><init>(Lcom/taobao/weex/ui/component/list/WXListComponent;Lcom/taobao/weex/ui/component/WXComponent;)V

    invoke-static {v1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    move v0, v2

    .line 137
    goto :goto_0

    .line 139
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateRecyclerAttr()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v3

    const-string/jumbo v4, "columnCount"

    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/utils/WXUtils;->parseInt(Ljava/lang/Object;)I

    move-result v3

    iput v3, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mColumnCount:I

    .line 144
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v3

    const-string/jumbo v4, "columnGap"

    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/utils/WXUtils;->parseFloat(Ljava/lang/Object;)F

    move-result v3

    iput v3, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mColumnGap:F

    .line 145
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v3

    const-string/jumbo v4, "columnWidth"

    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/utils/WXUtils;->parseFloat(Ljava/lang/Object;)F

    move-result v3

    iput v3, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mColumnWidth:F

    .line 146
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v3

    const-string/jumbo v4, "paddingLeft"

    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/utils/WXUtils;->parseFloat(Ljava/lang/Object;)F

    move-result v3

    iput v3, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mPaddingLeft:F

    .line 147
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v3

    const-string/jumbo v4, "paddingRight"

    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/utils/WXUtils;->parseFloat(Ljava/lang/Object;)F

    move-result v3

    iput v3, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mPaddingRight:F

    .line 148
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v3

    const-string/jumbo v4, "spanOffsets"

    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mSpanOffsetsStr:Ljava/lang/String;

    .line 151
    :try_start_0
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mSpanOffsetsStr:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 152
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mSpanOffsetsStr:Ljava/lang/String;

    const-class v4, Ljava/lang/Float;

    invoke-static {v3, v4}, Lgxk;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 153
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 154
    .local v2, "size":I
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mSpanOffsets:[Ljava/lang/Float;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mSpanOffsets:[Ljava/lang/Float;

    array-length v3, v3

    if-eq v3, v2, :cond_1

    .line 155
    :cond_0
    new-array v3, v2, [Ljava/lang/Float;

    iput-object v3, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mSpanOffsets:[Ljava/lang/Float;

    .line 157
    :cond_1
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mSpanOffsets:[Ljava/lang/Float;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v2    # "size":I
    :goto_0
    iget-boolean v3, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->hasSetGapItemDecoration:Z

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getSpanOffsets()[Ljava/lang/Float;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 166
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v3}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 167
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->hasSetGapItemDecoration:Z

    .line 168
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v3}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    new-instance v4, Lcom/taobao/weex/ui/component/list/GapItemDecoration;

    invoke-direct {v4, p0}, Lcom/taobao/weex/ui/component/list/GapItemDecoration;-><init>(Lcom/taobao/weex/ui/component/list/WXListComponent;)V

    invoke-virtual {v3, v4}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 170
    :cond_2
    return-void

    .line 159
    :cond_3
    const/4 v3, 0x0

    :try_start_1
    iput-object v3, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mSpanOffsets:[Ljava/lang/Float;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "Parser SpanOffsets error "

    invoke-static {v3, v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V
    .locals 6
    .param p1, "child"    # Lcom/taobao/weex/ui/component/WXComponent;
    .param p2, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V

    .line 90
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    if-ge p2, v0, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/WXListComponent;->setRefreshOrLoading(Lcom/taobao/weex/ui/component/WXComponent;)Z

    .line 95
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->hasColumnPros()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->updateRecyclerAttr()V

    .line 97
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mLayoutType:I

    iget v3, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mColumnCount:I

    iget v4, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mColumnGap:F

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getOrientation()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->initView(Landroid/content/Context;IIFI)V

    goto :goto_0
.end method

.method public createChildViewAt(I)V
    .locals 6
    .param p1, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v4, 0x64

    .line 243
    move v1, p1

    .line 244
    .local v1, "indexToCreate":I
    if-gez p1, :cond_1

    .line 245
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->childCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 246
    if-gez v1, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    .line 251
    .local v0, "child":Lcom/taobao/weex/ui/component/WXComponent;
    instance-of v2, v0, Lcom/taobao/weex/ui/component/WXBaseRefresh;

    if-eqz v2, :cond_3

    .line 252
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->createView()V

    .line 253
    instance-of v2, v0, Lcom/taobao/weex/ui/component/WXRefresh;

    if-eqz v2, :cond_2

    .line 254
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    move-object v3, v0

    check-cast v3, Lcom/taobao/weex/ui/component/WXRefresh;

    invoke-virtual {v2, v3}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->setOnRefreshListener(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnRefreshListener;)V

    .line 255
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    new-instance v3, Lcom/taobao/weex/ui/component/list/WXListComponent$3;

    invoke-direct {v3, p0, v0}, Lcom/taobao/weex/ui/component/list/WXListComponent$3;-><init>(Lcom/taobao/weex/ui/component/list/WXListComponent;Lcom/taobao/weex/ui/component/WXComponent;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 261
    :cond_2
    instance-of v2, v0, Lcom/taobao/weex/ui/component/WXLoading;

    if-eqz v2, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    move-object v3, v0

    check-cast v3, Lcom/taobao/weex/ui/component/WXLoading;

    invoke-virtual {v2, v3}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->setOnLoadingListener(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnLoadingListener;)V

    .line 263
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    new-instance v3, Lcom/taobao/weex/ui/component/list/WXListComponent$4;

    invoke-direct {v3, p0, v0}, Lcom/taobao/weex/ui/component/list/WXListComponent$4;-><init>(Lcom/taobao/weex/ui/component/list/WXListComponent;Lcom/taobao/weex/ui/component/WXComponent;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 271
    :cond_3
    invoke-super {p0, v1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->createChildViewAt(I)V

    goto :goto_0
.end method

.method protected bridge synthetic generateListView(Landroid/content/Context;I)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/list/WXListComponent;->generateListView(Landroid/content/Context;I)Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    move-result-object v0

    return-object v0
.end method

.method protected generateListView(Landroid/content/Context;I)Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 78
    new-instance v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    iget v2, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mLayoutType:I

    iget v3, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mColumnCount:I

    iget v4, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mColumnGap:F

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;-><init>(Landroid/content/Context;IIFI)V

    .line 79
    .local v0, "bounceRecyclerView":Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getSwipeLayout()Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    const-string/jumbo v2, "nestedScrollingEnabled"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getSwipeLayout()Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->setNestedScrollingEnabled(Z)V

    .line 84
    :cond_0
    return-object v0
.end method

.method public getSpanOffsets()[Ljava/lang/Float;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mSpanOffsets:[Ljava/lang/Float;

    return-object v0
.end method

.method public remove(Lcom/taobao/weex/ui/component/WXComponent;Z)V
    .locals 0
    .param p1, "child"    # Lcom/taobao/weex/ui/component/WXComponent;
    .param p2, "destroy"    # Z

    .prologue
    .line 276
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->remove(Lcom/taobao/weex/ui/component/WXComponent;Z)V

    .line 277
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/list/WXListComponent;->removeFooterOrHeader(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 278
    return-void
.end method

.method public setColumnCount(I)V
    .locals 6
    .param p1, "columnCount"    # I
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "columnCount"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 194
    iget v1, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mColumnCount:I

    if-eq p1, v1, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->markComponentUsable()V

    .line 196
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->updateRecyclerAttr()V

    .line 197
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .line 198
    .local v0, "wxRecyclerView":Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mLayoutType:I

    iget v3, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mColumnCount:I

    iget v4, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mColumnGap:F

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getOrientation()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->initView(Landroid/content/Context;IIFI)V

    .line 200
    .end local v0    # "wxRecyclerView":Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    :cond_0
    return-void
.end method

.method public setColumnGap(F)V
    .locals 6
    .param p1, "columnGap"    # F
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "columnGap"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 204
    iget v1, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mColumnGap:F

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->markComponentUsable()V

    .line 206
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->updateRecyclerAttr()V

    .line 207
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .line 208
    .local v0, "wxRecyclerView":Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mLayoutType:I

    iget v3, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mColumnCount:I

    iget v4, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mColumnGap:F

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getOrientation()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->initView(Landroid/content/Context;IIFI)V

    .line 210
    .end local v0    # "wxRecyclerView":Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    :cond_0
    return-void
.end method

.method public setColumnWidth(F)V
    .locals 6
    .param p1, "columnWidth"    # F
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "columnWidth"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 184
    iget v1, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mColumnWidth:F

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->markComponentUsable()V

    .line 186
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->updateRecyclerAttr()V

    .line 187
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .line 188
    .local v0, "wxRecyclerView":Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mLayoutType:I

    iget v3, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mColumnCount:I

    iget v4, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mColumnGap:F

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getOrientation()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->initView(Landroid/content/Context;IIFI)V

    .line 190
    .end local v0    # "wxRecyclerView":Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    :cond_0
    return-void
.end method

.method public setScrollable(Z)V
    .locals 2
    .param p1, "scrollable"    # Z
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "scrollable"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .line 215
    .local v0, "inner":Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->setScrollable(Z)V

    .line 216
    return-void
.end method

.method public setSpanOffsets(Ljava/lang/String;)V
    .locals 6
    .param p1, "spanOffsets"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "spanOffsets"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 174
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mSpanOffsetsStr:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->markComponentUsable()V

    .line 176
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->updateRecyclerAttr()V

    .line 177
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .line 178
    .local v0, "wxRecyclerView":Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mLayoutType:I

    iget v3, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mColumnCount:I

    iget v4, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mColumnGap:F

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getOrientation()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->initView(Landroid/content/Context;IIFI)V

    .line 180
    .end local v0    # "wxRecyclerView":Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    :cond_0
    return-void
.end method

.method public updateProperties(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 220
    .local p1, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->updateProperties(Ljava/util/Map;)V

    .line 221
    invoke-direct {p0, p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->isRecycler(Lcom/taobao/weex/ui/component/WXComponent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    const-string/jumbo v1, "waterfall"

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getComponentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 223
    const/4 v1, 0x3

    iput v1, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mLayoutType:I

    .line 229
    :cond_0
    :goto_0
    const-string/jumbo v1, "padding"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "paddingLeft"

    .line 230
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "paddingRight"

    .line 231
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 232
    :cond_1
    iget v1, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mPaddingLeft:F

    const-string/jumbo v2, "paddingLeft"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/weex/utils/WXUtils;->parseFloat(Ljava/lang/Object;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget v1, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mPaddingRight:F

    const-string/jumbo v2, "paddingRight"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/weex/utils/WXUtils;->parseFloat(Ljava/lang/Object;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    .line 233
    :cond_2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->markComponentUsable()V

    .line 234
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->updateRecyclerAttr()V

    .line 235
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .line 236
    .local v0, "wxRecyclerView":Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mLayoutType:I

    iget v3, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mColumnCount:I

    iget v4, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mColumnGap:F

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getOrientation()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->initView(Landroid/content/Context;IIFI)V

    .line 239
    .end local v0    # "wxRecyclerView":Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    :cond_3
    return-void

    .line 225
    :cond_4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXListComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/dom/WXAttr;->getLayoutType()I

    move-result v1

    iput v1, p0, Lcom/taobao/weex/ui/component/list/WXListComponent;->mLayoutType:I

    goto :goto_0
.end method
