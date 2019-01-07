.class public final Ldhy;
.super Ljava/lang/Object;
.source "ForwardUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldhy$a;,
        Ldhy$b;,
        Ldhy$c;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    return-void
.end method

.method public static a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Ljava/util/List;
    .locals 2
    .param p0, "dingtalkConversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 343
    if-nez p0, :cond_1

    .line 344
    const/4 v0, 0x0

    .line 352
    :cond_0
    :goto_0
    return-object v0

    .line 346
    :cond_1
    const/4 v0, 0x0

    .line 347
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    if-eqz p0, :cond_0

    .line 348
    invoke-static {p0}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->fromConversation(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

    move-result-object v1

    .line 349
    .local v1, "messageRecipientDataObject":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 350
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 42
    :cond_0
    const/4 v1, 0x0

    .line 63
    :cond_1
    return-object v1

    .line 44
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v1, "cidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

    .line 46
    .local v2, "dataObject":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    if-eqz v2, :cond_3

    .line 49
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getType()Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    move-result-object v6

    sget-object v7, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;->CONTACT:Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    if-ne v6, v7, :cond_4

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v6

    instance-of v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v6, :cond_4

    .line 50
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 51
    .local v4, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-wide v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    .line 52
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 54
    .end local v4    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_4
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getType()Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    move-result-object v6

    sget-object v7, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;->GROUP_CONVERSATION:Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    if-ne v6, v7, :cond_3

    .line 55
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v6

    instance-of v6, v6, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v6, :cond_3

    .line 56
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 57
    .local v3, "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    invoke-static {v3}, Ldjl;->b(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "cid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 59
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/util/List;Ldhy$b;)V
    .locals 1
    .param p0, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "onDialogListener"    # Ldhy$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;",
            ">;",
            "Ldhy$b;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    const/4 v0, 0x0

    .line 130
    invoke-static {p0, p1, v0, v0, p2}, Ldhy;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ldhy$b;)V

    .line 131
    return-void
.end method

