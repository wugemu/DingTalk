.class public final Lgng;
.super Lgly;
.source "SpaceMenuPrintHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lgly;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Lgmb;Ljava/lang/Object;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paramModel"    # Lgmb;
    .param p3, "willChange"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 27
    invoke-static {p1, p2, v5}, Lgng;->a(Landroid/content/Context;Lgmb;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 47
    .end local p1    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 31
    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    iget v3, p2, Lgmb;->o:I

    if-ne v3, v5, :cond_4

    .line 33
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "space_previewpage_print_click"

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 39
    :cond_1
    :goto_1
    iget-object v0, p2, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 40
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    iget v3, p2, Lgmb;->o:I

    if-ne v3, v5, :cond_5

    .line 1050
    instance-of v3, p1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v3, :cond_2

    move-object v3, p1

    .line 1051
    check-cast v3, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 1053
    :cond_2
    new-instance v1, Lgng$1;

    invoke-direct {v1, p0, p1}, Lgng$1;-><init>(Lgng;Landroid/content/Context;)V

    .line 1075
    instance-of v3, p1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v3, :cond_3

    .line 1076
    const-class v3, Lcma;

    check-cast p1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-static {v1, v3, p1}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcma;

    move-object v1, v3

    .line 42
    .local v1, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    :cond_3
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCrypt()Z

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v1}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Ljava/lang/String;Ljava/lang/String;ZLcma;)V

    goto :goto_0

    .line 34
    .end local v0    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .end local v1    # "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    .restart local p1    # "context":Landroid/content/Context;
    :cond_4
    iget v3, p2, Lgmb;->o:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 36
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "cspace_file_print_click"

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto :goto_1

    .line 44
    .restart local v0    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_5
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCrypt()Z

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "url":Ljava/lang/String;
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v3

    sget v4, Lfzs$h;->dt_cspace_action_print:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v2, v4}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
