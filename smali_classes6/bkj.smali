.class public final Lbkj;
.super Ljava/lang/Object;
.source "FinishStatusUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;Lcom/alibaba/android/ding/base/objects/ObjectDing;I)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "checkBox"    # Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;
    .param p2, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .param p3, "confirmTipStrResId"    # I

    .prologue
    const/4 v2, 0x1

    .line 181
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    const-string/jumbo v1, "pref_key_should_first_show_finish_confirm_dialog"

    invoke-static {v1, v2}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 185
    invoke-static {p0, v2, p1, p2}, Lbkj;->a(Landroid/app/Activity;ZLcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    goto :goto_0

    .line 188
    :cond_2
    const-string/jumbo v1, "pref_key_should_first_show_finish_confirm_dialog"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 189
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 190
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    invoke-virtual {v0, p3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Laxp$i;->dt_common_confirm:I

    new-instance v3, Lbkj$2;

    invoke-direct {v3, p0, p1, p2, v0}, Lbkj$2;-><init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    .line 191
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Laxp$i;->cancel:I

    new-instance v3, Lbkj$11;

    invoke-direct {v3, v0}, Lbkj$11;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    .line 198
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 204
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;Lcom/alibaba/android/ding/base/objects/ObjectDing;Z)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "checkBox"    # Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;
    .param p2, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .param p3, "finish"    # Z

    .prologue
    .line 34
    if-nez p0, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    if-eqz p1, :cond_0

    .line 42
    if-eqz p2, :cond_0

    .line 46
    invoke-static {p2}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    invoke-static {p2}, Lbkh;->f(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1147
    iget-boolean v1, p1, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->c:Z

    .line 57
    if-eqz v1, :cond_2

    .line 58
    invoke-static {p0, p3, p1, p2}, Lbkj;->a(Landroid/app/Activity;ZLcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    goto :goto_0

    .line 67
    :cond_2
    invoke-static {p2}, Lbkh;->g(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 68
    if-eqz p3, :cond_3

    .line 69
    sget v1, Laxp$i;->dt_task_first_finish_confirm_tip:I

    invoke-static {p0, p1, p2, v1}, Lbkj;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;Lcom/alibaba/android/ding/base/objects/ObjectDing;I)V

    goto :goto_0

    .line 73
    :cond_3
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 74
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Laxp$i;->dt_task_me2me_mark_unfinished_tip:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Laxp$i;->dt_task_me2me_mark_unfinished_confirm:I

    new-instance v3, Lbkj$4;

    invoke-direct {v3, p0, p1, p2, v0}, Lbkj$4;-><init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    .line 75
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Laxp$i;->cancel:I

    new-instance v3, Lbkj$1;

    invoke-direct {v3, v0}, Lbkj$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    .line 82
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 88
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 99
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :cond_4
    invoke-static {p2}, Lbkh;->d(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 100
    if-eqz p3, :cond_7

    .line 1150
    if-eqz p2, :cond_5

    .line 1154
    invoke-static {p2}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1158
    invoke-virtual {p2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->ak()I

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x1

    .line 101
    :goto_1
    if-eqz v1, :cond_6

    .line 102
    sget v1, Laxp$i;->dt_task_first_done_confirm_tip:I

    invoke-static {p0, p1, p2, v1}, Lbkj;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;Lcom/alibaba/android/ding/base/objects/ObjectDing;I)V

    goto :goto_0

    .line 1158
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 106
    :cond_6
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 107
    .restart local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Laxp$i;->dt_task_sender_close_tip:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Laxp$i;->dt_task_sender_close_confirm:I

    new-instance v3, Lbkj$6;

    invoke-direct {v3, p0, p1, p2, v0}, Lbkj$6;-><init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    .line 108
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Laxp$i;->cancel:I

    new-instance v3, Lbkj$5;

    invoke-direct {v3, v0}, Lbkj$5;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    .line 115
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 121
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 125
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :cond_7
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 126
    .restart local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Laxp$i;->dt_task_sender_reopen_tip:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Laxp$i;->dt_task_sender_reopen_confirm:I

    new-instance v3, Lbkj$8;

    invoke-direct {v3, p0, p1, p2, v0}, Lbkj$8;-><init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    .line 127
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Laxp$i;->cancel:I

    new-instance v3, Lbkj$7;

    invoke-direct {v3, v0}, Lbkj$7;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    .line 134
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 140
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 150
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :cond_8
    invoke-static {p2}, Lbkh;->B(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    if-eqz p3, :cond_9

    .line 155
    sget v1, Laxp$i;->dt_task_first_finish_confirm_tip:I

    invoke-static {p0, p1, p2, v1}, Lbkj;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;Lcom/alibaba/android/ding/base/objects/ObjectDing;I)V

    goto/16 :goto_0

    .line 159
    :cond_9
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 160
    .restart local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Laxp$i;->dt_task_receiver_mark_unfinished_tip:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Laxp$i;->dt_task_receiver_mark_unfinished_confirm:I

    new-instance v3, Lbkj$10;

    invoke-direct {v3, p0, p1, p2, v0}, Lbkj$10;-><init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    .line 161
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Laxp$i;->cancel:I

    new-instance v3, Lbkj$9;

    invoke-direct {v3, v0}, Lbkj$9;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    .line 168
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 174
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0
.end method

.method public static a(Landroid/app/Activity;ZLcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "finish"    # Z
    .param p2, "checkBox"    # Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;
    .param p3, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    const/4 v3, 0x1

    .line 211
    invoke-virtual {p2, p1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->a(ZZ)V

    .line 212
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    .line 2115
    iget-object v1, v0, Lbbp;->b:Lbbp$a;

    new-instance v2, Lbbp$118;

    invoke-direct {v2, v0, p3, p1, v3}, Lbbp$118;-><init>(Lbbp;Lcom/alibaba/android/ding/base/objects/ObjectDing;ZZ)V

    invoke-virtual {v1, v2}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 213
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lbkj$3;

    invoke-direct {v1, p3, p0}, Lbkj$3;-><init>(Lcom/alibaba/android/ding/base/objects/ObjectDing;Landroid/app/Activity;)V

    const-wide/16 v2, 0x708

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 233
    return-void
.end method
