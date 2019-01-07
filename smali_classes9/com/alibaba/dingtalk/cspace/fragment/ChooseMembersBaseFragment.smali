.class public abstract Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "ChooseMembersBaseFragment.java"


# instance fields
.field private a:Landroid/content/BroadcastReceiver;

.field private b:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, "depts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    return-void
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 1113
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment;->a:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 1114
    new-instance v0, Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment$2;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment$2;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment;->a:Landroid/content/BroadcastReceiver;

    .line 1134
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1135
    const-string/jumbo v1, "com.workapp.choose.people.from.contact"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1136
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 2068
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment;->b:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 2069
    new-instance v0, Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment$1;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment;->b:Landroid/content/BroadcastReceiver;

    .line 2107
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2108
    const-string/jumbo v1, "choose_enterprise_group_conversation"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2109
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 60
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 154
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onDestroy()V

    .line 156
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment;->a:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 157
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment;->b:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 161
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/ChooseMembersBaseFragment;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 163
    :cond_1
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method
