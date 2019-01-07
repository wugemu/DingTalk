.class public final Lgnt;
.super Lgly;
.source "SpaceOnlineEditHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lgly;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;ILcom/alibaba/alimei/cspace/model/DentryModel;ILjava/lang/String;Ljava/lang/String;J)V
    .locals 20
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "spaceMenuBottomView"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;
    .param p3, "pageTag"    # I
    .param p4, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p5, "spaceType"    # I
    .param p6, "msgId"    # Ljava/lang/String;
    .param p7, "conversationId"    # Ljava/lang/String;
    .param p8, "orgId"    # J

    .prologue
    .line 53
    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    const/4 v3, 0x2

    move/from16 v0, p3

    if-ne v0, v3, :cond_5

    .line 59
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "space_fileslist_more_online_edit"

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 64
    :cond_2
    :goto_1
    if-eqz p2, :cond_4

    .line 65
    const/16 v17, 0x0

    .line 66
    .local v17, "menuId":I
    const/4 v3, 0x2

    move/from16 v0, p3

    if-ne v0, v3, :cond_6

    .line 67
    const/16 v17, 0x6e

    .line 71
    :cond_3
    :goto_2
    if-eqz v17, :cond_4

    .line 72
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->b(I)Lgqm;

    move-result-object v18

    .line 73
    .local v18, "menuOnlineEdit":Lgqm;
    if-eqz v18, :cond_4

    move-object/from16 v0, v18

    iget-boolean v3, v0, Lgqm;->e:Z

    if-eqz v3, :cond_4

    .line 74
    const/4 v3, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(IZ)V

    .line 75
    const-string/jumbo v3, "pref_key_space_online_edit"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 80
    .end local v17    # "menuId":I
    .end local v18    # "menuOnlineEdit":Lgqm;
    :cond_4
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isESafeNetEncrypt()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 81
    sget v3, Lfzs$h;->dt_space_edit_failreason_enc:I

    invoke-static {v3}, Lcms;->a(I)V

    goto :goto_0

    .line 60
    :cond_5
    const/4 v3, 0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_2

    .line 61
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "cspace_file_mobile_preview_edit"

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto :goto_1

    .line 68
    .restart local v17    # "menuId":I
    :cond_6
    const/4 v3, 0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_3

    .line 69
    const/16 v17, 0x3

    goto :goto_2

    .line 85
    .end local v17    # "menuId":I
    :cond_7
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCreatorEmail()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lfzo;->a(Ljava/lang/String;)J

    move-result-wide v8

    .line 88
    .local v8, "creatorId":J
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 89
    move-object/from16 v5, p7

    .line 94
    .local v5, "finalConversationId":Ljava/lang/String;
    :goto_3
    new-instance v2, Lgnt$1;

    move-object/from16 v3, p0

    move/from16 v4, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p4

    move-object/from16 v10, p1

    invoke-direct/range {v2 .. v10}, Lgnt$1;-><init>(Lgnt;ILjava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;JLandroid/app/Activity;)V

    .line 140
    .local v2, "callback":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const-class v3, Lcma;

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "callback":Lcma;, "Lcma<Ljava/lang/Void;>;"
    check-cast v2, Lcma;

    .line 142
    .restart local v2    # "callback":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v13, Lgrb;

    invoke-direct {v13}, Lgrb;-><init>()V

    .line 143
    .local v13, "args":Lgrb;
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v13, Lgrb;->a:Ljava/lang/String;

    .line 144
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v13, Lgrb;->b:Ljava/lang/String;

    .line 145
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceTypeBelong()Ljava/lang/String;

    move-result-object v3

    move/from16 v0, p5

    invoke-static {v3, v0}, Lgqu;->a(Ljava/lang/String;I)I

    move-result v3

    iput v3, v13, Lgrb;->j:I

    .line 146
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v13, Lgrb;->i:Ljava/lang/String;

    .line 147
    move-object/from16 v0, p6

    iput-object v0, v13, Lgrb;->d:Ljava/lang/String;

    .line 148
    iput-object v5, v13, Lgrb;->c:Ljava/lang/String;

    .line 149
    iput-wide v8, v13, Lgrb;->h:J

    .line 150
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getModifiedTime()J

    move-result-wide v6

    iput-wide v6, v13, Lgrb;->f:J

    .line 151
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v3

    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lfzv;->h(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v13, Lgrb;->k:Z

    .line 153
    invoke-static {}, Lgfg;->a()Lgfg;

    move-result-object v11

    move-object/from16 v12, p1

    move-wide/from16 v14, p8

    move-object/from16 v16, v2

    invoke-virtual/range {v11 .. v16}, Lgfg;->a(Landroid/app/Activity;Lgrb;JLcma;)V

    goto/16 :goto_0

    .line 91
    .end local v2    # "callback":Lcma;, "Lcma<Ljava/lang/Void;>;"
    .end local v5    # "finalConversationId":Ljava/lang/String;
    .end local v13    # "args":Lgrb;
    :cond_8
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v3

    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lfzv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "finalConversationId":Ljava/lang/String;
    goto :goto_3
.end method

.method protected final a(Landroid/content/Context;Lgmb;Ljava/lang/Object;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paramModel"    # Lgmb;
    .param p3, "willChange"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 40
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lgnt;->a(Landroid/content/Context;Lgmb;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 43
    :cond_0
    const/4 v2, 0x0

    .line 44
    .local v2, "spaceMenuBottomView":Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;
    instance-of v0, p3, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    if-eqz v0, :cond_1

    move-object v2, p3

    .line 45
    check-cast v2, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    :cond_1
    move-object v1, p1

    .line 47
    check-cast v1, Landroid/app/Activity;

    iget v3, p2, Lgmb;->o:I

    iget-object v4, p2, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget v5, p2, Lgmb;->c:I

    iget-object v6, p2, Lgmb;->e:Ljava/lang/String;

    iget-object v7, p2, Lgmb;->f:Ljava/lang/String;

    iget-wide v8, p2, Lgmb;->d:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lgnt;->a(Landroid/app/Activity;Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;ILcom/alibaba/alimei/cspace/model/DentryModel;ILjava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method
