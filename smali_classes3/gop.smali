.class public final Lgop;
.super Ljava/lang/Object;
.source "SpaceShareRPC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lgir;",
            ">;"
        }
    .end annotation

    .prologue
    .line 750
    .local p0, "memberModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;>;"
    if-eqz p0, :cond_1

    .line 751
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 752
    .local v4, "memberParamModels":Ljava/util/List;, "Ljava/util/List<Lgir;>;"
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->b()Lchy;

    move-result-object v5

    invoke-virtual {v5}, Lchy;->getCurrentUid()J

    move-result-wide v0

    .line 753
    .local v0, "currentUid":J
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;

    .line 754
    .local v3, "memberModel":Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;
    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->getUid()J

    move-result-wide v6

    cmp-long v6, v6, v0

    if-eqz v6, :cond_0

    .line 758
    new-instance v2, Lgir;

    invoke-direct {v2}, Lgir;-><init>()V

    .line 759
    .local v2, "folderMemberModel":Lgir;
    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->getUid()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lgir;->a:Ljava/lang/String;

    .line 761
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v2, Lgir;->b:Ljava/lang/Integer;

    .line 763
    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->getRole()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v2, Lgir;->c:Ljava/lang/Integer;

    .line 764
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 768
    .end local v0    # "currentUid":J
    .end local v2    # "folderMemberModel":Lgir;
    .end local v3    # "memberModel":Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;
    .end local v4    # "memberParamModels":Ljava/util/List;, "Ljava/util/List<Lgir;>;"
    :cond_1
    const/4 v4, 0x0

    :cond_2
    return-object v4
.end method

.method public static a(JLjava/util/List;Lcma;)V
    .locals 16
    .param p0, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;",
            ">;",
            "Lcma",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 501
    .local p2, "shareMemberModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;>;"
    .local p3, "listener":Lcma;, "Lcma<Landroid/util/Pair<Ljava/lang/Boolean;Ljava/util/List<Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;>;>;>;"
    if-nez p3, :cond_0

    .line 568
    :goto_0
    return-void

    .line 504
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 505
    :cond_1
    const-string/jumbo v3, "CSpace"

    const-string/jumbo v5, "SpaceShareRPC"

    const-string/jumbo v6, "checkExternalStaff: shareMemberModels is null or empty"

    invoke-static {v3, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    new-instance v5, Lgop$3;

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-direct {v5, v0, v1}, Lgop$3;-><init>(Lcma;Ljava/util/List;)V

    invoke-virtual {v3, v5}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 515
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v8, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 516
    .local v8, "userIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 517
    .local v4, "shareMemberMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;

    .line 518
    .local v14, "memberModel":Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;
    if-eqz v14, :cond_3

    .line 521
    invoke-virtual {v14}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->getUid()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    invoke-virtual {v14}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->getUid()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 524
    .end local v14    # "memberModel":Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;
    :cond_4
    new-instance v2, Lgop$4;

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-wide/from16 v6, p0

    invoke-direct/range {v2 .. v8}, Lgop$4;-><init>(Ljava/util/List;Ljava/util/Map;Lcma;JLjava/util/List;)V

    .line 567
    .local v2, "infoListener":Lcma;, "Lcma<Ljava/util/List<Lcgc;>;>;"
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide/from16 v9, p0

    move-object v13, v2

    invoke-virtual/range {v7 .. v13}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;JZZLcma;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcma;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spaceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    const/4 v6, 0x0

    .line 775
    invoke-static {p0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 776
    if-eqz p2, :cond_0

    .line 777
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {p2, v4}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 822
    :cond_0
    :goto_0
    return-void

    .line 781
    :cond_1
    const-wide/16 v2, 0x0

    .line 783
    .local v2, "space":J
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 787
    :goto_1
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    .line 788
    if-eqz p2, :cond_0

    .line 789
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {p2, v4}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 784
    :catch_0
    move-exception v1

    .line 785
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    .line 793
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    const-class v4, Lcom/alibaba/dingtalk/cspace/idl/service/DpCoFolderService;

    invoke-static {v4}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/idl/service/DpCoFolderService;

    .line 794
    .local v0, "dpCoFolderService":Lcom/alibaba/dingtalk/cspace/idl/service/DpCoFolderService;
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Lgop$10;

    invoke-direct {v5, p1, p2}, Lgop$10;-><init>(Ljava/lang/String;Lcma;)V

    invoke-interface {v0, v4, v5}, Lcom/alibaba/dingtalk/cspace/idl/service/DpCoFolderService;->getMemberBySpaceId(Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcma;)V
    .locals 4
    .param p0, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/idl/im/models/MemberRoleModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 286
    .local p1, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/MemberRoleModel;>;>;"
    const-class v1, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    .line 287
    .local v0, "conversationService":Lcom/alibaba/wukong/idl/im/client/IDLConversationService;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7ffffffe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lgop$19;

    invoke-direct {v3, p1}, Lgop$19;-><init>(Lcma;)V

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;->listMembers(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V

    .line 303
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ZZLcma;)V
    .locals 9
    .param p0, "folderName"    # Ljava/lang/String;
    .param p1, "orgId"    # Ljava/lang/Long;
    .param p2, "sourceSpaceId"    # Ljava/lang/Long;
    .param p3, "fileId"    # Ljava/lang/Long;
    .param p4, "isCreateConversation"    # Z
    .param p5, "isOpenShare"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "ZZ",
            "Lcma",
            "<",
            "Lgin;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p6, "listener":Lcma;, "Lcma<Lgin;>;"
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v8

    new-instance v0, Lgop$11;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p5

    move-object v5, p2

    move-object v6, p3

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lgop$11;-><init>(Ljava/lang/String;Ljava/lang/Long;ZZLjava/lang/Long;Ljava/lang/Long;Lcma;)V

    invoke-interface {v8, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 138
    return-void
.end method
