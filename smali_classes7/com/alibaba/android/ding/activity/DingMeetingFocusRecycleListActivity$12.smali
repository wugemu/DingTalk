.class final Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$12;
.super Ljava/lang/Object;
.source "DingMeetingFocusRecycleListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$12;->a:Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 313
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$12;->a:Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;

    .line 1401
    iget v0, v1, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->a:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 1405
    iget-object v0, v1, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1414
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1415
    sget v2, Laxp$i;->ding_delete_all_confirm:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1416
    sget v2, Laxp$i;->sure:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$3;

    invoke-direct {v3, v1}, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$3;-><init>(Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;)V

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1422
    sget v2, Laxp$i;->cancel:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$4;

    invoke-direct {v3, v1}, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$4;-><init>(Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;)V

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1427
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 1453
    :cond_0
    :goto_0
    return-void

    .line 1432
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1433
    iget-object v0, v1, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2109
    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1434
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1437
    :cond_2
    const-string/jumbo v0, "pref_key_has_shown_delete_ding_confirm_dialog"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1438
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1439
    sget v3, Laxp$i;->dt_ding_delete_confirm:I

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1440
    sget v3, Laxp$i;->sure:I

    new-instance v4, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$5;

    invoke-direct {v4, v1, v2}, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$5;-><init>(Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;Ljava/util/List;)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1447
    sget v2, Laxp$i;->cancel:I

    new-instance v3, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$6;

    invoke-direct {v3, v1}, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity$6;-><init>(Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;)V

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1452
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 1454
    :cond_3
    iget-object v0, v1, Lcom/alibaba/android/ding/activity/DingMeetingFocusRecycleListActivity;->c:Lbaj;

    invoke-virtual {v0, v2}, Lbaj;->a(Ljava/util/List;)V

    goto :goto_0
.end method
