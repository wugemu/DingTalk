.class public Lcom/taobao/weex/ui/view/WXCirclePageAdapter;
.super Lgl;
.source "WXCirclePageAdapter.java"


# instance fields
.field private needLoop:Z

.field private shadow:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private views:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;-><init>(Z)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .locals 1
    .param p2, "needLoop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-direct {p0}, Lgl;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->shadow:Ljava/util/List;

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->needLoop:Z

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    .line 43
    iput-boolean p2, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->needLoop:Z

    .line 44
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "needLoop"    # Z

    .prologue
    .line 51
    invoke-direct {p0}, Lgl;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->shadow:Ljava/util/List;

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->needLoop:Z

    .line 52
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->needLoop:Z

    .line 53
    return-void
.end method

.method private ensureShadow()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v0, "temp":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-boolean v2, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->needLoop:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_1

    .line 148
    iget-object v2, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    iget-object v3, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 149
    iget-object v2, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 150
    .local v1, "view":Landroid/view/View;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    :goto_1
    iget-object v2, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->shadow:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 157
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->notifyDataSetChanged()V

    .line 158
    iget-object v2, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->shadow:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 159
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->notifyDataSetChanged()V

    .line 160
    return-void

    .line 154
    :cond_1
    iget-object v2, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method


# virtual methods
.method public addPageView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 56
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const-string/jumbo v0, "onPageSelected >>>> addPageView"

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->ensureShadow()V

    .line 61
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 113
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onPageSelected >>>> destroyItem >>>>> position:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 117
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->shadow:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFirst()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->needLoop:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 172
    const/4 v0, 0x1

    .line 174
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemIndex(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 134
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 137
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 126
    const/4 v0, -0x2

    return v0
.end method

.method public getPagePosition(Landroid/view/View;)I
    .locals 1
    .param p1, "page"    # Landroid/view/View;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getRealCount()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRealPosition(I)I
    .locals 1
    .param p1, "shadowPosition"    # I

    .prologue
    .line 163
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->shadow:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 164
    :cond_0
    const/4 v0, -0x1

    .line 166
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->shadow:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getItemIndex(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public getViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 93
    const/4 v2, 0x0

    .line 95
    .local v2, "pageView":Landroid/view/View;
    :try_start_0
    iget-object v3, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->shadow:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/view/View;

    move-object v2, v0

    .line 96
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onPageSelected >>>> instantiateItem >>>>> position:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",position % getRealCount()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealCount()I

    move-result v4

    rem-int v4, p2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 99
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_1

    .line 100
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 108
    :goto_0
    return-object v2

    .line 102
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 103
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "[CirclePageAdapter] instantiateItem: "

    invoke-static {v3, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 121
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removePageView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 64
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const-string/jumbo v0, "onPageSelected >>>> removePageView"

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 68
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->ensureShadow()V

    .line 69
    return-void
.end method

.method public replacePageView(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "oldView"    # Landroid/view/View;
    .param p2, "newView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 72
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    const-string/jumbo v1, "onPageSelected >>>> replacePageView"

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 77
    .local v0, "index":I
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 78
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->views:Ljava/util/List;

    invoke-interface {v1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 79
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->ensureShadow()V

    .line 80
    return-void
.end method
