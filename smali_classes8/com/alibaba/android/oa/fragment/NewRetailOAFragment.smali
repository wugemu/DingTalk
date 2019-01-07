.class public Lcom/alibaba/android/oa/fragment/NewRetailOAFragment;
.super Lcom/alibaba/android/oa/fragment/OAContentFragment;
.source "NewRetailOAFragment.java"


# instance fields
.field private a:Leec;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/oa/model/NewRetailObject;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/alibaba/android/oa/view/OATabViewPager;

.field private d:Lcom/alibaba/android/oa/view/NewRetailPageIndicator;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/alibaba/android/oa/fragment/OAContentFragment;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/oa/fragment/NewRetailOAFragment;->b:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/oa/fragment/NewRetailOAFragment;->e:Ljava/util/List;

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/oa/fragment/NewRetailOAFragment;)Lcom/alibaba/android/oa/view/OATabViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/fragment/NewRetailOAFragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/NewRetailOAFragment;->c:Lcom/alibaba/android/oa/view/OATabViewPager;

    return-object v0
.end method

.method public static c()Lcom/alibaba/android/oa/fragment/NewRetailOAFragment;
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/alibaba/android/oa/fragment/NewRetailOAFragment;

    invoke-direct {v0}, Lcom/alibaba/android/oa/fragment/NewRetailOAFragment;-><init>()V

    .line 42
    .local v0, "newRetailOAFragment":Lcom/alibaba/android/oa/fragment/NewRetailOAFragment;
    return-object v0
.end method


