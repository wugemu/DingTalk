.class public final Lgmm;
.super Lgly;
.source "SpaceMenuDeleteHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lgly;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;JZ)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p3, "editor"    # J
    .param p5, "isFinishPage"    # Z

    .prologue
    .line 65
    instance-of v6, p1, Landroid/app/Activity;

    if-eqz v6, :cond_0

    if-nez p2, :cond_1

    .line 116
    .end local p1    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 69
    .restart local p1    # "context":Landroid/content/Context;
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v6, p3, v6

    if-lez v6, :cond_2

    .line 71
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-static {p1, p3, p4}, Lgfg;->a(Landroid/app/Activity;J)V

    goto :goto_0

    .line 75
    .restart local p1    # "context":Landroid/content/Context;
    :cond_2
    const/4 v2, 0x0

    .line 77
    .local v2, "hasFolder":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v1, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 80
    .local v4, "model":Lcom/alibaba/alimei/cspace/model/DentryModel;
    const-string/jumbo v6, "folder"

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 81
    const/4 v2, 0x1

    .line 85
    :cond_3
    if-nez v2, :cond_4

    .line 86
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    .line 87
    .local v5, "size":I
    const/4 v6, 0x1

    if-le v5, v6, :cond_4

    .line 88
    add-int/lit8 v6, v5, -0x1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "model":Lcom/alibaba/alimei/cspace/model/DentryModel;
    check-cast v4, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 89
    .restart local v4    # "model":Lcom/alibaba/alimei/cspace/model/DentryModel;
    const-string/jumbo v6, "folder"

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 90
    const/4 v2, 0x1

    .line 95
    .end local v5    # "size":I
    :cond_4
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 97
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v3, Lfzs$h;->space_delete_alert:I

    .line 98
    .local v3, "messageResId":I
    if-eqz v2, :cond_5

    .line 99
    sget v6, Lfzs$h;->space_delete_folder_alert_title:I

    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 100
    sget v3, Lfzs$h;->space_delete_folder_alert_msg:I

    .line 103
    :cond_5
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v6

    sget v7, Lfzs$h;->sure:I

    new-instance v8, Lgmm$2;

    invoke-direct {v8, p0, p2, p5, p1}, Lgmm$2;-><init>(Lgmm;Lcom/alibaba/alimei/cspace/model/DentryModel;ZLandroid/content/Context;)V

    .line 104
    invoke-virtual {v6, v7, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v6

    sget v7, Lfzs$h;->cancel:I

    new-instance v8, Lgmm$1;

    invoke-direct {v8, p0}, Lgmm$1;-><init>(Lgmm;)V

    .line 109
    invoke-virtual {v6, v7, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 115
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lgmb;Ljava/lang/Object;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paramModel"    # Lgmb;
    .param p3, "willChange"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 46
    if-nez p2, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    iget v0, p2, Lgmb;->o:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 52
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "space_filelist_delete_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 57
    :cond_2
    :goto_1
    invoke-static {p1, p2, v2}, Lgmm;->a(Landroid/content/Context;Lgmb;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v3, p2, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-wide v4, p2, Lgmb;->s:J

    iget-boolean v6, p2, Lgmb;->l:Z

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lgmm;->a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;JZ)V

    goto :goto_0

    .line 53
    :cond_3
    iget v0, p2, Lgmb;->o:I

    if-ne v0, v2, :cond_2

    .line 54
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "space_previewpage_delete_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto :goto_1
.end method
