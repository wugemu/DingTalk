.class public Lcom/alibaba/android/dingtalkim/imtools/EmotionShareDelegate;
.super Ljava/lang/Object;
.source "EmotionShareDelegate.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doLogic(Landroid/app/Activity;[Ljava/lang/Object;)V
    .locals 20
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 19
    if-eqz p1, :cond_0

    .line 20
    invoke-static/range {p1 .. p1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v2, v0

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    aget-object v2, p2, v2

    instance-of v2, v2, Landroid/content/Intent;

    if-nez v2, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    const/4 v2, 0x0

    aget-object v15, p2, v2

    check-cast v15, Landroid/content/Intent;

    .line 29
    .local v15, "intent":Landroid/content/Intent;
    :try_start_0
    const-string/jumbo v2, "intent_key_emotion_package_id"

    invoke-virtual {v15, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 30
    .local v16, "emotionPackageId":J
    const-string/jumbo v2, "intent_key_emotion_package_full_desc"

    invoke-virtual {v15, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 31
    .local v4, "emotionPackageFullDesc":Ljava/lang/String;
    invoke-virtual {v15}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "conversation"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/alibaba/wukong/im/Conversation;

    .line 32
    .local v6, "conversation":Lcom/alibaba/wukong/im/Conversation;
    const-string/jumbo v2, "send_text"

    invoke-virtual {v15, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 33
    .local v5, "appendText":Ljava/lang/String;
    invoke-static {}, Ldjp;->a()Ldjp;

    move-result-object v2

    new-instance v7, Lcom/alibaba/android/dingtalkim/imtools/EmotionShareDelegate$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v7, v0, v1}, Lcom/alibaba/android/dingtalkim/imtools/EmotionShareDelegate$1;-><init>(Lcom/alibaba/android/dingtalkim/imtools/EmotionShareDelegate;Landroid/app/Activity;)V

    .line 1071
    invoke-static/range {p1 .. p1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1074
    invoke-static {}, Ldpt;->a()Ldpt;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ldpt;->e(J)Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    move-result-object v3

    .line 1075
    if-eqz v3, :cond_0

    .line 1079
    if-eqz v5, :cond_2

    .line 1081
    invoke-virtual/range {v2 .. v7}, Ldjp;->a(Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;Ldjp$a;)V

    goto :goto_0

    .end local v4    # "emotionPackageFullDesc":Ljava/lang/String;
    .end local v5    # "appendText":Ljava/lang/String;
    .end local v6    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    .end local v16    # "emotionPackageId":J
    :catch_0
    move-exception v2

    goto :goto_0

    .line 1085
    .restart local v4    # "emotionPackageFullDesc":Ljava/lang/String;
    .restart local v5    # "appendText":Ljava/lang/String;
    .restart local v6    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    .restart local v16    # "emotionPackageId":J
    :cond_2
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    sget v9, Lctk$g;->dialog_share_emotion_package:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 1086
    sget v8, Lctk$f;->iv_emotion_thumbnail:I

    invoke-virtual {v11, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 1087
    sget v9, Lctk$f;->tv_emotion_package_desc:I

    invoke-virtual {v11, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1088
    sget v10, Lctk$f;->edit_extra_message:I

    invoke-virtual {v11, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    .line 1090
    iget-object v12, v3, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->shortDesc:Ljava/lang/String;

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1091
    const/4 v9, 0x0

    move-wide/from16 v0, v16

    invoke-static {v9, v8, v0, v1}, Lcom/alibaba/android/dingtalkim/imtools/EmotionShowUtils;->a(Landroid/widget/AbsListView;Landroid/widget/ImageView;J)V

    .line 1093
    new-instance v18, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1094
    iget-object v8, v3, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->name:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1095
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1096
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lctk$i;->cancel:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ldjp$2;

    invoke-direct {v9, v2, v7}, Ldjp$2;-><init>(Ldjp;Ldjp$a;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1103
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lctk$i;->dt_im_emotion_share_emotion_package_send:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    new-instance v8, Ldjp$3;

    move-object v9, v2

    move-object v11, v3

    move-object v12, v4

    move-object v13, v6

    move-object v14, v7

    invoke-direct/range {v8 .. v14}, Ldjp$3;-><init>(Ldjp;Landroid/widget/EditText;Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;Ldjp$a;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1109
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1110
    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    .line 1111
    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 1114
    invoke-static/range {p1 .. p1}, Lcms;->a(Landroid/content/Context;)I

    move-result v3

    .line 1115
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    .line 1116
    div-int/lit8 v3, v3, 0x8

    mul-int/lit8 v3, v3, 0x7

    iput v3, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1117
    const/4 v3, -0x2

    iput v3, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1118
    const/4 v3, 0x1

    iput v3, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1119
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method