# virtual methods
.method public final d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/NewRetailOAFragment;->a:Leec;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/NewRetailOAFragment;->a:Leec;

    .line 3060
    iget-object v1, v0, Leec;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, v0, Leec;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3061
    iget-object v0, v0, Leec;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/oa/fragment/OAContentFragment;

    .line 3062
    invoke-virtual {v0}, Lcom/alibaba/android/oa/fragment/OAContentFragment;->d()V

    goto :goto_0

    .line 135
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 139
    invoke-super {p0}, Lcom/alibaba/android/oa/fragment/OAContentFragment;->f()V

    .line 140
    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/NewRetailOAFragment;->d()V

    .line 141
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 50
    .line 1145
    sget v2, Ledz$g;->fragment_newretail_oa_fragment:I

    .line 50
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2095
    .local v1, "rootView":Landroid/view/View;
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/NewRetailOAFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Landroid/content/Context;)J

    move-result-wide v2

    .line 2096
    invoke-static {v2, v3}, Legj;->b(J)Ljava/util/List;

    move-result-object v4

    .line 2097
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2098
    iget-object v5, p0, Lcom/alibaba/android/oa/fragment/NewRetailOAFragment;->b:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2102
    :cond_0
    new-instance v4, Lcom/alibaba/android/oa/model/NewRetailObject;

    invoke-direct {v4}, Lcom/alibaba/android/oa/model/NewRetailObject;-><init>()V

    .line 2103
    invoke-virtual {v4, v8}, Lcom/alibaba/android/oa/model/NewRetailObject;->setType(I)V

    .line 2104
    invoke-static {}, Leel;->f()Leek;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Leek;->a(J)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v2

    .line 2105
    if-eqz v2, :cond_2

    iget-boolean v2, v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->isCustomed:Z

    if-eqz v2, :cond_2

    .line 2106
    invoke-virtual {v4, v8}, Lcom/alibaba/android/oa/model/NewRetailObject;->setCustom(Z)V

    .line 2110
    :goto_0
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v2

    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/NewRetailOAFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Landroid/content/Context;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(J)Ljava/lang/String;

    move-result-object v2

    .line 2111
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v2

    .line 2112
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgNameAlias:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2113
    iget-object v2, v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgNameAlias:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/alibaba/android/oa/model/NewRetailObject;->setTitle(Ljava/lang/String;)V

    .line 2115
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/oa/fragment/NewRetailOAFragment;->b:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2122
    iget-object v2, p0, Lcom/alibaba/android/oa/fragment/NewRetailOAFragment;->b:Ljava/util/List;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/alibaba/android/oa/fragment/NewRetailOAFragment;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2123
    iget-object v2, p0, Lcom/alibaba/android/oa/fragment/NewRetailOAFragment;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/oa/model/NewRetailObject;

    .line 2124
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/alibaba/android/oa/model/NewRetailObject;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 2125
    :goto_2
    iget-object v4, p0, Lcom/alibaba/android/oa/fragment/NewRetailOAFragment;->e:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2108
    :cond_2
    invoke-virtual {v4, v9}, Lcom/alibaba/android/oa/model/NewRetailObject;->setCustom(Z)V

    goto :goto_0

    .line 2124
    :cond_3
    const-string/jumbo v2, ""

    goto :goto_2

    .line 54
    :cond_4
    const-string/jumbo v2, "KEY_NEW_RETAIL_LASTED_TYPE"

    invoke-static {v2, v9}, Lcpk;->a(Ljava/lang/String;I)I

    move-result v0

    .line 56
    .local v0, "currentTabIndex":I
    sget v2, Ledz$f;->newretail_page_indicator:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;

    iput-object v2, p0, Lcom/alibaba/android/oa/fragment/NewRetailOAFragment;->d:Lcom/alibaba/android/oa/view/NewRetailPageIndicator;

    .line 57
    iget-object v2, p0, Lcom/alibaba/android/oa/fragment/NewRetailOAFragment;->d:Lcom/alibaba/android/oa/view/NewRetailPageIndicator;

    invoke-virtual {v2, v8}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->setShowTabIndicator(Z)V

    .line 58
    iget-object v2, p0, Lcom/alibaba/android/oa/fragment/NewRetailOAFragment;->d:Lcom/alibaba/android/oa/view/NewRetailPageIndicator;

    iget-object v3, p0, Lcom/alibaba/android/oa/fragment/NewRetailOAFragment;->e:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->setTitleList(Ljava/util/List;)V

    .line 59
    iget-object v2, p0, Lcom/alibaba/android/oa/fragment/NewRetailOAFragment;->d:Lcom/alibaba/android/oa/view/NewRetailPageIndicator;

    invoke-virtual {v2, v0}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->setCurrentItem(I)V

    .line 60
    iget-object v2, p0, Lcom/alibaba/android/oa/fragment/NewRetailOAFragment;->d:Lcom/alibaba/android/oa/view/NewRetailPageIndicator;

    new-instance v3, Lcom/alibaba/android/oa/fragment/NewRetailOAFragment$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/oa/fragment/NewRetailOAFragment$1;-><init>(Lcom/alibaba/android/oa/fragment/NewRetailOAFragment;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->setOnTabReselectedListener(Lcom/alibaba/android/oa/view/NewRetailPageIndicator$a;)V

    .line 68
    sget v2, Ledz$f;->viewpager:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/oa/view/OATabViewPager;

    iput-object v2, p0, Lcom/alibaba/android/oa/fragment/NewRetailOAFragment;->c:Lcom/alibaba/android/oa/view/OATabViewPager;

    .line 69
    new-instance v2, Leec;

    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/NewRetailOAFragment;->getChildFragmentManager()Lcn;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/oa/fragment/NewRetailOAFragment;->b:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Leec;-><init>(Lcn;Ljava/util/List;)V

    iput-object v2, p0, Lcom/alibaba/android/oa/fragment/NewRetailOAFragment;->a:Leec;

    .line 70
    iget-object v2, p0, Lcom/alibaba/android/oa/fragment/NewRetailOAFragment;->c:Lcom/alibaba/android/oa/view/OATabViewPager;

    iget-object v3, p0, Lcom/alibaba/android/oa/fragment/NewRetailOAFragment;->a:Leec;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/oa/view/OATabViewPager;->setAdapter(Lgl;)V

    .line 71
    iget-object v2, p0, Lcom/alibaba/android/oa/fragment/NewRetailOAFragment;->c:Lcom/alibaba/android/oa/view/OATabViewPager;

    new-instance v3, Lcom/alibaba/android/oa/fragment/NewRetailOAFragment$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/oa/fragment/NewRetailOAFragment$2;-><init>(Lcom/alibaba/android/oa/fragment/NewRetailOAFragment;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/oa/view/OATabViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 88
    iget-object v2, p0, Lcom/alibaba/android/oa/fragment/NewRetailOAFragment;->c:Lcom/alibaba/android/oa/view/OATabViewPager;

    invoke-virtual {v2, v0}, Lcom/alibaba/android/oa/view/OATabViewPager;->setCurrentItem(I)V

    .line 90
    return-object v1
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 145
    sget v0, Ledz$g;->fragment_newretail_oa_fragment:I

    return v0
.end method
