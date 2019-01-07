.class final Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "SelectorDepartmentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$1;->a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v0, 0x0

    .line 116
    const-string/jumbo v6, "dept_object"

    .line 117
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 118
    .local v2, "orgDeptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    const-string/jumbo v6, "parent_dept_id"

    invoke-virtual {p2, v6, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 119
    .local v4, "parentDeptId":J
    if-eqz v2, :cond_0

    iget-object v6, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$1;->a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    invoke-static {v6}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->a(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$1;->a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    invoke-static {v6}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->b(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;)Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    move-result-object v6

    if-nez v6, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v6, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$1;->a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    invoke-static {v6}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->b(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;)Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    move-result-object v6

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$1;->a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    invoke-static {v6}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->b(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;)Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    move-result-object v6

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v0, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    .line 124
    .local v0, "currentParentDeptId":J
    :cond_2
    const-string/jumbo v6, "com.workapp.org.dept.add"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 125
    cmp-long v6, v0, v4

    if-nez v6, :cond_3

    .line 126
    new-instance v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;-><init>()V

    .line 127
    .local v3, "orgNodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    iput-object v2, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 128
    sget-object v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->DEPT:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    iput-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    .line 129
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->masterNodeList:Ljava/util/List;

    .line 130
    new-instance v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    invoke-direct {v6}, Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;-><init>()V

    iput-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    .line 131
    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;->canManager:Z

    .line 132
    iget-object v6, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$1;->a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    invoke-static {v6}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->a(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 133
    iget-object v6, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$1;->a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    invoke-static {v6}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->c(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;)Lffq;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 134
    iget-object v6, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$1;->a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    invoke-static {v6}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->c(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;)Lffq;

    move-result-object v6

    invoke-interface {v6, v3}, Lffq;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    .line 138
    .end local v3    # "orgNodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    :cond_3
    iget-object v6, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$1;->a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    invoke-static {v6}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->d(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;)Lfgu;

    move-result-object v6

    invoke-virtual {v6}, Lfgu;->notifyDataSetChanged()V

    .line 139
    iget-object v6, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$1;->a:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    invoke-virtual {v6}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->c()V

    goto :goto_0
.end method
