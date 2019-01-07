.class public Lcom/alibaba/android/search/fragment/ContactSearchFragment;
.super Lcom/alibaba/android/search/fragment/BaseSearchFragment;
.source "ContactSearchFragment.java"


# instance fields
.field protected D:I

.field protected E:J

.field protected F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field protected M:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private N:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->D:I

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->E:J

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->F:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->M:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/fragment/ContactSearchFragment;)Lcif;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->K:Lcif;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/search/fragment/ContactSearchFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/ContactSearchFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->N:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/search/fragment/ContactSearchFragment;)Lcif;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->K:Lcif;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/search/fragment/ContactSearchFragment;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->a:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/search/fragment/ContactSearchFragment;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/fragment/ContactSearchFragment;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->a:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

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
    .line 177
    invoke-super {p0, p1}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->a(Landroid/view/View;)V

    .line 178
    sget v0, Lemt$e;->tv_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lemt$g;->dt_network_search_mobile:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 179
    sget v0, Lemt$e;->tv_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lemt$d;->search_icon_orange:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 180
    return-void
.end method

.method protected final a(Lcom/alibaba/android/search/model/SearchClickLogModel;)V
    .locals 1
    .param p1, "clickLogModel"    # Lcom/alibaba/android/search/model/SearchClickLogModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 102
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_CONTACT_MORE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setPositionCode(I)V

    .line 103
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    invoke-super {p0, p1}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->b(Ljava/util/List;)V

    .line 159
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->j()V

    .line 160
    return-void
.end method

.method protected final c(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 165
    new-instance v0, Lcom/alibaba/android/search/model/SearchClickLogModel;

    invoke-direct {v0}, Lcom/alibaba/android/search/model/SearchClickLogModel;-><init>()V

    .line 166
    .local v0, "clickLog":Lcom/alibaba/android/search/model/SearchClickLogModel;
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->z:Leqp$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->z:Leqp$a;

    invoke-interface {v1}, Leqp$a;->j()Leoe;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->z:Leqp$a;

    invoke-interface {v1}, Leqp$a;->j()Leoe;

    move-result-object v1

    .line 2084
    iget-object v1, v1, Leoe;->a:Ljava/lang/String;

    .line 167
    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setUUID(Ljava/lang/String;)V

    .line 169
    :cond_0
    sget-object v1, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_NET_SEARCH_MOBILE_AND_ID:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v1}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setPositionCode(I)V

    .line 170
    invoke-static {v0}, Letb;->a(Lcom/alibaba/android/search/model/SearchClickLogModel;)V

    .line 2184
    iget-boolean v1, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->N:Z

    if-nez v1, :cond_1

    .line 2188
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->m:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2192
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->m:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 2193
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2197
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->s()V

    .line 2198
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->N:Z

    .line 2199
    new-instance v2, Lcom/alibaba/android/search/fragment/ContactSearchFragment$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/search/fragment/ContactSearchFragment$2;-><init>(Lcom/alibaba/android/search/fragment/ContactSearchFragment;)V

    .line 2256
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2257
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v4, Lcma;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-interface {v1, v2, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 2259
    :goto_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2, v3, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->c(Ljava/lang/String;Lcma;)V

    .line 173
    :cond_1
    return-void

    :cond_2
    move-object v1, v2

    goto :goto_0
.end method

.method protected g()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method protected final h()Lcom/alibaba/android/search/SearchGroupType;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/alibaba/android/search/SearchGroupType;->CONTACT:Lcom/alibaba/android/search/SearchGroupType;

    return-object v0
.end method

.method protected final l()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 149
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->m:Ljava/lang/String;

    .line 150
    invoke-static {v0}, Lcpg;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->m:Ljava/lang/String;

    invoke-static {v0}, Lcpg;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->n:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->z:Leqp$a;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final n_()Lcif$a;
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lcom/alibaba/android/search/fragment/ContactSearchFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/fragment/ContactSearchFragment$1;-><init>(Lcom/alibaba/android/search/fragment/ContactSearchFragment;)V

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 84
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->k:Lemz;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->F:Ljava/util/List;

    .line 1639
    iput-object v1, v0, Lemz;->c:Ljava/util/List;

    .line 85
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->k:Lemz;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->M:Ljava/util/List;

    .line 1643
    iput-object v1, v0, Lemz;->d:Ljava/util/List;

    .line 86
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "count_limit"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->p:I

    .line 77
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "count_limit_tips"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->q:I

    .line 78
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "choose_enterprise_oid"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->E:J

    .line 79
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 91
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/ContactSearchFragment;->j()V

    .line 92
    return-object v0
.end method

.method protected final z_()I
    .locals 1

    .prologue
    .line 107
    sget v0, Lemt$g;->act_title_contact:I

    return v0
.end method
