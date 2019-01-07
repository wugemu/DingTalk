.class public abstract Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;
.super Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;
.source "SpaceBaseMainActivity.java"

# interfaces
.implements Lgdh;


# instance fields
.field private N:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;->N:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;->N:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public final a(JLgit;I)V
    .locals 1
    .param p1, "orgId"    # J
    .param p3, "dpCoFolderModel"    # Lgit;
    .param p4, "mode"    # I

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;->u:Ljava/lang/String;

    invoke-static {p0, p3, p4, v0}, Lfzu;->a(Landroid/content/Context;Lgit;ILjava/lang/String;)V

    .line 149
    return-void
.end method

.method public final a(JLjava/lang/String;Lcem;I)V
    .locals 15
    .param p1, "orgId"    # J
    .param p3, "spaceId"    # Ljava/lang/String;
    .param p4, "orgConversationModel"    # Lcem;
    .param p5, "mode"    # I

    .prologue
    .line 108
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lfzv;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "space_group_folder_readonly_click"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 111
    :cond_0
    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity$2;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;)V

    const-class v4, Lcma;

    invoke-interface {v2, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcma;

    .line 129
    .local v10, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    iget v6, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;->a:I

    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;->r:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v8, v0, Lcem;->b:Ljava/lang/String;

    iget-object v9, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;->w:Ljava/util/ArrayList;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;->v:Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    iget-object v13, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;->s:Ljava/util/ArrayList;

    move-object v2, p0

    move-object/from16 v3, p4

    move-wide/from16 v4, p1

    invoke-static/range {v2 .. v13}, Lfzu;->a(Landroid/content/Context;Lcem;JILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcma;ZLcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;Ljava/util/ArrayList;)V

    .line 133
    return-void
.end method

.method public final a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 43
    .param p1, "orgId"    # J
    .param p3, "spaceId"    # Ljava/lang/String;
    .param p4, "orgName"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v4

    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    invoke-virtual {v4, v0, v1, v2}, Lfzv;->a(Ljava/lang/String;J)V

    .line 49
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v4

    invoke-static {}, Lgqd;->a()Lgqd;

    const-string/jumbo v5, "0"

    move-object/from16 v0, p3

    invoke-static {v0, v5}, Lgqd;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgqd;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 51
    .local v21, "authFlag":Ljava/lang/String;
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Lgqd;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 52
    invoke-static {}, Lgqd;->a()Lgqd;

    invoke-static/range {v21 .. v21}, Lgqd;->d(Ljava/lang/String;)Z

    move-result v15

    .line 53
    .local v15, "isSpaceAdmin":Z
    move-object/from16 v0, p0

    iget v8, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;->a:I

    .line 54
    invoke-static {}, Lgpr;->c()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;->r:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;->w:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;->b:Z

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;->v:Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;->s:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-object/from16 v9, p3

    move-object/from16 v13, p4

    .line 53
    invoke-static/range {v5 .. v22}, Lfzu;->a(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZLcma;IZZLcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 104
    .end local v15    # "isSpaceAdmin":Z
    :goto_0
    return-void

    .line 60
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;->N:Ljava/util/HashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 61
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;->a:I

    move/from16 v26, v0

    .line 62
    invoke-static {}, Lgpr;->c()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;->r:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;->w:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;->b:Z

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;->N:Ljava/util/HashMap;

    .line 63
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v33

    const/16 v34, 0x0

    const/16 v35, 0x1

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;->v:Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;->s:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v23, p0

    move-wide/from16 v24, p1

    move-object/from16 v27, p3

    move-object/from16 v31, p4

    move-object/from16 v39, v21

    .line 61
    invoke-static/range {v23 .. v40}, Lfzu;->a(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZLcma;IZZLcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 68
    :cond_1
    invoke-static/range {p0 .. p0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 69
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;->a:I

    move/from16 v26, v0

    .line 70
    invoke-static {}, Lgpr;->c()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;->r:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;->w:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;->b:Z

    move/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x1

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;->v:Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;->s:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v23, p0

    move-wide/from16 v24, p1

    move-object/from16 v27, p3

    move-object/from16 v31, p4

    move-object/from16 v39, v21

    .line 69
    invoke-static/range {v23 .. v40}, Lfzu;->a(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZLcma;IZZLcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 75
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;->showLoadingDialog()V

    .line 76
    const-string/jumbo v4, "EVENTBUTLER"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity$1;

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, v21

    invoke-direct/range {v4 .. v10}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity$1;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-class v5, Lcma;

    .line 77
    move-object/from16 v0, p0

    invoke-interface {v11, v4, v5, v0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcma;

    .line 102
    .local v41, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v4

    move-wide/from16 v0, p1

    move-object/from16 v2, v41

    invoke-virtual {v4, v0, v1, v2}, Lgon;->a(JLcma;)V

    goto/16 :goto_0
.end method

.method public final d(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-virtual {p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseMainActivity;->a(Ljava/util/List;)V

    .line 138
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-static {}, Lfzw;->a()Ljava/util/List;

    move-result-object v0

    .line 40
    .local v0, "spaceCommonList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 41
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/app/Activity;Lcma;)V

    .line 43
    :cond_0
    return-void
.end method
