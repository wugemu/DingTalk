.class public Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;
.super Ljava/lang/Object;
.source "StickyHeaderHelper.java"


# instance fields
.field private mCurrentStickyRef:Ljava/lang/String;

.field private mHeaderComps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/component/list/WXCell;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mHeaderViews:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mHeaderComps:Ljava/util/Map;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mCurrentStickyRef:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mParent:Landroid/view/ViewGroup;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->changeFrontStickyVisible()V

    return-void
.end method

.method private changeFrontStickyVisible()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v4, 0x8

    .line 181
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mHeaderViews:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 200
    :cond_0
    return-void

    .line 184
    :cond_1
    const/4 v0, 0x0

    .line 185
    .local v0, "fontVisible":Z
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 186
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 187
    .local v2, "view":Landroid/view/View;
    if-eqz v0, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;

    if-eqz v3, :cond_3

    .line 188
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_2

    .line 189
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 185
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 192
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;

    if-eqz v3, :cond_2

    .line 193
    const/4 v0, 0x1

    .line 194
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_2

    .line 195
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public clearStickyHeaders()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 170
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mHeaderViews:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 177
    :cond_0
    return-void

    .line 173
    :cond_1
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mHeaderViews:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 174
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 175
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mHeaderComps:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/component/list/WXCell;

    invoke-virtual {p0, v2}, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->notifyStickyRemove(Lcom/taobao/weex/ui/component/list/WXCell;)V

    goto :goto_0
.end method