.method public static a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/util/List;Ljava/lang/String;Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;)V
    .locals 2
    .param p0, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "appendText"    # Ljava/lang/String;
    .param p3, "forwardHandler"    # Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    const/4 v0, 0x0

    new-instance v1, Ldhy$1;

    invoke-direct {v1, p3, p0, p1}, Ldhy$1;-><init>(Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/util/List;)V

    invoke-static {p0, p1, v0, p2, v1}, Ldhy;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ldhy$b;)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ldhy$b;)V
    .locals 16
    .param p0, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "appendText"    # Ljava/lang/String;
    .param p4, "onDialogListener"    # Ldhy$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ldhy$b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 141
    .local v3, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 142
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 150
    :goto_1
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    sget v12, Lctk$g;->box_msg_forward:I

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 151
    .local v10, "view":Landroid/view/View;
    invoke-virtual {v3, v10}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 152
    sget v11, Lctk$f;->gv_content:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/GridView;

    .line 153
    .local v5, "gridView":Landroid/widget/GridView;
    sget v11, Lctk$f;->rl_single_parent:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 154
    .local v7, "rlSingleParent":Landroid/view/View;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_d

    .line 155
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 156
    const/16 v11, 0x8

    invoke-virtual {v5, v11}, Landroid/widget/GridView;->setVisibility(I)V

    .line 157
    sget v11, Lctk$f;->aiv_head:I

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 158
    .local v2, "avatarImageView":Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    sget v11, Lctk$f;->tv_name:I

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 159
    .local v8, "tvContent":Landroid/widget/TextView;
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

    invoke-static {v2, v11}, Ldhy;->a(Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;)V

    .line 160
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

    .line 1298
    if-eqz v8, :cond_2

    if-nez v11, :cond_9

    .line 161
    :cond_2
    :goto_2
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

    .line 2240
    if-eqz v8, :cond_3

    if-nez v2, :cond_b

    .line 199
    .end local v2    # "avatarImageView":Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    .end local v8    # "tvContent":Landroid/widget/TextView;
    :cond_3
    :goto_3
    sget v11, Lctk$f;->tv_tip_info:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 200
    .local v9, "tvTipInfo":Landroid/widget/TextView;
    if-eqz p4, :cond_4

    .line 201
    move-object/from16 v0, p4

    invoke-interface {v0, v9}, Ldhy$b;->a(Landroid/widget/TextView;)V

    .line 203
    :cond_4
    sget v11, Lctk$f;->et_content:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 204
    .local v4, "etContent":Landroid/widget/EditText;
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 205
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 208
    :cond_5
    if-eqz p4, :cond_6

    .line 209
    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Ldhy$b;->a(Landroid/widget/EditText;)V

    .line 213
    :cond_6
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_e

    .line 214
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v11

    invoke-virtual {v11}, Lcid;->c()Landroid/app/Application;

    move-result-object v11

    sget v12, Lctk$i;->dt_im_trans_to_multiple_action_send:I

    invoke-virtual {v11, v12}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 218
    .local v6, "okStr":Ljava/lang/String;
    :goto_4
    new-instance v11, Ldhy$3;

    move-object/from16 v0, p4

    invoke-direct {v11, v0, v4}, Ldhy$3;-><init>(Ldhy$b;Landroid/widget/EditText;)V

    invoke-virtual {v3, v6, v11}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 226
    sget v11, Lctk$i;->cancel:I

    new-instance v12, Ldhy$4;

    move-object/from16 v0, p4

    invoke-direct {v12, v0}, Ldhy$4;-><init>(Ldhy$b;)V

    invoke-virtual {v3, v11, v12}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 235
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 144
    .end local v4    # "etContent":Landroid/widget/EditText;
    .end local v5    # "gridView":Landroid/widget/GridView;
    .end local v6    # "okStr":Ljava/lang/String;
    .end local v7    # "rlSingleParent":Landroid/view/View;
    .end local v9    # "tvTipInfo":Landroid/widget/TextView;
    .end local v10    # "view":Landroid/view/View;
    :cond_7
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_8

    .line 145
    sget v11, Lctk$i;->dt_im_trans_to_multiple:I

    invoke-virtual {v3, v11}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 147
    :cond_8
    sget v11, Lctk$i;->dt_im_trans_to_single:I

    invoke-virtual {v3, v11}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 1301
    .restart local v2    # "avatarImageView":Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    .restart local v5    # "gridView":Landroid/widget/GridView;
    .restart local v7    # "rlSingleParent":Landroid/view/View;
    .restart local v8    # "tvContent":Landroid/widget/TextView;
    .restart local v10    # "view":Landroid/view/View;
    :cond_9
    invoke-virtual {v11}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getType()Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    move-result-object v12

    sget-object v13, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;->CONTACT:Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    if-ne v12, v13, :cond_a

    invoke-virtual {v11}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v12

    instance-of v12, v12, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v12, :cond_a

    .line 1302
    invoke-virtual {v11}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v11

    check-cast v11, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1303
    iget-object v12, v11, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 1304
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 1305
    iget-object v11, v11, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 1307
    :goto_5
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1309
    :cond_a
    invoke-virtual {v11}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getType()Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    move-result-object v12

    sget-object v13, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;->GROUP_CONVERSATION:Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    if-ne v12, v13, :cond_2

    invoke-virtual {v11}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v12

    instance-of v12, v12, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v12, :cond_2

    .line 1310
    invoke-virtual {v11}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v11

    check-cast v11, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    check-cast v11, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-static {v11}, Ldjl;->c(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 2244
    :cond_b
    if-eqz v11, :cond_3

    .line 2245
    invoke-virtual {v11}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getType()Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    move-result-object v12

    sget-object v13, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;->CONTACT:Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    if-ne v12, v13, :cond_3

    .line 2246
    invoke-virtual {v11}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v12

    instance-of v12, v12, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v12, :cond_3

    .line 2250
    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 2254
    invoke-virtual {v11}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v11

    check-cast v11, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 2255
    if-eqz v11, :cond_3

    iget-wide v12, v11, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_3

    .line 2259
    new-instance v12, Ldhy$5;

    invoke-direct {v12, v8, v2}, Ldhy$5;-><init>(Landroid/widget/TextView;Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;)V

    .line 2286
    if-eqz p0, :cond_c

    .line 2287
    const-class v13, Lcma;

    move-object/from16 v0, p0

    invoke-static {v12, v13, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcma;

    .line 2290
    :cond_c
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v13

    iget-wide v14, v11, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-virtual {v13, v14, v15, v12}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto/16 :goto_3

    .line 163
    .end local v2    # "avatarImageView":Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    .end local v8    # "tvContent":Landroid/widget/TextView;
    :cond_d
    const/16 v11, 0x8

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 164
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroid/widget/GridView;->setVisibility(I)V

    .line 165
    new-instance v11, Ldhy$2;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v11, v0, v1}, Ldhy$2;-><init>(Ljava/util/List;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    invoke-virtual {v5, v11}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_3

    .line 216
    .restart local v4    # "etContent":Landroid/widget/EditText;
    .restart local v9    # "tvTipInfo":Landroid/widget/TextView;
    :cond_e
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v11

    invoke-virtual {v11}, Lcid;->c()Landroid/app/Application;

    move-result-object v11

    sget v12, Lctk$i;->dt_im_trans_to_multiple_send_with_count:I

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "okStr":Ljava/lang/String;
    goto/16 :goto_4

    .end local v4    # "etContent":Landroid/widget/EditText;
    .end local v6    # "okStr":Ljava/lang/String;
    .end local v9    # "tvTipInfo":Landroid/widget/TextView;
    .restart local v2    # "avatarImageView":Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    .restart local v8    # "tvContent":Landroid/widget/TextView;
    :cond_f
    move-object v11, v12

    goto/16 :goto_5
.end method

.method public static a(Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;)V
    .locals 4
    .param p0, "avatarImageView"    # Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    .param p1, "object"    # Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

    .prologue
    .line 316
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getType()Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;->CONTACT:Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    if-ne v2, v3, :cond_3

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v2, :cond_3

    .line 320
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 321
    .local v1, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 322
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 323
    iget-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 325
    :cond_2
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 327
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getType()Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;->GROUP_CONVERSATION:Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v2, :cond_0

    .line 328
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Ldjl;->a(Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/widget/AbsListView;)V

    goto :goto_0
.end method

.method public static b(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    const/4 v2, 0x0

    .line 70
    .local v2, "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 71
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .restart local v2    # "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

    .line 73
    .local v0, "data":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getType()Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    move-result-object v4

    sget-object v5, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;->CONTACT:Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    if-ne v4, v5, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v4

    instance-of v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v4, :cond_0

    .line 74
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 75
    .local v1, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    .end local v0    # "data":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    .end local v1    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_1
    return-object v2
.end method
