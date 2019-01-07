.class public Lcom/alibaba/android/rimet/biz/BokuiActivity;
.super Landroid/app/Activity;
.source "BokuiActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 68
    if-eqz p1, :cond_f

    .line 69
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    .line 71
    .local v10, "uri":Landroid/net/Uri;
    if-eqz v10, :cond_1

    .line 72
    const-string/jumbo v11, "channel_from"

    invoke-virtual {v10, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "channelFrom":Ljava/lang/String;
    const-string/jumbo v11, "device_info"

    invoke-virtual {v10, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, "deviceInfo":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 75
    :cond_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 76
    .local v6, "map":Ljava/util/Map;
    const-string/jumbo v11, "channel_from"

    invoke-interface {v6, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string/jumbo v11, "device_info"

    invoke-interface {v6, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string/jumbo v11, "launch_jumpservice_source_info"

    invoke-static {v11, v6}, Lcps;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 81
    .end local v3    # "channelFrom":Ljava/lang/String;
    .end local v4    # "deviceInfo":Ljava/lang/String;
    .end local v6    # "map":Ljava/util/Map;
    :cond_1
    const-string/jumbo v11, "android.intent.action.VIEW"

    invoke-static {v0, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1220
    :cond_2
    if-eqz p1, :cond_4

    .line 1221
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    .line 1222
    invoke-static {p1}, Lcom/alibaba/android/rimet/biz/BokuiActivity;->c(Landroid/content/Intent;)V

    .line 1223
    invoke-static {p0, v11, p1}, Lcom/alibaba/android/rimet/utils/UrlUtils;->b(Landroid/app/Activity;Landroid/net/Uri;Landroid/content/Intent;)I

    .line 1228
    :try_start_0
    const-string/jumbo v12, "/page/yunpan"

    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    const-string/jumbo v12, "/page/createorg"

    .line 1229
    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    const-string/jumbo v12, "/action/message_to_ding"

    .line 1230
    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    const-string/jumbo v12, "/action/focus_ding"

    .line 1231
    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    const-string/jumbo v12, "/action/jumprobot"

    .line 1232
    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    const-string/jumbo v12, "/action/change_ent_group"

    .line 1233
    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    const-string/jumbo v12, "/action/sendmsg"

    .line 1234
    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    const-string/jumbo v12, "/page/createorg_v4_add_member"

    .line 1235
    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 1236
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/BokuiActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v0    # "action":Ljava/lang/String;
    .end local v10    # "uri":Landroid/net/Uri;
    :cond_3
    :goto_0
    return-void

    .line 1238
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v10    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v11

    .line 1239
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1242
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/BokuiActivity;->finish()V

    goto :goto_0

    .line 85
    :cond_5
    const-string/jumbo v11, "android.intent.action.SEND"

    invoke-static {v0, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    const-string/jumbo v11, "android.intent.action.SEND_MULTIPLE"

    invoke-static {v0, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 87
    :cond_6
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v9

    .line 88
    .local v9, "type":Ljava/lang/String;
    const-string/jumbo v11, "text/plain"

    invoke-static {v9, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    const-string/jumbo v11, "android.intent.extra.TEXT"

    .line 89
    invoke-static {p1, v11}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 88
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 90
    :cond_7
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string/jumbo v11, "image/"

    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 92
    :cond_8
    const v11, 0x7f0902e5

    invoke-virtual {p0, v11}, Lcom/alibaba/android/rimet/biz/BokuiActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 93
    .local v8, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/BokuiActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a000c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 95
    .local v5, "items":[Ljava/lang/String;
    const v11, 0x7f09033d

    invoke-virtual {p0, v11}, Lcom/alibaba/android/rimet/biz/BokuiActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2153
    .local v2, "cancel":Ljava/lang/String;
    new-instance v11, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v11, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2154
    invoke-virtual {v11, v8}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2155
    new-instance v12, Lcom/alibaba/android/rimet/biz/BokuiActivity$5;

    invoke-direct {v12, p0, p1}, Lcom/alibaba/android/rimet/biz/BokuiActivity$5;-><init>(Lcom/alibaba/android/rimet/biz/BokuiActivity;Landroid/content/Intent;)V

    invoke-virtual {v11, v5, v12}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2176
    new-instance v12, Lcom/alibaba/android/rimet/biz/BokuiActivity$6;

    invoke-direct {v12, p0}, Lcom/alibaba/android/rimet/biz/BokuiActivity$6;-><init>(Lcom/alibaba/android/rimet/biz/BokuiActivity;)V

    invoke-virtual {v11, v2, v12}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2182
    new-instance v12, Lcom/alibaba/android/rimet/biz/BokuiActivity$7;

    invoke-direct {v12, p0}, Lcom/alibaba/android/rimet/biz/BokuiActivity$7;-><init>(Lcom/alibaba/android/rimet/biz/BokuiActivity;)V

    invoke-virtual {v11, v12}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2193
    new-instance v12, Lcom/alibaba/android/rimet/biz/BokuiActivity$8;

    invoke-direct {v12, p0}, Lcom/alibaba/android/rimet/biz/BokuiActivity$8;-><init>(Lcom/alibaba/android/rimet/biz/BokuiActivity;)V

    .line 3173
    iput-object v12, v11, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a:Landroid/content/DialogInterface$OnDismissListener;

    .line 2199
    invoke-virtual {v11}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 98
    .end local v2    # "cancel":Ljava/lang/String;
    .end local v5    # "items":[Ljava/lang/String;
    .end local v8    # "title":Ljava/lang/String;
    :cond_9
    invoke-direct {p0, p1}, Lcom/alibaba/android/rimet/biz/BokuiActivity;->b(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 101
    .end local v9    # "type":Ljava/lang/String;
    :cond_a
    const-string/jumbo v11, "com.alibaba.android.rimet.ShortCutChat"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 102
    const-string/jumbo v11, "intent_key_profile_short_cut"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 103
    .local v7, "profileShortCut":Z
    if-eqz v7, :cond_b

    .line 104
    invoke-static {}, Lemf;->a()Lemf;

    move-result-object v11

    invoke-virtual {v11, p0, p1}, Lemf;->b(Landroid/app/Activity;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 106
    :cond_b
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 107
    .local v1, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    const v11, 0x7f0902ac

    invoke-virtual {v1, v11}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f09217c

    new-instance v13, Lcom/alibaba/android/rimet/biz/BokuiActivity$2;

    invoke-direct {v13, p0, p1}, Lcom/alibaba/android/rimet/biz/BokuiActivity$2;-><init>(Lcom/alibaba/android/rimet/biz/BokuiActivity;Landroid/content/Intent;)V

    .line 108
    invoke-virtual {v11, v12, v13}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f09033d

    new-instance v13, Lcom/alibaba/android/rimet/biz/BokuiActivity$1;

    invoke-direct {v13, p0}, Lcom/alibaba/android/rimet/biz/BokuiActivity$1;-><init>(Lcom/alibaba/android/rimet/biz/BokuiActivity;)V

    .line 114
    invoke-virtual {v11, v12, v13}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v11

    const/4 v12, 0x0

    .line 119
    invoke-virtual {v11, v12}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 121
    .end local v1    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    .end local v7    # "profileShortCut":Z
    :cond_c
    const-string/jumbo v11, "com.alibaba.android.rimet.ShortCutSelect"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 122
    invoke-static {}, Lemf;->a()Lemf;

    invoke-static {p0, p1}, Lemf;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 140
    :cond_d
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/BokuiActivity;->finish()V

    goto/16 :goto_0

    .line 124
    :cond_e
    const-string/jumbo v11, "com.alibaba.android.rimet.SEND"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 125
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 126
    .restart local v1    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    const v11, 0x7f0902ac

    invoke-virtual {v1, v11}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f09217c

    new-instance v13, Lcom/alibaba/android/rimet/biz/BokuiActivity$4;

    invoke-direct {v13, p0, p1}, Lcom/alibaba/android/rimet/biz/BokuiActivity$4;-><init>(Lcom/alibaba/android/rimet/biz/BokuiActivity;Landroid/content/Intent;)V

    .line 127
    invoke-virtual {v11, v12, v13}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f09033d

    new-instance v13, Lcom/alibaba/android/rimet/biz/BokuiActivity$3;

    invoke-direct {v13, p0}, Lcom/alibaba/android/rimet/biz/BokuiActivity$3;-><init>(Lcom/alibaba/android/rimet/biz/BokuiActivity;)V

    .line 133
    invoke-virtual {v11, v12, v13}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v11

    const/4 v12, 0x0

    .line 138
    invoke-virtual {v11, v12}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 144
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    .end local v10    # "uri":Landroid/net/Uri;
    :cond_f
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/BokuiActivity;->finish()V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/BokuiActivity;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/BokuiActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/alibaba/android/rimet/biz/BokuiActivity;->b(Landroid/content/Intent;)V

    return-void
.end method

.method private b(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 206
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-static {p1}, Lcoy;->a(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x14000000

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V

    .line 207
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/BokuiActivity;->finish()V

    .line 208
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/rimet/biz/BokuiActivity;Landroid/content/Intent;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/BokuiActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 37
    .line 3214
    invoke-static {p1}, Lcoy;->a(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v2

    .line 3215
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x14000000

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3216
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/BokuiActivity;->finish()V

    .line 37
    return-void
.end method

.method private static c(Landroid/content/Intent;)V
    .locals 8
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 247
    if-eqz p0, :cond_0

    .line 248
    const-string/jumbo v7, "bizType"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "bizType":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 281
    .end local v1    # "bizType":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 253
    .restart local v1    # "bizType":Ljava/lang/String;
    :cond_1
    const-string/jumbo v7, "bizData"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "bizData":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 257
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 258
    .local v6, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "bizType"

    invoke-interface {v6, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 263
    .local v3, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 264
    .local v5, "keysItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 265
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 266
    .local v4, "key":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 269
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 270
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 275
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "keysItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 276
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 278
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_3
    const-string/jumbo v7, "dt_apn_click"

    invoke-static {v7, v6}, Lcps;->b(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 285
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->isOncreateDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 295
    :goto_0
    return-void

    .line 288
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/rimet/biz/BokuiActivity$9;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/biz/BokuiActivity$9;-><init>(Lcom/alibaba/android/rimet/biz/BokuiActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/BokuiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alibaba/android/rimet/biz/BokuiActivity;->a(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "dingtalkbase"

    invoke-static {v0}, Lcpt;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    sget v2, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v1, v2, :cond_0

    .line 47
    throw v0

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/BokuiActivity;->finish()V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 57
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alibaba/android/rimet/biz/BokuiActivity;->a(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "dingtalkbase"

    invoke-static {v0}, Lcpt;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    sget v2, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v1, v2, :cond_0

    .line 61
    throw v0

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/BokuiActivity;->finish()V

    goto :goto_0
.end method
