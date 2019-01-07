.class public Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;
.super Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;
.source "GroupOrgSelectActivity.java"


# instance fields
.field c:Ljava/lang/String;

.field private d:Landroid/widget/ListView;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Lcwa;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->e:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->f:Z

    return v0
.end method

.method private b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 193
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    :cond_0
    sget v0, Lctk$i;->dt_im_trans_to_multiple_error_param_invalid:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->finish()V

    .line 203
    :goto_0
    return-void

    .line 198
    :cond_1
    new-instance v0, Lcwa;

    invoke-direct {v0, p0}, Lcwa;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->g:Lcwa;

    .line 199
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->g:Lcwa;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcwa;->b(Ljava/util/List;)V

    .line 200
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->g:Lcwa;

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->b:J

    .line 2034
    iput-wide v2, v0, Lcwa;->d:J

    .line 201
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->g:Lcwa;

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->f:Z

    .line 3030
    iput-boolean v1, v0, Lcwa;->e:Z

    .line 202
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->g:Lcwa;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->b()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->f:Z

    if-eqz v0, :cond_0

    sget v0, Lctk$i;->dt_group_cooperative_orgs_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget v0, Lctk$i;->dt_group_org_picker_mine_org_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final a(Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;)V
    .locals 0
    .param p1, "mainOrg"    # Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    .prologue
    .line 208
    return-void
.end method

.method protected b(Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;)V
    .locals 3
    .param p1, "orgIdNameObject"    # Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 222
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->h:Z

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->d:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->c:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, p1}, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->a(Landroid/view/View;Ljava/lang/String;Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;)V

    .line 231
    :goto_0
    return-void

    .line 225
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->select:Z

    .line 226
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 227
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "intent_key_group_org_select"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 228
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->setResult(ILandroid/content/Intent;)V

    .line 229
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 49
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    sget v0, Lctk$g;->activity_group_org_select:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->setContentView(I)V

    .line 1067
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_group_org_owner"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->e:Ljava/util/List;

    .line 1068
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "cid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->c:Ljava/lang/String;

    .line 1069
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_group_org_view"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->f:Z

    .line 1070
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "org_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->b:J

    .line 55
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "GroupOrgSelect param null"

    invoke-static {v0, v5, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->finish()V

    .line 1120
    :goto_0
    return-void

    .line 1074
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_2

    .line 1075
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1077
    :cond_2
    sget v0, Lctk$f;->list_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->d:Landroid/widget/ListView;

    .line 1079
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->d:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1104
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->e:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1106
    :cond_3
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->f:Z

    if-eqz v0, :cond_4

    .line 1158
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->showLoadingDialog()V

    .line 1159
    invoke-static {}, Ldyn;->a()Ldyn;

    move-result-object v0

    invoke-virtual {v0}, Ldyn;->c()Ldxx;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->c:Ljava/lang/String;

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity$3;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;)V

    const-class v4, Lcma;

    invoke-interface {v0, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-interface {v1, v2, v0}, Ldxx;->b(Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 1111
    :cond_4
    invoke-static {}, Ldjl;->d()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1113
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "GroupOrgSelect upgrade close"

    invoke-static {v0, v5, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->finish()V

    goto :goto_0

    .line 1118
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->h:Z

    .line 1119
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->showLoadingDialog()V

    .line 1120
    invoke-static {}, Ldyn;->a()Ldyn;

    move-result-object v0

    invoke-virtual {v0}, Ldyn;->c()Ldxx;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->c:Ljava/lang/String;

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;)V

    const-class v4, Lcma;

    invoke-interface {v0, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-interface {v1, v2, v0}, Ldxx;->a(Ljava/lang/String;Lcma;)V

    goto/16 :goto_0

    .line 1152
    :cond_6
    iput-boolean v4, p0, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->h:Z

    .line 1153
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->b()V

    goto/16 :goto_0
.end method
