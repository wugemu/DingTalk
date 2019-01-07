.class final Lcom/alibaba/android/ding/activity/DingMembersActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "DingMembersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingMembersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingMembersActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingMembersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingMembersActivity;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$1;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 80
    const-string/jumbo v1, "com.workapp.member.change.choose.mode"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$1;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingMembersActivity;->a(Lcom/alibaba/android/ding/activity/DingMembersActivity;)Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 82
    const-string/jumbo v1, "seleced_members"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 83
    .local v0, "selectedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz v0, :cond_0

    .line 84
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$1;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingMembersActivity;->b(Lcom/alibaba/android/ding/activity/DingMembersActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$1;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingMembersActivity;->c(Lcom/alibaba/android/ding/activity/DingMembersActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 87
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$1;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/activity/DingMembersActivity;->supportInvalidateOptionsMenu()V

    .line 88
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$1;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingMembersActivity;->d(Lcom/alibaba/android/ding/activity/DingMembersActivity;)V

    .line 89
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$1;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingMembersActivity;->a(Lcom/alibaba/android/ding/activity/DingMembersActivity;)Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    move-result-object v1

    .line 1165
    iput v4, v1, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->b:I

    .line 1166
    iget-object v2, v1, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->e:Layc;

    if-eqz v2, :cond_1

    .line 1167
    iget-object v2, v1, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->e:Layc;

    iget v3, v1, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->b:I

    .line 2097
    iput v3, v2, Layc;->b:I

    .line 1168
    iget-object v1, v1, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->e:Layc;

    invoke-virtual {v1}, Layc;->notifyDataSetChanged()V

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$1;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingMembersActivity;->f(Lcom/alibaba/android/ding/activity/DingMembersActivity;)Lcif;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$1;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingMembersActivity;->b(Lcom/alibaba/android/ding/activity/DingMembersActivity;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$1;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/DingMembersActivity;->e(Lcom/alibaba/android/ding/activity/DingMembersActivity;)Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v1, v4, v2, v3}, Lcif;->a(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 93
    .end local v0    # "selectedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_2
    return-void
.end method
