.class public Lgqe;
.super Ljava/lang/Object;
.source "SpaceFileForwardHelper.java"


# static fields
.field private static volatile a:Lgqe;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lgqe;
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lgqe;->a:Lgqe;

    if-nez v0, :cond_1

    .line 34
    const-class v1, Lgqe;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-object v0, Lgqe;->a:Lgqe;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lgqe;

    invoke-direct {v0}, Lgqe;-><init>()V

    sput-object v0, Lgqe;->a:Lgqe;

    .line 38
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_1
    sget-object v0, Lgqe;->a:Lgqe;

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Lcma;)V
    .locals 18
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;",
            ">;",
            "Lcma",
            "<",
            "Lcko;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p2, "spaceDos":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    .local p3, "receivers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    .local p4, "listener":Lcma;, "Lcma<Lcko;>;"
    if-nez p4, :cond_0

    .line 153
    :goto_0
    return-void

    .line 53
    :cond_0
    new-instance v7, Lcko;

    invoke-direct {v7}, Lcko;-><init>()V

    .line 54
    .local v7, "permissionCheckResult":Lcko;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_1

    if-eqz p3, :cond_1

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 56
    :cond_1
    const/4 v13, 0x1

    .line 1020
    iput-boolean v13, v7, Lcko;->a:Z

    .line 57
    move-object/from16 v0, p4

    invoke-interface {v0, v7}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 61
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    invoke-direct {v4, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    .local v4, "fileOrgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 64
    .local v9, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    if-eqz v9, :cond_3

    .line 67
    iget-object v14, v9, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    .line 1109
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v14, v0, v1}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v14

    .line 67
    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_3

    iget-object v14, v9, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    invoke-interface {v4, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 68
    iget-object v14, v9, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 72
    .end local v9    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 74
    const/4 v13, 0x1

    .line 2020
    iput-boolean v13, v7, Lcko;->a:Z

    .line 75
    move-object/from16 v0, p4

    invoke-interface {v0, v7}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 79
    :cond_5
    const/4 v6, 0x0

    .line 81
    .local v6, "includeCrossOrgsFiles":Z
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

    .line 82
    .local v8, "receiver":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    if-eqz v8, :cond_6

    .line 86
    invoke-virtual {v8}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getType()Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    move-result-object v13

    sget-object v15, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;->CONTACT:Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    if-ne v13, v15, :cond_8

    invoke-virtual {v8}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v13

    instance-of v13, v13, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v13, :cond_8

    .line 87
    invoke-virtual {v8}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v13

    check-cast v13, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v10, v13, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 88
    .local v10, "uid":J
    const-string/jumbo v13, "4248001"

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 93
    invoke-static {}, Lgpz;->a()Lgpz;

    invoke-static {v10, v11}, Lgpz;->d(J)Ljava/util/List;

    move-result-object v12

    .line 95
    .local v12, "userOrgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_6

    .line 100
    invoke-interface {v12, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 101
    const/4 v6, 0x1

    .line 118
    .end local v8    # "receiver":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    .end local v10    # "uid":J
    .end local v12    # "userOrgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    :goto_2
    if-nez v6, :cond_a

    .line 120
    const/4 v13, 0x1

    .line 3020
    iput-boolean v13, v7, Lcko;->a:Z

    .line 121
    move-object/from16 v0, p4

    invoke-interface {v0, v7}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 104
    .restart local v8    # "receiver":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    :cond_8
    invoke-virtual {v8}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getType()Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    move-result-object v13

    sget-object v15, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;->GROUP_CONVERSATION:Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    if-ne v13, v15, :cond_6

    invoke-virtual {v8}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v13

    instance-of v13, v13, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v13, :cond_6

    .line 105
    invoke-virtual {v8}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v13

    check-cast v13, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v13, v13, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mExtension:Ljava/util/HashMap;

    invoke-static {v13}, Lgpt;->a(Ljava/util/Map;)J

    move-result-wide v2

    .line 107
    .local v2, "conversationOrgId":J
    const-wide/16 v16, 0x0

    cmp-long v13, v2, v16

    if-lez v13, :cond_6

    .line 111
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    const/4 v15, 0x1

    if-gt v13, v15, :cond_9

    const/4 v13, 0x0

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 112
    :cond_9
    const/4 v6, 0x1

    .line 113
    goto :goto_2

    .line 125
    .end local v2    # "conversationOrgId":J
    .end local v8    # "receiver":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    :cond_a
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v13

    const-string/jumbo v14, "cspace_forward_cross_enable"

    invoke-virtual {v13, v14}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_b

    .line 127
    const/4 v13, 0x0

    .line 4020
    iput-boolean v13, v7, Lcko;->a:Z

    .line 128
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v13

    invoke-virtual {v13}, Lcid;->c()Landroid/app/Application;

    move-result-object v13

    sget v14, Lfzs$h;->cspace_transer_not_support:I

    invoke-virtual {v13, v14}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 4028
    iput-object v13, v7, Lcko;->b:Ljava/lang/String;

    .line 129
    move-object/from16 v0, p4

    invoke-interface {v0, v7}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 134
    :cond_b
    new-instance v5, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 135
    .local v5, "fileSendOutRemindDialogBuilder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v13

    invoke-virtual {v13}, Lcid;->c()Landroid/app/Application;

    move-result-object v13

    sget v14, Lfzs$h;->dt_cspace_file_send_out_remind_tip:I

    invoke-virtual {v13, v14}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 136
    sget v13, Lfzs$h;->dt_cspace_file_send_out_make_sure:I

    new-instance v14, Lgqe$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v14, v0, v7, v1}, Lgqe$1;-><init>(Lgqe;Lcko;Lcma;)V

    invoke-virtual {v5, v13, v14}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 144
    sget v13, Lfzs$h;->cancel:I

    new-instance v14, Lgqe$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v14, v0, v7, v1}, Lgqe$2;-><init>(Lgqe;Lcko;Lcma;)V

    invoke-virtual {v5, v13, v14}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 152
    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0
.end method
