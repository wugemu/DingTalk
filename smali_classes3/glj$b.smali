.class public final Lglj$b;
.super Lglj;
.source "SpaceLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lglj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

.field private final c:Lcom/alibaba/wukong/im/Conversation;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "spaceLinkDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;
    .param p3, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 394
    invoke-direct {p0}, Lglj;-><init>()V

    .line 395
    iput-object p1, p0, Lglj$b;->a:Landroid/app/Activity;

    .line 396
    iput-object p2, p0, Lglj$b;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    .line 397
    iput-object p3, p0, Lglj$b;->c:Lcom/alibaba/wukong/im/Conversation;

    .line 398
    return-void
.end method

.method private a(Lgkl;J)V
    .locals 8
    .param p1, "aclMember"    # Lgkl;
    .param p2, "aclType"    # J

    .prologue
    .line 515
    invoke-virtual {p0}, Lglj$b;->a()V

    .line 517
    new-instance v6, Lglj$b$3;

    invoke-direct {v6, p0, p2, p3}, Lglj$b$3;-><init>(Lglj$b;J)V

    .line 544
    .local v6, "resultListener":Lcma;, "Lcma<Lgkl;>;"
    const-class v0, Lcma;

    iget-object v1, p0, Lglj$b;->a:Landroid/app/Activity;

    invoke-static {v6, v0, v1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "resultListener":Lcma;, "Lcma<Lgkl;>;"
    check-cast v6, Lcma;

    .line 545
    .restart local v6    # "resultListener":Lcma;, "Lcma<Lgkl;>;"
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v0

    iget-object v1, p0, Lglj$b;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->spaceId:Ljava/lang/String;

    iget-object v2, p0, Lglj$b;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->fileId:Ljava/lang/String;

    move-object v3, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Lgon;->a(Ljava/lang/String;Ljava/lang/String;Lgkl;JLcma;)V

    .line 546
    return-void
.end method

.method static synthetic a(Lglj$b;Lgkl;)V
    .locals 6
    .param p0, "x0"    # Lglj$b;
    .param p1, "x1"    # Lgkl;

    .prologue
    const/4 v5, 0x1

    .line 387
    .line 6461
    const-string/jumbo v0, "file"

    iget-object v1, p0, Lglj$b;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->fileType:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 6462
    iget-object v1, p0, Lglj$b;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgpt;->c(Ljava/lang/String;)Z

    move-result v1

    .line 6465
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v3, "f_cspace_editable_link_for_single_chat_enable"

    .line 7083
    invoke-virtual {v2, v3, v5}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 6465
    if-eqz v2, :cond_0

    .line 6467
    const-wide/16 v0, 0x3ea

    invoke-direct {p0, p1, v0, v1}, Lglj$b;->a(Lgkl;J)V

    .line 6468
    :goto_0
    return-void

    .line 6471
    :cond_0
    invoke-virtual {p0}, Lglj$b;->c()V

    .line 6474
    if-eqz v0, :cond_2

    .line 6475
    if-eqz v1, :cond_1

    sget v0, Lfzs$h;->dt_cspace_permission_tip_file_person:I

    .line 6484
    :goto_1
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;

    const/4 v2, 0x0

    new-instance v3, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;

    iget-object v4, p0, Lglj$b;->a:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;-><init>(Landroid/content/Context;)V

    sget v4, Lfzs$h;->dt_cspace_view_only:I

    .line 6485
    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->b(I)Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;

    iget-object v3, p0, Lglj$b;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;-><init>(Landroid/content/Context;)V

    sget v3, Lfzs$h;->dt_cspace_allow_to_edit:I

    .line 6486
    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->b(I)Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x2

    new-instance v3, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;

    iget-object v4, p0, Lglj$b;->a:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;-><init>(Landroid/content/Context;)V

    sget v4, Lfzs$h;->dt_cspace_keep_unchanged:I

    .line 6487
    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->b(I)Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;

    move-result-object v3

    aput-object v3, v1, v2

    .line 6484
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 6489
    new-instance v2, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheet$Builder;

    iget-object v3, p0, Lglj$b;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 6490
    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheet$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 6491
    new-instance v0, Lecl;

    iget-object v3, p0, Lglj$b;->a:Landroid/app/Activity;

    invoke-direct {v0, v3, v1}, Lecl;-><init>(Landroid/content/Context;Ljava/util/List;)V

    new-instance v1, Lglj$b$2;

    invoke-direct {v1, p0, p1}, Lglj$b$2;-><init>(Lglj$b;Lgkl;)V

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheet$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 6511
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheet$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0

    .line 6475
    :cond_1
    sget v0, Lfzs$h;->dt_cspace_permission_tip_file_group:I

    goto :goto_1

    .line 6479
    :cond_2
    if-eqz v1, :cond_3

    sget v0, Lfzs$h;->dt_cspace_permission_tip_folder_person:I

    goto :goto_1

    :cond_3
    sget v0, Lfzs$h;->dt_cspace_permission_tip_folder_group:I

    goto :goto_1
.end method

.method static synthetic a(Lglj$b;Lgkl;J)V
    .locals 0
    .param p0, "x0"    # Lglj$b;
    .param p1, "x1"    # Lgkl;
    .param p2, "x2"    # J

    .prologue
    .line 387
    invoke-direct {p0, p1, p2, p3}, Lglj$b;->a(Lgkl;J)V

    return-void
.end method

.method static synthetic a(Lglj$b;Z)V
    .locals 0
    .param p0, "x0"    # Lglj$b;
    .param p1, "x1"    # Z

    .prologue
    .line 387
    invoke-direct {p0}, Lglj$b;->e()V

    return-void
.end method

.method private e()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 549
    new-instance v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog;

    iget-object v1, p0, Lglj$b;->a:Landroid/app/Activity;

    iget-object v2, p0, Lglj$b;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog;-><init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog;->show()V

    .line 553
    return-void
.end method


# virtual methods
.method public final d()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v12, 0x0

    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 405
    iget-object v1, p0, Lglj$b;->a:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lglj$b;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lglj$b;->c:Lcom/alibaba/wukong/im/Conversation;

    if-nez v1, :cond_1

    .line 406
    :cond_0
    const-string/jumbo v0, "INVALID_PARAM"

    sget v1, Lfzs$h;->dt_cspace_fail_tip:I

    .line 407
    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 406
    invoke-static {v0, v1, v12}, Lgpr;->b(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 458
    :goto_0
    return-void

    .line 411
    :cond_1
    iget-object v1, p0, Lglj$b;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    iget-object v2, p0, Lglj$b;->c:Lcom/alibaba/wukong/im/Conversation;

    .line 5108
    if-eqz v1, :cond_2

    if-nez v2, :cond_4

    :cond_2
    move v0, v4

    .line 411
    :cond_3
    :goto_1
    if-nez v0, :cond_9

    .line 412
    invoke-direct {p0}, Lglj$b;->e()V

    goto :goto_0

    .line 5113
    :cond_4
    iget-object v6, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->spaceType:Ljava/lang/String;

    invoke-static {v6}, Lgqu;->a(Ljava/lang/String;)I

    move-result v6

    .line 5114
    invoke-static {v6}, Lgqu;->h(I)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {v6}, Lgqu;->d(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 5115
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v6

    const-string/jumbo v7, "f_conf_space_acl_permission_setting_enable"

    .line 6083
    invoke-virtual {v6, v7, v0}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v6

    .line 5115
    if-eqz v6, :cond_8

    .line 5116
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v6

    iget-object v7, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->spaceId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lgqd;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 5118
    :cond_5
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->d(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 5119
    invoke-static {v2}, Lgpt;->c(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v6

    iget-object v8, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->orgId:Ljava/lang/String;

    const-wide/16 v10, -0x1

    invoke-static {v8, v10, v11}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    .line 5122
    :cond_6
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->e(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 5123
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->orgId:Ljava/lang/String;

    .line 6109
    const-wide/16 v6, 0x0

    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    .line 5126
    :cond_7
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->j(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_8
    move v0, v4

    goto :goto_1

    .line 416
    :cond_9
    iget-object v0, p0, Lglj$b;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Lglj$b;->a(Lcom/alibaba/wukong/im/Conversation;)Lgkl;

    move-result-object v3

    .line 417
    .local v3, "aclMember":Lgkl;
    if-nez v3, :cond_a

    .line 418
    const-string/jumbo v0, "INVALID_PARAM"

    sget v1, Lfzs$h;->dt_cspace_fail_tip:I

    .line 419
    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 418
    invoke-static {v0, v1, v12}, Lgpr;->b(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto/16 :goto_0

    .line 423
    :cond_a
    new-instance v5, Lglj$b$1;

    invoke-direct {v5, p0, v3}, Lglj$b$1;-><init>(Lglj$b;Lgkl;)V

    .line 456
    .local v5, "resultListener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    const-class v0, Lcma;

    iget-object v1, p0, Lglj$b;->a:Landroid/app/Activity;

    invoke-static {v5, v0, v1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "resultListener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    check-cast v5, Lcma;

    .line 457
    .restart local v5    # "resultListener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v0

    iget-object v1, p0, Lglj$b;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->spaceId:Ljava/lang/String;

    iget-object v2, p0, Lglj$b;->b:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->fileId:Ljava/lang/String;

    .line 6224
    invoke-virtual/range {v0 .. v5}, Lgon;->a(Ljava/lang/String;Ljava/lang/String;Lgkl;ILcma;)V

    goto/16 :goto_0
.end method
