.class public final Lgni;
.super Lgly;
.source "SpaceMenuReleaseEditLockHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lgly;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Lgmb;Ljava/lang/Object;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paramModel"    # Lgmb;
    .param p3, "willChange"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 21
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "cspace_mobile_local_editing_unlock"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 23
    const/4 v1, 0x1

    invoke-static {p1, p2, v1}, Lgni;->a(Landroid/content/Context;Lgmb;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 30
    .end local p1    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 27
    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    new-instance v0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditReleaseLockDialog;

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-direct {v0, p1}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditReleaseLockDialog;-><init>(Landroid/app/Activity;)V

    .line 28
    .local v0, "dialog":Lcom/alibaba/dingtalk/cspace/widget/OnlineEditReleaseLockDialog;
    iget-object v1, p2, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1039
    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditReleaseLockDialog;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 29
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditReleaseLockDialog;->show()V

    goto :goto_0
.end method
