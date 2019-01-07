.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22;
.super Landroid/content/BroadcastReceiver;
.source "SpaceBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    .prologue
    .line 976
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 979
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    invoke-static {v11}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v11

    if-nez v11, :cond_0

    if-nez p2, :cond_1

    .line 1065
    :cond_0
    :goto_0
    return-void

    .line 982
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 983
    .local v1, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    invoke-static {v11}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->d(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 984
    const-string/jumbo v11, "choose_picture_ids"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 985
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v11, "send_origin_picture"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 986
    .local v9, "sendOrigin":Z
    const/4 v10, 0x0

    .line 987
    .local v10, "urlRealNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v9, :cond_2

    .line 988
    const-string/jumbo v11, "com.workapp.choose.pictire.from.album.results"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 989
    .local v7, "pickResults":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;>;"
    if-eqz v7, :cond_2

    if-eqz v5, :cond_2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ne v11, v12, :cond_2

    .line 990
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "urlRealNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 991
    .restart local v10    # "urlRealNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    .line 992
    .local v6, "pickResult":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    iget-object v12, v6, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->originUrl:Ljava/lang/String;

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 996
    .end local v6    # "pickResult":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    .end local v7    # "pickResults":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    iget-boolean v11, v11, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->b:Z

    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    iget v11, v11, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->k:I

    const/4 v12, 0x6

    if-eq v11, v12, :cond_3

    .line 997
    move-object v4, v10

    .line 998
    .local v4, "finalUrlRealName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    invoke-direct {v2, v11}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 999
    .local v2, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v11, Lfzs$h;->dt_space_upload_conversation_notify_title:I

    invoke-virtual {v2, v11}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1000
    sget v11, Lfzs$h;->dt_space_upload_conversation_notify_des:I

    invoke-virtual {v2, v11}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1001
    sget v11, Lfzs$h;->dt_space_upload_conversation_notify_sure:I

    new-instance v12, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v5, v9, v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22$1;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22;Ljava/util/ArrayList;ZLjava/util/List;)V

    invoke-virtual {v2, v11, v12}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1009
    sget v11, Lfzs$h;->dt_space_upload_conversation_notify_cancel:I

    new-instance v12, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v5, v9, v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22$2;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22;Ljava/util/ArrayList;ZLjava/util/List;)V

    invoke-virtual {v2, v11, v12}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1017
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 1019
    .end local v2    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    .end local v4    # "finalUrlRealName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    const/4 v12, 0x0

    invoke-static {v11, v5, v12, v9, v10}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;Ljava/util/ArrayList;ZZLjava/util/List;)V

    goto/16 :goto_0

    .line 1021
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "sendOrigin":Z
    .end local v10    # "urlRealNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    invoke-static {v11}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->e(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1022
    const-string/jumbo v11, "choose_files_uris"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1023
    .local v3, "fileUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    iget-boolean v11, v11, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->b:Z

    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    iget v11, v11, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->k:I

    const/4 v12, 0x6

    if-eq v11, v12, :cond_5

    .line 1024
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    invoke-direct {v2, v11}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1025
    .restart local v2    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v11, Lfzs$h;->dt_space_upload_conversation_notify_title:I

    invoke-virtual {v2, v11}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1026
    sget v11, Lfzs$h;->dt_space_upload_conversation_notify_des:I

    invoke-virtual {v2, v11}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1027
    sget v11, Lfzs$h;->dt_space_upload_conversation_notify_sure:I

    new-instance v12, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22$3;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22$3;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v11, v12}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1035
    sget v11, Lfzs$h;->dt_space_upload_conversation_notify_cancel:I

    new-instance v12, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22$4;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22$4;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v11, v12}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1043
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 1045
    .end local v2    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    const/4 v12, 0x0

    invoke-static {v11, v3, v12}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;Ljava/util/ArrayList;Z)V

    goto/16 :goto_0

    .line 1047
    .end local v3    # "fileUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_6
    const-string/jumbo v11, "space_action_edit_cancel"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    iget v11, v11, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->a:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_7

    .line 1048
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    invoke-virtual {v11}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->finish()V

    goto/16 :goto_0

    .line 1049
    :cond_7
    const-string/jumbo v11, "space_action_repath_cancel"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    iget v11, v11, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->a:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_8

    .line 1050
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    invoke-virtual {v11}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->finish()V

    goto/16 :goto_0

    .line 1051
    :cond_8
    const-string/jumbo v11, "space_action_save_cancel"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    iget v11, v11, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->a:I

    const/4 v12, 0x5

    if-eq v11, v12, :cond_9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    iget v11, v11, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->a:I

    const/4 v12, 0x7

    if-ne v11, v12, :cond_a

    .line 1052
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    invoke-virtual {v11}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->finish()V

    goto/16 :goto_0

    .line 1053
    :cond_a
    const-string/jumbo v11, "space_action_send_cancel"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    iget v11, v11, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->a:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_b

    .line 1054
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    invoke-virtual {v11}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->finish()V

    goto/16 :goto_0

    .line 1055
    :cond_b
    const-string/jumbo v11, "com.alibaba.alimei_sdk.RELOGIN_ACTION"

    invoke-static {v11, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 1058
    const-string/jumbo v11, "CSpace"

    const-string/jumbo v12, "SpaceBaseActivity"

    const-string/jumbo v13, "sdkrelogin"

    const-string/jumbo v14, "spacebase"

    const-string/jumbo v15, "token invalid or token expired"

    const/16 v16, 0x0

    invoke-static/range {v13 .. v16}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    const-string/jumbo v11, "accountName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1060
    .local v8, "refreshTokenFailedAccount":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-static {v8, v11}, Lgpo;->a(Ljava/lang/String;Lgqq;)V

    goto/16 :goto_0

    .line 1061
    .end local v8    # "refreshTokenFailedAccount":Ljava/lang/String;
    :cond_c
    const-string/jumbo v11, "com.alibaba.dingtalk.space.file.create"

    invoke-static {v11, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1062
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    const-string/jumbo v11, "dentry_model"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput-object v11, v12, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->J:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1063
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$22;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    invoke-virtual {v11}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->e()V

    goto/16 :goto_0
.end method
