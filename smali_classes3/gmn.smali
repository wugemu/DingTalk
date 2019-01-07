.class public final Lgmn;
.super Lgly;
.source "SpaceMenuDownloadHandler.java"


# instance fields
.field private a:Lgqm;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lgly;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lgmb;Ljava/lang/Object;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paramModel"    # Lgmb;
    .param p3, "willChange"    # Ljava/lang/Object;

    .prologue
    .line 50
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const-string/jumbo v5, "space_previewpage_download_click"

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 52
    const/4 v4, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v4}, Lgmn;->a(Landroid/content/Context;Lgmb;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 98
    :goto_0
    return-void

    .line 56
    :cond_0
    move-object/from16 v0, p2

    iget-object v4, v0, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v4, :cond_1

    move-object/from16 v0, p2

    iget-object v4, v0, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isESafeNetEncrypt()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 57
    sget v4, Lfzs$h;->dt_space_download_failreason_enc:I

    invoke-static {v4}, Lcms;->a(I)V

    goto :goto_0

    .line 60
    :cond_1
    const-wide/16 v14, 0x0

    .line 61
    .local v14, "fileSize":J
    move-object/from16 v0, p2

    iget-object v4, v0, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v4, :cond_2

    .line 62
    move-object/from16 v0, p2

    iget-object v4, v0, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v14

    .line 64
    :cond_2
    invoke-static {v14, v15}, Lgpy;->a(J)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 65
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v4

    move-object/from16 v5, p1

    check-cast v5, Landroid/app/Activity;

    const/4 v6, 0x0

    .line 66
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    sget v8, Lfzs$h;->dt_cspace_download_free_flow:I

    invoke-virtual {v7, v8}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 67
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v9

    invoke-virtual {v9}, Lcid;->c()Landroid/app/Application;

    move-result-object v9

    sget v10, Lfzs$h;->dt_cspace_download_network_ok:I

    invoke-virtual {v9, v10}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lgmn$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v10, v0, v1, v2, v3}, Lgmn$1;-><init>(Lgmn;Landroid/content/Context;Lgmb;Ljava/lang/Object;)V

    .line 73
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v11

    invoke-virtual {v11}, Lcid;->c()Landroid/app/Application;

    move-result-object v11

    sget v12, Lfzs$h;->dt_conference_dingcard_free_flow_notice_title:I

    invoke-virtual {v11, v12}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 74
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v12

    invoke-virtual {v12}, Lcid;->c()Landroid/app/Application;

    move-result-object v12

    sget v16, Lfzs$h;->dt_conference_dingcard_free_flow_download_notice:I

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 65
    invoke-virtual/range {v4 .. v12}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Landroid/app/Activity;ZLjava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 76
    :cond_3
    invoke-static/range {p1 .. p1}, Lcms;->d(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static/range {p1 .. p1}, Lcms;->k(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 78
    new-instance v13, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 80
    .local v13, "builderTip":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v4, Lfzs$h;->dt_cspace_download_network_tip:I

    invoke-virtual {v13, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lfzs$h;->dt_cspace_download_network_ok:I

    new-instance v6, Lgmn$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v6, v0, v1, v2, v3}, Lgmn$3;-><init>(Lgmn;Landroid/content/Context;Lgmb;Ljava/lang/Object;)V

    .line 81
    invoke-virtual {v4, v5, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lfzs$h;->cancel:I

    new-instance v6, Lgmn$2;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lgmn$2;-><init>(Lgmn;)V

    .line 86
    invoke-virtual {v4, v5, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 93
    invoke-virtual {v13}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 95
    .end local v13    # "builderTip":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :cond_4
    invoke-virtual/range {p0 .. p3}, Lgmn;->b(Landroid/content/Context;Lgmb;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method b(Landroid/content/Context;Lgmb;Ljava/lang/Object;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paramModel"    # Lgmb;
    .param p3, "willChange"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 101
    if-nez p1, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    if-eqz p2, :cond_0

    iget-object v4, p2, Lgmb;->q:Lgmb$b;

    if-eqz v4, :cond_0

    .line 110
    iget-object v0, p2, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 112
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v0, :cond_0

    .line 116
    const/4 v3, 0x0

    .line 118
    .local v3, "menuBottomView":Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;
    instance-of v4, p3, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    if-eqz v4, :cond_2

    move-object v3, p3

    .line 119
    check-cast v3, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    .line 122
    :cond_2
    move-object v2, v3

    .line 124
    .local v2, "finalMenuBottomView":Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;
    new-instance v1, Lgmn$4;

    invoke-direct {v1, p0, p2, v2, v0}, Lgmn$4;-><init>(Lgmn;Lgmb;Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 164
    .local v1, "downloadListener":Lgqr;
    instance-of v4, p1, Landroid/app/Activity;

    if-eqz v4, :cond_3

    .line 165
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v5

    const-class v6, Lgqr;

    move-object v4, p1

    check-cast v4, Landroid/app/Activity;

    invoke-interface {v5, v1, v6, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "downloadListener":Lgqr;
    check-cast v1, Lgqr;

    .line 168
    .restart local v1    # "downloadListener":Lgqr;
    :cond_3
    if-eqz v2, :cond_5

    .line 169
    iget-object v4, p0, Lgmn;->a:Lgqm;

    if-nez v4, :cond_4

    .line 170
    new-instance v4, Lgqm;

    const/16 v5, 0x14

    sget v6, Lfzs$h;->icon_suspend:I

    sget v7, Lfzs$h;->cspace_menu_download_pause:I

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lgqm;-><init>(IILjava/lang/String;)V

    iput-object v4, p0, Lgmn;->a:Lgqm;

    .line 172
    :cond_4
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v4

    iget-object v6, p0, Lgmn;->a:Lgqm;

    invoke-virtual {v2, v4, v5, v6}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(JLgqm;)V

    .line 175
    :cond_5
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadStatus(I)V

    .line 177
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v4

    invoke-static {v0}, Lgoc;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6, v1}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;ZLgqr;)V

    goto :goto_0
.end method
