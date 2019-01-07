.class final Lcom/alibaba/android/ding/fragment/DingMembersFragment$5;
.super Landroid/content/BroadcastReceiver;
.source "DingMembersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/fragment/DingMembersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/fragment/DingMembersFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment$5;->a:Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    .line 311
    const-string/jumbo v4, "user_id"

    invoke-virtual {p2, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 312
    .local v0, "changedId":J
    cmp-long v4, v0, v6

    if-nez v4, :cond_1

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment$5;->a:Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    invoke-static {v4}, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->i(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 316
    .local v3, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iget-object v5, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment$5;->a:Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    invoke-static {v5}, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->i(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 317
    .local v2, "index":I
    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v5, v6, v0

    if-nez v5, :cond_2

    .line 318
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 319
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-virtual {v4, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v4

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    iput-object v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .line 320
    iget-object v4, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment$5;->a:Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    invoke-static {v4}, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->i(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 322
    :cond_3
    iget-object v4, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment$5;->a:Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    invoke-static {v4}, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->c(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)Layc;

    move-result-object v4

    invoke-virtual {v4}, Layc;->notifyDataSetChanged()V

    goto :goto_0
.end method
