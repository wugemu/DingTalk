.class public Lcom/alibaba/android/user/settings/activity/BlacklistActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "BlacklistActivity.java"


# instance fields
.field private a:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

.field private b:Ldq;

.field private c:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 54
    new-instance v0, Lcom/alibaba/android/user/settings/activity/BlacklistActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/settings/activity/BlacklistActivity$1;-><init>(Lcom/alibaba/android/user/settings/activity/BlacklistActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/BlacklistActivity;->c:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/BlacklistActivity;)Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/BlacklistActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/BlacklistActivity;->a:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/BlacklistActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Z
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/BlacklistActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .prologue
    const/4 v1, 0x0

    .line 46
    .line 2183
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/BlacklistActivity;->a:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    if-eqz v0, :cond_3

    .line 2187
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/BlacklistActivity;->a:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    .line 2426
    iget-object v0, v0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->b:Ljava/util/List;

    .line 2188
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    move v0, v1

    .line 2199
    :goto_0
    return v0

    .line 2192
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 2194
    if-eqz v0, :cond_2

    .line 2198
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iget-wide v6, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 2199
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 46
    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 142
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 144
    sget v0, Lezg$j;->user_activity_attendance_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/BlacklistActivity;->setContentView(I)V

    .line 146
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/BlacklistActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->black_list_title:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 1174
    new-instance v0, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    invoke-direct {v0}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/BlacklistActivity;->a:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    .line 1175
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/BlacklistActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    .line 1176
    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 1177
    sget v1, Lezg$h;->ll_content:I

    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/BlacklistActivity;->a:Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1178
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->b()I

    .line 2163
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2164
    const-string/jumbo v1, "com.workapp.choose.people.from.contact"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2165
    const-string/jumbo v1, "com.workapp.black.list.item.delete.and.unblacking"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2166
    const-string/jumbo v1, "com.workapp.black.list.item.add"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2167
    const-string/jumbo v1, "com.workapp.black.list.item.delete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2168
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/settings/activity/BlacklistActivity;->b:Ldq;

    .line 2169
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/BlacklistActivity;->b:Ldq;

    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/BlacklistActivity;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 151
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 155
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 157
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/BlacklistActivity;->b:Ldq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/BlacklistActivity;->c:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/BlacklistActivity;->b:Ldq;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/BlacklistActivity;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 160
    :cond_0
    return-void
.end method
