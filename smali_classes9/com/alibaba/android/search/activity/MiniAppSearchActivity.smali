.class public Lcom/alibaba/android/search/activity/MiniAppSearchActivity;
.super Lcom/alibaba/android/search/activity/BaseSearchActivity;
.source "MiniAppSearchActivity.java"


# instance fields
.field private f:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

.field private g:Landroid/support/v7/widget/RecyclerView;

.field private h:Lena;

.field private i:Lcom/alibaba/android/search/widget/LoadingStatView;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/TextView;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lerh;

.field private n:Lerg$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alibaba/android/search/activity/BaseSearchActivity;-><init>()V

    .line 33
    sget-object v0, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->MINI_APP_LIST:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    iput-object v0, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->f:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->l:Ljava/util/List;

    .line 157
    new-instance v0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/activity/MiniAppSearchActivity$2;-><init>(Lcom/alibaba/android/search/activity/MiniAppSearchActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->n:Lerg$b;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/activity/MiniAppSearchActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/search/activity/MiniAppSearchActivity;

    .prologue
    const/16 v1, 0x8

    .line 32
    .line 2095
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->g:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->j:Landroid/view/View;

    if-nez v0, :cond_1

    .line 2096
    :cond_0
    :goto_0
    return-void

    .line 2099
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 2100
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/search/activity/MiniAppSearchActivity;Ljava/util/List;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/search/activity/MiniAppSearchActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x0

    .line 32
    .line 2127
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2130
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->i:Lcom/alibaba/android/search/widget/LoadingStatView;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/search/widget/LoadingStatView;->a(I)V

    .line 2131
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2132
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2133
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 2134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2135
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/model/BaseModel;

    .line 2136
    instance-of v3, v0, Lcom/alibaba/android/search/model/LightAppModel;

    if-eqz v3, :cond_0

    .line 2137
    new-instance v3, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel;

    invoke-direct {v3}, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel;-><init>()V

    .line 2138
    sget-object v4, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;->Item:Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;

    iput-object v4, v3, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel;->b:Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;

    .line 2139
    check-cast v0, Lcom/alibaba/android/search/model/LightAppModel;

    iput-object v0, v3, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel;->a:Lcom/alibaba/android/search/model/LightAppModel;

    .line 2140
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2144
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->h:Lena;

    .line 3052
    iget-object v2, v0, Lena;->e:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 3053
    iget-object v2, v0, Lena;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 3054
    iget-object v2, v0, Lena;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3055
    invoke-virtual {v0}, Lena;->notifyDataSetChanged()V

    .line 2150
    :cond_2
    :goto_1
    return-void

    .line 2146
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->h:Lena;

    .line 3061
    iget-object v1, v0, Lena;->e:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 3062
    iget-object v1, v0, Lena;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3063
    invoke-virtual {v0}, Lena;->notifyDataSetChanged()V

    .line 2148
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->i:Lcom/alibaba/android/search/widget/LoadingStatView;

    invoke-virtual {v0}, Lcom/alibaba/android/search/widget/LoadingStatView;->a()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2149
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2150
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->k:Landroid/widget/TextView;

    sget v1, Lemt$g;->dt_search_no_result_tips_AT2:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->a:Ljava/lang/String;

    aput-object v3, v2, v4

    const/4 v3, 0x1

    sget v4, Lemt$g;->search_light_app:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2152
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/android/search/activity/MiniAppSearchActivity;)Lerh;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/activity/MiniAppSearchActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->m:Lerh;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/search/activity/MiniAppSearchActivity;)Lcom/alibaba/android/search/widget/LoadingStatView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/activity/MiniAppSearchActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->i:Lcom/alibaba/android/search/widget/LoadingStatView;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/search/activity/MiniAppSearchActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/activity/MiniAppSearchActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->j:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/search/activity/MiniAppSearchActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/search/activity/MiniAppSearchActivity;

    .prologue
    .line 32
    .line 3104
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->i:Lcom/alibaba/android/search/widget/LoadingStatView;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3105
    :cond_0
    :goto_0
    return-void

    .line 3108
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->i:Lcom/alibaba/android/search/widget/LoadingStatView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/widget/LoadingStatView;->a(I)V

    goto :goto_0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 86
    sget v0, Lemt$f;->activity_mini_search_layout:I

    return v0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 91
    sget v0, Lemt$g;->dt_miniapp_search_hint:I

    return v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 5
    .param p1, "keyword"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/alibaba/android/search/activity/BaseSearchActivity;->b(Ljava/lang/String;)V

    .line 76
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iput-object p1, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->a:Ljava/lang/String;

    .line 1119
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->m:Lerh;

    if-nez v0, :cond_2

    .line 1120
    new-instance v0, Lerh;

    iget-object v1, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->n:Lerg$b;

    invoke-direct {v0, p0, v1}, Lerh;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lerg$b;)V

    iget-object v1, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->l:Ljava/util/List;

    invoke-virtual {v0, v1}, Lerh;->a(Ljava/util/List;)Lerh;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->m:Lerh;

    .line 1122
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->m:Lerh;

    new-instance v1, Leoe;

    iget-object v2, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->f:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v3

    sget-object v4, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchSource;->SOURCE_SERVER:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchSource;

    invoke-virtual {v4}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchSource;->getValue()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Leoe;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lerh;->a(Leoe;)V

    .line 1123
    iget-object v0, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->m:Lerh;

    iget-object v1, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lerh;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/alibaba/android/search/activity/BaseSearchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1115
    iget-object v1, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->l:Ljava/util/List;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v1, Lerh;

    iget-object v2, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->n:Lerg$b;

    invoke-direct {v1, p0, v2}, Lerh;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lerg$b;)V

    iget-object v2, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->l:Ljava/util/List;

    invoke-virtual {v1, v2}, Lerh;->a(Ljava/util/List;)Lerh;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->m:Lerh;

    .line 52
    sget v1, Lemt$e;->listview:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->g:Landroid/support/v7/widget/RecyclerView;

    .line 53
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 54
    .local v0, "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    iget-object v1, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 55
    iget-object v1, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->g:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 56
    new-instance v1, Lena;

    iget-object v2, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v1, v2, p0, v0}, Lena;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/app/Activity;Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iput-object v1, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->h:Lena;

    .line 57
    iget-object v1, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->h:Lena;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 59
    sget v1, Lemt$e;->ll_loading:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/search/widget/LoadingStatView;

    iput-object v1, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->i:Lcom/alibaba/android/search/widget/LoadingStatView;

    .line 60
    iget-object v1, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->i:Lcom/alibaba/android/search/widget/LoadingStatView;

    new-instance v2, Lcom/alibaba/android/search/activity/MiniAppSearchActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/search/activity/MiniAppSearchActivity$1;-><init>(Lcom/alibaba/android/search/activity/MiniAppSearchActivity;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/search/widget/LoadingStatView;->setReloadClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    sget v1, Lemt$e;->ll_search_empty_tip:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->j:Landroid/view/View;

    .line 70
    sget v1, Lemt$e;->tv_empty_hint:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/search/activity/MiniAppSearchActivity;->k:Landroid/widget/TextView;

    .line 71
    return-void
.end method
