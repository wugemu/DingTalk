.class public final Lgmo;
.super Lgly;
.source "SpaceMenuDownloadPauseHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lgly;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lgmb;Ljava/lang/Object;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paramModel"    # Lgmb;
    .param p3, "willChange"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 37
    const/4 v2, 0x0

    invoke-static {p1, p2, v2}, Lgmo;->a(Landroid/content/Context;Lgmb;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    iget-object v0, p2, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 43
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadStatus()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    .line 45
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v2

    invoke-static {v0}, Lgoc;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    .line 48
    :cond_2
    instance-of v2, p3, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    if-eqz v2, :cond_0

    move-object v1, p3

    .line 52
    check-cast v1, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    .line 53
    .local v1, "menuBottomView":Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;
    const/16 v2, 0xa

    sget v3, Lfzs$h;->cspace_menu_download_continue:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(ILjava/lang/String;)V

    .line 54
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->b()V

    goto :goto_0
.end method
