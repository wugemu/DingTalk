.class public final Lgnp;
.super Lgly;
.source "SpaceMenuStatisticHandler.java"


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
    .line 38
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "space_file_more_viewstat_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 40
    const/4 v1, 0x1

    invoke-static {p1, p2, v1}, Lgnp;->a(Landroid/content/Context;Lgmb;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v0, p2, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 46
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcms;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    iget v1, p2, Lgmb;->c:I

    iget-wide v2, p2, Lgmb;->d:J

    invoke-static {p1, v0, v1, v2, v3}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;IJ)V

    goto :goto_0

    .line 49
    :cond_1
    sget v1, Lfzs$h;->network_no_connection:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
