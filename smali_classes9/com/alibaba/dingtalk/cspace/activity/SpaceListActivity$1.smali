.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SpaceListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 91
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;

    invoke-static {v4}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez p2, :cond_1

    .line 3983
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "com.alibaba.dingtalk.space.share.delete"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 97
    const-string/jumbo v4, "space_id"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "spaceId":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;

    iget-object v4, v4, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->j:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;

    iget-object v4, v4, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->j:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 99
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->finish()V

    goto :goto_0

    .line 102
    .end local v2    # "spaceId":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "com.alibaba.dingtalk.space.share.updatetitle"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 103
    const-string/jumbo v4, "space_id"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    .restart local v2    # "spaceId":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;

    iget-object v4, v4, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->j:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;

    iget-object v4, v4, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->j:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;

    iget-object v4, v4, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->h:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;

    iget-object v4, v4, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->h:Ljava/lang/String;

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 105
    :cond_3
    const-string/jumbo v4, "space_share_name"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, "title":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 107
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;

    invoke-static {v4, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;

    iget-object v4, v4, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;

    invoke-static {v5}, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 112
    .end local v2    # "spaceId":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    :cond_4
    const-string/jumbo v4, "com.alibaba.dingtalk.space.file.lock.release"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 113
    const-string/jumbo v4, "dentry_model"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 114
    .local v1, "dentry":Lcom/alibaba/alimei/cspace/model/DentryModel;
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;

    iget-object v4, v4, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->e:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    if-eqz v4, :cond_0

    .line 115
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;

    iget-object v4, v4, Lcom/alibaba/dingtalk/cspace/activity/SpaceListActivity;->e:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;

    .line 3982
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->c:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3985
    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->a(Ljava/lang/String;)Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;

    move-result-object v5

    .line 3986
    if-eqz v5, :cond_0

    .line 3989
    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;->setEditor(J)V

    .line 3990
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;->setCanReleaseEditLock(Z)V

    .line 3991
    invoke-virtual {v4}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceListFragment;->c()V

    goto/16 :goto_0
.end method
