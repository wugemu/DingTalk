.class final Lazx$3;
.super Ljava/lang/Object;
.source "DingCreateActivityV2BasePresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lazx;->a(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/android/ding/base/objects/ObjectDingSent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:J

.field final synthetic c:Lazx;


# direct methods
.method constructor <init>(Lazx;ZJ)V
    .locals 1
    .param p1, "this$0"    # Lazx;

    .prologue
    .line 376
    iput-object p1, p0, Lazx$3;->c:Lazx;

    iput-boolean p2, p0, Lazx$3;->a:Z

    iput-wide p3, p0, Lazx$3;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 477
    iget-object v0, p0, Lazx$3;->c:Lazx;

    iget-object v0, v0, Lazx;->y:Lazy$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lazy$b;->b(Z)V

    .line 478
    iget-object v0, p0, Lazx$3;->c:Lazx;

    iget-object v0, v0, Lazx;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->a()V

    .line 479
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 376
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 376
    check-cast p1, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    .line 1380
    if-nez p1, :cond_0

    .line 1381
    sget v0, Laxp$i;->ding_no_content:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1382
    iget-object v0, p0, Lazx$3;->c:Lazx;

    iget-object v0, v0, Lazx;->y:Lazy$b;

    invoke-interface {v0, v1}, Lazy$b;->b(Z)V

    .line 1383
    iget-object v0, p0, Lazx$3;->c:Lazx;

    iget-object v0, v0, Lazx;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->a()V

    .line 1470
    :goto_0
    return-void

    .line 1388
    :cond_0
    iget-object v0, p0, Lazx$3;->c:Lazx;

    iget-object v0, v0, Lazx;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->x()Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    move-result-object v0

    .line 1389
    if-eqz v0, :cond_1

    .line 1390
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1391
    sget v0, Laxp$i;->ding_attach_uploading:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1392
    iget-object v0, p0, Lazx$3;->c:Lazx;

    iget-object v0, v0, Lazx;->y:Lazy$b;

    invoke-interface {v0, v1}, Lazy$b;->b(Z)V

    .line 1393
    iget-object v0, p0, Lazx$3;->c:Lazx;

    iget-object v0, v0, Lazx;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->a()V

    goto :goto_0

    .line 1399
    :cond_1
    iget-object v0, p0, Lazx$3;->c:Lazx;

    iget v0, v0, Lazx;->g:I

    invoke-static {v0}, Lbkh;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lazx$3;->c:Lazx;

    iget-object v0, v0, Lazx;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->B()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lazx$3;->c:Lazx;

    iget-object v0, v0, Lazx;->y:Lazy$b;

    .line 1400
    invoke-interface {v0}, Lazy$b;->r()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lazx$3;->c:Lazx;

    iget-object v0, v0, Lazx;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 1401
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v3, Laxp$i;->dt_send_ding_modal_select_max_seletor_AT:I

    new-array v4, v1, [Ljava/lang/Object;

    const-string/jumbo v5, "1"

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 1402
    iget-object v0, p0, Lazx$3;->c:Lazx;

    iget-object v0, v0, Lazx;->y:Lazy$b;

    invoke-interface {v0, v1}, Lazy$b;->b(Z)V

    .line 1403
    iget-object v0, p0, Lazx$3;->c:Lazx;

    iget-object v0, v0, Lazx;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->a()V

    goto :goto_0

    .line 1407
    :cond_2
    iget-boolean v0, p0, Lazx$3;->a:Z

    if-eqz v0, :cond_3

    .line 1408
    const-string/jumbo v0, "ignorPrvnt"

    const-string/jumbo v3, "1"

    invoke-virtual {p1, v0, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    :cond_3
    const-string/jumbo v0, "pref_key_has_shown_alert_of_sending_to_self"

    invoke-static {v0, v2}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 1413
    iget-object v3, p0, Lazx$3;->c:Lazx;

    iget-object v3, v3, Lazx;->y:Lazy$b;

    invoke-interface {v3}, Lazy$b;->r()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lazx$3;->c:Lazx;

    iget-object v3, v3, Lazx;->y:Lazy$b;

    invoke-interface {v3}, Lazy$b;->r()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1414
    :cond_4
    if-nez v0, :cond_5

    .line 1415
    iget-object v0, p0, Lazx$3;->c:Lazx;

    iget-object v0, v0, Lazx;->y:Lazy$b;

    invoke-interface {v0, v1}, Lazy$b;->b(Z)V

    .line 1416
    iget-object v0, p0, Lazx$3;->c:Lazx;

    iget-object v0, v0, Lazx;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->a()V

    .line 1417
    const-string/jumbo v0, "pref_key_has_shown_alert_of_sending_to_self"

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 1418
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lazx$3;->c:Lazx;

    iget-object v1, v1, Lazx;->y:Lazy$b;

    invoke-interface {v1}, Lazy$b;->f()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1419
    sget v1, Laxp$i;->dt_ding_create_no_receiver_prompt_title:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Laxp$i;->dt_ding_create_no_receiver_prompt_confirm_btn:I

    new-instance v3, Lazx$3$2;

    invoke-direct {v3, p0, p1}, Lazx$3$2;-><init>(Lazx$3;Lcom/alibaba/android/ding/base/objects/ObjectDingSent;)V

    .line 1420
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Laxp$i;->cancel:I

    new-instance v3, Lazx$3$1;

    invoke-direct {v3, p0, v0}, Lazx$3$1;-><init>(Lazx$3;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    .line 1430
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1436
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 1439
    :cond_5
    iget-object v0, p0, Lazx$3;->c:Lazx;

    iget-object v0, v0, Lazx;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->r()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1440
    iget-object v0, p0, Lazx$3;->c:Lazx;

    iget-object v0, v0, Lazx;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->r()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1442
    :cond_6
    iget-object v0, p0, Lazx$3;->c:Lazx;

    iget-wide v2, p0, Lazx$3;->b:J

    invoke-virtual {v0, p1, v2, v3}, Lazx;->a(Lcom/alibaba/android/ding/base/objects/ObjectDingSent;J)V

    .line 2098
    const-string/jumbo v0, "ding_sendding_dingself_click"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1449
    :cond_7
    iget-wide v4, p0, Lazx$3;->b:J

    .line 3034
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_a

    .line 3037
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 3038
    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3039
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 3040
    const/4 v3, 0x6

    if-lt v0, v3, :cond_8

    const/16 v3, 0x16

    if-lt v0, v3, :cond_a

    :cond_8
    move v0, v1

    .line 1449
    :goto_1
    if-eqz v0, :cond_b

    iget-object v0, p0, Lazx$3;->c:Lazx;

    iget-object v0, v0, Lazx;->y:Lazy$b;

    .line 1450
    invoke-interface {v0}, Lazy$b;->r()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lazx$3;->c:Lazx;

    iget-object v0, v0, Lazx;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lazx$3;->c:Lazx;

    iget-object v0, v0, Lazx;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_b

    :cond_9
    iget-object v0, p0, Lazx$3;->c:Lazx;

    iget-object v0, v0, Lazx;->y:Lazy$b;

    .line 1451
    invoke-interface {v0}, Lazy$b;->k()Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    move-result-object v0

    invoke-static {v0}, Lbkh;->b(Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    move-result-object v0

    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->CALL:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    if-ne v0, v2, :cond_b

    iget-boolean v0, p0, Lazx$3;->a:Z

    if-nez v0, :cond_b

    .line 1453
    iget-object v0, p0, Lazx$3;->c:Lazx;

    iget-object v0, v0, Lazx;->y:Lazy$b;

    invoke-interface {v0, v1}, Lazy$b;->b(Z)V

    .line 1454
    iget-object v0, p0, Lazx$3;->c:Lazx;

    iget-object v0, v0, Lazx;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->a()V

    .line 1455
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lazx$3;->c:Lazx;

    iget-object v1, v1, Lazx;->y:Lazy$b;

    invoke-interface {v1}, Lazy$b;->f()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1456
    iget-object v1, p0, Lazx$3;->c:Lazx;

    iget-object v1, v1, Lazx;->y:Lazy$b;

    sget v2, Laxp$i;->confirm_send_ding_in_night_tip:I

    invoke-interface {v1, v2}, Lazy$b;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Laxp$i;->send_ding_ok:I

    new-instance v3, Lazx$3$4;

    invoke-direct {v3, p0, p1}, Lazx$3$4;-><init>(Lazx$3;Lcom/alibaba/android/ding/base/objects/ObjectDingSent;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Laxp$i;->cancel:I

    new-instance v3, Lazx$3$3;

    invoke-direct {v3, p0, v0}, Lazx$3$3;-><init>(Lazx$3;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    .line 1463
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1469
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    :cond_a
    move v0, v2

    .line 3040
    goto/16 :goto_1

    .line 1471
    :cond_b
    iget-object v0, p0, Lazx$3;->c:Lazx;

    iget-wide v2, p0, Lazx$3;->b:J

    invoke-virtual {v0, p1, v2, v3}, Lazx;->a(Lcom/alibaba/android/ding/base/objects/ObjectDingSent;J)V

    goto/16 :goto_0
.end method
