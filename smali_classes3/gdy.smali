.class public final Lgdy;
.super Ljava/lang/Object;
.source "DentryOperationUseCase.java"


# instance fields
.field final a:Lgdw;

.field final b:Landroid/content/Context;

.field c:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$AliFileAuthFlagFetcher;

.field d:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$PublicAreaSafeModeFetcher;


# direct methods
.method constructor <init>(Lgdw;Landroid/content/Context;)V
    .locals 1
    .param p1, "presenter"    # Lgdw;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {p1}, Lgqb;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgdw;

    iput-object v0, p0, Lgdy;->a:Lgdw;

    .line 64
    invoke-static {p2}, Lgqb;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lgdy;->b:Landroid/content/Context;

    .line 65
    return-void
.end method

.method static synthetic a(Lgdy;Lcom/alibaba/dingtalk/cspace/model/CsDentry;Lgeh;ZZ)V
    .locals 0
    .param p0, "x0"    # Lgdy;
    .param p1, "x1"    # Lcom/alibaba/dingtalk/cspace/model/CsDentry;
    .param p2, "x2"    # Lgeh;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 54
    invoke-virtual {p0, p1, p3, p4}, Lgdy;->a(Lcom/alibaba/dingtalk/cspace/model/CsDentry;ZZ)V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 164
    iget-object v2, p0, Lgdy;->a:Lgdw;

    invoke-virtual {v2}, Lgdw;->u()Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;

    move-result-object v0

    .line 165
    .local v0, "dentryListArgs":Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->isFromConversation()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 166
    .local v1, "isFromConversation":Z
    :goto_0
    iget-object v2, p0, Lgdy;->a:Lgdw;

    invoke-virtual {v2}, Lgdw;->w()I

    move-result v2

    invoke-static {v1, v2}, Lfzu;->a(ZI)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 165
    .end local v1    # "isFromConversation":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method a(Lcom/alibaba/dingtalk/cspace/model/CsDentry;ZZ)V
    .locals 16
    .param p1, "csDentry"    # Lcom/alibaba/dingtalk/cspace/model/CsDentry;
    .param p2, "isAdmin"    # Z
    .param p3, "isReadOnly"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 426
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v3

    if-nez v3, :cond_1

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v13

    .line 431
    .local v13, "dentry":Lcom/alibaba/alimei/cspace/model/DentryModel;
    move-object/from16 v0, p0

    iget-object v3, v0, Lgdy;->a:Lgdw;

    invoke-virtual {v3}, Lgdw;->u()Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;

    move-result-object v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lgdy;->a:Lgdw;

    invoke-virtual {v3}, Lgdw;->u()Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->isFromConversation()Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v10, 0x1

    .line 432
    .local v10, "isFromConversation":Z
    :goto_1
    invoke-static {v13}, Lgpr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v6

    .line 433
    .local v6, "isCreator":Z
    new-instance v2, Lgmd;

    move-object/from16 v0, p0

    iget-object v3, v0, Lgdy;->a:Lgdw;

    invoke-virtual {v3}, Lgdw;->w()I

    move-result v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lgdy;->a:Lgdw;

    .line 434
    invoke-virtual {v5}, Lgdw;->v()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getOrgId()J

    move-result-wide v8

    move/from16 v5, p2

    invoke-direct/range {v2 .. v10}, Lgmd;-><init>(IIZZLjava/lang/String;JZ)V

    .line 1097
    .local v2, "operationController":Lgmd;
    move/from16 v0, p3

    iput-boolean v0, v2, Lgmd;->a:Z

    .line 437
    move-object/from16 v0, p0

    iget-object v3, v0, Lgdy;->b:Landroid/content/Context;

    instance-of v3, v3, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v3, :cond_2

    .line 438
    move-object/from16 v0, p0

    iget-object v3, v0, Lgdy;->b:Landroid/content/Context;

    check-cast v3, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 1101
    iput-object v3, v2, Lgmd;->d:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 1105
    :cond_2
    iput-object v13, v2, Lgmd;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 442
    new-instance v15, Lgdy$3;

    invoke-direct/range {v15 .. v16}, Lgdy$3;-><init>(Lgdy;)V

    .line 467
    .local v15, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    const-class v3, Lcma;

    move-object/from16 v0, p0

    iget-object v4, v0, Lgdy;->b:Landroid/content/Context;

    invoke-static {v15, v3, v4}, Lgpr;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    check-cast v15, Lcma;

    .line 1109
    .restart local v15    # "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    iput-object v15, v2, Lgmd;->e:Lcma;

    .line 470
    move-object/from16 v0, p0

    iget-object v3, v0, Lgdy;->a:Lgdw;

    invoke-virtual {v3}, Lgdw;->B()Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    move-result-object v12

    .line 471
    .local v12, "csSpace":Lcom/alibaba/dingtalk/cspace/model/CsSpace;
    if-nez v12, :cond_7

    const/4 v11, 0x0

    .line 472
    .local v11, "conversationId":Ljava/lang/String;
    :goto_2
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 473
    invoke-virtual {v13}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCid()Ljava/lang/String;

    move-result-object v11

    .line 475
    :cond_3
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 476
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lgdy;->a:Lgdw;

    invoke-virtual {v4}, Lgdw;->v()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lfzv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1113
    :cond_4
    iput-object v11, v2, Lgmd;->c:Ljava/lang/String;

    .line 480
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryExtModel()Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 481
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryExtModel()Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;

    move-result-object v14

    .line 482
    .local v14, "dentryExt":Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;
    invoke-virtual {v14}, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;->getEditor()J

    move-result-wide v4

    invoke-virtual {v14}, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;->canReleaseEditLock()Z

    move-result v3

    invoke-virtual {v2, v4, v5, v3}, Lgmd;->a(JZ)V

    .line 485
    .end local v14    # "dentryExt":Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;
    :cond_5
    invoke-virtual {v2}, Lgmd;->a()V

    goto/16 :goto_0

    .line 431
    .end local v2    # "operationController":Lgmd;
    .end local v6    # "isCreator":Z
    .end local v10    # "isFromConversation":Z
    .end local v11    # "conversationId":Ljava/lang/String;
    .end local v12    # "csSpace":Lcom/alibaba/dingtalk/cspace/model/CsSpace;
    .end local v15    # "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 471
    .restart local v2    # "operationController":Lgmd;
    .restart local v6    # "isCreator":Z
    .restart local v10    # "isFromConversation":Z
    .restart local v12    # "csSpace":Lcom/alibaba/dingtalk/cspace/model/CsSpace;
    .restart local v15    # "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    :cond_7
    invoke-virtual {v12}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->getConversationId()Ljava/lang/String;

    move-result-object v11

    goto :goto_2
.end method

.method a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z
    .locals 5
    .param p1, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 126
    if-nez p1, :cond_1

    .line 127
    const/4 v0, 0x0

    .line 142
    :cond_0
    :goto_0
    return v0

    .line 130
    :cond_1
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v1

    .line 131
    .local v1, "spaceAclUtil":Lgqd;
    iget-object v2, p0, Lgdy;->a:Lgdw;

    iget-boolean v0, v2, Lgdw;->o:Z

    .line 133
    .local v0, "isAdmin":Z
    iget-object v2, p0, Lgdy;->a:Lgdw;

    invoke-virtual {v2}, Lgdw;->w()I

    move-result v2

    invoke-static {v2}, Lgqu;->h(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 134
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgqd;->c(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 136
    :cond_2
    iget-object v2, p0, Lgdy;->a:Lgdw;

    invoke-virtual {v2}, Lgdw;->w()I

    move-result v2

    invoke-static {v2}, Lgqu;->d(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v3, "f_conf_space_acl_permission_setting_enable"

    .line 1083
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 137
    if-eqz v2, :cond_0

    iget-object v2, p0, Lgdy;->a:Lgdw;

    .line 138
    invoke-virtual {v2}, Lgdw;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgqd;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgqd;->c(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
