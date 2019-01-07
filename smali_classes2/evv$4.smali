.class final Levv$4;
.super Ljava/lang/Object;
.source "TeleConfPushListeners.java"

# interfaces
.implements Lcjo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Levv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Levv;


# direct methods
.method constructor <init>(Levv;)V
    .locals 0
    .param p1, "this$0"    # Levv;

    .prologue
    .line 553
    iput-object p1, p0, Levv$4;->a:Levv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcjo$b;)V
    .locals 8
    .param p1, "message"    # Lcjo$b;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 556
    if-eqz p1, :cond_0

    iget v2, p1, Lcjo$b;->b:I

    const/16 v3, 0x7d3

    if-eq v2, v3, :cond_1

    iget v2, p1, Lcjo$b;->b:I

    const/16 v3, 0x7d9

    if-eq v2, v3, :cond_1

    .line 4302
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    iget-object v2, p1, Lcjo$b;->a:Ljava/lang/Object;

    instance-of v2, v2, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfErrorPushModle;

    if-nez v2, :cond_2

    .line 562
    invoke-static {}, Levv;->a()Ljava/lang/String;

    goto :goto_0

    .line 565
    :cond_2
    iget-object v2, p0, Levv$4;->a:Levv;

    invoke-static {v2}, Levv;->a(Levv;)V

    .line 566
    iget-object v2, p1, Lcjo$b;->a:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfErrorPushModle;

    move-object v1, v2

    check-cast v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfErrorPushModle;

    .line 568
    .local v1, "errorPushModle":Lcom/alibaba/android/teleconf/sdk/idl/model/ConfErrorPushModle;
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 569
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v2, "CONF_PUSH_ERROR_OCCURED push ,"

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 570
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "confId "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfErrorPushModle;->conferenceId:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 571
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "action "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfErrorPushModle;->action:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 572
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "cause "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfErrorPushModle;->cause:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 573
    const-string/jumbo v2, "tele_conf"

    const-string/jumbo v3, "conference_call"

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    if-eqz v1, :cond_0

    iget-object v2, p0, Levv$4;->a:Levv;

    invoke-static {v2}, Levv;->d(Levv;)Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 576
    iget-object v2, p0, Levv$4;->a:Levv;

    invoke-static {v2}, Levv;->d(Levv;)Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;

    move-result-object v2

    .line 4293
    if-eqz v1, :cond_0

    .line 4295
    iget-object v3, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfErrorPushModle;->conferenceId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Levi;->p()Levi;

    move-result-object v3

    invoke-virtual {v3}, Levi;->e()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 4298
    iget-object v3, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfErrorPushModle;->level:Ljava/lang/Long;

    .line 5044
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 4298
    long-to-int v3, v4

    .line 4299
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    .line 4301
    :pswitch_0
    iget-object v2, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfErrorPushModle;->cause:Ljava/lang/String;

    invoke-static {v2}, Lcms;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4304
    :pswitch_1
    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v4, v2, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-direct {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4305
    sget v4, Leuj$l;->conf_error_call_exception:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 4306
    iget-object v4, v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfErrorPushModle;->cause:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 4307
    sget v4, Leuj$l;->sure:I

    new-instance v5, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a$2;

    invoke-direct {v5, v2}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a$2;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;)V

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 4318
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 4299
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