.method public notifyStickyRemove(Lcom/taobao/weex/ui/component/list/WXCell;)V
    .locals 4
    .param p1, "compToRemove"    # Lcom/taobao/weex/ui/component/list/WXCell;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 114
    if-nez p1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mHeaderComps:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/WXCell;->getRef()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/list/WXCell;

    .line 117
    .local v0, "component":Lcom/taobao/weex/ui/component/list/WXCell;
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mHeaderViews:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/WXCell;->getRef()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 120
    .local v1, "headerView":Landroid/view/View;
    if-eqz v0, :cond_2

    if-nez v1, :cond_3

    .line 121
    :cond_2
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    goto :goto_0

    .line 125
    :cond_3
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mCurrentStickyRef:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mCurrentStickyRef:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/WXCell;->getRef()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 126
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mCurrentStickyRef:Ljava/lang/String;

    .line 128
    :cond_4
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mParent:Landroid/view/ViewGroup;

    new-instance v3, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper$1;-><init>(Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;Landroid/view/View;Lcom/taobao/weex/ui/component/list/WXCell;)V

    invoke-static {v3}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 140
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/WXCell;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v2

    const-string/jumbo v3, "unsticky"

    invoke-virtual {v2, v3}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    const-string/jumbo v2, "unsticky"

    invoke-virtual {v0, v2}, Lcom/taobao/weex/ui/component/list/WXCell;->fireEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyStickyShow(Lcom/taobao/weex/ui/component/list/WXCell;)V
    .locals 10
    .param p1, "component"    # Lcom/taobao/weex/ui/component/list/WXCell;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 53
    if-nez p1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iget-object v8, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mHeaderComps:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/WXCell;->getRef()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v8, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mCurrentStickyRef:Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 57
    iget-object v8, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mHeaderComps:Ljava/util/Map;

    iget-object v9, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mCurrentStickyRef:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/list/WXCell;

    .line 58
    .local v0, "cell":Lcom/taobao/weex/ui/component/list/WXCell;
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/WXCell;->getScrollPositon()I

    move-result v8

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/WXCell;->getScrollPositon()I

    move-result v9

    if-le v8, v9, :cond_3

    .line 59
    :cond_2
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/WXCell;->getRef()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mCurrentStickyRef:Ljava/lang/String;

    .line 66
    .end local v0    # "cell":Lcom/taobao/weex/ui/component/list/WXCell;
    :cond_3
    :goto_1
    iget-object v8, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mCurrentStickyRef:Ljava/lang/String;

    if-nez v8, :cond_5

    .line 67
    const-string/jumbo v8, "Current Sticky ref is null."

    invoke-static {v8}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_4
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/WXCell;->getRef()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mCurrentStickyRef:Ljava/lang/String;

    goto :goto_1

    .line 71
    :cond_5
    iget-object v8, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mHeaderComps:Ljava/util/Map;

    iget-object v9, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mCurrentStickyRef:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/component/list/WXCell;

    .line 72
    .local v2, "headComponent":Lcom/taobao/weex/ui/component/list/WXCell;
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/list/WXCell;->getRealView()Landroid/view/ViewGroup;

    move-result-object v4

    .line 73
    .local v4, "headerView":Landroid/view/View;
    if-nez v4, :cond_6

    .line 74
    const-string/jumbo v8, "Sticky header\'s real view is null."

    invoke-static {v8}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_6
    iget-object v8, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mHeaderViews:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/list/WXCell;->getRef()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 78
    .local v3, "header":Landroid/view/View;
    if-eqz v3, :cond_7

    .line 80
    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    .line 105
    :goto_2
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->changeFrontStickyVisible()V

    .line 106
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/list/WXCell;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v8

    const-string/jumbo v9, "sticky"

    invoke-virtual {v8, v9}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 107
    const-string/jumbo v8, "sticky"

    invoke-virtual {v2, v8}, Lcom/taobao/weex/ui/component/list/WXCell;->fireEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_7
    iget-object v8, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mHeaderViews:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/list/WXCell;->getRef()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v6

    .line 85
    .local v6, "translationX":F
    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v7

    .line 86
    .local v7, "translationY":F
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/list/WXCell;->removeSticky()V

    .line 89
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .local v1, "existedParent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_8

    .line 90
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 92
    :cond_8
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/list/WXCell;->getRef()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 93
    iget-object v8, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 94
    invoke-virtual {v4, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 95
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/list/WXCell;->getStickyOffset()I

    move-result v8

    if-lez v8, :cond_9

    .line 96
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 97
    .local v5, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/list/WXCell;->getStickyOffset()I

    move-result v8

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v8, v9, :cond_9

    .line 98
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/list/WXCell;->getStickyOffset()I

    move-result v8

    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 102
    .end local v5    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_9
    invoke-virtual {v4, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 103
    invoke-virtual {v4, v7}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2
.end method

.method public updateStickyView(I)V
    .locals 8
    .param p1, "currentStickyPos"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 147
    iget-object v6, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mHeaderComps:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 148
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/ui/component/list/WXCell;>;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v4, "toRemove":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/ui/component/list/WXCell;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 150
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 151
    .local v2, "next":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/ui/component/list/WXCell;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/list/WXCell;

    .line 152
    .local v0, "cell":Lcom/taobao/weex/ui/component/list/WXCell;
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/WXCell;->getScrollPositon()I

    move-result v3

    .line 153
    .local v3, "pos":I
    if-le v3, p1, :cond_1

    .line 154
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 155
    :cond_1
    if-ne v3, p1, :cond_0

    .line 156
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/WXCell;->getRef()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mCurrentStickyRef:Ljava/lang/String;

    .line 157
    iget-object v6, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mHeaderViews:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/WXCell;->getRef()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 158
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 159
    invoke-virtual {v5}, Landroid/view/View;->bringToFront()V

    .line 160
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->changeFrontStickyVisible()V

    goto :goto_0

    .line 164
    .end local v0    # "cell":Lcom/taobao/weex/ui/component/list/WXCell;
    .end local v2    # "next":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/ui/component/list/WXCell;>;"
    .end local v3    # "pos":I
    .end local v5    # "view":Landroid/view/View;
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/list/WXCell;

    .line 165
    .restart local v0    # "cell":Lcom/taobao/weex/ui/component/list/WXCell;
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->notifyStickyRemove(Lcom/taobao/weex/ui/component/list/WXCell;)V

    goto :goto_1

    .line 167
    .end local v0    # "cell":Lcom/taobao/weex/ui/component/list/WXCell;
    :cond_3
    return-void
.end method
