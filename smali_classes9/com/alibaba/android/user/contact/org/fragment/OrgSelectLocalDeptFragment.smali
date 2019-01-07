.class public Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "OrgSelectLocalDeptFragment.java"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lfhx;

.field public c:Lfhx;

.field private d:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

.field private e:Lfhv;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/CheckBox;

.field private h:I

.field private i:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

.field private j:Z

.field private k:J

.field private l:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    .line 73
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->h:I

    .line 226
    new-instance v0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment$3;-><init>(Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->l:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->g:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;Z)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 57
    .line 3157
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->b:Lfhx;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->c:Lfhx;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    move v1, v2

    .line 3158
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 3159
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 3160
    if-eqz v0, :cond_3

    .line 3164
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;->unableSelectReason:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3167
    :cond_0
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->DEPT:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->h:I

    if-nez v3, :cond_4

    .line 3168
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 3169
    if-eqz p1, :cond_2

    .line 3170
    iget-object v3, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->b:Lfhx;

    invoke-interface {v3, v0}, Lfhx;->a(Ljava/lang/Object;)Z

    move-result v0

    .line 3171
    if-nez v0, :cond_3

    .line 3172
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3193
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->e:Lfhv;

    invoke-virtual {v0}, Lfhv;->notifyDataSetChanged()V

    .line 57
    return-void

    .line 3176
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->b:Lfhx;

    invoke-interface {v3, v0, v5}, Lfhx;->a(Ljava/lang/Object;Z)Z

    .line 3158
    :cond_3
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3178
    :cond_4
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    sget-object v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->EMPLOYEE:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-ne v3, v4, :cond_3

    .line 3179
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 3180
    invoke-static {v3, v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    .line 3181
    if-eqz p1, :cond_5

    .line 3182
    iget-object v3, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->c:Lfhx;

    invoke-interface {v3, v0}, Lfhx;->a(Ljava/lang/Object;)Z

    move-result v0

    .line 3183
    if-nez v0, :cond_3

    .line 3184
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 3188
    :cond_5
    iget-object v3, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->c:Lfhx;

    invoke-interface {v3, v0, v5}, Lfhx;->a(Ljava/lang/Object;Z)Z

    goto :goto_2
.end method


# virtual methods
.method public final a(Z)V
    .locals 2
    .param p1, "isRemove"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 237
    iget v0, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->h:I

    if-nez v0, :cond_0

    .line 238
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->g:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->e:Lfhv;

    invoke-virtual {v1}, Lfhv;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->g:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->e:Lfhv;

    invoke-virtual {v1}, Lfhv;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->e:Lfhv;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->e:Lfhv;

    invoke-virtual {v0}, Lfhv;->notifyDataSetChanged()V

    .line 154
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 116
    new-instance v0, Lfhv;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->a:Ljava/util/List;

    iget v3, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->h:I

    const/4 v4, 0x2

    new-array v4, v4, [Lfhx;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->c:Lfhx;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->b:Lfhx;

    aput-object v6, v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lfhv;-><init>(Landroid/app/Activity;Ljava/util/List;I[Lfhx;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->e:Lfhv;

    .line 117
    iget v0, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->h:I

    if-nez v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->header_org_all_check:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->f:Landroid/view/View;

    .line 119
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->f:Landroid/view/View;

    sget v1, Lezg$h;->checkbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->g:Landroid/widget/CheckBox;

    .line 120
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->g:Landroid/widget/CheckBox;

    new-instance v1, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment$1;-><init>(Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->f:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment$2;-><init>(Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->addHeaderView(Landroid/view/View;)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->e:Lfhv;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 136
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v2, "choose_mode"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->h:I

    .line 90
    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v2, "display_enterprise_oid"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->k:J

    .line 92
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 93
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.workapp.contact.list.change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 95
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 100
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 101
    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->I:Landroid/view/View;

    sget v2, Lezg$h;->list_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    .line 103
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->k:J

    invoke-virtual {v1, v2, v3}, Lccr;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    move-result-object v0

    .line 104
    .local v0, "settingsObject":Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;
    if-eqz v0, :cond_0

    .line 105
    iget-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->contactWaterMark:Z

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->j:Z

    .line 106
    const-string/jumbo v1, "water"

    const-string/jumbo v2, "setting:%s, bool: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    iget-boolean v4, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->j:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1201
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    if-eqz v1, :cond_2

    .line 1202
    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->j:Z

    if-eqz v1, :cond_4

    .line 1203
    const/16 v1, 0x10

    invoke-static {v1}, Lcms;->b(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1204
    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->i:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    if-nez v1, :cond_1

    .line 1205
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->i:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    .line 1206
    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->i:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    .line 1230
    iput-boolean v5, v1, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->d:Z

    .line 1207
    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->i:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->f()Ljava/lang/String;

    move-result-object v2

    .line 2217
    iput-object v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->c:Ljava/lang/String;

    .line 1208
    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->i:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->k:J

    invoke-virtual {v2, v4, v5}, Lccr;->f(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->a(Ljava/lang/String;)V

    .line 1209
    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->i:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lezg$e;->color_water_font_white:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 3142
    iput v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->a:I

    .line 1211
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->i:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    invoke-virtual {v1, v6}, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->a(I)V

    .line 1212
    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->i:Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 110
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->I:Landroid/view/View;

    return-object v1

    .line 1214
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lccr;->f(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lezg$e;->color_water_font_white:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcrf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1215
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1216
    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 1217
    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1220
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lezg$e;->uidic_global_color_6_5:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 249
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onDestroy()V

    .line 250
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 83
    sget v0, Lezg$j;->fragment_select_local_dept_contact:I

    return v0
.end method
