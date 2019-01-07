.class final Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;
.super Ljava/lang/Object;
.source "BaseScheduleActivity.java"

# interfaces
.implements Lapq$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final H_()V
    .locals 1

    .prologue
    .line 311
    .line 3346
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 311
    if-nez v0, :cond_0

    .line 315
    :goto_0
    return-void

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->dismissLoadingDialog()V

    goto :goto_0
.end method

.method public final a()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    return-object v0
.end method

.method public final a(JZ)V
    .locals 3
    .param p1, "startTime"    # J
    .param p3, "isAllDay"    # Z

    .prologue
    .line 364
    .line 6346
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 364
    if-nez v0, :cond_1

    .line 7066
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->f(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)Lcom/alibaba/android/dingtalkbase/widgets/TimePeriodView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->f(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)Lcom/alibaba/android/dingtalkbase/widgets/TimePeriodView;

    move-result-object v0

    .line 7063
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/TimePeriodView;->a:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcog;->h(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7064
    iget-boolean v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/TimePeriodView;->e:Z

    if-eqz v1, :cond_0

    .line 7065
    if-eqz p3, :cond_2

    .line 7066
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/TimePeriodView;->b:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcog;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7068
    :cond_2
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/TimePeriodView;->b:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcog;->e(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;)V
    .locals 2
    .param p1, "repeatFrequency"    # Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 446
    .line 12346
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 446
    if-nez v0, :cond_0

    .line 454
    :goto_0
    return-void

    .line 449
    :cond_0
    if-nez p1, :cond_1

    .line 450
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->i(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->NO_REPEAT:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->getTextResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->i(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->getTextResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 351
    if-eqz p1, :cond_0

    .line 352
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    iget-object v0, v0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 354
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 293
    .line 1346
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 293
    if-nez v0, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->c(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->c(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public final a(ZJ)V
    .locals 6
    .param p1, "isAllDayChecked"    # Z
    .param p2, "startTime"    # J

    .prologue
    const/4 v0, 0x0

    .line 387
    .line 8346
    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    .line 387
    if-nez v1, :cond_0

    .line 413
    :goto_0
    return-void

    .line 390
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v1}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->g(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    move-result-object v1

    if-nez v1, :cond_1

    .line 391
    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    new-instance v2, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    iget-object v3, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    sget-object v4, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;->INTERVAL_FIVE:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;

    invoke-direct {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;-><init>(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;)V

    invoke-static {v1, v2}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->a(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;)Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    .line 392
    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v1}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->g(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    move-result-object v1

    .line 8362
    iput-boolean v0, v1, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->a:Z

    .line 393
    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v1}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->g(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2$1;-><init>(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;)V

    .line 8414
    iput-object v2, v1, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->f:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$a;

    .line 410
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v1}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->g(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->a(J)V

    .line 411
    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v1}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->g(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    move-result-object v1

    if-nez p1, :cond_2

    const/4 v0, 0x1

    .line 9366
    :cond_2
    iput-boolean v0, v1, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->b:Z

    .line 412
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->g(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->show()V

    goto :goto_0
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 341
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 303
    .line 2346
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 303
    if-nez v0, :cond_0

    .line 307
    :goto_0
    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->showLoadingDialog()V

    goto :goto_0
.end method

.method public final b(JZ)V
    .locals 3
    .param p1, "endTime"    # J
    .param p3, "isAllDay"    # Z

    .prologue
    .line 376
    .line 7346
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 376
    if-nez v0, :cond_1

    .line 8084
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->f(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)Lcom/alibaba/android/dingtalkbase/widgets/TimePeriodView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->f(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)Lcom/alibaba/android/dingtalkbase/widgets/TimePeriodView;

    move-result-object v0

    .line 8081
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/TimePeriodView;->c:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcog;->h(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8082
    iget-boolean v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/TimePeriodView;->e:Z

    if-eqz v1, :cond_0

    .line 8083
    if-eqz p3, :cond_2

    .line 8084
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/TimePeriodView;->d:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcog;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 8086
    :cond_2
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/TimePeriodView;->d:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcog;->e(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .param p1, "remindContent"    # Ljava/lang/String;

    .prologue
    .line 458
    .line 13346
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 458
    if-nez v0, :cond_1

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->j(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->j(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 1
    .param p1, "isAllDay"    # Z

    .prologue
    .line 358
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    iget-object v0, v0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->b:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 359
    return-void
.end method

.method public final b(ZJ)V
    .locals 6
    .param p1, "isAllDayChecked"    # Z
    .param p2, "endTime"    # J

    .prologue
    const/4 v0, 0x0

    .line 417
    .line 10346
    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    .line 417
    if-nez v1, :cond_0

    .line 441
    :goto_0
    return-void

    .line 420
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v1}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->h(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    move-result-object v1

    if-nez v1, :cond_1

    .line 421
    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    new-instance v2, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    iget-object v3, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    sget-object v4, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;->INTERVAL_FIVE:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;

    invoke-direct {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;-><init>(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;)V

    invoke-static {v1, v2}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->b(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;)Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    .line 422
    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v1}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->h(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    move-result-object v1

    .line 10362
    iput-boolean v0, v1, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->a:Z

    .line 423
    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v1}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->h(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2$2;-><init>(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;)V

    .line 10414
    iput-object v2, v1, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->f:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$a;

    .line 438
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v1}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->h(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->a(J)V

    .line 439
    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v1}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->h(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    move-result-object v1

    if-nez p1, :cond_2

    const/4 v0, 0x1

    .line 11366
    :cond_2
    iput-boolean v0, v1, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->b:Z

    .line 440
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->h(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->show()V

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 468
    if-eqz p1, :cond_0

    .line 469
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    iget-object v0, v0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 471
    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->finish()V

    .line 289
    return-void
.end method

.method public final f()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 319
    .line 4346
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 319
    if-nez v0, :cond_0

    .line 326
    :goto_0
    return-void

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->g()V

    .line 323
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    iget-object v2, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->a(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 324
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->e(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    sget v2, Laow$f;->ding_sending:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->e(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    goto :goto_0
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 331
    .line 5346
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 331
    if-nez v0, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->e(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->e(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->e(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    iget-object v0, v0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    iget-object v0, v0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 486
    .line 14346
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 486
    if-nez v0, :cond_0

    .line 501
    :goto_0
    return-void

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    iget-object v0, v0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2$3;-><init>(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final synthetic setPresenter(Lcjd;)V
    .locals 1

    .prologue
    .line 275
    check-cast p1, Lapq$b;

    .line 15278
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity$2;->a:Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;->a(Lcom/alibaba/android/calendar/activity/BaseScheduleActivity;Lapq$b;)Lapq$b;

    .line 275
    return-void
.end method
