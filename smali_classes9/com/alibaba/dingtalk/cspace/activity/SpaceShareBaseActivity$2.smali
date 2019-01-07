.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "SpaceShareBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 114
    if-eqz p2, :cond_0

    .line 115
    const-string/jumbo v3, "com.alibaba.dingtalk.space.share.member.add"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 117
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->b()V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    const-string/jumbo v3, "com.alibaba.dingtalk.space.share.member.delete"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 119
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->b()V

    goto :goto_0

    .line 120
    :cond_2
    const-string/jumbo v3, "com.alibaba.dingtalk.space.share.member.modify"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 121
    const-string/jumbo v3, "space_share_member_ids"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v2

    .line 122
    .local v2, "uIds":[J
    const-string/jumbo v3, "space_share_role"

    const/16 v4, 0x66

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 123
    .local v0, "newRole":I
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;

    invoke-static {v4, v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;[J)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->a(Ljava/util/HashMap;I)V

    goto :goto_0

    .line 124
    .end local v0    # "newRole":I
    .end local v2    # "uIds":[J
    :cond_3
    const-string/jumbo v3, "com.alibaba.dingtalk.space.share.updatetitle"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 125
    const-string/jumbo v3, "space_share_name"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "title":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$2;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;

    invoke-virtual {v3, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    .end local v1    # "title":Ljava/lang/String;
    :cond_4
    const-string/jumbo v3, "com.alibaba.dingtalk.space.cooperation.folder.rename"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    const-string/jumbo v3, "cooperation_folder_cid"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    const-string/jumbo v3, "cooperation_folder_name"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->c()V

    goto :goto_0
.end method
