.class final Lbiu$5;
.super Ljava/lang/Object;
.source "SingleChatTaskDingHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbiu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbiu;


# direct methods
.method constructor <init>(Lbiu;)V
    .locals 0
    .param p1, "this$0"    # Lbiu;

    .prologue
    .line 567
    iput-object p1, p0, Lbiu$5;->a:Lbiu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 570
    iget-object v0, p0, Lbiu$5;->a:Lbiu;

    .line 1065
    iget-object v0, v0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 570
    invoke-static {v0}, Lbkh;->d(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 571
    iget-object v0, p0, Lbiu$5;->a:Lbiu;

    .line 2065
    iget-object v0, v0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 571
    invoke-static {v0}, Lbkh;->h(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 572
    iget-object v0, p0, Lbiu$5;->a:Lbiu;

    .line 3065
    iget-object v0, v0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 572
    invoke-static {v0}, Lbkh;->z(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 573
    iget-object v0, p0, Lbiu$5;->a:Lbiu;

    .line 4065
    iget-object v0, v0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 573
    invoke-static {v0}, Lbkh;->B(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 574
    iget-object v0, p0, Lbiu$5;->a:Lbiu;

    .line 5065
    iget-object v0, v0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 574
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 6044
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 575
    .local v4, "receiverUid":J
    iget-object v1, p0, Lbiu$5;->a:Lbiu;

    .line 6663
    iget-object v0, v1, Lbiu;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Laxp$g;->ding_dialog_ding_cancel_tips:I

    invoke-virtual {v0, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 6665
    sget v2, Laxp$f;->et_input:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 6666
    sget v3, Laxp$i;->dt_ding_mark_finish_status_comment:I

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 6667
    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v8, v1, Lbiu;->a:Landroid/app/Activity;

    invoke-direct {v3, v8}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6668
    iget-object v8, v1, Lbiu;->a:Landroid/app/Activity;

    sget v9, Laxp$i;->dt_ding_mark_unfinish_dialog_content:I

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v10, v1, Lbiu;->c:Ljava/lang/CharSequence;

    aput-object v10, v6, v7

    invoke-virtual {v8, v9, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v6

    .line 6669
    invoke-virtual {v6, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 6670
    invoke-virtual {v0, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v6

    sget v7, Laxp$i;->dt_ding_mark_unfinished:I

    new-instance v0, Lbiu$10;

    invoke-direct/range {v0 .. v5}, Lbiu$10;-><init>(Lbiu;Landroid/widget/EditText;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;J)V

    .line 6671
    invoke-virtual {v6, v7, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v6, Laxp$i;->cancel:I

    new-instance v7, Lbiu$9;

    invoke-direct {v7, v1, v2, v3}, Lbiu$9;-><init>(Lbiu;Landroid/widget/EditText;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    .line 6684
    invoke-virtual {v0, v6, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 6691
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 6693
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v3, Lbiu$11;

    invoke-direct {v3, v1, v2}, Lbiu$11;-><init>(Lbiu;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 20916
    .end local v4    # "receiverUid":J
    :cond_0
    :goto_0
    const-string/jumbo v0, "chat_task_list_checkbox_finish_click"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    .line 605
    return-void

    .line 578
    :cond_1
    iget-object v0, p0, Lbiu$5;->a:Lbiu;

    .line 7065
    iget-object v1, v0, Lbiu;->a:Landroid/app/Activity;

    .line 579
    iget-object v0, p0, Lbiu$5;->a:Lbiu;

    .line 8065
    iget-object v2, v0, Lbiu;->d:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    .line 580
    iget-object v0, p0, Lbiu$5;->a:Lbiu;

    .line 9065
    iget-object v3, v0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 581
    iget-object v0, p0, Lbiu$5;->a:Lbiu;

    .line 10065
    iget-object v0, v0, Lbiu;->d:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    .line 582
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v6

    .line 578
    :goto_1
    invoke-static {v1, v2, v3, v0}, Lbkj;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;Lcom/alibaba/android/ding/base/objects/ObjectDing;Z)V

    goto :goto_0

    :cond_2
    move v0, v7

    .line 582
    goto :goto_1

    .line 585
    :cond_3
    iget-object v0, p0, Lbiu$5;->a:Lbiu;

    .line 11065
    iget-object v0, v0, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 585
    invoke-static {v0}, Lbkh;->z(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 586
    iget-object v0, p0, Lbiu$5;->a:Lbiu;

    sget v1, Laxp$i;->dt_ding_single_task_cannot_reopen_multi_receiver_task_title:I

    sget v2, Laxp$i;->dt_ding_single_task_cannot_reopen_multi_receiver_task:I

    .line 12724
    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v6, v0, Lbiu;->a:Landroid/app/Activity;

    invoke-direct {v3, v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 12725
    invoke-virtual {v3, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 12726
    invoke-virtual {v3, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 12727
    iget-object v0, v0, Lbiu;->a:Landroid/app/Activity;

    sget v1, Laxp$i;->dt_ding_i_know:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v8}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 12728
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 590
    :cond_4
    iget-object v0, p0, Lbiu$5;->a:Lbiu;

    .line 13065
    iget-object v0, v0, Lbiu;->a:Landroid/app/Activity;

    .line 591
    iget-object v1, p0, Lbiu$5;->a:Lbiu;

    .line 14065
    iget-object v1, v1, Lbiu;->d:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    .line 592
    iget-object v2, p0, Lbiu$5;->a:Lbiu;

    .line 15065
    iget-object v2, v2, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 593
    iget-object v3, p0, Lbiu$5;->a:Lbiu;

    .line 16065
    iget-object v3, v3, Lbiu;->d:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    .line 594
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_5

    .line 590
    :goto_2
    invoke-static {v0, v1, v2, v6}, Lbkj;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;Lcom/alibaba/android/ding/base/objects/ObjectDing;Z)V

    goto :goto_0

    :cond_5
    move v6, v7

    .line 594
    goto :goto_2

    .line 598
    :cond_6
    iget-object v0, p0, Lbiu$5;->a:Lbiu;

    .line 17065
    iget-object v0, v0, Lbiu;->a:Landroid/app/Activity;

    .line 599
    iget-object v1, p0, Lbiu$5;->a:Lbiu;

    .line 18065
    iget-object v1, v1, Lbiu;->d:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    .line 600
    iget-object v2, p0, Lbiu$5;->a:Lbiu;

    .line 19065
    iget-object v2, v2, Lbiu;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 601
    iget-object v3, p0, Lbiu$5;->a:Lbiu;

    .line 20065
    iget-object v3, v3, Lbiu;->d:Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    .line 602
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_7

    .line 598
    :goto_3
    invoke-static {v0, v1, v2, v6}, Lbkj;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;Lcom/alibaba/android/ding/base/objects/ObjectDing;Z)V

    goto/16 :goto_0

    :cond_7
    move v6, v7

    .line 602
    goto :goto_3
.end method
