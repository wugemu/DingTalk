.class public final Lgli;
.super Ljava/lang/Object;
.source "SpaceForwardManager.java"


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/alibaba/wukong/im/Conversation;

.field c:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

.field d:Lcma;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcma;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p4, "callback"    # Lcma;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lgli;->a:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lgli;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 50
    iput-object p3, p0, Lgli;->c:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 51
    iput-object p4, p0, Lgli;->d:Lcma;

    .line 52
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    .line 55
    iget-object v7, p0, Lgli;->b:Lcom/alibaba/wukong/im/Conversation;

    iget-object v8, p0, Lgli;->c:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 1064
    if-eqz v7, :cond_f

    if-eqz v8, :cond_f

    .line 1609
    if-eqz v8, :cond_2

    .line 1613
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 1615
    if-eqz v0, :cond_2

    .line 1619
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    .line 1621
    if-eqz v0, :cond_2

    .line 1625
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1626
    iget-wide v10, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    iget-object v9, v8, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1627
    iget-wide v10, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->spaceId:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 1628
    if-eqz v0, :cond_0

    iget-object v6, v8, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 1066
    :goto_0
    if-eqz v0, :cond_3

    .line 1067
    invoke-virtual {p0, v7, v8}, Lgli;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    .line 1140
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 1634
    goto :goto_0

    .line 1641
    :cond_3
    if-eqz v8, :cond_4

    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v0

    iget-object v3, v8, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lfzv;->d(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_4

    move v0, v1

    .line 1071
    :goto_2
    if-eqz v0, :cond_5

    .line 1072
    invoke-virtual {p0, v7, v8}, Lgli;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    goto :goto_1

    :cond_4
    move v0, v2

    .line 1641
    goto :goto_2

    .line 1076
    :cond_5
    invoke-interface {v7}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    if-ne v0, v1, :cond_8

    .line 1078
    iget-object v0, v8, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v8, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_7

    .line 1080
    :cond_6
    invoke-virtual {p0, v7, v8}, Lgli;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    goto :goto_1

    .line 1083
    :cond_7
    invoke-interface {v7}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgpt;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 1084
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    new-instance v6, Lgli$1;

    invoke-direct {v6, p0, v8, v7}, Lgli$1;-><init>(Lgli;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcom/alibaba/wukong/im/Conversation;)V

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JJLcma;)V

    goto :goto_1

    .line 1120
    :cond_8
    invoke-interface {v7}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1122
    invoke-static {v7}, Lgpt;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1124
    invoke-static {v7}, Lgpt;->c(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 1125
    if-eqz v0, :cond_9

    iget-object v1, v8, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    iget-object v0, v8, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v8, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_b

    .line 1127
    :cond_a
    invoke-virtual {p0, v7, v8}, Lgli;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    goto/16 :goto_1

    .line 1130
    :cond_b
    invoke-virtual {p0}, Lgli;->b()V

    goto/16 :goto_1

    .line 1135
    :cond_c
    iget-object v0, v8, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, v8, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_e

    .line 1137
    :cond_d
    invoke-virtual {p0, v7, v8}, Lgli;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    goto/16 :goto_1

    .line 1140
    :cond_e
    invoke-virtual {p0}, Lgli;->b()V

    goto/16 :goto_1

    .line 1145
    :cond_f
    invoke-virtual {p0}, Lgli;->b()V

    goto/16 :goto_1
.end method

.method a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V
    .locals 4
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 200
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget v3, p2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->isEncrypt:I

    if-ne v3, v0, :cond_2

    .line 204
    .local v0, "isEncrypt":Z
    :goto_1
    iget v2, p2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceType:I

    .line 205
    .local v2, "messageContentType":I
    new-instance v1, Lgli$4;

    invoke-direct {v1, p0, p2}, Lgli$4;-><init>(Lgli;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    .line 222
    .local v1, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    invoke-static {p1, v0, v2, v1}, Lgps;->a(Lcom/alibaba/wukong/im/Conversation;ZILcma;)V

    goto :goto_0

    .line 203
    .end local v0    # "isEncrypt":Z
    .end local v1    # "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    .end local v2    # "messageContentType":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 150
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v3, "f_cspace_forward_cross_orgs"

    .line 2083
    invoke-virtual {v2, v3, v4}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 150
    if-eqz v2, :cond_2

    .line 151
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v3, "cspace_forward_cross_enable"

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 153
    iget-object v2, p0, Lgli;->c:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget v2, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->isEncrypt:I

    if-ne v2, v4, :cond_1

    .line 2195
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v3, "f_space_file_decrypt_before_forward"

    .line 3083
    invoke-virtual {v2, v3, v4}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 153
    if-eqz v2, :cond_1

    .line 3241
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v3, p0, Lgli;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lfzs$h;->dt_cspace_decrypt_before_forward_tip:I

    .line 3242
    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lfzs$h;->dt_im_forward_encrypt_file_yes:I

    new-instance v4, Lgli$6;

    invoke-direct {v4, p0}, Lgli$6;-><init>(Lgli;)V

    .line 3243
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lfzs$h;->cancel:I

    new-instance v4, Lgli$5;

    invoke-direct {v4, p0}, Lgli$5;-><init>(Lgli;)V

    .line 3250
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 3260
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    .line 3261
    if-eqz v2, :cond_0

    .line 3262
    invoke-virtual {v2, v5}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v2, p0, Lgli;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 160
    .local v1, "fileSendOutRemindDialogBuilder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lfzs$h;->dt_cspace_file_send_out_remind_tip:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 162
    sget v2, Lfzs$h;->dt_cspace_file_send_out_make_sure:I

    new-instance v3, Lgli$2;

    invoke-direct {v3, p0}, Lgli$2;-><init>(Lgli;)V

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 169
    sget v2, Lfzs$h;->cancel:I

    new-instance v3, Lgli$3;

    invoke-direct {v3, p0, v1}, Lgli$3;-><init>(Lgli;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 180
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 181
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0, v5}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    goto :goto_0

    .line 188
    .end local v0    # "dialog":Landroid/support/v7/app/AlertDialog;
    .end local v1    # "fileSendOutRemindDialogBuilder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :cond_2
    iget-object v2, p0, Lgli;->d:Lcma;

    if-eqz v2, :cond_0

    .line 189
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "space_transmit_forbidden_notice"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 190
    iget-object v2, p0, Lgli;->d:Lcma;

    const-string/jumbo v3, ""

    iget-object v4, p0, Lgli;->a:Landroid/content/Context;

    sget v5, Lfzs$h;->cspace_transer_not_support:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
