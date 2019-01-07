.class public Lcom/alibaba/android/user/external/list/ExternalListActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "ExternalListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Lcom/alibaba/android/user/external/list/ExternalListFragment;

.field private h:Lcn;

.field private i:Landroid/view/View;

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/list/ExternalListActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalListActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListActivity;->a:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/external/list/ExternalListActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalListActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListActivity;->b:Landroid/view/View;

    return-object v0
.end method

.method private b()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    .line 155
    sget v4, Lezg$h;->ll_header_banner_tip:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/external/list/ExternalListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/android/user/external/list/ExternalListActivity;->i:Landroid/view/View;

    .line 156
    iget-object v4, p0, Lcom/alibaba/android/user/external/list/ExternalListActivity;->i:Landroid/view/View;

    new-instance v5, Lcom/alibaba/android/user/external/list/ExternalListActivity$2;

    invoke-direct {v5, p0}, Lcom/alibaba/android/user/external/list/ExternalListActivity$2;-><init>(Lcom/alibaba/android/user/external/list/ExternalListActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v4

    sget-object v5, Lble;->u:Ljava/lang/String;

    new-instance v6, Lcom/alibaba/android/user/external/list/ExternalListActivity$3;

    invoke-direct {v6, p0}, Lcom/alibaba/android/user/external/list/ExternalListActivity$3;-><init>(Lcom/alibaba/android/user/external/list/ExternalListActivity;)V

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->register(Ljava/lang/String;Lblc;)V

    .line 192
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "display_enterprise_oid"

    invoke-virtual {v4, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 195
    .local v2, "oid":J
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    .line 196
    .local v1, "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v1, :cond_1

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v4, :cond_1

    cmp-long v4, v2, v8

    if-eqz v4, :cond_1

    .line 198
    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 199
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v0, :cond_0

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    cmp-long v5, v6, v2

    if-nez v5, :cond_0

    iget-boolean v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->isMainOrg:Z

    if-eqz v5, :cond_0

    .line 200
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/alibaba/android/user/external/list/ExternalListActivity;->k:Z

    .line 205
    .end local v0    # "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/user/external/list/ExternalListActivity;)Lcom/alibaba/android/user/external/list/ExternalListFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalListActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListActivity;->g:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    return-object v0
.end method

.method private c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 213
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListActivity;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/user/external/list/ExternalListActivity;->j:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/user/external/list/ExternalListActivity;->k:Z

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListActivity;->i:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 218
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListActivity;->i:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/user/external/list/ExternalListActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalListActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListActivity;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/external/list/ExternalListActivity;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalListActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListActivity;->f:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/external/list/ExternalListActivity;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalListActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListActivity;->e:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/external/list/ExternalListActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalListActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListActivity;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/user/external/list/ExternalListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ExternalListActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ExternalListActivity;->c()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/alibaba/android/user/external/list/ExternalListActivity;->j:Z

    .line 209
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ExternalListActivity;->c()V

    .line 210
    return-void
.end method

.method protected getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string/jumbo v0, "Contacts_Add_ExtMember_Batch"

    return-object v0
.end method

.method protected getPageSpmCnt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string/jumbo v0, "a2o5v.12314432"

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lezg$h;->tv_external_search:I

    if-ne v1, v2, :cond_2

    .line 223
    const-string/jumbo v1, "contact_exter_list_search_click"

    invoke-static {v1}, Lfxo;->a(Ljava/lang/String;)V

    .line 224
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 225
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "display_enterprise_oid"

    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "display_enterprise_oid"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 226
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalListActivity;->g:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    if-eqz v1, :cond_0

    .line 227
    const-string/jumbo v1, "external_list_init_scope"

    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ExternalListActivity;->g:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    .line 3595
    iget v2, v2, Lcom/alibaba/android/user/external/list/ExternalListFragment;->g:I

    .line 227
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 228
    const-string/jumbo v1, "external_list_init_followers"

    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ExternalListActivity;->g:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    .line 3599
    iget-object v2, v2, Lcom/alibaba/android/user/external/list/ExternalListFragment;->h:[Ljava/lang/String;

    .line 228
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const-string/jumbo v1, "external_list_init_labels"

    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ExternalListActivity;->g:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    .line 3603
    iget-object v2, v2, Lcom/alibaba/android/user/external/list/ExternalListFragment;->i:[J

    .line 229
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 231
    :cond_0
    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ExternalListActivity;->startActivity(Landroid/content/Intent;)V

    .line 238
    .end local v0    # "i":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 232
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lezg$h;->tv_external_filter:I

    if-ne v1, v2, :cond_1

    .line 233
    const-string/jumbo v1, "contact_exter_list_filter_click"

    invoke-static {v1}, Lfxo;->a(Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalListActivity;->g:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    if-eqz v1, :cond_1

    .line 235
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalListActivity;->g:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->n()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 53
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    sget v0, Lezg$j;->external_list_activity:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ExternalListActivity;->setContentView(I)V

    .line 1094
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListActivity;->g:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    if-eqz v0, :cond_1

    .line 1095
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListActivity;->g:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    .line 1076
    :goto_0
    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListActivity;->g:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    .line 1077
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListActivity;->h:Lcn;

    .line 1078
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListActivity;->h:Lcn;

    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 1079
    sget v1, Lezg$h;->ll_container:I

    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ExternalListActivity;->g:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    const-class v3, Lcom/alibaba/android/user/external/list/ExternalListFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 1080
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 2144
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lezg$g;->icon_ld_filter_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListActivity;->e:Landroid/graphics/drawable/Drawable;

    .line 2145
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lezg$g;->icon_ld_filter_press:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListActivity;->f:Landroid/graphics/drawable/Drawable;

    .line 2146
    sget v0, Lezg$h;->ll_external_header:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ExternalListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListActivity;->a:Landroid/view/View;

    .line 2147
    sget v0, Lezg$h;->header_divider:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ExternalListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListActivity;->b:Landroid/view/View;

    .line 2148
    sget v0, Lezg$h;->tv_external_search:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ExternalListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListActivity;->c:Landroid/widget/TextView;

    .line 2149
    sget v0, Lezg$h;->tv_external_filter:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ExternalListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListActivity;->d:Landroid/widget/TextView;

    .line 2150
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2151
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ExternalListActivity;->b()V

    .line 58
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3064
    const-string/jumbo v0, "pref_external_list_h5_guide_showed"

    invoke-static {v0, v6}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3065
    const-string/jumbo v0, "pref_external_list_h5_guide_showed"

    invoke-static {v0, v7}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 3066
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "display_enterprise_oid"

    invoke-virtual {v1, v2, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->g(J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    .line 3067
    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->mIsAdmin:Z

    if-eqz v0, :cond_2

    .line 3068
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    const-string/jumbo v1, "https://tms.dingtalk.com/markets/dingtalk/wblxr-boss"

    invoke-virtual {v0, p0, v1, v8}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    .line 1097
    :cond_1
    new-instance v0, Lcom/alibaba/android/user/external/list/ExternalListFragment;

    invoke-direct {v0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;-><init>()V

    .line 1098
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1099
    const-string/jumbo v2, "display_enterprise_oid"

    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "display_enterprise_oid"

    invoke-virtual {v3, v4, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1100
    const-string/jumbo v2, "key_org_role"

    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "key_org_role"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1101
    const-string/jumbo v2, "external_list_init_scope"

    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "external_list_init_scope"

    const-string/jumbo v5, "pref_external_list_last_scope"

    invoke-static {v5, v6}, Lcpk;->a(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1102
    const-string/jumbo v2, "external_list_show_add_button"

    invoke-virtual {v1, v2, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1103
    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1104
    new-instance v1, Lcom/alibaba/android/user/external/list/ExternalListActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/external/list/ExternalListActivity$1;-><init>(Lcom/alibaba/android/user/external/list/ExternalListActivity;)V

    .line 1587
    iput-object v1, v0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->e:Lcom/alibaba/android/user/external/list/ExternalListFragment$a;

    goto/16 :goto_0

    .line 3070
    :cond_2
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    const-string/jumbo v1, "https://tms.dingtalk.com/markets/dingtalk/wblxr-yg"

    invoke-virtual {v0, p0, v1, v8}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 242
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListActivity;->g:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListActivity;->g:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ExternalListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 246
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 259
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->unregister(Ljava/lang/String;)V

    .line 260
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 261
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListActivity;->g:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListActivity;->g:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 254
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
