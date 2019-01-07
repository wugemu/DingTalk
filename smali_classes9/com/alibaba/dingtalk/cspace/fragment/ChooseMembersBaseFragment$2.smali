.class final Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "ChooseMembersBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment$2;->a:Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment;

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
    .line 117
    if-nez p2, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    const-string/jumbo v3, "activity_identify"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "identifier":Ljava/lang/String;
    const-string/jumbo v3, "com.workapp.choose.people.from.contact"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment$2;->a:Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment;

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    const-string/jumbo v3, "choose_user_identities"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 125
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment$2;->a:Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment;

    invoke-virtual {v3, v2}, Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment;->a(Ljava/util/List;)V

    .line 127
    const-string/jumbo v3, "choose_department_array"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 128
    .local v0, "deptList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment$2;->a:Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment;

    invoke-virtual {v3, v0}, Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment;->b(Ljava/util/List;)V

    goto :goto_0
.end method
