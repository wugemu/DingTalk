.class final Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "FriendShareListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$2;->a:Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 162
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$2;->a:Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    const-string/jumbo v0, "com.workapp.share.mobile.item.delete"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const-string/jumbo v0, "user_id"

    const-wide/16 v4, -0x1

    invoke-virtual {p2, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 168
    .local v8, "uid":J
    const-string/jumbo v0, "list_view_position"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 169
    .local v6, "position":I
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$2;->a:Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;

    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$2;->a:Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;

    sget v4, Lezg$l;->processing:I

    invoke-virtual {v2, v4}, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v7

    .line 170
    .local v7, "progressDialog":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    invoke-static {}, Lfap;->a()Lezv;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v0, "EVENTBUTLER"

    .line 171
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$2$1;

    invoke-direct {v3, p0, v7, v6}, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$2$1;-><init>(Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$2;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;I)V

    const-class v4, Lcma;

    iget-object v5, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$2;->a:Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;

    invoke-interface {v0, v3, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 170
    invoke-interface {v1, v8, v9, v2, v0}, Lezv;->b(JZLcma;)V

    goto :goto_0
.end method
