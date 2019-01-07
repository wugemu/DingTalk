.class final Lcom/taobao/weex/devtools/inspector/elements/android/ViewGroupDescriptor;
.super Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;
.source "ViewGroupDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor",
        "<",
        "Landroid/view/ViewGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private final mViewToElementMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;-><init>()V

    .line 32
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 33
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ViewGroupDescriptor;->mViewToElementMap:Ljava/util/Map;

    .line 36
    return-void
.end method

.method private getElement(Landroid/view/View;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "childView"    # Landroid/view/View;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 87
    if-ne p2, p0, :cond_0

    .line 90
    .end local p1    # "childView":Landroid/view/View;
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-object p1

    .restart local p1    # "childView":Landroid/view/View;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/ref/WeakReference;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0
.end method

.method private getElementForView(Landroid/view/ViewGroup;Landroid/view/View;)Ljava/lang/Object;
    .locals 5
    .param p1, "parentView"    # Landroid/view/ViewGroup;
    .param p2, "childView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 54
    iget-object v3, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ViewGroupDescriptor;->mViewToElementMap:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 55
    .local v2, "value":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 56
    invoke-direct {p0, p2, v2}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewGroupDescriptor;->getElement(Landroid/view/View;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 60
    .local v0, "element":Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 81
    .end local v0    # "element":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 63
    .restart local v0    # "element":Ljava/lang/Object;
    :cond_0
    iget-object v3, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ViewGroupDescriptor;->mViewToElementMap:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .end local v0    # "element":Ljava/lang/Object;
    :cond_1
    invoke-static {p2}, Lcom/taobao/weex/devtools/common/android/FragmentCompatUtil;->findFragmentForView(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    .line 73
    .local v1, "fragment":Ljava/lang/Object;
    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/taobao/weex/devtools/common/android/FragmentCompatUtil;->isDialogFragment(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 74
    iget-object v3, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ViewGroupDescriptor;->mViewToElementMap:Ljava/util/Map;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 75
    goto :goto_0

    .line 80
    :cond_2
    iget-object v3, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ViewGroupDescriptor;->mViewToElementMap:Ljava/util/Map;

    invoke-interface {v3, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    .line 81
    goto :goto_0
.end method

.method private isChildVisible(Landroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 50
    instance-of v0, p1, Lcom/taobao/weex/devtools/inspector/elements/android/DocumentHiddenView;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final onGetChildren(Landroid/view/ViewGroup;Lcom/taobao/weex/devtools/common/Accumulator;)V
    .locals 5
    .param p1, "element"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/taobao/weex/devtools/common/Accumulator",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 40
    .local p2, "children":Lcom/taobao/weex/devtools/common/Accumulator;, "Lcom/taobao/weex/devtools/common/Accumulator<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 41
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 42
    .local v2, "childView":Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewGroupDescriptor;->isChildVisible(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 43
    invoke-direct {p0, p1, v2}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewGroupDescriptor;->getElementForView(Landroid/view/ViewGroup;Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    .line 44
    .local v1, "childElement":Ljava/lang/Object;
    invoke-interface {p2, v1}, Lcom/taobao/weex/devtools/common/Accumulator;->store(Ljava/lang/Object;)V

    .line 40
    .end local v1    # "childElement":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 47
    .end local v2    # "childView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected final bridge synthetic onGetChildren(Ljava/lang/Object;Lcom/taobao/weex/devtools/common/Accumulator;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewGroupDescriptor;->onGetChildren(Landroid/view/ViewGroup;Lcom/taobao/weex/devtools/common/Accumulator;)V

    return-void
.end method
