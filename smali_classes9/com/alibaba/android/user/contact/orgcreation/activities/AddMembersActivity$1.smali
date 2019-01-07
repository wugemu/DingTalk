.class final Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "AddMembersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$1;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 74
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$1;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    const-string/jumbo v1, "com.workapp.choose.people.from.contact"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    const-string/jumbo v1, "IDENTIFIY_ADD_MEMBER_ACTIVITY"

    const-string/jumbo v2, "activity_identify"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "choose_user_identities"

    .line 88
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 89
    .local v0, "identityObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 93
    const-string/jumbo v1, "intent_key_is_increment"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$1;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 94
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$1;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 98
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$1;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$1;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lfxz;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->b(Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;Ljava/util/List;)Ljava/util/List;

    .line 99
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$1;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->c(Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;)Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$1;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->b(Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/userkit/usermanager/fragment/UserManagerFragment;->a(Ljava/util/List;)V

    goto :goto_0

    .line 96
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity$1;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;

    invoke-static {v1, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/AddMembersActivity;Ljava/util/List;)Ljava/util/List;

    goto :goto_1
.end method
