.class final Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$11;
.super Landroid/content/BroadcastReceiver;
.source "OrgNewContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    .prologue
    .line 515
    iput-object p1, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$11;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 518
    const-string/jumbo v2, "com.workapp.add.new.fragment"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 519
    const-string/jumbo v2, "node"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 521
    .local v0, "node":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    iget-object v2, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$11;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v2, v0}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->a(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 522
    const-string/jumbo v2, "bread_node_name"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 523
    .local v1, "nodeName":Ljava/lang/String;
    const-string/jumbo v2, "conversation_id"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 524
    iget-object v2, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$11;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    const-string/jumbo v3, "display_enterprise_oid"

    const-wide/16 v4, 0x0

    invoke-virtual {p2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->b(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;J)J

    .line 525
    iget-object v2, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$11;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity$11;->a:Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->a(Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/alibaba/android/user/contact/org/OrgNewContactActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    .end local v0    # "node":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .end local v1    # "nodeName":Ljava/lang/String;
    :cond_0
    return-void
.end method
