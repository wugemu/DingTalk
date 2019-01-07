.class public Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "DeptMembersActivity.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/Button;

.field private c:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

.field private d:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

.field private e:Z

.field private final f:F

.field private final g:F

.field private h:Lcoi;

.field private i:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

.field private j:I

.field private k:I

.field private l:I

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcif;

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 45
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->f:F

    .line 46
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->g:F

    .line 50
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->j:I

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->m:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->b:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .prologue
    .line 35
    .line 3220
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->b(Ljava/lang/Object;)V

    .line 3221
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3222
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->b()V

    .line 3224
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->o:Lcif;

    if-eqz v0, :cond_0

    .line 3225
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->o:Lcif;

    const/16 v1, 0x3ea

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->n:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->m:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcif;->a(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3229
    :cond_0
    :goto_0
    return-void

    .line 3227
    :catch_0
    move-exception v0

    .line 3228
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->n:Ljava/util/List;

    return-object v0
.end method

.method private b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 234
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->b:Landroid/widget/Button;

    sget v0, Lezg$l;->select_num_count_format:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    sget v0, Lezg$l;->sure:I

    .line 235
    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->n:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    .line 234
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->e:Z

    if-nez v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->b:Landroid/widget/Button;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->n:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->n:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 240
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 235
    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .prologue
    .line 35
    .line 4206
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4207
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4208
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->a(Ljava/lang/Object;)V

    .line 4209
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->b()V

    .line 4211
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->o:Lcif;

    if-eqz v0, :cond_0

    .line 4212
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->o:Lcif;

    const/16 v1, 0x3ea

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->n:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->m:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcif;->a(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4216
    :cond_0
    :goto_0
    return-void

    .line 4214
    :catch_0
    move-exception v0

    .line 4215
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;)Lcif;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->o:Lcif;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;

    .prologue
    .line 35
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->j:I

    return v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->m:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/16 v5, 0x8

    const/4 v1, 0x0

    .line 60
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    sget v0, Lezg$j;->user_activity_group_chat_member:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->setContentView(I)V

    .line 1108
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lezg$j;->actbar_button:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->a:Landroid/view/View;

    .line 1109
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->a:Landroid/view/View;

    sget v2, Lezg$h;->btn_ok:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->b:Landroid/widget/Button;

    .line 1110
    sget v0, Lezg$h;->edt_search:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1111
    sget v0, Lezg$h;->avatar_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1113
    sget v0, Lezg$h;->horizontal_scroller:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

    .line 1114
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->c:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->setItemWidth(I)V

    .line 1116
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

    new-instance v2, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity$1;-><init>(Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;)V

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->setOnItemRemovedListener(Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$c;)V

    .line 1126
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

    new-instance v2, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity$2;-><init>(Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;)V

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->setAvatarDataGenerator(Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$a;)V

    .line 1139
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->b:Landroid/widget/Button;

    new-instance v2, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity$3;-><init>(Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 2068
    const-string/jumbo v0, "choose_mode"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->j:I

    .line 2069
    const-string/jumbo v0, "count_limit"

    const/16 v3, 0x9

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->k:I

    .line 2070
    const-string/jumbo v0, "count_limit_tips"

    sget v3, Lezg$l;->choose_limit:I

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->l:I

    .line 2071
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "dept_object"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 2072
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "allow_empty"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->e:Z

    .line 2073
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "key_request_select_user_list"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2074
    if-eqz v0, :cond_1

    .line 2075
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 2076
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->m:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2077
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->m:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2081
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "seleced_members"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->n:Ljava/util/List;

    .line 2082
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->n:Ljava/util/List;

    if-eqz v0, :cond_2

    move v0, v1

    .line 2083
    :goto_1
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->n:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 2084
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->n:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->a(Ljava/lang/Object;)V

    .line 2083
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2087
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->n:Ljava/util/List;

    .line 2090
    :cond_3
    const-string/jumbo v0, "activity_identify"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->p:Ljava/lang/String;

    .line 2092
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->j:I

    if-eq v6, v0, :cond_5

    .line 2093
    sget v0, Lezg$h;->ll_choose_header:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2094
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2100
    :goto_2
    const-string/jumbo v0, "title"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2101
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget v0, Lezg$l;->choose_manager:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-virtual {v2, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2155
    new-instance v0, Lcoi;

    sget v2, Lezg$h;->ll_fragment_container:I

    invoke-direct {v0, p0, v2}, Lcoi;-><init>(Landroid/support/v4/app/FragmentActivity;I)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->h:Lcoi;

    .line 2156
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2157
    const-string/jumbo v2, "choose_mode"

    iget v3, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->j:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2158
    const-string/jumbo v2, "count_limit"

    iget v3, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->k:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2159
    const-string/jumbo v2, "count_limit_tips"

    iget v3, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->l:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2160
    const-string/jumbo v2, "dept_object"

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2161
    new-instance v2, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    invoke-direct {v2}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;-><init>()V

    iput-object v2, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->i:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    .line 2162
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->i:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    invoke-virtual {v2, v0}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->setArguments(Landroid/os/Bundle;)V

    .line 2180
    new-instance v0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity$4;

    sget v2, Lcif;->b:I

    invoke-direct {v0, p0, v2}, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity$4;-><init>(Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;I)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->o:Lcif;

    .line 2201
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->i:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->o:Lcif;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;->a(Lcif;)V

    .line 2202
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->o:Lcif;

    const/16 v2, 0x3e9

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->n:Ljava/util/List;

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->m:Ljava/util/List;

    invoke-virtual {v0, v2, v3, v4}, Lcif;->a(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2164
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->h:Lcoi;

    const-class v2, Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->i:Lcom/alibaba/android/user/contact/fragments/DeptMemberFragment;

    .line 3082
    invoke-virtual {v0, v2, v3, v1}, Lcoi;->a(Ljava/lang/String;Landroid/support/v4/app/Fragment;Z)V

    .line 65
    return-void

    .line 2096
    :cond_5
    sget v0, Lezg$h;->ll_choose_header:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2097
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 168
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->a:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 169
    sget v1, Lezg$l;->ok:I

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 170
    .local v0, "menuItem":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 171
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 172
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 173
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->b()V

    .line 175
    .end local v0    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->n:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 247
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 248
    return-void
.end method
