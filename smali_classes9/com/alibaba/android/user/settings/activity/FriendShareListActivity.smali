.class public Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "FriendShareListActivity.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ldq;

.field private c:Landroid/widget/ListView;

.field private d:Landroid/view/View;

.field private e:Lfwh;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

.field private h:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 39
    const-class v0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->a:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->f:Ljava/util/ArrayList;

    .line 158
    new-instance v0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$2;-><init>(Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->h:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 38
    .line 2138
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2139
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 2140
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2141
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    :goto_0
    return-void

    .line 2143
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 2144
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2145
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 2146
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->e:Lfwh;

    invoke-virtual {v0}, Lfwh;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 49
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    sget v0, Lezg$j;->activity_friend_share_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->setContentView(I)V

    .line 51
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->dt_privacy_share_mobile:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 1061
    sget v0, Lezg$h;->ll_progress:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->d:Landroid/view/View;

    .line 1062
    sget v0, Lezg$h;->list_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->c:Landroid/widget/ListView;

    .line 1063
    new-instance v0, Lfwh;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->f:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lfwh;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->e:Lfwh;

    .line 1064
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->e:Lfwh;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1068
    sget v0, Lezg$h;->list_empty_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 1069
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lezg$g;->share_friend_empty:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyImageResource(I)V

    .line 1070
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lezg$l;->dt_share_mobile_empty_tips:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    .line 1151
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1152
    const-string/jumbo v1, "com.workapp.share.mobile.item.delete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1153
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->b:Ldq;

    .line 1154
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->b:Ldq;

    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 2124
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 2126
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2127
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 2128
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->d:Landroid/view/View;

    sget v1, Lezg$h;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2129
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->d:Landroid/view/View;

    sget v1, Lezg$h;->tv_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lezg$l;->loading:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2134
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 2075
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$1;-><init>(Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;)V

    const-class v2, Lcma;

    invoke-interface {v0, v1, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2118
    invoke-static {}, Lfap;->a()Lezv;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/16 v4, 0x3e8

    invoke-interface {v1, v2, v3, v4, v0}, Lezv;->b(JILcma;)V

    .line 58
    return-void

    .line 2131
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2132
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 199
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 200
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->b:Ldq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->h:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->b:Ldq;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 203
    :cond_0
    return-void
.end method
