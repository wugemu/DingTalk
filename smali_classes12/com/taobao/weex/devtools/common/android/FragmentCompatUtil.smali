.class public final Lcom/taobao/weex/devtools/common/android/FragmentCompatUtil;
.super Ljava/lang/Object;
.source "FragmentCompatUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static findFragmentForView(Landroid/view/View;)Ljava/lang/Object;
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 37
    invoke-static {p0}, Lcom/taobao/weex/devtools/common/android/ViewUtil;->tryGetActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 38
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 39
    const/4 v1, 0x0

    .line 42
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0, p0}, Lcom/taobao/weex/devtools/common/android/FragmentCompatUtil;->findFragmentForViewInActivity(Landroid/app/Activity;Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method private static findFragmentForViewInActivity(Landroid/app/Activity;Landroid/view/View;)Ljava/lang/Object;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 47
    invoke-static {}, Lcom/taobao/weex/devtools/common/android/FragmentCompat;->getSupportLibInstance()Lcom/taobao/weex/devtools/common/android/FragmentCompat;

    move-result-object v2

    .line 50
    .local v2, "supportLib":Lcom/taobao/weex/devtools/common/android/FragmentCompat;
    if-eqz v2, :cond_1

    .line 51
    invoke-virtual {v2}, Lcom/taobao/weex/devtools/common/android/FragmentCompat;->getFragmentActivityClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 52
    invoke-static {v2, p0, p1}, Lcom/taobao/weex/devtools/common/android/FragmentCompatUtil;->findFragmentForViewInActivity(Lcom/taobao/weex/devtools/common/android/FragmentCompat;Landroid/app/Activity;Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    .local v0, "fragment":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 70
    .end local v0    # "fragment":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 62
    :cond_1
    invoke-static {}, Lcom/taobao/weex/devtools/common/android/FragmentCompat;->getFrameworkInstance()Lcom/taobao/weex/devtools/common/android/FragmentCompat;

    move-result-object v1

    .line 63
    .local v1, "framework":Lcom/taobao/weex/devtools/common/android/FragmentCompat;
    if-eqz v1, :cond_2

    .line 64
    invoke-static {v1, p0, p1}, Lcom/taobao/weex/devtools/common/android/FragmentCompatUtil;->findFragmentForViewInActivity(Lcom/taobao/weex/devtools/common/android/FragmentCompat;Landroid/app/Activity;Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    .line 65
    .restart local v0    # "fragment":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 70
    .end local v0    # "fragment":Ljava/lang/Object;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static findFragmentForViewInActivity(Lcom/taobao/weex/devtools/common/android/FragmentCompat;Landroid/app/Activity;Landroid/view/View;)Ljava/lang/Object;
    .locals 2
    .param p0, "compat"    # Lcom/taobao/weex/devtools/common/android/FragmentCompat;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/common/android/FragmentCompat;->forFragmentActivity()Lcom/taobao/weex/devtools/common/android/FragmentActivityAccessor;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/taobao/weex/devtools/common/android/FragmentActivityAccessor;->getFragmentManager(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .line 78
    .local v0, "fragmentManager":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 79
    invoke-static {p0, v0, p2}, Lcom/taobao/weex/devtools/common/android/FragmentCompatUtil;->findFragmentForViewInFragmentManager(Lcom/taobao/weex/devtools/common/android/FragmentCompat;Ljava/lang/Object;Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    .line 81
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static findFragmentForViewInFragment(Lcom/taobao/weex/devtools/common/android/FragmentCompat;Ljava/lang/Object;Landroid/view/View;)Ljava/lang/Object;
    .locals 3
    .param p0, "compat"    # Lcom/taobao/weex/devtools/common/android/FragmentCompat;
    .param p1, "fragment"    # Ljava/lang/Object;
    .param p2, "view"    # Landroid/view/View;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/common/android/FragmentCompat;->forFragment()Lcom/taobao/weex/devtools/common/android/FragmentAccessor;

    move-result-object v0

    .line 112
    .local v0, "accessor":Lcom/taobao/weex/devtools/common/android/FragmentAccessor;
    invoke-interface {v0, p1}, Lcom/taobao/weex/devtools/common/android/FragmentAccessor;->getView(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    if-ne v2, p2, :cond_0

    .line 121
    .end local p1    # "fragment":Ljava/lang/Object;
    :goto_0
    return-object p1

    .line 116
    .restart local p1    # "fragment":Ljava/lang/Object;
    :cond_0
    invoke-interface {v0, p1}, Lcom/taobao/weex/devtools/common/android/FragmentAccessor;->getChildFragmentManager(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 117
    .local v1, "childFragmentManager":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 118
    invoke-static {p0, v1, p2}, Lcom/taobao/weex/devtools/common/android/FragmentCompatUtil;->findFragmentForViewInFragmentManager(Lcom/taobao/weex/devtools/common/android/FragmentCompat;Ljava/lang/Object;Landroid/view/View;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 121
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private static findFragmentForViewInFragmentManager(Lcom/taobao/weex/devtools/common/android/FragmentCompat;Ljava/lang/Object;Landroid/view/View;)Ljava/lang/Object;
    .locals 6
    .param p0, "compat"    # Lcom/taobao/weex/devtools/common/android/FragmentCompat;
    .param p1, "fragmentManager"    # Ljava/lang/Object;
    .param p2, "view"    # Landroid/view/View;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/common/android/FragmentCompat;->forFragmentManager()Lcom/taobao/weex/devtools/common/android/FragmentManagerAccessor;

    move-result-object v5

    invoke-interface {v5, p1}, Lcom/taobao/weex/devtools/common/android/FragmentManagerAccessor;->getAddedFragments(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 92
    .local v2, "fragments":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz v2, :cond_1

    .line 93
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 94
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 95
    .local v1, "fragment":Ljava/lang/Object;
    invoke-static {p0, v1, p2}, Lcom/taobao/weex/devtools/common/android/FragmentCompatUtil;->findFragmentForViewInFragment(Lcom/taobao/weex/devtools/common/android/FragmentCompat;Ljava/lang/Object;Landroid/view/View;)Ljava/lang/Object;

    move-result-object v4

    .line 96
    .local v4, "result":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 102
    .end local v0    # "N":I
    .end local v1    # "fragment":Ljava/lang/Object;
    .end local v3    # "i":I
    .end local v4    # "result":Ljava/lang/Object;
    :goto_1
    return-object v4

    .line 93
    .restart local v0    # "N":I
    .restart local v1    # "fragment":Ljava/lang/Object;
    .restart local v3    # "i":I
    .restart local v4    # "result":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 102
    .end local v0    # "N":I
    .end local v1    # "fragment":Ljava/lang/Object;
    .end local v3    # "i":I
    .end local v4    # "result":Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static isDialogFragment(Ljava/lang/Object;)Z
    .locals 6
    .param p0, "fragment"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 25
    invoke-static {}, Lcom/taobao/weex/devtools/common/android/FragmentCompat;->getSupportLibInstance()Lcom/taobao/weex/devtools/common/android/FragmentCompat;

    move-result-object v2

    .line 26
    .local v2, "supportLib":Lcom/taobao/weex/devtools/common/android/FragmentCompat;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/taobao/weex/devtools/common/android/FragmentCompat;->getDialogFragmentClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v1, v3

    .line 27
    .local v1, "result":Z
    :goto_0
    if-nez v1, :cond_0

    .line 28
    invoke-static {}, Lcom/taobao/weex/devtools/common/android/FragmentCompat;->getFrameworkInstance()Lcom/taobao/weex/devtools/common/android/FragmentCompat;

    move-result-object v0

    .line 29
    .local v0, "framework":Lcom/taobao/weex/devtools/common/android/FragmentCompat;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/taobao/weex/devtools/common/android/FragmentCompat;->getDialogFragmentClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v1, v3

    .line 32
    .end local v0    # "framework":Lcom/taobao/weex/devtools/common/android/FragmentCompat;
    :cond_0
    :goto_1
    return v1

    .end local v1    # "result":Z
    :cond_1
    move v1, v4

    .line 26
    goto :goto_0

    .restart local v0    # "framework":Lcom/taobao/weex/devtools/common/android/FragmentCompat;
    .restart local v1    # "result":Z
    :cond_2
    move v1, v4

    .line 29
    goto :goto_1
.end method
