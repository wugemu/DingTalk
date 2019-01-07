.class public final Laxk;
.super Lawz;
.source "SystemEventHolder.java"


# instance fields
.field private n:Lcom/alibaba/android/calendar/data/object/SystemEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lawz;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v9, 0x4

    .line 25
    invoke-super {p0}, Lawz;->c()V

    .line 27
    iget-object v0, p0, Laxk;->d:Lawv;

    instance-of v0, v0, Lasv;

    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Laxk;->f:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v0, p0, Laxk;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v9}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 55
    :goto_0
    return-void

    .line 32
    :cond_0
    iget-object v8, p0, Laxk;->d:Lawv;

    check-cast v8, Lasv;

    .line 1040
    .local v8, "event":Lasv;
    iget-object v0, v8, Lasv;->b:Lcom/alibaba/android/calendar/data/object/SystemEvent;

    .line 33
    iput-object v0, p0, Laxk;->n:Lcom/alibaba/android/calendar/data/object/SystemEvent;

    .line 34
    iget-object v0, p0, Laxk;->n:Lcom/alibaba/android/calendar/data/object/SystemEvent;

    if-nez v0, :cond_1

    .line 35
    iget-object v0, p0, Laxk;->f:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v0, p0, Laxk;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v9}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto :goto_0

    .line 40
    :cond_1
    iget-object v0, p0, Laxk;->n:Lcom/alibaba/android/calendar/data/object/SystemEvent;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/SystemEvent;->isAllDay()Z

    move-result v1

    iget-object v0, p0, Laxk;->n:Lcom/alibaba/android/calendar/data/object/SystemEvent;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/SystemEvent;->getStart()J

    move-result-wide v2

    iget-object v0, p0, Laxk;->n:Lcom/alibaba/android/calendar/data/object/SystemEvent;

    .line 41
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/SystemEvent;->getEnd()J

    move-result-wide v4

    .line 2036
    iget-wide v6, v8, Lasv;->a:J

    move-object v0, p0

    .line 40
    invoke-virtual/range {v0 .. v7}, Laxk;->a(ZJJJ)V

    .line 43
    iget-object v0, p0, Laxk;->n:Lcom/alibaba/android/calendar/data/object/SystemEvent;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/SystemEvent;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 44
    iget-object v0, p0, Laxk;->f:Landroid/widget/TextView;

    iget-object v1, p0, Laxk;->n:Lcom/alibaba/android/calendar/data/object/SystemEvent;

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/data/object/SystemEvent;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    :goto_1
    iget-object v0, p0, Laxk;->h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v9}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 50
    iget-object v0, p0, Laxk;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Laxk;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Laxk;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v8}, Lasv;->getIndicatorColor()I

    move-result v1

    .line 54
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    .line 53
    invoke-static {v1, v2}, Lavn;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 46
    :cond_2
    iget-object v0, p0, Laxk;->f:Landroid/widget/TextView;

    sget v1, Laow$f;->dt_calendar_has_no_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 59
    iget-object v0, p0, Laxk;->n:Lcom/alibaba/android/calendar/data/object/SystemEvent;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Laxk;->b:Landroid/app/Activity;

    iget-object v1, p0, Laxk;->n:Lcom/alibaba/android/calendar/data/object/SystemEvent;

    invoke-static {v0, v1}, Lavr;->a(Landroid/content/Context;Lcom/alibaba/android/calendar/data/object/SystemEvent;)V

    .line 2233
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2234
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2235
    const-string/jumbo v1, "ding_calendar_date_check_arrangement_click"

    invoke-static {v1, v0}, Lavw;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 63
    :cond_0
    return-void
.end method
