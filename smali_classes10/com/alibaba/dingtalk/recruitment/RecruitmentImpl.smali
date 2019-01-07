.class public Lcom/alibaba/dingtalk/recruitment/RecruitmentImpl;
.super Lcom/alibaba/dingtalk/recruitment/base/RecruitmentInterface;
.source "RecruitmentImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/alibaba/dingtalk/recruitment/base/RecruitmentInterface;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 27
    invoke-static {p1}, Lguw;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 1026
    if-eqz v0, :cond_1

    .line 1030
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1031
    const-class v2, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1032
    if-eqz p2, :cond_0

    .line 1033
    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1035
    :cond_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 28
    :cond_1
    return-void
.end method

.method public final b(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 32
    invoke-static {p1}, Lguw;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    .line 1051
    if-eqz v0, :cond_1

    .line 1055
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1056
    const-class v3, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1057
    if-eqz v1, :cond_0

    .line 1058
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1060
    :cond_0
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 33
    :cond_1
    return-void
.end method

.method public final c(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 37
    invoke-static {p1}, Lguw;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 1064
    if-eqz v0, :cond_1

    .line 1068
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1069
    const-class v2, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1070
    if-eqz p2, :cond_0

    .line 1071
    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1073
    :cond_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 38
    :cond_1
    return-void
.end method

.method public init(Landroid/app/Application;)V
    .locals 0
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 18
    return-void
.end method

.method public onApplicationCreate()V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0}, Lcom/alibaba/dingtalk/recruitment/base/RecruitmentInterface;->onApplicationCreate()V

    .line 23
    return-void
.end method
