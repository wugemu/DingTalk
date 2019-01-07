.class public final Lgnj;
.super Lgly;
.source "SpaceMenuRenameHandler.java"


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
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paramModel"    # Lgmb;
    .param p3, "willChange"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 36
    if-nez p2, :cond_1

    .line 60
    .end local p1    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 41
    .restart local p1    # "context":Landroid/content/Context;
    :cond_1
    iget v1, p2, Lgmb;->o:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 42
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "space_filelist_rename_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 47
    :cond_2
    :goto_1
    invoke-static {p1, p2, v3}, Lgnj;->a(Landroid/content/Context;Lgmb;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    iget-wide v2, p2, Lgmb;->s:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_4

    .line 53
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    iget-wide v2, p2, Lgmb;->s:J

    invoke-static {p1, v2, v3}, Lgfg;->a(Landroid/app/Activity;J)V

    goto :goto_0

    .line 43
    .restart local p1    # "context":Landroid/content/Context;
    :cond_3
    iget v1, p2, Lgmb;->o:I

    if-ne v1, v3, :cond_2

    .line 44
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "space_previewpage_rename_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto :goto_1

    .line 57
    :cond_4
    iget-object v0, p2, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 59
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;Lcma;)V

    goto :goto_0
.end method
