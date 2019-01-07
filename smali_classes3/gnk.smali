.class public final Lgnk;
.super Lgly;
.source "SpaceMenuRepathHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lgly;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lgmb;Ljava/lang/Object;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paramModel"    # Lgmb;
    .param p3, "willChange"    # Ljava/lang/Object;

    .prologue
    .line 39
    if-nez p2, :cond_1

    .line 69
    .end local p1    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 44
    .restart local p1    # "context":Landroid/content/Context;
    :cond_1
    move-object/from16 v0, p2

    iget v3, v0, Lgmb;->o:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 45
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "space_filelist_move_click"

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 50
    :cond_2
    :goto_1
    const/4 v3, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v3}, Lgnk;->a(Landroid/content/Context;Lgmb;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    move-object/from16 v0, p2

    iget-wide v4, v0, Lgmb;->s:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_4

    .line 56
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    move-object/from16 v0, p2

    iget-wide v4, v0, Lgmb;->s:J

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lgfg;->a(Landroid/app/Activity;J)V

    goto :goto_0

    .line 46
    .restart local p1    # "context":Landroid/content/Context;
    :cond_3
    move-object/from16 v0, p2

    iget v3, v0, Lgmb;->o:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 47
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "space_previewpage_move_click"

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto :goto_1

    .line 60
    :cond_4
    move-object/from16 v0, p2

    iget-object v2, v0, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 62
    .local v2, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    new-instance v10, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v10, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    .local v10, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lfzu;->a(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v6, 0x4

    .line 66
    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x4

    const/16 v17, 0x0

    move-object/from16 v3, p1

    .line 65
    invoke-static/range {v3 .. v17}, Lfzu;->a(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZLjava/lang/String;Lcma;IZ)V

    goto :goto_0
.end method
