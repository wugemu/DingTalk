.class public Leyw;
.super Ljava/lang/Object;
.source "ShowWindowUtil.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Leyw;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leyw;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 8
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 150
    if-nez p0, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;-><init>(Landroid/content/Context;)V

    .line 156
    .local v1, "dialog":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 158
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "resource"

    sget v4, Leuj$h;->conf_intro_icon_for_normal:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 159
    const-string/jumbo v3, "title"

    sget v4, Leuj$l;->dt_conference_biz_conf_upgrade_guide:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string/jumbo v3, "content"

    sget v4, Leuj$l;->dt_conference_biz_conf_upgrade_content:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->a(Ljava/util/List;)V

    .line 164
    sget v3, Leuj$l;->dt_common_i_know:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1079
    iput-object v3, v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->a:Ljava/lang/String;

    .line 165
    new-instance v3, Leyw$8;

    invoke-direct {v3, v1}, Leyw$8;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;)V

    .line 1095
    iput-object v3, v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->d:Landroid/view/View$OnClickListener;

    .line 172
    new-instance v3, Leyw$9;

    invoke-direct {v3, v1}, Leyw$9;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;)V

    .line 1099
    iput-object v3, v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->g:Landroid/view/View$OnClickListener;

    .line 180
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->setCanceledOnTouchOutside(Z)V

    .line 181
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    new-instance v4, Leyw$10;

    invoke-direct {v4, p0, v1}, Leyw$10;-><init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Lcpi$a;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcpi$a;

    .prologue
    .line 439
    if-nez p0, :cond_1

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    invoke-static {p0}, Leyx;->c(Landroid/content/Context;)Z

    move-result v0

    .line 443
    .local v0, "hasWindowPer":Z
    invoke-static {}, Levl;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 444
    invoke-static {p0, p1}, Leyx;->c(Landroid/app/Activity;Lcpi$a;)V

    goto :goto_0

    .line 447
    :cond_2
    if-eqz p1, :cond_0

    .line 448
    invoke-interface {p1, v0}, Lcpi$a;->a(Z)V

    goto :goto_0
.end method

