.class public Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "JoinOrgInvitationActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Landroid/widget/BaseAdapter;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;",
            ">;"
        }
    .end annotation
.end field

.field private f:J

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 164
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;
    .param p1, "x1"    # J

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->f:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->e:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;ILcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    .prologue
    .line 34
    .line 1277
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->h:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 1278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->h:Z

    .line 1279
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->showLoadingDialog()V

    .line 1280
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v0

    iget-wide v2, p2, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->orgId:J

    new-instance v1, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$7;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$7;-><init>(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;I)V

    invoke-interface {v0, v2, v3, v1}, Lezt;->g(JLcma;)V

    .line 34
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    .prologue
    .line 34
    .line 1307
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->h:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->h:Z

    .line 1309
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->showLoadingDialog()V

    .line 1310
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v0

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->orgId:J

    new-instance v1, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$8;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$8;-><init>(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;)V

    invoke-interface {v0, v2, v3, v1}, Lezt;->h(JLcma;)V

    .line 34
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->h:Z

    return v0
.end method

.method private b()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x8

    .line 206
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->h:Z

    if-nez v0, :cond_0

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->e:Ljava/util/List;

    .line 208
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->b:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->h:Z

    .line 1173
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1174
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1175
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v0

    const-wide/16 v2, 0x0

    const/16 v1, 0x32

    new-instance v4, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$5;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$5;-><init>(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;)V

    invoke-interface {v0, v2, v3, v1, v4}, Lezt;->c(JILcma;)V

    .line 240
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;

    .prologue
    .line 34
    .line 2243
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->h:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->g:Z

    if-eqz v0, :cond_0

    .line 2244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->h:Z

    .line 2245
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->f:J

    const/16 v1, 0x32

    new-instance v4, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$6;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$6;-><init>(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;)V

    invoke-interface {v0, v2, v3, v1, v4}, Lezt;->c(JILcma;)V

    .line 34
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->g:Z

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->b()V

    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;)Landroid/widget/BaseAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->b:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;

    .prologue
    const/16 v2, 0x8

    .line 34
    .line 3200
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->a:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 3201
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3202
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 34
    return-void
.end method

.method static synthetic f(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;

    .prologue
    const/16 v1, 0x8

    .line 34
    .line 4179
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 4180
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4181
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4182
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->d:Landroid/widget/TextView;

    sget v1, Lezg$l;->dt_contact_privacy_joinTeam_hasNo:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 4183
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;

    .prologue
    const/16 v1, 0x8

    .line 34
    .line 4187
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 4188
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4189
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4190
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->d:Landroid/widget/TextView;

    sget v1, Lezg$l;->load_error_retry:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 4191
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$4;-><init>(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    sget v0, Lezg$j;->activity_join_org_invitation:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->setContentView(I)V

    .line 1057
    sget v0, Lezg$h;->list_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->a:Landroid/widget/ListView;

    .line 1058
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$1;-><init>(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1075
    new-instance v0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$2;-><init>(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->b:Landroid/widget/BaseAdapter;

    .line 1146
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->b:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1147
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$3;-><init>(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1160
    sget v0, Lezg$h;->progress_bar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->c:Landroid/view/View;

    .line 1161
    sget v0, Lezg$h;->tv_empty:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->d:Landroid/widget/TextView;

    .line 53
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->b()V

    .line 54
    return-void
.end method
