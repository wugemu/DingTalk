.class final Lcom/taobao/weex/devtools/inspector/elements/android/ActivityDescriptor;
.super Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;
.source "ActivityDescriptor.java"

# interfaces
.implements Lcom/taobao/weex/devtools/inspector/elements/android/HighlightableDescriptor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor",
        "<",
        "Landroid/app/Activity;",
        ">;",
        "Lcom/taobao/weex/devtools/inspector/elements/android/HighlightableDescriptor;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/elements/AbstractChainedDescriptor;-><init>()V

    return-void
.end method

.method private static getDialogFragments(Lcom/taobao/weex/devtools/common/android/FragmentCompat;Landroid/app/Activity;Lcom/taobao/weex/devtools/common/Accumulator;)V
    .locals 8
    .param p0, "compat"    # Lcom/taobao/weex/devtools/common/android/FragmentCompat;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/devtools/common/android/FragmentCompat;",
            "Landroid/app/Activity;",
            "Lcom/taobao/weex/devtools/common/Accumulator",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p2, "accumulator":Lcom/taobao/weex/devtools/common/Accumulator;, "Lcom/taobao/weex/devtools/common/Accumulator<Ljava/lang/Object;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/devtools/common/android/FragmentCompat;->getFragmentActivityClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 85
    :cond_0
    return-void

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/common/android/FragmentCompat;->forFragmentActivity()Lcom/taobao/weex/devtools/common/android/FragmentActivityAccessor;

    move-result-object v1

    .line 68
    .local v1, "activityAccessor":Lcom/taobao/weex/devtools/common/android/FragmentActivityAccessor;
    invoke-interface {v1, p1}, Lcom/taobao/weex/devtools/common/android/FragmentActivityAccessor;->getFragmentManager(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v4

    .line 69
    .local v4, "fragmentManager":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/common/android/FragmentCompat;->forFragmentManager()Lcom/taobao/weex/devtools/common/android/FragmentManagerAccessor;

    move-result-object v5

    .line 74
    .local v5, "fragmentManagerAccessor":Lcom/taobao/weex/devtools/common/android/FragmentManagerAccessor;
    invoke-interface {v5, v4}, Lcom/taobao/weex/devtools/common/android/FragmentManagerAccessor;->getAddedFragments(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 75
    .local v2, "addedFragments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz v2, :cond_0

    .line 79
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v6, v0, :cond_0

    .line 80
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 81
    .local v3, "fragment":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/common/android/FragmentCompat;->getDialogFragmentClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 82
    invoke-interface {p2, v3}, Lcom/taobao/weex/devtools/common/Accumulator;->store(Ljava/lang/Object;)V

    .line 79
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final getViewForHighlighting(Ljava/lang/Object;)Landroid/view/View;
    .locals 4
    .param p1, "element"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityDescriptor;->getHost()Lcom/taobao/weex/devtools/inspector/elements/Descriptor$Host;

    move-result-object v1

    .line 50
    .local v1, "host":Lcom/taobao/weex/devtools/inspector/elements/Descriptor$Host;
    instance-of v3, v1, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDescriptorHost;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 51
    check-cast v0, Landroid/app/Activity;

    .line 52
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 53
    .local v2, "window":Landroid/view/Window;
    check-cast v1, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDescriptorHost;

    .end local v1    # "host":Lcom/taobao/weex/devtools/inspector/elements/Descriptor$Host;
    invoke-interface {v1, v2}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDescriptorHost;->getHighlightingView(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    .line 56
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v2    # "window":Landroid/view/Window;
    :goto_0
    return-object v3

    .restart local v1    # "host":Lcom/taobao/weex/devtools/inspector/elements/Descriptor$Host;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected final onGetChildren(Landroid/app/Activity;Lcom/taobao/weex/devtools/common/Accumulator;)V
    .locals 2
    .param p1, "element"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/taobao/weex/devtools/common/Accumulator",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 38
    .local p2, "children":Lcom/taobao/weex/devtools/common/Accumulator;, "Lcom/taobao/weex/devtools/common/Accumulator<Ljava/lang/Object;>;"
    invoke-static {}, Lcom/taobao/weex/devtools/common/android/FragmentCompat;->getSupportLibInstance()Lcom/taobao/weex/devtools/common/android/FragmentCompat;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityDescriptor;->getDialogFragments(Lcom/taobao/weex/devtools/common/android/FragmentCompat;Landroid/app/Activity;Lcom/taobao/weex/devtools/common/Accumulator;)V

    .line 39
    invoke-static {}, Lcom/taobao/weex/devtools/common/android/FragmentCompat;->getFrameworkInstance()Lcom/taobao/weex/devtools/common/android/FragmentCompat;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityDescriptor;->getDialogFragments(Lcom/taobao/weex/devtools/common/android/FragmentCompat;Landroid/app/Activity;Lcom/taobao/weex/devtools/common/Accumulator;)V

    .line 41
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 42
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 43
    invoke-interface {p2, v0}, Lcom/taobao/weex/devtools/common/Accumulator;->store(Ljava/lang/Object;)V

    .line 45
    :cond_0
    return-void
.end method

.method protected final bridge synthetic onGetChildren(Ljava/lang/Object;Lcom/taobao/weex/devtools/common/Accumulator;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityDescriptor;->onGetChildren(Landroid/app/Activity;Lcom/taobao/weex/devtools/common/Accumulator;)V

    return-void
.end method

.method protected final onGetNodeName(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2
    .param p1, "element"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "className":Ljava/lang/String;
    const-string/jumbo v1, "android.app."

    invoke-static {v0, v1}, Lcom/taobao/weex/devtools/common/StringUtil;->removePrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected final bridge synthetic onGetNodeName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityDescriptor;->onGetNodeName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
