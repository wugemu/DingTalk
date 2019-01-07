.class public Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;
.super Lcom/alibaba/android/user/UserBaseFragment;
.source "SearchCustomerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public b:Lfhx;

.field public c:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/alibaba/android/user/contact/view/CommonScrollListView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Lfma;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:J

.field private k:J

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseFragment;-><init>()V

    .line 65
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->h:I

    .line 81
    sget-object v0, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->MINE:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    iput-object v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->c:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;
    .param p1, "x1"    # J

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->k:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;)Lcom/alibaba/android/user/contact/view/CommonScrollListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->e:Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;)Lfma;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->g:Lfma;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 55
    .line 2193
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->g:Lfma;

    invoke-virtual {v0}, Lfma;->f()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->g:Lfma;

    invoke-virtual {v0}, Lfma;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2194
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2195
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->e:Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->setVisibility(I)V

    :goto_0
    return-void

    .line 2197
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->e:Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->setVisibility(I)V

    .line 2198
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 12
    .param p1, "keyWord"    # Ljava/lang/String;
    .param p2, "getMore"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 148
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->g:Lfma;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lfma;->d(Ljava/util/List;)V

    .line 161
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 154
    iput-object p1, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->n:Ljava/lang/String;

    .line 155
    const/4 v4, 0x0

    .line 156
    .local v4, "keyWords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 157
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "keyWords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .restart local v4    # "keyWords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_1
    invoke-static {}, Lfml;->a()Lfmk;

    move-result-object v0

    iget-wide v1, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->j:J

    iget-object v3, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->i:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->c:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    if-eqz p2, :cond_2

    iget-wide v6, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->k:J

    .line 1164
    :goto_1
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v8

    new-instance v9, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment$3;

    invoke-direct {v9, p0, p2}, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment$3;-><init>(Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;Z)V

    const-class v10, Lcma;

    .line 1189
    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    .line 1164
    invoke-interface {v8, v9, v10, v11}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcma;

    .line 160
    invoke-interface/range {v0 .. v8}, Lfmk;->a(JLjava/lang/String;Ljava/util/List;Lcom/alibaba/android/user/crm/service/CrmCustomerListType;JLcma;)V

    goto :goto_0

    :cond_2
    const-wide/16 v6, 0x0

    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 120
    new-instance v0, Lfma;

    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->h:I

    iget-object v3, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->b:Lfhx;

    invoke-direct {v0, v1, v2, v3}, Lfma;-><init>(Landroid/app/Activity;ILfhx;)V

    iput-object v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->g:Lfma;

    .line 121
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->g:Lfma;

    new-instance v1, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment$2;-><init>(Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;)V

    .line 1148
    iput-object v1, v0, Lfma;->a:Lfmc;

    .line 136
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->e:Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    iget-object v1, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->g:Lfma;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 204
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 208
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "choose_mode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->h:I

    .line 92
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "staff_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->i:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "display_enterprise_oid"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->j:J

    .line 94
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "corp_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->m:Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "intent_key_appId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->l:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 100
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/user/UserBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    iput-object v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->e:Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    .line 102
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->e:Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    new-instance v1, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment$1;-><init>(Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->setOnScrollChange(Lcom/alibaba/android/user/contact/view/CommonScrollListView$a;)V

    .line 110
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->ll_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->f:Landroid/widget/LinearLayout;

    .line 111
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->f:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->search_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->d:Landroid/widget/TextView;

    .line 114
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->I:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 216
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->g:Lfma;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->g:Lfma;

    const/4 v1, 0x0

    .line 2148
    iput-object v1, v0, Lfma;->a:Lfmc;

    .line 219
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseFragment;->onDestroy()V

    .line 220
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 85
    sget v0, Lezg$j;->customer_search_list_fragment:I

    return v0
.end method
