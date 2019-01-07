.class public final Laxh;
.super Lawz;
.source "MailEventHolder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lawz;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x0

    .line 24
    invoke-super {p0}, Lawz;->c()V

    .line 25
    iget-object v0, p0, Laxh;->d:Lawv;

    instance-of v0, v0, Lcom/alibaba/android/calendar/data/object/MailEvent;

    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, Laxh;->f:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v0, p0, Laxh;->g:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object v0, p0, Laxh;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v11}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 63
    :goto_0
    return-void

    .line 31
    :cond_0
    iget-object v8, p0, Laxh;->d:Lawv;

    check-cast v8, Lcom/alibaba/android/calendar/data/object/MailEvent;

    .line 32
    .local v8, "event":Lcom/alibaba/android/calendar/data/object/MailEvent;
    invoke-virtual {v8}, Lcom/alibaba/android/calendar/data/object/MailEvent;->getMailEventInstance()Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    move-result-object v9

    .line 33
    .local v9, "mailEventInstance":Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;
    if-nez v9, :cond_1

    .line 34
    iget-object v0, p0, Laxh;->f:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v0, p0, Laxh;->g:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v0, p0, Laxh;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v11}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {v8}, Lcom/alibaba/android/calendar/data/object/MailEvent;->getDayStartTimeMillis()J

    move-result-wide v6

    .line 41
    .local v6, "dayStartTimeMillis":J
    invoke-virtual {v9}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->isAllDay()Z

    move-result v1

    invoke-virtual {v9}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getStartMillis()J

    move-result-wide v2

    .line 42
    invoke-virtual {v9}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getEndMillis()J

    move-result-wide v4

    move-object v0, p0

    .line 41
    invoke-virtual/range {v0 .. v7}, Laxh;->a(ZJJJ)V

    .line 44
    iget-object v0, p0, Laxh;->f:Landroid/widget/TextView;

    invoke-static {v9}, Lavg;->a(Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {v9}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getLocation()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 47
    iget-object v0, p0, Laxh;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 48
    iget-object v0, p0, Laxh;->g:Landroid/widget/TextView;

    invoke-virtual {v9}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getLocation()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :goto_1
    iget-object v0, p0, Laxh;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v10}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Laxh;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v9}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getColor()I

    move-result v1

    .line 55
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    .line 54
    invoke-static {v1, v2}, Lavn;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    invoke-virtual {v9}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 58
    iget-object v0, p0, Laxh;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Laxh;->j:Landroid/widget/TextView;

    iget-object v1, p0, Laxh;->b:Landroid/app/Activity;

    sget v2, Laow$f;->dt_ding_from_share_mail_event_at:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v9}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 50
    :cond_2
    iget-object v0, p0, Laxh;->g:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 61
    :cond_3
    iget-object v0, p0, Laxh;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 67
    iget-object v1, p0, Laxh;->d:Lawv;

    instance-of v1, v1, Lcom/alibaba/android/calendar/data/object/MailEvent;

    if-nez v1, :cond_0

    .line 73
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Laxh;->d:Lawv;

    check-cast v0, Lcom/alibaba/android/calendar/data/object/MailEvent;

    .line 71
    .local v0, "event":Lcom/alibaba/android/calendar/data/object/MailEvent;
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->k()Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;

    move-result-object v1

    iget-object v2, p0, Laxh;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/MailEvent;->getMailEventInstance()Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->a(Landroid/app/Activity;Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;)V

    .line 1239
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1240
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "6"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    const-string/jumbo v2, "ding_calendar_date_check_arrangement_click"

    invoke-static {v2, v1}, Lavw;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
