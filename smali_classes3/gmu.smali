.class public final Lgmu;
.super Lgly;
.source "SpaceMenuGroupPermissionModifyHandler.java"


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
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paramModel"    # Lgmb;
    .param p3, "willChange"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 21
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lgmu;->a(Landroid/content/Context;Lgmb;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 33
    :cond_0
    :goto_0
    return-void

    .line 24
    :cond_1
    iget-object v0, p2, Lgmb;->n:Lgiy;

    if-eqz v0, :cond_0

    .line 29
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "space_orgfile_chatfile_setting_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 31
    iget-object v1, p2, Lgmb;->n:Lgiy;

    iget-wide v2, p2, Lgmb;->d:J

    iget-object v0, p2, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 32
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v0

    .line 1109
    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    move-object v0, p1

    .line 31
    invoke-static/range {v0 .. v5}, Lfzu;->a(Landroid/content/Context;Lgiy;JJ)V

    goto :goto_0
.end method
