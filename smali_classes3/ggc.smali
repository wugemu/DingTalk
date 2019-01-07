.class public final Lggc;
.super Ljava/lang/Object;
.source "SpaceRecentUtils.java"


# static fields
.field private static final a:I

.field private static final b:Landroid/util/SparseIntArray;

.field private static final c:Landroid/util/SparseIntArray;

.field private static final d:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x5c

    const/16 v3, 0x5b

    .line 69
    sget v0, Lfzs$f;->recentDentryId:I

    sput v0, Lggc;->a:I

    .line 72
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 73
    sput-object v0, Lggc;->b:Landroid/util/SparseIntArray;

    const/16 v1, 0x65

    sget v2, Lfzs$h;->space_recent_operation_add:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 74
    sget-object v0, Lggc;->b:Landroid/util/SparseIntArray;

    const/16 v1, 0x66

    sget v2, Lfzs$h;->space_recent_operation_rename:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 75
    sget-object v0, Lggc;->b:Landroid/util/SparseIntArray;

    const/16 v1, 0x67

    sget v2, Lfzs$h;->space_recent_operation_move:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 76
    sget-object v0, Lggc;->b:Landroid/util/SparseIntArray;

    const/16 v1, 0x68

    sget v2, Lfzs$h;->space_recent_operation_delete:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 77
    sget-object v0, Lggc;->b:Landroid/util/SparseIntArray;

    const/16 v1, 0x69

    sget v2, Lfzs$h;->space_recent_operation_delete:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 78
    sget-object v0, Lggc;->b:Landroid/util/SparseIntArray;

    const/16 v1, 0x6c

    sget v2, Lfzs$h;->space_recent_operation_download:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 79
    sget-object v0, Lggc;->b:Landroid/util/SparseIntArray;

    const/16 v1, 0x6d

    sget v2, Lfzs$h;->space_recent_operation_preview:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 80
    sget-object v0, Lggc;->b:Landroid/util/SparseIntArray;

    const/16 v1, 0x6f

    sget v2, Lfzs$h;->dt_cspace_fileoperation_action_onlineedit_invite:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 81
    sget-object v0, Lggc;->b:Landroid/util/SparseIntArray;

    const/16 v1, 0x70

    sget v2, Lfzs$h;->dt_space_fileoperation_action_edit_cancel_invite:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 82
    sget-object v0, Lggc;->b:Landroid/util/SparseIntArray;

    const/16 v1, 0x71

    sget v2, Lfzs$h;->dt_space_online_doc_update:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 88
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 89
    sput-object v0, Lggc;->c:Landroid/util/SparseIntArray;

    sget v1, Lfzs$h;->dt_space_recent_operation_syncdrive_add_file:I

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 90
    sget-object v0, Lggc;->c:Landroid/util/SparseIntArray;

    sget v1, Lfzs$h;->dt_space_recent_operation_syncdrive_delete_file:I

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 92
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 93
    sput-object v0, Lggc;->d:Landroid/util/SparseIntArray;

    sget v1, Lfzs$h;->dt_space_recent_operation_syncdrive_add_image:I

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 94
    sget-object v0, Lggc;->d:Landroid/util/SparseIntArray;

    sget v1, Lfzs$h;->dt_space_recent_operation_syncdrive_delete_image:I

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 95
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/cspace/model/RecentOperationModel;)Ljava/lang/String;
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    .prologue
    .line 67
    .line 3183
    if-eqz p0, :cond_4

    .line 3184
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 3185
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-nez v1, :cond_1

    .line 3186
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->groupName:Ljava/lang/String;

    .line 3194
    :goto_0
    return-object v0

    .line 3188
    :cond_1
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 3190
    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iget-wide v4, p0, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->groupId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 3191
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    goto :goto_0

    .line 3194
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->groupName:Ljava/lang/String;

    goto :goto_0

    .line 3196
    :cond_4
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Lcom/alibaba/alimei/cspace/model/RecentDentryModel;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/RecentDentryModel;

    .prologue
    .line 370
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v4, "space_file_filedynamic_files_click"

    invoke-interface {v2, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 372
    const/4 v2, 0x1

    iget v4, p1, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->fileType:I

    if-ne v2, v4, :cond_0

    .line 373
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 374
    .local v3, "bundle":Landroid/os/Bundle;
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    .line 375
    .local v1, "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    invoke-static {p1}, Lgoc;->a(Lcom/alibaba/alimei/cspace/model/RecentDentryModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v0

    .line 376
    .local v0, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    const-string/jumbo v2, "data"

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 377
    const-string/jumbo v2, "favorite_enter_hide"

    const-string/jumbo v4, "true"

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-wide v4, p1, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->orgId:J

    const/4 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Landroid/os/Bundle;JLcma;)V

    .line 380
    .end local v0    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .end local v1    # "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    .end local v3    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;Landroid/widget/AbsListView;Landroid/widget/TextView;Lcom/alibaba/alimei/cspace/model/RecentOperationModel;)V
    .locals 26
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "avatarImageView"    # Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    .param p2, "absListView"    # Landroid/widget/AbsListView;
    .param p3, "textView"    # Landroid/widget/TextView;
    .param p4, "operationModel"    # Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    .prologue
    .line 119
    if-nez p4, :cond_0

    .line 175
    :goto_0
    return-void

    .line 124
    :cond_0
    sget v2, Lggc;->a:I

    move-object/from16 v0, p4

    iget-wide v6, v0, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 125
    move-object/from16 v0, p4

    iget-wide v2, v0, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->operatorId:J

    move-object/from16 v0, p4

    iget-wide v6, v0, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->orgId:J

    .line 1366
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v8

    const/4 v2, 0x1

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 126
    .local v10, "key":Ljava/lang/String;
    invoke-static {}, Lgfw;->b()Lgfw;

    move-result-object v4

    .line 128
    .local v4, "instance":Lgfw;
    const/16 v18, 0x0

    .line 129
    .local v18, "groupName":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 2162
    iget-object v2, v4, Lgfw;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lggf;

    .line 132
    .local v9, "operator":Lggf;
    move-object/from16 v0, p4

    iget-wide v2, v0, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->groupId:J

    .line 2177
    iget-object v5, v4, Lgfw;->c:Lfp;

    .line 3096
    const/4 v6, 0x0

    invoke-virtual {v5, v2, v3, v6}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 2177
    .end local v18    # "groupName":Ljava/lang/String;
    check-cast v18, Ljava/lang/String;

    .line 137
    .restart local v18    # "groupName":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v22

    .line 138
    .local v22, "currentUid":J
    move-object/from16 v0, p4

    iget-wide v2, v0, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->groupId:J

    cmp-long v2, v2, v22

    if-nez v2, :cond_1

    .line 139
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    .line 140
    .local v25, "resources":Landroid/content/res/Resources;
    sget v2, Lfzs$h;->org_personal:I

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 143
    .end local v25    # "resources":Landroid/content/res/Resources;
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcms;->d(Landroid/content/Context;)Z

    move-result v11

    .line 145
    .local v11, "isNetworkAvailable":Z
    if-nez v18, :cond_3

    move-object/from16 v0, p4

    iget-wide v2, v0, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->groupId:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_3

    if-eqz v11, :cond_3

    .line 146
    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lggc$1;

    move-object/from16 v3, p4

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v11}, Lggc$1;-><init>(Lcom/alibaba/alimei/cspace/model/RecentOperationModel;Lgfw;Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;Landroid/widget/AbsListView;Landroid/widget/TextView;Lggf;Ljava/lang/String;Z)V

    const-class v3, Lcma;

    move-object/from16 v0, p0

    invoke-interface {v12, v2, v3, v0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcma;

    .line 170
    .local v24, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    move-object/from16 v0, p4

    iget-wide v2, v0, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->groupId:J

    .line 3136
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 3137
    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lggb$3;

    move-object/from16 v0, v24

    invoke-direct {v3, v0}, Lggb$3;-><init>(Lcma;)V

    const-class v6, Lcom/alibaba/wukong/Callback;

    move-object/from16 v0, p0

    invoke-interface {v2, v3, v6, v0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/Callback;

    .line 3155
    const-class v3, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v3}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/ConversationService;

    const/4 v6, 0x0

    invoke-interface {v3, v2, v5, v6}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 134
    .end local v9    # "operator":Lggf;
    .end local v11    # "isNetworkAvailable":Z
    .end local v22    # "currentUid":J
    .end local v24    # "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    :cond_2
    const/4 v9, 0x0

    .restart local v9    # "operator":Lggf;
    goto/16 :goto_1

    .restart local v11    # "isNetworkAvailable":Z
    .restart local v22    # "currentUid":J
    :cond_3
    move-object/from16 v12, p0

    move-object v13, v4

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move-object/from16 v17, v9

    move-object/from16 v19, p4

    move-object/from16 v20, v10

    move/from16 v21, v11

    .line 172
    invoke-static/range {v12 .. v21}, Lggc;->b(Landroid/app/Activity;Lgfw;Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;Landroid/widget/AbsListView;Landroid/widget/TextView;Lggf;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/RecentOperationModel;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method static synthetic a(Landroid/app/Activity;Lgfw;Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;Landroid/widget/AbsListView;Landroid/widget/TextView;Lggf;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/RecentOperationModel;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Lgfw;
    .param p2, "x2"    # Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    .param p3, "x3"    # Landroid/widget/AbsListView;
    .param p4, "x4"    # Landroid/widget/TextView;
    .param p5, "x5"    # Lggf;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Lcom/alibaba/alimei/cspace/model/RecentOperationModel;
    .param p8, "x8"    # Ljava/lang/String;
    .param p9, "x9"    # Z

    .prologue
    .line 67
    invoke-static/range {p0 .. p9}, Lggc;->b(Landroid/app/Activity;Lgfw;Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;Landroid/widget/AbsListView;Landroid/widget/TextView;Lggf;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/RecentOperationModel;Ljava/lang/String;Z)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V
    .locals 11
    .param p0, "activity"    # Landroid/app/Activity;
    .param p2, "fetcher"    # Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;
    .param p3, "photoObjects"    # [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .param p4, "currentPhotoObject"    # Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            ">;",
            "Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;",
            "[",
            "Lcom/alibaba/laiwang/photokit/browser/PhotoObject;",
            "Lcom/alibaba/laiwang/photokit/browser/PhotoObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 403
    .local p1, "spaceDos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 404
    .local v5, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "hide_list_button"

    const/4 v2, 0x1

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 405
    const-string/jumbo v1, "dentry_list"

    invoke-virtual {v5, v1, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 406
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 408
    :try_start_0
    const-string/jumbo v2, "org_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v2, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :cond_0
    :goto_0
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    .line 414
    .local v0, "mainModuleInterface":Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;
    if-eqz p2, :cond_2

    .line 415
    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Lcom/alibaba/laiwang/photokit/browser/PhotoObjectsFetcher;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;ZLandroid/os/Bundle;)V

    .line 419
    :cond_1
    :goto_1
    return-void

    .line 409
    .end local v0    # "mainModuleInterface":Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;
    :catch_0
    move-exception v10

    .line 410
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 416
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v0    # "mainModuleInterface":Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;
    :cond_2
    if-eqz p3, :cond_1

    array-length v1, p3

    if-lez v1, :cond_1

    .line 417
    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v3, v0

    move-object v4, p0

    move-object v8, p3

    move-object v9, p4

    invoke-virtual/range {v3 .. v9}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;ZZ[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/RecentOperationModel;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "operationModel"    # Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    .prologue
    .line 383
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/space/recentdetail.html"

    .line 384
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lggc$3;

    invoke-direct {v3, p2, p1}, Lggc$3;-><init>(Lcom/alibaba/alimei/cspace/model/RecentOperationModel;Ljava/lang/String;)V

    .line 383
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    .line 392
    return-void
.end method

.method public static a(Landroid/widget/TextView;JLjava/lang/String;Ljava/lang/String;IZI)V
    .locals 17
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "localId"    # J
    .param p3, "operatorName"    # Ljava/lang/String;
    .param p4, "groupName"    # Ljava/lang/String;
    .param p5, "operationType"    # I
    .param p6, "hasNonImageDentry"    # Z
    .param p7, "fileCount"    # I

    .prologue
    .line 299
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v14

    invoke-virtual {v14}, Lcid;->c()Landroid/app/Application;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 300
    .local v8, "resources":Landroid/content/res/Resources;
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v9

    .line 303
    .local v9, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const/16 v14, 0x5b

    move/from16 v0, p5

    if-eq v0, v14, :cond_0

    const/16 v14, 0x5c

    move/from16 v0, p5

    if-ne v0, v14, :cond_4

    .line 306
    :cond_0
    if-eqz p6, :cond_2

    .line 307
    sget-object v14, Lggc;->c:Landroid/util/SparseIntArray;

    move/from16 v0, p5

    invoke-virtual {v14, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    .line 312
    .local v6, "resId":I
    :goto_0
    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 313
    .local v12, "text":Ljava/lang/String;
    sget v14, Lfzs$h;->dt_space_recent_operation_syncdrive_operator_name:I

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 314
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 315
    const-string/jumbo v14, "{{operatorName}}"

    move-object/from16 v0, p3

    invoke-virtual {v12, v14, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 316
    const-string/jumbo v14, "{{fileCount}}"

    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 317
    const-string/jumbo v14, "{{groupName}}"

    move-object/from16 v0, p4

    invoke-virtual {v12, v14, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 318
    invoke-virtual {v9, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 321
    :cond_1
    if-nez p3, :cond_3

    const/4 v5, 0x0

    .line 343
    .end local v6    # "resId":I
    .end local v12    # "text":Ljava/lang/String;
    .local v5, "operatorNameLength":I
    :goto_1
    sget v14, Lggc;->a:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    .line 344
    .local v3, "object":Ljava/lang/Object;
    instance-of v14, v3, Ljava/lang/Long;

    if-eqz v14, :cond_7

    move-object v2, v3

    .line 345
    check-cast v2, Ljava/lang/Long;

    .line 347
    .local v2, "ltagId":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v14, p1, v14

    if-eqz v14, :cond_7

    .line 362
    .end local v2    # "ltagId":Ljava/lang/Long;
    :goto_2
    return-void

    .line 309
    .end local v3    # "object":Ljava/lang/Object;
    .end local v5    # "operatorNameLength":I
    :cond_2
    sget-object v14, Lggc;->d:Landroid/util/SparseIntArray;

    move/from16 v0, p5

    invoke-virtual {v14, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    .restart local v6    # "resId":I
    goto :goto_0

    .line 321
    .restart local v12    # "text":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_1

    .line 324
    .end local v6    # "resId":I
    .end local v12    # "text":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v14

    const-string/jumbo v15, " "

    invoke-virtual {v14, v15}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 325
    sget v14, Lfzs$h;->space_recent_operation_prefix:I

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 326
    const-string/jumbo v14, " \""

    invoke-virtual {v9, v14}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 327
    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 328
    const-string/jumbo v14, "\" "

    invoke-virtual {v9, v14}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 329
    sget-object v14, Lggc;->b:Landroid/util/SparseIntArray;

    sget v15, Lfzs$h;->space_recent_operation_unknow:I

    move/from16 v0, p5

    invoke-virtual {v14, v0, v15}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 330
    .local v7, "resourceId":I
    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 331
    .local v4, "operationLabel":Ljava/lang/String;
    invoke-virtual {v9, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 332
    const-string/jumbo v14, " "

    invoke-virtual {v9, v14}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 333
    move/from16 v0, p7

    invoke-virtual {v9, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 334
    const-string/jumbo v14, " "

    invoke-virtual {v9, v14}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 335
    if-eqz p6, :cond_5

    .line 336
    sget v14, Lfzs$h;->space_recent_operation_count_file:I

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 340
    :goto_3
    if-nez p3, :cond_6

    const/4 v5, 0x0

    .restart local v5    # "operatorNameLength":I
    :goto_4
    goto :goto_1

    .line 338
    .end local v5    # "operatorNameLength":I
    :cond_5
    sget v14, Lfzs$h;->space_recent_operation_count_image:I

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_3

    .line 340
    :cond_6
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_4

    .line 352
    .end local v4    # "operationLabel":Ljava/lang/String;
    .end local v7    # "resourceId":I
    .restart local v3    # "object":Ljava/lang/Object;
    .restart local v5    # "operatorNameLength":I
    :cond_7
    invoke-virtual {v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 353
    .local v13, "value":Ljava/lang/String;
    new-instance v10, Landroid/text/SpannableString;

    invoke-direct {v10, v13}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 356
    .local v10, "spannable":Landroid/text/Spannable;
    if-lez v5, :cond_8

    invoke-virtual {v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v14

    if-le v14, v5, :cond_8

    .line 357
    new-instance v11, Landroid/text/style/StyleSpan;

    const/4 v14, 0x1

    invoke-direct {v11, v14}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 358
    .local v11, "styleSpan":Landroid/text/style/StyleSpan;
    const/4 v14, 0x0

    const/16 v15, 0x11

    invoke-interface {v10, v11, v14, v5, v15}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 361
    .end local v11    # "styleSpan":Landroid/text/style/StyleSpan;
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method public static a(I)Z
    .locals 1
    .param p0, "operationType"    # I

    .prologue
    .line 103
    packed-switch p0, :pswitch_data_0

    .line 108
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 106
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x68
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static b(Landroid/app/Activity;Lgfw;Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;Landroid/widget/AbsListView;Landroid/widget/TextView;Lggf;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/RecentOperationModel;Ljava/lang/String;Z)V
    .locals 19
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "instance"    # Lgfw;
    .param p2, "avatarImageView"    # Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    .param p3, "absListView"    # Landroid/widget/AbsListView;
    .param p4, "textView"    # Landroid/widget/TextView;
    .param p5, "operator"    # Lggf;
    .param p6, "groupName"    # Ljava/lang/String;
    .param p7, "operationModel"    # Lcom/alibaba/alimei/cspace/model/RecentOperationModel;
    .param p8, "key"    # Ljava/lang/String;
    .param p9, "isNetworkAvailable"    # Z

    .prologue
    .line 204
    if-eqz p6, :cond_0

    .line 205
    move-object/from16 v0, p6

    move-object/from16 v1, p7

    iput-object v0, v1, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->groupName:Ljava/lang/String;

    .line 207
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v10

    .line 209
    .local v10, "currentUid":J
    if-nez p5, :cond_1

    if-nez p9, :cond_7

    .line 212
    :cond_1
    move-object/from16 v0, p7

    iget-wide v2, v0, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->operatorId:J

    cmp-long v2, v10, v2

    if-nez v2, :cond_4

    .line 213
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lfzs$h;->space_recent_operation_myself:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 226
    .local v6, "operationName":Ljava/lang/String;
    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 227
    if-nez p5, :cond_6

    .line 228
    const/4 v2, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v6, v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 233
    :goto_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 235
    :cond_3
    move-object/from16 v0, p7

    iget-wide v4, v0, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->id:J

    move-object/from16 v0, p7

    iget-object v7, v0, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->groupName:Ljava/lang/String;

    move-object/from16 v0, p7

    iget v8, v0, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->operationType:I

    move-object/from16 v0, p7

    iget-boolean v9, v0, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->hasNonImageDentry:Z

    move-object/from16 v0, p7

    iget v10, v0, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->fileCount:I

    .end local v10    # "currentUid":J
    move-object/from16 v3, p4

    invoke-static/range {v3 .. v10}, Lggc;->a(Landroid/widget/TextView;JLjava/lang/String;Ljava/lang/String;IZI)V

    .line 294
    .end local v6    # "operationName":Ljava/lang/String;
    :goto_2
    return-void

    .line 216
    .restart local v10    # "currentUid":J
    :cond_4
    if-nez p5, :cond_5

    .line 217
    move-object/from16 v0, p7

    iget-object v6, v0, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->operatorName:Ljava/lang/String;

    .restart local v6    # "operationName":Ljava/lang/String;
    goto :goto_0

    .line 219
    .end local v6    # "operationName":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p5 .. p5}, Lggf;->a()Ljava/lang/String;

    move-result-object v6

    .line 221
    .restart local v6    # "operationName":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 222
    move-object/from16 v0, p7

    iget-object v6, v0, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->operatorName:Ljava/lang/String;

    goto :goto_0

    .line 230
    :cond_6
    move-object/from16 v0, p5

    iget-object v2, v0, Lggf;->c:Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v6, v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_1

    .line 239
    .end local v6    # "operationName":Ljava/lang/String;
    :cond_7
    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v7, Lggc$2;

    move-object/from16 v8, p1

    move-object/from16 v9, p8

    move-object/from16 v12, p7

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    invoke-direct/range {v7 .. v15}, Lggc$2;-><init>(Lgfw;Ljava/lang/String;JLcom/alibaba/alimei/cspace/model/RecentOperationModel;Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;Landroid/widget/AbsListView;Landroid/widget/TextView;)V

    const-class v3, Lcma;

    move-object/from16 v0, p0

    invoke-interface {v2, v7, v3, v0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcma;

    .line 292
    .local v18, "listener":Lcma;, "Lcma<Lggf;>;"
    move-object/from16 v0, p7

    iget-wide v14, v0, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->operatorId:J

    move-object/from16 v0, p7

    iget-wide v0, v0, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->orgId:J

    move-wide/from16 v16, v0

    move-object/from16 v13, p0

    invoke-static/range {v13 .. v18}, Lggb;->a(Landroid/app/Activity;JJLcma;)V

    goto :goto_2
.end method
