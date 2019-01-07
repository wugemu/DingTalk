.class public final Lgml;
.super Lgly;
.source "SpaceMenuCreateFolderHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lgly;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Lgmb;Ljava/lang/Object;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paramModel"    # Lgmb;
    .param p3, "willChange"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 19
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "space_addbutton_folder_create_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 20
    instance-of v0, p1, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    if-eqz v0, :cond_0

    .line 21
    check-cast p1, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->p()V

    .line 23
    :cond_0
    return-void
.end method
