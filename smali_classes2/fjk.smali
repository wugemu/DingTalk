.class public final Lfjk;
.super Ljava/lang/Object;
.source "OrgNavigatorInterfaceImpl.java"

# interfaces
.implements Lfiq;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "itemObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 152
    if-nez p2, :cond_0

    .line 163
    :goto_0
    return-void

    .line 155
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/org/edit_dept.html"

    new-instance v2, Lfjk$4;

    invoke-direct {v2, p0, p2}, Lfjk$4;-><init>(Lfjk;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;J)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "itemObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .param p3, "orgId"    # J

    .prologue
    .line 81
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/org/add_dept.html"

    new-instance v2, Lfjk$1;

    invoke-direct {v2, p0, p2, p3, p4}, Lfjk$1;-><init>(Lfjk;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;J)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 98
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;JLjava/lang/String;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "itemObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .param p3, "orgId"    # J
    .param p5, "orgName"    # Ljava/lang/String;

    .prologue
    .line 133
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v6

    const-string/jumbo v7, "https://qr.dingtalk.com/contact/manage_staff.html"

    new-instance v0, Lfjk$3;

    move-object v1, p0

    move-wide v2, p3

    move-object v4, p5

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lfjk$3;-><init>(Lfjk;JLjava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    invoke-interface {v6, v7, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 148
    return-void
.end method

.method public final b(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;J)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "itemObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .param p3, "orgId"    # J

    .prologue
    .line 117
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/contact/manage_staff.html"

    new-instance v2, Lfjk$2;

    invoke-direct {v2, p0, p3, p4, p2}, Lfjk$2;-><init>(Lfjk;JLcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 129
    return-void
.end method
