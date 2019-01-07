.class final Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$15;
.super Ljava/lang/Object;
.source "ConversationMembersFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$15;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 256
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.workapp.choose.people.from.group.member"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    .local v2, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 258
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 259
    const-string/jumbo v4, "activity_identify"

    const-string/jumbo v5, "ACTIVITY_IDENTIFY_AT"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 261
    .local v0, "allUserIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    const-wide/16 v4, 0xa

    iput-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 262
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$15;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget v5, Lctk$i;->at_all_nick:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 263
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v3, "userIdentityObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    const-string/jumbo v4, "choose_user_identities"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 266
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$15;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    instance-of v4, v4, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    if-eqz v4, :cond_0

    .line 267
    const-string/jumbo v5, "intent_key_at_seed"

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$15;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    .line 1128
    iget-wide v6, v4, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->b:J

    .line 267
    invoke-virtual {v2, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 269
    :cond_0
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$15;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v4

    invoke-virtual {v4, v2}, Ldq;->a(Landroid/content/Intent;)Z

    .line 270
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$15;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 271
    return-void
.end method