.method public static a(Landroid/support/v4/app/Fragment;Lcpi$a;)V
    .locals 2
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "listener"    # Lcpi$a;

    .prologue
    .line 453
    if-nez p0, :cond_1

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Leyx;->c(Landroid/content/Context;)Z

    move-result v0

    .line 457
    .local v0, "hasWindowPer":Z
    invoke-static {}, Levl;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 458
    invoke-static {p0, p1}, Leyx;->b(Landroid/support/v4/app/Fragment;Lcpi$a;)V

    goto :goto_0

    .line 461
    :cond_2
    if-eqz p1, :cond_0

    .line 462
    invoke-interface {p1, v0}, Lcpi$a;->a(Z)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;ZLjava/lang/String;)V
    .locals 4
    .param p0, "dingtalkBaseActivity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p1, "isFinishNeeded"    # Z
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 94
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "conf_record_guild_createteam"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 99
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 101
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    sget v1, Leuj$l;->and_conf_create_team_info_tip:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 105
    :cond_1
    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 107
    sget v1, Leuj$l;->conf_record_dingcall_createteam_todo:I

    new-instance v2, Leyw$6;

    invoke-direct {v2, p0, v3}, Leyw$6;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 122
    sget v1, Leuj$l;->dt_common_i_know:I

    new-instance v2, Leyw$7;

    invoke-direct {v2, v3, p0}, Leyw$7;-><init>(ZLcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 131
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method public static a()Z
    .locals 22

    .prologue
    .line 288
    const/4 v6, 0x0

    .line 289
    .local v6, "isNetValid":Z
    const/4 v7, 0x0

    .line 290
    .local v7, "isNotWifi":Z
    const/4 v3, 0x0

    .line 2096
    .local v3, "isDingCardValid":Z
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v17

    const-string/jumbo v18, "ding_card_drive_warn_close"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v9

    .line 294
    .local v9, "noticeClose":Z
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcid;->c()Landroid/app/Application;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lewp;->f(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_0

    const/4 v8, 0x1

    .line 295
    .local v8, "isValidUser":Z
    :goto_0
    if-nez v9, :cond_5

    if-eqz v8, :cond_5

    const/16 v17, 0x0

    .line 297
    invoke-static/range {v17 .. v17}, Lcms;->e(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v17, 0x0

    .line 298
    invoke-static/range {v17 .. v17}, Lcms;->k(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_1

    const/4 v7, 0x1

    :goto_1
    if-eqz v7, :cond_5

    .line 299
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v16

    .line 300
    .local v16, "userProfileObj":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v16, :cond_2

    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->isDingSimCard()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 301
    const-string/jumbo v17, "tele_conf"

    sget-object v18, Leyw;->a:Ljava/lang/String;

    const-string/jumbo v19, "I have be a ding-card user"

    invoke-static/range {v17 .. v19}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const/16 v17, 0x0

    .line 324
    .end local v16    # "userProfileObj":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :goto_2
    return v17

    .line 294
    .end local v8    # "isValidUser":Z
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 298
    .restart local v8    # "isValidUser":Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 304
    .restart local v16    # "userProfileObj":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :cond_2
    invoke-static {}, Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;->getInstance()Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;->getDingSimCardSetting()Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;

    move-result-object v2

    .line 305
    .local v2, "baseSetting":Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;->isValid()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 306
    invoke-static {}, Lcom/laiwang/protocol/android/LWP;->currentServerTime()J

    move-result-wide v12

    .line 307
    .local v12, "lwpTime":J
    const-wide/16 v18, 0x0

    cmp-long v17, v12, v18

    if-gtz v17, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 308
    .local v14, "now":J
    :goto_3
    const-string/jumbo v17, "conf_ding_card_last_timestamp"

    const-wide/16 v18, 0x0

    invoke-static/range {v17 .. v19}, Lcpk;->a(Ljava/lang/String;J)J

    move-result-wide v10

    .line 309
    .local v10, "lastTimestamp":J
    invoke-static {}, Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;->getInstance()Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/android/teleconf/operation/TeleConfDingSimCardHelper;->getDingSimCardNoticeInterval()J

    move-result-wide v4

    .line 311
    .local v4, "interval":J
    const-string/jumbo v17, "tele_conf"

    sget-object v18, Leyw;->a:Ljava/lang/String;

    const/16 v19, 0x6

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "Res time info: "

    aput-object v21, v19, v20

    const/16 v20, 0x1

    .line 312
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    const-string/jumbo v21, ","

    aput-object v21, v19, v20

    const/16 v20, 0x3

    .line 313
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x4

    const-string/jumbo v21, ","

    aput-object v21, v19, v20

    const/16 v20, 0x5

    .line 314
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    .line 311
    invoke-static/range {v19 .. v19}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-wide/16 v18, 0x0

    cmp-long v17, v10, v18

    if-eqz v17, :cond_3

    sub-long v18, v14, v10

    const-wide/16 v20, 0x3e8

    div-long v18, v18, v20

    cmp-long v17, v18, v4

    if-ltz v17, :cond_5

    .line 317
    :cond_3
    const-string/jumbo v17, "conf_ding_card_last_timestamp"

    move-object/from16 v0, v17

    invoke-static {v0, v14, v15}, Lcpk;->b(Ljava/lang/String;J)V

    .line 318
    const/16 v17, 0x1

    goto/16 :goto_2

    .end local v4    # "interval":J
    .end local v10    # "lastTimestamp":J
    .end local v14    # "now":J
    :cond_4
    move-wide v14, v12

    .line 307
    goto :goto_3

    .line 322
    .end local v2    # "baseSetting":Lcom/alibaba/dingtalk/telebase/models/DingSimCardBaseSetting;
    .end local v12    # "lwpTime":J
    .end local v16    # "userProfileObj":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :cond_5
    const-string/jumbo v17, "tele_conf"

    sget-object v18, Leyw;->a:Ljava/lang/String;

    const/16 v19, 0x6

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "Res: "

    aput-object v21, v19, v20

    const/16 v20, 0x1

    .line 323
    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    const-string/jumbo v21, ","

    aput-object v21, v19, v20

    const/16 v20, 0x3

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x4

    const-string/jumbo v21, ","

    aput-object v21, v19, v20

    const/16 v20, 0x5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    .line 322
    invoke-static/range {v19 .. v19}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const/16 v17, 0x0

    goto/16 :goto_2
.end method

.method public static a(Landroid/app/Activity;ZLjava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "download"    # Z
    .param p2, "negativeBtnTxt"    # Ljava/lang/String;
    .param p3, "negativeBtnListener"    # Landroid/view/View$OnClickListener;
    .param p4, "positiveBtnTxt"    # Ljava/lang/String;
    .param p5, "positiveBtnListener"    # Landroid/view/View$OnClickListener;
    .param p6, "hintTitle"    # Ljava/lang/String;
    .param p7, "hintMsg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 335
    if-eqz p0, :cond_1

    .line 336
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 337
    :cond_0
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 338
    :cond_1
    const-string/jumbo v5, "tele_conf"

    sget-object v6, Leyw;->a:Ljava/lang/String;

    const-string/jumbo v7, "Invalid params"

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :cond_2
    :goto_0
    return v4

    .line 342
    :cond_3
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 343
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;-><init>(Landroid/content/Context;)V

    .line 345
    .local v1, "dialog":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 346
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 348
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p1, :cond_5

    .line 349
    sget v3, Leuj$h;->ding_card_download_hint_icon:I

    .line 353
    .local v3, "resId":I
    :goto_1
    const-string/jumbo v5, "resource"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 354
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 355
    const-string/jumbo v5, "title"

    invoke-virtual {v0, v5, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :cond_4
    const-string/jumbo v5, "content"

    invoke-virtual {v0, v5, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->a(Ljava/util/List;)V

    .line 3079
    iput-object p4, v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->a:Ljava/lang/String;

    .line 362
    new-instance v5, Leyw$1;

    invoke-direct {v5, v1, p5}, Leyw$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;Landroid/view/View$OnClickListener;)V

    .line 3095
    iput-object v5, v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->d:Landroid/view/View$OnClickListener;

    .line 4083
    iput-object p2, v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->b:Ljava/lang/String;

    .line 379
    new-instance v5, Leyw$2;

    invoke-direct {v5, v1, p3, p0}, Leyw$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;Landroid/view/View$OnClickListener;Landroid/app/Activity;)V

    .line 4091
    iput-object v5, v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->e:Landroid/view/View$OnClickListener;

    .line 401
    new-instance v5, Leyw$3;

    invoke-direct {v5, v1}, Leyw$3;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;)V

    .line 4099
    iput-object v5, v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->g:Landroid/view/View$OnClickListener;

    .line 415
    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->setCanceledOnTouchOutside(Z)V

    .line 416
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v4

    new-instance v5, Leyw$4;

    invoke-direct {v5, p0, v1}, Leyw$4;-><init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 432
    const/4 v4, 0x1

    goto :goto_0

    .line 351
    .end local v3    # "resId":I
    :cond_5
    sget v3, Leuj$h;->ding_card_upload_hint_icon:I

    .restart local v3    # "resId":I
    goto :goto_1
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Leyw;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 4
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 468
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 481
    :goto_0
    return-void

    .line 471
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 472
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Leuj$l;->dt_conference_bizcall_already_quite_title:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Leuj$l;->dt_conference_bizcall_already_quite_message:I

    .line 473
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Leuj$l;->dt_common_i_know:I

    new-instance v3, Leyw$5;

    invoke-direct {v3, v0}, Leyw$5;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    .line 474
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 480
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method
