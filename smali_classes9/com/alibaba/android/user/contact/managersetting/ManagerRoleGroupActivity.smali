.class public Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "ManagerRoleGroupActivity.java"

# interfaces
.implements Lfhs$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$b;,
        Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Lfhs$a;

.field private e:Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$b;

.field private final f:I

.field private g:J

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:J

.field private n:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 47
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->f:I

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->h:Z

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->m:J

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->n:Z

    .line 242
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->l:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;)Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->e:Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$b;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->n:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->j:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->g:J

    return-wide v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->i:I

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->h:Z

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;

    .prologue
    .line 38
    iget v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->i:I

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->k:I

    return p1
.end method

.method static synthetic e(Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;

    .prologue
    .line 38
    iget v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->j:I

    return v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;

    .prologue
    .line 38
    iget v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->k:I

    return v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;

    .prologue
    .line 38
    iget v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->l:I

    return v0
.end method

.method static synthetic h(Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;)Lfhs$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->d:Lfhs$a;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->m:J

    return-wide v0
.end method


# virtual methods
.method public final H_()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 215
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 216
    return-void
.end method

.method public final a(Lcom/alibaba/android/user/model/OrgManagerRoleObjectList;)V
    .locals 9
    .param p1, "orgManagerRoleObjects"    # Lcom/alibaba/android/user/model/OrgManagerRoleObjectList;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v8, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 176
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 199
    :goto_0
    return-void

    .line 179
    :cond_0
    if-eqz p1, :cond_1

    iget-object v3, p1, Lcom/alibaba/android/user/model/OrgManagerRoleObjectList;->roles:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/alibaba/android/user/model/OrgManagerRoleObjectList;->roles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1170
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1171
    iget-object v1, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v1, v8}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 184
    :cond_2
    iget-wide v4, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->m:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    move v0, v1

    .line 185
    .local v0, "setMoreList":Z
    :goto_1
    iget-object v3, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->b:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 186
    iget-object v3, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 187
    iget-wide v4, p1, Lcom/alibaba/android/user/model/OrgManagerRoleObjectList;->nextCursor:J

    iput-wide v4, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->m:J

    .line 188
    iget-boolean v3, p1, Lcom/alibaba/android/user/model/OrgManagerRoleObjectList;->hasMore:Z

    if-eqz v3, :cond_4

    .line 189
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->h:Z

    .line 194
    :goto_2
    if-eqz v0, :cond_5

    .line 195
    iget-object v1, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->e:Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$b;

    iget-object v2, p1, Lcom/alibaba/android/user/model/OrgManagerRoleObjectList;->roles:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$b;->a(Ljava/util/List;)V

    goto :goto_0

    .end local v0    # "setMoreList":Z
    :cond_3
    move v0, v2

    .line 184
    goto :goto_1

    .line 191
    .restart local v0    # "setMoreList":Z
    :cond_4
    iput-boolean v2, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->h:Z

    goto :goto_2

    .line 197
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->e:Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$b;

    iget-object v2, p1, Lcom/alibaba/android/user/model/OrgManagerRoleObjectList;->roles:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$b;->b(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 220
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 208
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->e:Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->e:Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$b;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$b;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 211
    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 225
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "org_id"

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->g:J

    .line 64
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 65
    const-string/jumbo v0, "ManagerRoleGroupActivity"

    const-string/jumbo v1, "onCreate() orgId not illegal\uff01"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->finish()V

    .line 74
    :goto_0
    return-void

    .line 69
    :cond_0
    new-instance v0, Lfht;

    invoke-direct {v0, p0, p0}, Lfht;-><init>(Landroid/app/Activity;Lfhs$b;)V

    .line 70
    sget v0, Lezg$j;->activity_sub_manager_setting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->setContentView(I)V

    .line 1090
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_1

    .line 1091
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->dt_contact_subManager_subManager_setting:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1094
    :cond_1
    sget v0, Lezg$h;->lv_manager_roles:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->a:Landroid/widget/ListView;

    .line 1095
    sget v0, Lezg$h;->ll_empty:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->b:Landroid/view/View;

    .line 1096
    new-instance v0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$b;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$b;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->e:Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$b;

    .line 1097
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->e:Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$b;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1098
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$1;-><init>(Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1117
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->footer_loading_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->c:Landroid/view/View;

    .line 1118
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 1119
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1120
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$2;-><init>(Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 73
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->d:Lfhs$a;

    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->h:Z

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->g:J

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->m:J

    const/16 v6, 0x32

    invoke-interface/range {v0 .. v6}, Lfhs$a;->a(ZJJI)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 148
    sget v1, Lezg$l;->action_add:I

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 149
    .local v0, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 150
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->d:Lfhs$a;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->d:Lfhs$a;

    invoke-interface {v0}, Lfhs$a;->i()V

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->d:Lfhs$a;

    .line 239
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 240
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 155
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->n:Z

    .line 157
    const-string/jumbo v0, "org_management_admin_subadmin_add_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 158
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/sub_manager_role_edit.html"

    new-instance v2, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity$3;-><init>(Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 166
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onResume()V

    .line 79
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->n:Z

    if-eqz v0, :cond_0

    .line 80
    iput v2, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->l:I

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->m:J

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->h:Z

    .line 83
    iput-boolean v2, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->n:Z

    .line 84
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->d:Lfhs$a;

    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->h:Z

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->g:J

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->m:J

    const/16 v6, 0x32

    invoke-interface/range {v0 .. v6}, Lfhs$a;->a(ZJJI)V

    .line 86
    :cond_0
    return-void
.end method

.method public bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 38
    check-cast p1, Lfhs$a;

    .line 1203
    iput-object p1, p0, Lcom/alibaba/android/user/contact/managersetting/ManagerRoleGroupActivity;->d:Lfhs$a;

    .line 38
    return-void
.end method
