.class public Lcom/alibaba/android/search/fragment/MsgSearchFragment;
.super Lcom/alibaba/android/search/fragment/BaseSearchFragment;
.source "MsgSearchFragment.java"


# static fields
.field public static final E:Ljava/lang/String;


# instance fields
.field private D:Landroid/view/View;

.field private F:Landroid/widget/TextView;

.field private M:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->E:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/fragment/MsgSearchFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    .prologue
    .line 48
    .line 1238
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->isAdded()Z

    move-result v0

    .line 48
    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/search/fragment/MsgSearchFragment;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    .prologue
    const/4 v4, 0x0

    const/16 v6, 0x8

    .line 48
    .line 2175
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 2176
    if-eqz v1, :cond_0

    instance-of v0, v1, Lcom/alibaba/android/search/activity/GlobalSearchActivity;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->M:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2221
    :cond_0
    :goto_0
    return-void

    .line 2180
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->D:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2184
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->s()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2185
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lemt$f;->layout_header_msg_search_list_optimize:I

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->D:Landroid/view/View;

    .line 2190
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->D:Landroid/view/View;

    sget v3, Lemt$e;->tv_conv_title:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->F:Landroid/widget/TextView;

    .line 2191
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->c:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->D:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 2193
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->D:Landroid/view/View;

    sget v3, Lemt$e;->tv_conv_title_suffix:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2196
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "extra_menu_watcher"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2197
    if-eqz v2, :cond_5

    .line 2198
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2199
    iget-object v2, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->F:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2201
    sget v2, Lemt$g;->dt_search_narrow_group:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    sget v2, Lemt$g;->dt_search_category_sender:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2203
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->D:Landroid/view/View;

    new-instance v2, Lcom/alibaba/android/search/fragment/MsgSearchFragment$3;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/search/fragment/MsgSearchFragment$3;-><init>(Lcom/alibaba/android/search/fragment/MsgSearchFragment;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2187
    :cond_2
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lemt$f;->layout_header_msg_search_list:I

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->D:Landroid/view/View;

    goto :goto_1

    .line 2214
    :cond_3
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 2218
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->F:Landroid/widget/TextView;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->D:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lemt$g;->dt_search_narrow_group:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, ": "

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->M:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2219
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 2224
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->D:Landroid/view/View;

    new-instance v2, Lcom/alibaba/android/search/fragment/MsgSearchFragment$4;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/search/fragment/MsgSearchFragment$4;-><init>(Lcom/alibaba/android/search/fragment/MsgSearchFragment;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/search/fragment/MsgSearchFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->D:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/search/fragment/MsgSearchFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->M:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/search/fragment/MsgSearchFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/MsgSearchFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->F:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 156
    invoke-super {p0, p1}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->a(Landroid/view/View;)V

    .line 157
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->t()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;

    if-eqz v0, :cond_0

    .line 158
    sget v0, Lemt$e;->tv_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lemt$g;->dt_search_server_msg_link:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 159
    sget v0, Lemt$e;->tv_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lemt$d;->icon_search_server_msg:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 161
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->i:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->j:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->i:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->j:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 166
    :cond_0
    return-void
.end method

.method protected final a(Lcom/alibaba/android/search/model/SearchClickLogModel;)V
    .locals 1
    .param p1, "clickLogModel"    # Lcom/alibaba/android/search/model/SearchClickLogModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 86
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_MSG_MORE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setPositionCode(I)V

    .line 87
    return-void
.end method

.method protected final c(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->b(Landroid/view/View;)V

    .line 152
    return-void
.end method

.method protected g()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method protected final h()Lcom/alibaba/android/search/SearchGroupType;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/alibaba/android/search/SearchGroupType;->MSG:Lcom/alibaba/android/search/SearchGroupType;

    return-object v0
.end method

.method protected l()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 170
    iget v0, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->n:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 171
    invoke-static {}, Lcom/alibaba/android/search/utils/SearchUtils;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->a(I)V

    .line 95
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->e:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/android/search/fragment/MsgSearchFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/fragment/MsgSearchFragment$1;-><init>(Lcom/alibaba/android/search/fragment/MsgSearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 147
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->e:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/android/search/fragment/MsgSearchFragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/fragment/MsgSearchFragment$2;-><init>(Lcom/alibaba/android/search/fragment/MsgSearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/MsgSearchFragment;->M:Ljava/lang/String;

    .line 82
    return-void
.end method

.method protected final z_()I
    .locals 1

    .prologue
    .line 65
    sget v0, Lemt$g;->search_group_message:I

    return v0
.end method
