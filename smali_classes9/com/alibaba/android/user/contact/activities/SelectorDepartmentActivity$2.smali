.class final Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "SelectorDepartmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$2;->a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

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
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 229
    const-string/jumbo v2, "node"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 230
    .local v0, "node":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    const-string/jumbo v2, "bread_node_name"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "nodeName":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$2;->a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    const-string/jumbo v3, "display_enterprise_oid"

    invoke-virtual {p2, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->a(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;J)J

    .line 232
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$2;->a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    const-string/jumbo v3, "display_department_oid"

    invoke-virtual {p2, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->b(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;J)J

    .line 233
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$2;->a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    invoke-static {v2, v0}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->a(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 234
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$2;->a:Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    invoke-virtual {v2, v6, v0, v1, v6}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->a(ZLcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;Z)V

    .line 235
    return-void
.end method
