.class final Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;
.super Ljava/lang/Object;
.source "SystemEventDetailActivity.java"

# interfaces
.implements Lapt$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;->a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;-><init>(Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;->a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    return-object v0
.end method

.method public final a(Lcom/alibaba/android/calendar/data/object/SystemEvent;)V
    .locals 8
    .param p1, "systemEvent"    # Lcom/alibaba/android/calendar/data/object/SystemEvent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 193
    .line 3172
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;->a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 193
    if-nez v0, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 4172
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;->a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 3205
    if-eqz v0, :cond_2

    .line 3208
    if-eqz p1, :cond_2

    .line 3211
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;->a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->d(Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3214
    invoke-virtual {p1}, Lcom/alibaba/android/calendar/data/object/SystemEvent;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3215
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;->a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->d(Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/android/calendar/data/object/SystemEvent;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5172
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;->a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 4257
    if-eqz v0, :cond_3

    .line 4260
    if-eqz p1, :cond_3

    .line 4263
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;->a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->g(Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;->a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->h(Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_8

    .line 6172
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;->a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 5243
    if-eqz v0, :cond_4

    .line 5246
    if-eqz p1, :cond_4

    .line 5249
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;->a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->f(Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 5252
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;->a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->f(Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5253
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;->a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->f(Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Laow$f;->dt_ding_calendar_sysevent:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 7172
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;->a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 6222
    if-eqz v0, :cond_5

    .line 6225
    if-eqz p1, :cond_5

    .line 6228
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;->a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->e(Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 6231
    invoke-virtual {p1}, Lcom/alibaba/android/calendar/data/object/SystemEvent;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 6232
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;->a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->e(Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6233
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;->a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->e(Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;->a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    sget v3, Laow$f;->dt_calendar_location_prefix:I

    .line 6234
    invoke-virtual {v2, v3}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string/jumbo v2, "  "

    aput-object v2, v1, v4

    .line 6236
    invoke-virtual {p1}, Lcom/alibaba/android/calendar/data/object/SystemEvent;->getLocation()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 6233
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8172
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;->a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 7286
    if-eqz v0, :cond_6

    .line 7289
    if-eqz p1, :cond_6

    .line 7292
    invoke-virtual {p1}, Lcom/alibaba/android/calendar/data/object/SystemEvent;->getReminderMinutes()Ljava/util/List;

    move-result-object v0

    .line 7293
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 9172
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;->a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 8327
    if-eqz v0, :cond_0

    .line 8330
    if-eqz p1, :cond_0

    .line 8333
    invoke-virtual {p1}, Lcom/alibaba/android/calendar/data/object/SystemEvent;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 8334
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8337
    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;->a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->k(Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 8338
    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;->a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->l(Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 3217
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;->a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->d(Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Laow$f;->dt_calendar_has_no_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 4266
    :cond_8
    invoke-virtual {p1}, Lcom/alibaba/android/calendar/data/object/SystemEvent;->isAllDay()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4267
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;->a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->g(Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;->a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    sget v3, Laow$f;->dt_calendar_start_time_prefix:I

    .line 4268
    invoke-virtual {v2, v3}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string/jumbo v2, "  "

    aput-object v2, v1, v4

    .line 4270
    invoke-virtual {p1}, Lcom/alibaba/android/calendar/data/object/SystemEvent;->getStart()J

    move-result-wide v2

    invoke-static {v2, v3, v5}, Lcog;->c(JZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 4267
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4272
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;->a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->h(Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Laow$f;->dt_create_event_item_all_day:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 4274
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;->a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->g(Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;->a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    sget v3, Laow$f;->dt_calendar_start_time_prefix:I

    .line 4275
    invoke-virtual {v2, v3}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string/jumbo v2, "  "

    aput-object v2, v1, v4

    .line 4277
    invoke-virtual {p1}, Lcom/alibaba/android/calendar/data/object/SystemEvent;->getStart()J

    move-result-wide v2

    invoke-static {v2, v3, v5}, Lcog;->d(JZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 4274
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4278
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;->a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->h(Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;->a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    sget v3, Laow$f;->dt_calendar_end_time_prefix:I

    .line 4279
    invoke-virtual {v2, v3}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string/jumbo v2, "  "

    aput-object v2, v1, v4

    .line 4281
    invoke-virtual {p1}, Lcom/alibaba/android/calendar/data/object/SystemEvent;->getEnd()J

    move-result-wide v2

    invoke-static {v2, v3, v5}, Lcog;->d(JZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 4278
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 6238
    :cond_a
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;->a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->e(Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 7296
    :cond_b
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 7297
    if-ltz v0, :cond_6

    .line 7301
    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;->a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->i(Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7302
    invoke-static {}, Lcof;->l()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p1}, Lcom/alibaba/android/calendar/data/object/SystemEvent;->isAllDay()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 7304
    if-nez v0, :cond_c

    .line 7305
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;->a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->j(Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Laow$f;->dt_calendar_event_remind_today_9:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 7306
    :cond_c
    const/16 v1, 0x5a0

    if-ne v0, v1, :cond_d

    .line 7307
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;->a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->j(Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Laow$f;->dt_calendar_event_remind_yesterday_9:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 7308
    :cond_d
    const/16 v1, 0xb40

    if-ne v0, v1, :cond_e

    .line 7309
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;->a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->j(Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Laow$f;->dt_calendar_event_remind_day_before_yesterday_9:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 7310
    :cond_e
    const/16 v1, 0x10e0

    if-ne v0, v1, :cond_f

    .line 7311
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;->a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->j(Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Laow$f;->dt_calendar_event_remind_three_days_ago_9:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 7312
    :cond_f
    const/16 v1, 0x2760

    if-ne v0, v1, :cond_10

    .line 7313
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;->a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->j(Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Laow$f;->dt_calendar_event_remind_one_week_ago_9:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 7315
    :cond_10
    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;->a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->j(Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;->a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    sget v3, Laow$f;->dt_calendar_event_remind_minutes_at:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 7319
    :cond_11
    if-nez v0, :cond_12

    .line 7320
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;->a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->j(Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Laow$f;->dt_calendar_event_remind_punctual:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 7322
    :cond_12
    iget-object v1, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;->a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->j(Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;->a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    sget v3, Laow$f;->dt_calendar_event_remind_minutes_at:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;->a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->finish()V

    .line 169
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 177
    .line 1172
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;->a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 177
    if-nez v0, :cond_0

    .line 181
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;->a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->showLoadingDialog()V

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 185
    .line 2172
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;->a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 185
    if-nez v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity$a;->a:Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/activity/SystemEventDetailActivity;->dismissLoadingDialog()V

    goto :goto_0
.end method
