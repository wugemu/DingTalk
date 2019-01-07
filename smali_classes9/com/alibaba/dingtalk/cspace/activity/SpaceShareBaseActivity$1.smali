.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$1;
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
    .line 92
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 95
    if-eqz p2, :cond_0

    .line 96
    const-string/jumbo v2, "activity_identify"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "identifier":Ljava/lang/String;
    const-string/jumbo v2, "com.workapp.choose.people.from.contact"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "101"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    const-string/jumbo v2, "choose_user_identities"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 99
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;

    invoke-static {v2, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;Ljava/util/List;)V

    .line 102
    .end local v0    # "identifier":Ljava/lang/String;
    .end local v1    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_0
    return-void
.end method
