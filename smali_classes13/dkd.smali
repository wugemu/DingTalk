.class public final Ldkd;
.super Ljava/lang/Object;
.source "MicroAPPNavigator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)V
    .locals 20
    .param p0, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "microAPPObject"    # Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .prologue
    .line 42
    const-wide/16 v6, 0x0

    .line 43
    .local v6, "orgId":J
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string/jumbo v3, "id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 45
    :try_start_0
    const-string/jumbo v3, "id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 49
    :cond_0
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v3, v6, v4

    if-eqz v3, :cond_2

    .line 50
    const-string/jumbo v5, "chat_input_menu"

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v8, p2

    invoke-static/range {v3 .. v8}, Ldkg;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;JLcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)V

    .line 95
    :cond_1
    :goto_1
    return-void

    .line 52
    :cond_2
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    .line 54
    .local v2, "currentUserProfileExtentionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 55
    :cond_3
    const-string/jumbo v3, "im"

    const/4 v4, 0x0

    const-string/jumbo v5, "[MicroAPPNavigator] navigate userProfileObject is null or orgEmployee is null or empty"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 59
    :cond_4
    new-instance v10, Ljava/util/ArrayList;

    iget-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v10, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 60
    .local v10, "filterOrgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    iget-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 62
    .local v18, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v18, :cond_5

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 63
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 66
    .end local v18    # "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 67
    .local v19, "orgEmployeesLength":I
    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_7

    .line 69
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 70
    .restart local v18    # "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    const-string/jumbo v11, "chat_input_menu"

    move-object/from16 v0, v18

    iget-wide v12, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v14, p2

    invoke-static/range {v9 .. v14}, Ldkg;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;JLcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)V

    goto :goto_1

    .line 71
    .end local v18    # "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_7
    const/4 v3, 0x1

    move/from16 v0, v19

    if-le v0, v3, :cond_1

    .line 73
    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 74
    .local v16, "nameArr":[Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_3
    move/from16 v0, v19

    if-ge v15, v0, :cond_8

    .line 75
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 76
    .local v17, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    aput-object v3, v16, v15

    .line 74
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 79
    .end local v17    # "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_8
    const/4 v3, 0x1

    new-array v9, v3, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v9, v3

    .line 81
    .local v9, "clickedItem":[I
    new-instance v14, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 82
    .local v14, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v3, Lctk$i;->choose_from_enterprise:I

    invoke-virtual {v14, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, -0x1

    new-instance v8, Ldkd$1;

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-direct/range {v8 .. v14}, Ldkd$1;-><init>([ILjava/util/ArrayList;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    .line 83
    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v4, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    .line 92
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_1

    .end local v2    # "currentUserProfileExtentionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .end local v9    # "clickedItem":[I
    .end local v10    # "filterOrgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    .end local v14    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    .end local v15    # "i":I
    .end local v16    # "nameArr":[Ljava/lang/String;
    .end local v19    # "orgEmployeesLength":I
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method
