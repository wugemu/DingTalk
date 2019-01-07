.class public final Lgmy;
.super Lgly;
.source "SpaceMenuLinkShareHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lgly;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lgmb;Ljava/lang/Object;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paramModel"    # Lgmb;
    .param p3, "willChange"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 41
    if-nez p2, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget v4, p2, Lgmb;->o:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 47
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const-string/jumbo v5, "space_filelist_sharelink_click"

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 52
    :cond_2
    :goto_1
    invoke-static {p1, p2, v6}, Lgmy;->a(Landroid/content/Context;Lgmb;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 56
    iget-object v1, p2, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 59
    .local v1, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    const-string/jumbo v5, "cspace_link_new_enable"

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 60
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v4

    invoke-static {v1}, Lgoc;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->b(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    goto :goto_0

    .line 48
    .end local v1    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_3
    iget v4, p2, Lgmb;->o:I

    if-ne v4, v6, :cond_2

    .line 49
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const-string/jumbo v5, "space_previewpage_sharelink_click"

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto :goto_1

    .line 65
    .restart local v1    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_4
    const/4 v0, 0x0

    .line 66
    .local v0, "activity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    instance-of v4, p1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v4, :cond_5

    move-object v0, p1

    .line 67
    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 72
    :cond_5
    move-object v2, v0

    .local v2, "finalActivity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    if-eqz v0, :cond_6

    .line 73
    sget v4, Lfzs$h;->dt_mail_please_wait:I

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog(I)V

    .line 76
    :cond_6
    new-instance v3, Lgmy$1;

    invoke-direct {v3, p0, v2}, Lgmy$1;-><init>(Lgmy;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    .line 98
    .local v3, "listener":Lcma;, "Lcma<Ljava/lang/Object;>;"
    instance-of v4, p1, Landroid/app/Activity;

    if-eqz v4, :cond_7

    .line 99
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v5

    const-class v6, Lcma;

    move-object v4, p1

    check-cast v4, Landroid/app/Activity;

    invoke-interface {v5, v3, v6, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "listener":Lcma;, "Lcma<Ljava/lang/Object;>;"
    check-cast v3, Lcma;

    .line 102
    .restart local v3    # "listener":Lcma;, "Lcma<Ljava/lang/Object;>;"
    :cond_7
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v4

    invoke-static {v1}, Lgoc;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v5

    invoke-virtual {v4, p1, v5, v3}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcma;)V

    goto :goto_0
.end method
