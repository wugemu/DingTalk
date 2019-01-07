.class public final Lgmt;
.super Lgly;
.source "SpaceMenuFileInfoHandler.java"


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
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paramModel"    # Lgmb;
    .param p3, "willChange"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 38
    const/4 v10, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v10}, Lgmt;->a(Landroid/content/Context;Lgmb;Z)Z

    move-result v10

    if-nez v10, :cond_0

    .line 74
    :goto_0
    return-void

    .line 42
    :cond_0
    new-instance v6, Lcom/alibaba/dingtalk/cspace/widget/SpaceInfoDialog;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceInfoDialog;-><init>(Landroid/content/Context;)V

    .line 44
    .local v6, "infoDialog":Lcom/alibaba/dingtalk/cspace/widget/SpaceInfoDialog;
    move-object/from16 v0, p2

    iget-object v3, v0, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 46
    .local v3, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v9

    .line 47
    .local v9, "title":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Lgmb;->g:Ljava/lang/String;

    .line 48
    .local v4, "filePath":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v10, v0, Lgmb;->g:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 49
    sget v10, Lfzs$h;->cspace_prevew_file_dir:I

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p2

    iget-object v13, v0, Lgmb;->g:Ljava/lang/String;

    aput-object v13, v11, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 51
    :cond_1
    move-object/from16 v0, p2

    iget-object v2, v0, Lgmb;->h:Ljava/lang/String;

    .line 52
    .local v2, "creatorName":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v10, v0, Lgmb;->h:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 53
    sget v10, Lfzs$h;->cspace_prevew_file_creator:I

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p2

    iget-object v13, v0, Lgmb;->h:Ljava/lang/String;

    aput-object v13, v11, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 56
    :cond_2
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getModifiedTime()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_5

    .line 57
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getModifiedTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Lgqh;->b(J)Ljava/lang/String;

    move-result-object v7

    .line 63
    .local v7, "modifyDesc":Ljava/lang/String;
    :goto_1
    const/4 v8, 0x0

    .line 64
    .local v8, "modifyTime":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 65
    sget v10, Lfzs$h;->cspace_prevew_last_modifytime:I

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v7, v11, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 67
    :cond_3
    const/4 v5, 0x0

    .line 68
    .local v5, "fileSizeDesc":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_4

    .line 69
    sget v10, Lfzs$h;->cspace_preview_file_size:I

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v14

    .line 1046
    invoke-static {v14, v15}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v13

    .line 69
    aput-object v13, v11, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 72
    :cond_4
    invoke-virtual {v6}, Lcom/alibaba/dingtalk/cspace/widget/SpaceInfoDialog;->show()V

    .line 1069
    iget-object v10, v6, Lcom/alibaba/dingtalk/cspace/widget/SpaceInfoDialog;->a:Landroid/widget/TextView;

    invoke-static {v10, v9}, Lcom/alibaba/dingtalk/cspace/widget/SpaceInfoDialog;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1070
    iget-object v10, v6, Lcom/alibaba/dingtalk/cspace/widget/SpaceInfoDialog;->b:Landroid/widget/TextView;

    invoke-static {v10, v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceInfoDialog;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1071
    iget-object v10, v6, Lcom/alibaba/dingtalk/cspace/widget/SpaceInfoDialog;->c:Landroid/widget/TextView;

    invoke-static {v10, v5}, Lcom/alibaba/dingtalk/cspace/widget/SpaceInfoDialog;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1072
    iget-object v10, v6, Lcom/alibaba/dingtalk/cspace/widget/SpaceInfoDialog;->d:Landroid/widget/TextView;

    invoke-static {v10, v8}, Lcom/alibaba/dingtalk/cspace/widget/SpaceInfoDialog;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1073
    iget-object v10, v6, Lcom/alibaba/dingtalk/cspace/widget/SpaceInfoDialog;->e:Landroid/widget/TextView;

    invoke-static {v10, v4}, Lcom/alibaba/dingtalk/cspace/widget/SpaceInfoDialog;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 58
    .end local v5    # "fileSizeDesc":Ljava/lang/String;
    .end local v7    # "modifyDesc":Ljava/lang/String;
    .end local v8    # "modifyTime":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCreateTime()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_6

    .line 59
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCreateTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Lgqh;->b(J)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "modifyDesc":Ljava/lang/String;
    goto :goto_1

    .line 61
    .end local v7    # "modifyDesc":Ljava/lang/String;
    :cond_6
    const/4 v7, 0x0

    .restart local v7    # "modifyDesc":Ljava/lang/String;
    goto :goto_1
.end method
