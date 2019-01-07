.class public final Lfid;
.super Ljava/lang/Object;
.source "OrgNavigatorInteractorImpl.java"

# interfaces
.implements Lfhz;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "itemObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 49
    if-eqz p2, :cond_0

    iget-object v2, p2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v2, :cond_0

    .line 50
    iget-object v0, p2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 51
    .local v0, "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.workapp.add.new.fragment"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "node"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 53
    const-string/jumbo v2, "display_enterprise_oid"

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 54
    invoke-static {p1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    invoke-virtual {v2, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 56
    .end local v0    # "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;J)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "itemObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .param p3, "orgId"    # J

    .prologue
    .line 79
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/org/add_dept.html"

    new-instance v2, Lfid$2;

    invoke-direct {v2, p0, p2, p3, p4}, Lfid$2;-><init>(Lfid;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;J)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 96
    return-void
.end method

.method public final b(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "itemObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 60
    if-eqz p2, :cond_0

    iget-object v1, p2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    if-eqz v1, :cond_0

    .line 61
    iget-object v0, p2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    .line 62
    .local v0, "employeeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    invoke-static {}, Lflz;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lfid$1;

    invoke-direct {v3, p0, v0}, Lfid$1;-><init>(Lfid;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 75
    .end local v0    # "employeeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    :cond_0
    return-void
.end method

.method public final b(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;J)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "itemObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .param p3, "orgId"    # J

    .prologue
    .line 115
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/contact/manage_staff.html"

    new-instance v2, Lfid$3;

    invoke-direct {v2, p0, p3, p4, p2}, Lfid$3;-><init>(Lfid;JLcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 127
    return-void
.end method

.method public final c(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "itemObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 131
    if-nez p2, :cond_0

    .line 142
    :goto_0
    return-void

    .line 134
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/org/edit_dept.html"

    new-instance v2, Lfid$4;

    invoke-direct {v2, p0, p2}, Lfid$4;-><init>(Lfid;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method
